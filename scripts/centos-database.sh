#!/bin/bash

# MySQL installed and enabled
yum install -y mariadb-server mariadb mariadb-devel
systemctl enable mariadb
systemctl start mariadb
mysql -u root -e "SHOW DATABASES";
