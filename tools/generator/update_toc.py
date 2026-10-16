"""Rewrite the guide file list at the end of MittenQuest.toc from what's in Guides/."""
import os
import re
import sys

addon = sys.argv[1] if len(sys.argv) > 1 else os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..')
toc_path = os.path.join(addon, 'MittenQuest.toc')
toc = open(toc_path, encoding='utf-8').read()
block = '# Guides (generated 1-60 routes; race starters first, then the shared route in level order)\n'
for faction in ('Horde', 'Alliance'):
    files = sorted(os.listdir(os.path.join(addon, 'Guides', faction)))
    ordered = [f for f in files if f.startswith('Start_')] + [f for f in files if not f.startswith('Start_')]
    block += ''.join(f'Guides\\{faction}\\{f}\n' for f in ordered if f.endswith('.lua'))
toc = re.sub(r'# Guides \(generated.*$', lambda m: block, toc, flags=re.S)
open(toc_path, 'w', encoding='utf-8').write(toc)
print('toc lists', block.count('.lua'), 'guide files')
