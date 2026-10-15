import sys, os, json, time
from lupa.lua51 import LuaRuntime
repo, out = sys.argv[1], sys.argv[2]
os.chdir(repo)
L = LuaRuntime(unpack_returned_tuples=True)
t=time.time()
loaded, stats = L.execute('''
local config = dofile("src/config.lua")
local flavorLoader = dofile("generator/flavor.lua")
local flavor
for _, f in ipairs(config.flavors) do if f.name == "Forever" then flavor = f end end
assert(flavor, "no Forever flavor")
local loaded, stats = flavorLoader.load(flavor, nil, true)
return loaded, stats
''')
print("loaded in %.1fs, corrections applied: %s" % (time.time()-t, stats['applied']))
def conv(v, depth=0):
    if L.eval('type')(v) == 'table':
        keys = list(v.keys())
        if keys and all(isinstance(k,int) for k in keys) and sorted(keys)==list(range(1,len(keys)+1)):
            return [conv(v[k],depth+1) for k in sorted(keys)]
        return {str(k): conv(v[k],depth+1) for k in keys}
    return v
for name in loaded.keys():
    ent = loaded[name]
    meta = ent['meta']
    # field index -> name
    keymap = {}
    for k in ent['meta']['keys'].keys() if 'keys' in ent['meta'] else []:
        keymap[int(ent['meta']['keys'][k])] = k
    data = {}
    n = 0
    for eid in ent['entities'].keys():
        row = ent['entities'][eid]
        rec = {}
        for idx in row.keys():
            rec[keymap.get(idx, str(idx))] = conv(row[idx])
        data[str(eid)] = rec
        n += 1
    json.dump(data, open(os.path.join(out, name + ".json"), "w"))
    print(name, n, "entities; fields:", sorted(set(keymap.values()))[:60])
