#!/bin/bash

# Ensure the script exits if any command fails
set -e

# Define variables for the repository owner, name, and branch
owner="your_username"
repo="your_repository"
branch="dev"

# Clone the repository
git clone -b "$branch"  "https://github.com/adampfrimmer/K3s_Bootstrap.git"

# Change directory to the cloned repository
cd K3s_Bootstrap

# Run the script that needs to know the branch
sudo chmod +x helper.sh
./helper.sh

cd ..

sudo rm -r K3s_Bootstrap/


