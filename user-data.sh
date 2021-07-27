#!/bin/bash
sudo -i
yum install epel-release yum-utils wget -y
yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y
yum-config-manager --disable remi-php54
yum-config-manager --enable remi-php73
yum install php php-mysql -y
wget http://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
cp -r wordpress/* /var/www/html/
chown -R apache:apache /var/www/html
systemctl restart httpd