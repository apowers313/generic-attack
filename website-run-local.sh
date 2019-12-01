#!/bin/bash

# start web server
echo "Starting web server: http://localhost:8000"
cd generic-attack-website
source env/bin/activate
cd output
python -m pelican.server
