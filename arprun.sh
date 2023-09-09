#!/bin/bash
#export LOCALAPPDATA="LOCALAPPDATA"
#screen -L -Logfile mavproxy.log -S mavproxy -d -m bash -c "mavproxy.py --master=/dev/serial0 --force-connected --baudrate 921600 --out=udp:10.243.0.1:14550 --daemon"
screen -S mavproxy -d -m bash -c "/home/pi/arp/mavproxy_run.sh"
screen -S cam -d -m bash -c "/home/pi/arp/cam_run.sh"
while true ; do sleep 120; done

