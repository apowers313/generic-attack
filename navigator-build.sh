#!/bin/bash
CWD=`pwd`

# setup attack-navigator
echo "Building attack navigator..."
cd "$CWD/generic-attack-navigator/nav-app"
ng build
echo "Done building attack navigator."

cd "$CWD"