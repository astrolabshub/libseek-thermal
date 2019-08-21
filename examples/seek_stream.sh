# Launch seek output to capture camera output into image stills saved to mounted tmp directory
seek_viewer --camtype=seek --colormap=4 --FFC="seek_ffc.png" --output="still" &
# Launch mjpeg streamer pipeline command
cd /home/pi/mjpg-streamer/mjpg-streamer-experimental && ./mjpg_streamer -i "input_file.so -f /tmp -n img.jpg -d 0 -r" -o "output_http.so -p 8080 -w ./www" &
