#!/usr/bin/env bash
# Rebuild the Horde + Alliance routes and the quest database from the latest QuestieDB.
# Usage: tools/generator/build.sh [path-to-QuestieDB]   (clones it if not given)
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
ADDON="$(cd "$HERE/../.." && pwd)"
WORK="${WORK:-$ADDON/.work}"
QDB="${1:-$WORK/QuestieDB}"
FACTIONS="Horde Alliance"
mkdir -p "$WORK/out"
if [ ! -d "$QDB" ]; then
  git clone --depth 1 https://github.com/Questie/QuestieDB.git "$QDB"
fi
python3 "$HERE/extract.py" "$QDB" "$WORK/out"
python3 "$HERE/support.py" "$QDB/support/Forever" "$WORK/out/support.json"
for F in $FACTIONS; do
  mkdir -p "$WORK/gen/$F" "$ADDON/Guides/$F"
  python3 "$HERE/gen_route.py" "$WORK" "$WORK/gen/$F" "$F"
  rm -f "$ADDON/Guides/$F"/*.lua
  cp "$WORK/gen/$F"/*.lua "$ADDON/Guides/$F/"
done
python3 "$HERE/update_toc.py" "$ADDON"
python3 "$HERE/gen_questdb.py" "$WORK" "$WORK/gen/Quests.lua"
cp "$WORK/gen/Quests.lua" "$ADDON/Data/Quests.lua"
( cd "$QDB" && git rev-parse --short HEAD ) > "$ADDON/Data/QUESTIEDB_VERSION" 2>/dev/null || true
echo "Rebuilt from QuestieDB $(cat "$ADDON/Data/QUESTIEDB_VERSION" 2>/dev/null)"
