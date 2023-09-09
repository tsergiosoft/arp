#!/bin/bash
export LOCALAPPDATA="LOCALAPPDATA"
mavproxy.py --master=/dev/serial0 --force-connected --baudrate 921600 --out=udp:10.243.0.1:14550
