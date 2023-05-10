#!/bin/bash

apt-get install python3-venv
python -m venv facecam
cp requirements.txt facecam
cp face_detection_attendance.py facecam
cd facecam
source bin/activate
apt-get install libpq-dev -y
apt-get install python-dev python-pip -y
apt-get install python3-dev python3-pip -y
apt-get install python3-wheel -y
pip install -r requirements.txt
mkdir attendance image_folder

bash

