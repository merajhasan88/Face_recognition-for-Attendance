This creates an attendance system where images for employees are given to the program and their face is recognized and added to a database. The system runs on any laptop and this was tested on Ubuntu 22.04 and ESP32-S is used to capture and transmit video over the network to the laptop.


**Instructions for installation on laptop**

From command line run: `sudo ./install_facecam.s`

Then run `sudo ./run_facecam.sh`

**Instructions for writing the code to ESP32-S**
This is the code to be burnt on the ESP32CAM via the MB-Board. 

Just put any static IP address here for your default gateway and change the same in `face_detection_attendance.py`. 
Edit:
```
IPAddress local_IP(192, 168, 100, 184);
IPAddress gateway(192, 168, 100, 1);
IPAddress subnet(255, 255, 0, 0);
```

Burn it on the board and afterwards just put the CAM anywhere powered by USB cable. 

Put whatever pictures (with name of person) you want to identify faces with in `image_folder` created by `install_facecam.sh`. 

**Running the app**

Run the `run_facecam.sh` and until and unless you press 'q' it will keep on running.

Both ESP32CAM and laptop need to be on same network. 

When you press `q` to end session it will generate a csv file with all those whose faces were matched, along with the time stamp. 
