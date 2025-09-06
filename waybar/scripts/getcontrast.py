#!/usr/bin/python3

from subprocess import run
import json

data = {}
cmd = ["ddcutil", "getvcp", "12", "--bus", "14"]
p = run(cmd, check=True, text=True, capture_output=True)
if p.stdout is not None and p.stdout != "":
    value=p.stdout
if p.stderr is not None and p.stderr != "":
    value="0"
percentage = value.split(":")[1].split(",")[0].split("=")[1].strip(" ")
percentage = int(percentage)
if percentage > 50:
    data = {'percentage': percentage, "text": "Light", "class": "light"}
elif percentage < 50:
    data = {'percentage': percentage, "text": "Dark", "class": "dark"}
print(json.dumps(data), flush=True)
