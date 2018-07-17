#!/usr/bin/env bash

# Update packages
echo "Running yum update..."
yum -y update
echo "installing PHP 7.X"
yum -y install epel-release yum-utils
yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum-config-manager --enable remi-php72
yum -y install php php-common php-opcache php-mcrypt php-cli php-gd php-curl php-mysql
echo "Install Apache"
yum -y install httpd
echo "Start Apache"
systemctl start httpd
yum -y install git
echo "Let's get our git files"
if [ -z "$(ls -A /var/www/html/)" ]; then
   git clone https://github.com/utclibrary/liblab.git /var/www/html/
else
   cd /var/www/html/
git pull
cd ~/
fi

setenforce 0
echo "use 192.168.33.10"
echo "be sure to 'git pull' in html directory"
