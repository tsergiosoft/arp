#!/bin/bash
export LOCALAPPDATA="LOCALAPPDATA"
screen -L -Logfile vehicle_proxy.log -S vehicle_proxy -d -m bash -c "mavproxy.py --master=/dev/serial0 --force-connected --baudrate 921600 --out=udp:10.243.0.1:14550 --daemon"

