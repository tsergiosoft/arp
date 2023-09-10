#!/bin/bash
screen -S mavproxy -d -m bash -c "/home/pi/awm/mavproxy_run.sh"
screen -S cam -d -m bash -c "/home/pi/awm/cam_run.sh"
while true ; do sleep 120; done

