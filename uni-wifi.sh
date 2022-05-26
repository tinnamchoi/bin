#!/bin/bash

sudo systemctl restart NetworkManager
echo "restarted nm"
nmcli con down UofA
echo "disconnected"
sleep 5
nmcli con up UofA
echo "connected"
