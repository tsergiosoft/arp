#!/bin/bash
export LOCALAPPDATA="LOCALAPPDATA"
mavproxy.py --master=/dev/serial0 --force-connected --baudrate 921600 --out=udp:10.243.0.1:14550 --out=tcpin:127.0.0.1:14550 --out=udp:127.0.0.1:5760
#mavproxy.py --master=/dev/serial0 --force-connected --baudrate 921600 --out=udp:10.243.0.1:14550 --out=udpin:0.0.0.0:15000 --out=tcpin:0.0.0.0:16000
