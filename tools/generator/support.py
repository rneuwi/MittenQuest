import sys, os, json
from lupa.lua51 import LuaRuntime
R, out = sys.argv[1], sys.argv[2]
L = LuaRuntime(unpack_returned_tuples=True)
L.execute('''
modules = {}
QuestieLoader = { ImportModule = function(_, n) modules[n] = modules[n] or { private = {} } return modules[n] end }
QuestieLoader.CreateModule = QuestieLoader.ImportModule
UnitFactionGroup = function() return "Horde" end
modules.Expansions = { Current = 1, Era = 1, Tbc = 2, Wotlk = 3, Cata = 4, MoP = 5 }
function strload(s) if type(s) == "string" then return assert(loadstring(s))() end return s end
''')
for f in ['Zones/areaIdToUiMapId.lua','Zones/subZoneToParentZone.lua','Zones/dungeons.lua','DropTables/classicItemDrops.lua','QuestXP/xpDB-classic.lua']:
    src = open(os.path.join(R, f), encoding='utf-8').read()
    L.execute(src)
def conv(v):
    if L.eval('type')(v) == 'table':
        keys=list(v.keys())
        if keys and all(isinstance(k,int) for k in keys) and sorted(keys)==list(range(1,len(keys)+1)):
            return [conv(v[k]) for k in sorted(keys)]
        return {str(k): conv(v[k]) for k in keys}
    return v
Z = L.eval('modules.ZoneDB.private')
data = {
  'area2map': conv(L.eval('strload')(Z['areaIdToUiMapId'])),
  'area2mapOverride': conv(L.eval('strload')(Z['areaIdToUiMapIdOverride'])),
  'subzoneParent': conv(L.eval('strload')(Z['subZoneToParentZone'])),
  'subzoneParentOverride': conv(L.eval('strload')(Z['subZoneToParentZoneOverride'])),
  'dungeons': conv(Z['dungeons']),
  'drops': conv(L.eval('strload')(L.eval('modules.QuestieClassicItemDrops.wowheadData'))),
  'xp': conv(L.eval('modules.QuestXP.db')),
}
json.dump(data, open(out,'w'))
print({k: len(v) for k,v in data.items()})
print('Durotar area 14 ->', data['area2map'].get('14'), data['area2mapOverride'].get('14'))
