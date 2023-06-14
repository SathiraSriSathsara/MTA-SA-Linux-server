#!/bin/bash

# Script by Sathira Sri Sathsara
echo "MTA-SA permade server install script by Sathira Sri Sathsara"

# Update the system and install dependencies
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install unzip -y

# Get gdown and python pip
sudo apt install python-pip
sudo pip install gdown

# Download and unzip the server files
cd /home
sudo mkdir servers
cd /home/servers
sudo gdown --id 1JxRx_QpS3KOfFrmfOeinUYFYyFP15mn7
sudo unzip MTA.zip
sudo rm MTA.zip
cd /home/servers/multitheftauto_linux_x64

# Make the server binary executable
chmod +x mtasa-server64

# Start the server to generate the default configuration files
./mta-server64

# Stop the server
./mta-server64 --shutdown

# Start the server in the background
nohup ./mta-server64 -n -u &

echo "MTA-SA server has been installed and started successfully!"
