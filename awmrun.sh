#!/bin/bash
screen -S mavproxy -d -m bash -c "/home/pi/awm/mavproxy_run.sh"
screen -S cam -d -m bash -c "/home/pi/awm/cam_run.sh"
screen -S sshweb -d -m bash -c "/home/pi/awm/ssh_web.sh"
screen -S sshmav -d -m bash -c "/home/pi/awm/ssh_mav.sh"
while true ; do sleep 120; done

