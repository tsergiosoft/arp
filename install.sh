#!/bin/sh
# .git\config [alias]	acp = ! git add . && git commit -a -m \"commit\" && git push
# chmod 400 ~/.ssh/id_rsa
# ssh-add

#RasPi ssh -N -R 0.0.0.0:5000:localhost:8080 ubuntu@16.171.116.13 -v
#GCS ssh -N -L 1234:localhost:5000 ubuntu@16.171.116.13 -v -i C:\Users\Tarasenko_S\.ssh\tunaws.pem
# http://127.0.0.1:5000/
#or http://16.171.116.13:5000/

HOME=/home/pi
echo "home folder is"=$HOME
echo "----------SSH copy"
mkdir $HOME/.ssh
cp -R $HOME/awm/ssh/* $HOME/.ssh
sudo apt-get install autossh
echo "----------apt update"
sudo apt update
sudo apt upgrade
echo "----------Install screen"
sudo apt-get install screen -y
echo "----------Remove modemmanager"
sudo apt-get remove modemmanager -y
echo "----------Install pip3"
sudo apt-get install python3-pip -y
echo "----------Install MAVProxy"
sudo pip install MAVProxy
echo "----------Install ZeroTier"
curl -s https://install.zerotier.com | sudo bash
sudo zerotier-cli join 1d71939404a9b1e4

cd $HOME
#git clone https://github.com/jacksonliam/mjpg-streamer.git
git clone https://github.com/tsergiosoft/mjpg-streamer.git
sudo apt-get install cmake -y
#sudo apt-get install libjpeg8-dev -y
sudo apt-get install libjpeg62-turbo-dev -y
sudo apt-get install gcc g++ -y
sudo apt-get install cmake
cd $HOME/mjpg-streamer/mjpg-streamer-experimental
make
sudo make install

echo "----------Create service mav"
#https://github.com/mustafa-gokce/ardupilot-software-development/blob/main/mavproxy/automated-forwarding-services.md
sudo cp $HOME/awm/awm.service /etc/systemd/system
sudo systemctl enable awm.service
echo "----------Start service mav"
sudo systemctl start awm.service
echo "----------PAUSE 10s"
pause 10
screen -list
echo "----------Install finish OK"
--------------------------------------------END----------------------------------------------
#sudo apt install v4l-utils
#sudo apt-get install libjpeg8-dev imagemagick libv4l-dev
#ffmpeg -i /dev/video0 -vframes 1 output.png

#cd ~/mjpg-streamer/mjpg-streamer-experimental
#export LD_LIBRARY_PATH=.
#mjpg_streamer -i 'input_uvc.so -d /dev/video0  -f 15 -y -n' -o 'output_http.so -w ./www -p 8080'

#http://127.0.0.1:8080/?action=stream
#v4l2-ctl --list-formats-ext
# http://picamera.readthedocs.io/en/latest/recipes2.html#web-streaming

#/boot/config.txt entries to disable both Bluetooth and WiFi.
#dtoverlay=disable-bt
#dtoverlay=disable-wifi
#sudo nano ./wpa_supplicant/wpa_supplicant.conf 
 
#sed -i -e '$aexport LOCALAPPDATA="LOCALAPPDATA"' /home/pi/.bashrc
#sed -i -e '$ascreen -L -Logfile mavproxy.log -S mavproxy -d -m bash -c "mavproxy.py --master=/dev/serial0 --force-connected --baudrate 921600 --out=udp:10.243.0.1:14550 --daemon"' /home/pi/.bashrc
#sed -i -e '$ascreen -list' /home/pi/.bashrc

#put line to /etc/rc.local for autorun: 
#sudo sed -i "\$i sh ~/arp/mavrun.sh &" /etc/rc.local
#sudo chmod +x /etc/rc.local
#sudo systemctl enable rc-local.service
#sudo nano /etc/rc.local

#sudo apt-get install python3-dev python3-opencv python3-wxgtk4.0 python3-pip python3-matplotlib python3-lxml python3-pygame -y
#sudo pip3 install PyYAML mavproxy --user
#sudo python3 -m pip install mavproxy
#echo "export PATH=$PATH:$HOME/.local/bin" >> ~/.bashrc

####   Raspberry Pi   ############################
#sudo raspi-config -> serial port enable, (autologin pi)
#$ git clone https://github.com/tsergiosoft/arp.git
#$ cd arp
#$ ./install.sh
# git pull origin main

#sudo ip link set wlan0 down
################################
#on GitHub create repo tsergiosoft/arp.git
#$ git clone git@github.com:tsergiosoft/arp.git
#$ git config alias.acp '! git add . && git commit -a -m "commit" && git push'
#	Usage!!!!: git acp


################################# On Ubuntu - create ssh
#ssh-keygen -t ed25519 -C "sergtarasenko76@gmail.com"

