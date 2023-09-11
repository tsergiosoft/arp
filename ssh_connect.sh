#!/bin/sh
while true;
ssh -i /home/pi/.ssh/ec2 sergtarasenko76@34.118.38.72;
#ssh -o ServerAliveCountMax=2 -o ServerAliveInterval=10 34.118.38.72; do
do
sleep 2;
done;
