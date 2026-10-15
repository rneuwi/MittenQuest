#!/usr/bin/env bash
# Rebuild the Horde route + quest database from the latest QuestieDB.
# Usage: tools/generator/build.sh [path-to-QuestieDB]   (clones it if not given)
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
ADDON="$(cd "$HERE/../.." && pwd)"
WORK="${WORK:-$ADDON/.work}"
QDB="${1:-$WORK/QuestieDB}"
mkdir -p "$WORK/out" "$WORK/gen/Horde"
if [ ! -d "$QDB" ]; then
  git clone --depth 1 https://github.com/Questie/QuestieDB.git "$QDB"
fi
python3 "$HERE/extract.py" "$QDB" "$WORK/out"
python3 "$HERE/support.py" "$QDB/support/Forever" "$WORK/out/support.json"
python3 "$HERE/gen_route.py" "$WORK" "$WORK/gen/Horde"
python3 "$HERE/gen_questdb.py" "$WORK" "$WORK/gen/Quests.lua"
rm -f "$ADDON"/Guides/Horde/*.lua
cp "$WORK"/gen/Horde/*.lua "$ADDON/Guides/Horde/"
cp "$WORK/gen/Quests.lua" "$ADDON/Data/Quests.lua"
( cd "$QDB" && git rev-parse --short HEAD ) > "$ADDON/Data/QUESTIEDB_VERSION" 2>/dev/null || true
echo "Rebuilt from QuestieDB $(cat "$ADDON/Data/QUESTIEDB_VERSION" 2>/dev/null)"
