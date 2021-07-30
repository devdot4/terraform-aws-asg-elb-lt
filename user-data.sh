#!/bin/bash
sudo yum install mysql -y
sudo yum install epel-release yum-utils wget -y
sudo yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y
sudo yum-config-manager --disable remi-php54
sudo yum-config-manager --enable remi-php73
sudo yum install php php-mysql -y
sudo wget http://wordpress.org/latest.tar.gz
sudo tar -xzvf latest.tar.gz
sudo cp -r wordpress/* /var/www/html/
sudo setenforce 0
sudo cd /var/www/html/
sudo wget https://raw.githubusercontent.com/devdot4/team4-project/main/wp-config.php
sudo chown -R apache:apache /var/www/html
sudo systemctl restart httpd