#!/usr/bin/python3

from subprocess import run
import json

#data = {}
#cmd = ["ddcutil", "getvcp", "10", "--bus", "14"]
#value = subprocess.run(cmd, stdout=subprocess.PIPE).stdout.decode('utf8')
## output looks like this in my case: VCP code 0x10 (Brightness                    ): current value =    20, max value =   100
#percentage = value.split(":")[1].split(",")[0].split("=")[1].strip(" ")
#data['percentage'] = int(percentage)
#print(json.dumps(data), flush=True)


data = {}
cmd = ["ddcutil", "getvcp", "10", "--bus", "14"]
p = run(cmd, check=True, text=True, capture_output=True)
if p.stdout is not None and p.stdout != "":
    value=p.stdout
if p.stderr is not None and p.stderr != "":
    value="0"
percentage = value.split(":")[1].split(",")[0].split("=")[1].strip(" ")
data['percentage'] = int(percentage)
print(json.dumps(data))
