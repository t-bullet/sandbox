#!/bin/bash

# Apache install and enabled
yum install -y httpd httpd-devel httpd-tools
systemctl enable httpd
systemctl status httpd
service httpd stop
rm -rf /var/www/html
ln -s /vagrant /var/www/html
systemctl start httpd

# PHP installed
yum install -y php php-cli php-common php-devel php-mysql

# Download Starter Content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/t-bullet/sandbox/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/t-bullet/sandbox/master/files/info.php

systemctl restart httpd
