#!/bin/bash

# Update Centos with any patches
yum update -y --exclude=kernel

# Tools installed
yum install -y nano git unzip screen nc telnet
