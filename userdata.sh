#!/bin/bash
sudo yum install telnet -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl restart httpd