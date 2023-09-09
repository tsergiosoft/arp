#cd ~/mjpg-streamer/mjpg-streamer-experimental
#export LD_LIBRARY_PATH=.
#mjpg_streamer -i '/usr/local/lib/mjpg-streamer/input_uvc.so -d /dev/video0  -f 15 -y -n' -o '/usr/local/lib/mjpg-streamer/output_http.so -w ./www -p 8080'
#export LD_LIBRARY_PATH=~/mjpg-streamer/mjpg-streamer-experimental

mjpg_streamer -i '/usr/local/lib/mjpg-streamer/input_file.so -e -f /usr/local/bin' -o '/usr/local/lib/mjpg-streamer/output_http.so -w /home/s/mjpg-streamer/mjpg-streamer-experimental/www -p 8080'
