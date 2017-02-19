## Create multiple virtual machines using Vagrant - LAMP Stack

This project will provision 1) web-server and 1) database-server through the execution of a preconfigured Vagrantfile. Additional text editors, networking, and code repository tools will also install as part of the build.

## LAMP Stack

The LAMP stack configuration is as follows:

Linux (Centos-7.3)
Apache HTTP Server v2.4
Maria (MySQL) v1.5
PHP v5.4

Additional tools installed:
Git
Nano
Telnet
unzip

## Motivation

Project was created to help efforts with ephemeral environments for development and testing code

## Installation (WIP)

- Update files/git-config file with user name and email information
- Install Vagrant (if necessary), and run the projects-vagrant/multi-vms/Vagrantfile from system

## Tests

Once Vagrant completes the build, you can log onto either system with the following commands:
$ vagrant ssh web
$ vagrant ssh db

Test the web-server Apache install by hitting the URL:
http://192.168.10.2

Test the PHP install by hitting the URL:
http://192.168.10.2/info.php

Test the database-server install by logging on to the database-server (vagrant ssh db) and executing the following commands:
mysql -u root -e "SHOW DATABASES";

Test connectivity between the systems by logging on to the web-server and SSH into the database-server server:
vagrant ssh web
ssh 192.168.10.3
<answer 'yes' when prompted>
<enter password: 'vagrant'>
hostname
