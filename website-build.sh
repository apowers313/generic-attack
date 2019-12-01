#!/bin/bash
CWD=`pwd`

# TODO:
#   - check python version: must be >3.6

# setup attack-website
echo "Building attack website..."
cd "$CWD/generic-attack-website"
source env/bin/activate
python update-attack.py -c -b
echo "Done building attack website."

cd "$CWD"