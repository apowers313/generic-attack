#!/bin/bash
CWD=`pwd`

# setup attack-navigator
echo "Setting up attack navigator..."
cd "$CWD/generic-attack-navigator/nav-app"
npm install
echo "Done setting up attack navigator."

cd "$CWD"