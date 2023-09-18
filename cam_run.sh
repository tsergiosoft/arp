#cd ~/mjpg-streamer/mjpg-streamer-experimental
#export LD_LIBRARY_PATH=.

mjpg_streamer -i '/usr/local/lib/mjpg-streamer/input_uvc.so -d /dev/video0 -n' -o '/usr/local/lib/mjpg-streamer/output_http.so -w /home/pi/mjpg-streamer/mjpg-streamer-experimental/www -p 8080'

#YUVU format (f param) - better pic slower stream
#mjpg_streamer -i '/usr/local/lib/mjpg-streamer/input_uvc.so -d /dev/video0  -f 2 -n' -o '/usr/local/lib/mjpg-streamer/output_http.so -w /home/pi/mjpg-streamer/mjpg-streamer-experimental/www -p 8080'

#   file simulation without CAM
#mjpg_streamer -i '/usr/local/lib/mjpg-streamer/input_file.so -e -f /home/pi/awm/camsimul' -o '/usr/local/lib/mjpg-streamer/output_http.so -w /home/pi/mjpg-streamer/mjpg-streamer-experimental/www -p 8080'
