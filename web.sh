#!/bin/bash
yum install wget unzip httpd -y
systemctl start httpd
systemctl enable httpd
wget https://templatemo.com/tm-zip-files-2020/templatemo_520_highway.zip
unzip -o templatemo_520_highway.zip
cp -r templatemo_520_highway/* /var/www/html/
systemctl restart httpd
