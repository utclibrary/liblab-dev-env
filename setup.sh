#!/usr/bin/env bash

# Update packages
echo "Running yum update..."
yum -y update
echo "installing PHP 7 ..."
yum -y install epel-release yum-utils
yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum-config-manager --enable remi-php72
yum -y install php php-common php-opcache php-mcrypt php-cli php-gd php-curl php-mysql
echo "Installing Apache ..."
yum -y install httpd
echo "Start Apache"
systemctl start httpd
echo "installing MariaDB ..."
yum -y install mariadb-server
systemctl start mariadb
systemctl status mariadb
mysql -u root -e "create database LuptonDB";
mysql -u root LuptonDB < /vagrant/LuptonDB.sql;
mysql> GRANT ALL PRIVILEGES ON LuptonDB.* TO 'root'@'localhost';
echo "creating default db connection file ..."
mkdir -p /var/www/private
echo -ne "[database]\nservername = localhost\nusername = root\npassword = \ndbname = LuptonDB\n" > config.ini
cp config.ini /var/www/private/config.ini
echo "installing git ..."
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