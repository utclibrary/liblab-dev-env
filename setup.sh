#!/usr/bin/env bash

# Update packages
echo "Running yum update..."
yum -y update
echo "Installing editors ..."
yum -y install nano vim unzip
unzip *.zip
echo "Installing PHP 8 ..."
yum -y install epel-release yum-utils
yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum-config-manager --disable 'remi-php*'
yum-config-manager --enable remi-php80
yum -y install php php-common php-opcache php-mcrypt php-cli php-gd php-curl php-mysql php-xml
echo "Installing Apache ..."
yum -y install httpd
echo "Modify php.ini to show php errors"
echo "display_errors = On" >> /etc/php.ini
echo "Start Apache"
systemctl start httpd
echo "Installing MariaDB ..."
yum -y install mariadb-server
systemctl start mariadb
systemctl status mariadb
mysql -u root -e "create database DBofDBs";
mysql -u root DBofDBs < /vagrant/DBofDBs.sql;
mysql> GRANT ALL PRIVILEGES ON DBofDBs.* TO 'root'@'localhost';
mysql -u root -e "create database LuptonDB";
mysql -u root LuptonDB < /vagrant/LuptonDB.sql;
mysql> GRANT ALL PRIVILEGES ON LuptonDB.* TO 'root'@'localhost';
mysql -u root -e "create database Dates";
mysql -u root Dates < /vagrant/Dates.sql;
mysql> GRANT ALL PRIVILEGES ON Date.* TO 'root'@'localhost';
mysql -u root -e "create database Login";
mysql -u root Login < /vagrant/Login.sql;
mysql> GRANT ALL PRIVILEGES ON Login.* TO 'root'@'localhost';
echo "Creating default db connection file ..."
mkdir -p /var/www/private
echo -ne "[database]\nservername = localhost\nusername = root\npassword = \n" > config.ini
cp config.ini /var/www/private/config.ini
echo "Installing git ..."
yum -y install git
#echo "Getting our git files"
#if [ -z "$(ls -A /var/www/html/)" ]; then
#   git clone https://github.com/utclibrary/liblab.git /var/www/html/
#else
   #cd /var/www/html/
   #git pull
#cd ~/
#fi
echo "see https://blog.benjie.me/connect-mysql-workbench-with-mysql-mariadb-in-vagrant-over-ssh/ to set up MySQL Workbench connection"
echo " run 'vagrant ssh-config' to configure MySQL Workbench"
echo " if warning on second connect modify ~/.ssh/know_host per https://www.thegeekdiary.com/how-to-fix-the-error-host-key-verification-failed/"
setenforce 0
echo "use http://192.168.33.10 OR http://localhost:8080 OR http://liblab.local"
echo "be sure to 'git pull' in liblab directory"
