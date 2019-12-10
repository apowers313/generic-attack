#!/bin/bash

# Install:
#   pip install stix2-validator

# MacPorts location
VALIDATOR=/opt/local/Library/Frameworks/Python.framework/Versions/3.7/bin/stix2_validator
JSON=generic-attack-stix/example-attack.json

$VALIDATOR $JSON