#!/bin/bash
CWD=`pwd`

# TODO:
#   - check python version: must be >3.6

# setup attack-website
echo "Setting up attack website..."
cd "$CWD/generic-attack-website"
python -m venv env
source env/bin/activate
pip3 install -r requirements.txt
python update-attack.py -c -b
echo "Done setting up attack website."

cd "$CWD"