#!/bin/bash
CWD=`pwd`

# TODO:
#   - check python version: must be >3.6

# copy stix data
./stix-validate.sh
cp generic-attack-stix/example-attack.json generic-attack-website/data/stix/
cp generic-attack-stix/example-attack.json generic-attack-website/data/stix/example-attack_old.json

# setup attack-website
echo "Building attack website..."
cd "$CWD/generic-attack-website"
source env/bin/activate
python update-attack.py -c -b
echo "Done building attack website."

cd "$CWD"