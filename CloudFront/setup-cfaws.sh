#!/bin/bash

cd
apt install nodejs -y

#buat direcory
cd /etc
mkdir mrbogel

cd
# Cloudfront
#port 5000
wget -O /etc/mrbogel/proxy3.js https://raw.githubusercontent.com/powermx/v5c/main/CloudFront/proxy3.js && chmod +x /etc/mrbogel/proxy3.js
wget -O /etc/systemd/system/nodews1.service https://raw.githubusercontent.com/powermx/v5c/main/CloudFront/nodews1.service && chmod +x /etc/systemd/system/nodews1.service
#reboot service
systemctl daemon-reload
systemctl enable nodews1.service
systemctl start nodews1.service
systemctl restart nodews1.service
cclear
