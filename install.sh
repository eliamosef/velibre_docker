#!/bin/bash

echo "### Launching installation of veLibre"

echo "### STEP 1: creating target directory"
bash create_target.sh

echo "### STEP 2: building image"
docker build -t velibre .

echo "### STEP 3: veLibre successfully installed"