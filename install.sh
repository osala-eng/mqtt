#!/bin/bash

# Check for root user

if [ $(id -u) -ne 0 ]; then
    echo "Please run as root user"
    exit 1
fi

# Install and setup MQTT broker in a linux machine.

# Install mosquitto

apt-get update
apt-get install mosquitto mosquitto-clients -y

# Start mosquitto service

systemctl enable mosquitto
systemctl start mosquitto

# Check mosquitto status

systemctl status mosquitto
