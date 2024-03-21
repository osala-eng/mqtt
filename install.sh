#!/bin/bash

# Install and setup MQTT broker in a linux machine.

MOSQUITTO_USER=$1
MOSQUITTO_PASSWD=$2

# Install mosquitto

sudo apt-get update
sudo apt-get install mosquitto mosquitto-clients -y

# Start mosquitto service

sudo systemctl enable mosquitto
sudo systemctl start mosquitto

# Check mosquitto status

sudo systemctl status mosquitto
