#!/usr/bin/env python
import os

with open('/etc/rc.local') as fin:
    with open('/etc/rc.local.TMP') as fout:
        while line in fin:
            if line == 'exit 0':
                fout.write('nohup mavproxy.py &\n')
            fout.write(line)

# save original version (just in case)
os.rename('/etc/rc.local', '/etc/rc.local.jic')

os.rename('/etc/rc.loca.TMP', '/etc/rc.local')
