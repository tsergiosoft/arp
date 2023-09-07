#!/bin/sh
#put line to /etc/rc.local for autorun: 
#sudo sed -i "\$i sh ~/arp/mavrun.sh &" /etc/rc.local
#sudo chmod +x /etc/rc.local
#sudo systemctl enable rc-local.service
#sudo nano /etc/rc.local
# journalctl -b
# ps -fA | grep mavproxy.py


#https://github.com/mustafa-gokce/ardupilot-software-development/blob/main/mavproxy/automated-forwarding-services.md
#sudo cp /home/pi/arp/mav.service /etc/systemd/system
#sudo systemctl enable mav.service
sed -i -e '$aexport LOCALAPPDATA="LOCALAPPDATA"' /home/pi/.bashrc
sed -i -e '$ascreen -L -Logfile mavproxy.log -S mavproxy -d -m bash -c "mavproxy.py --master=/dev/serial0 --force-connected --baudrate 921600 --out=udp:10.243.0.1:14550 --daemon"' /home/pi/.bashrc
sed -i -e '$ascreen -list' /home/pi/.bashrc

sudo apt-get install screen -y
sudo apt-get remove modemmanager -y
#sudo apt-get install python3-dev python3-opencv python3-wxgtk4.0 python3-pip python3-matplotlib python3-lxml python3-pygame -y
pip3 install PyYAML mavproxy --user
echo 'export PATH="$PATH:$HOME/.local/bin"' >> ~/.bashrc

curl -s https://install.zerotier.com | sudo bash
sudo zerotier-cli join 1d71939404a9b1e4
####   Raspberry Pi   ############################
#$ git clone https://github.com/tsergiosoft/arp.git
#$ cd arp
#$ sudo ./install.sh
# git pull origin main

#git ls-tree -r HEAD
#sudo ip link set wlan0 down
#
################################
#on GitHub create repo tsergiosoft/arp.git
#$ git clone git@github.com:tsergiosoft/arp.git
#$ git config alias.acp '! git add . && git commit -a -m "commit" && git push'
#	Usage!!!!: git acp

#echo "# piard" >> README.md
#git init
#git config core.filemode true
#git add README.md
#git commit -m "first commit"
#git branch -M main
#git remote add origin git@github.com:tsergiosoft/piard.git
#git push -u origin main

#git update-index --chmod=+x install.sh


# On Ubuntu - create ssh
# cd ~/.ssh
#ssh-keygen -t ed25519 -C "sergtarasenko76@gmail.com"


# adduser --system --ingroup video mjpg_streamer
#mkdir "./mydir"
# python -m pip install pyserial

# Change to the package directory
# Execute individual configuration scripts
#./scripts/script1.sh
#./scripts/script2.sh

