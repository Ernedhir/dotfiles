#!/bin/bash

ddcutil setvcp 12 30 --bus 14
ddcutil setvcp 10 0 --bus 14
brightnessctl s 0
