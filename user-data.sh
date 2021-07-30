#!/bin/bash
sudo setenforce 0
sudo curl -OL https://raw.githubusercontent.com/devdot4/team4-project/main/wp-config.php
sudo chown -R apache:apache /var/www/html
sudo systemctl restart httpd