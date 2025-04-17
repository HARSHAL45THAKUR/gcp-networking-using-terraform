#!/bin/bash
echo "Welcome to vm1" > /var/www/html/index.html
sudo apt update -y
sudo apt install -y apache2
sudo systemctl start apache2
