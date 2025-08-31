#!/usr/bin/python3
import subprocess
import sys

cmd = subprocess.run(["ddcutil", "setvcp", "10", "--bus", "14","--use-file-io",sys.argv[1],sys.argv[2]])
