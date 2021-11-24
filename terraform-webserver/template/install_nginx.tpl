#!/bin/bash
set -e
echo "*****    Installing Nginx    *****"
apt update
apt install -y nginx
ufw allow '${ufw_allow_nginx}'
systemctl enable nginx
systemctl restart nginx

echo "*****   Installation Completed!!   *****"
git clone https://github.com/vistasunil/devopsIQ.git
cp -R devopsIQ/devopsIQ/* /var/www/html/

