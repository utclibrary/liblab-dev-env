#!/usr/bin/env bash
# Update packages
echo "Running updates ..."
dnf -y upgrade
echo "Installing editors & utils ..."
dnf -y install nano vim unzip
# unzip sql files if they exist
unzip *.zip
echo "Installing PHP 8 ..."
dnf -y install php php-mysqli
sed -i 's/index.html/index.php/g' /etc/httpd/conf/httpd.conf
echo "Modify php.ini to show php errors"
sed -i 's/display_errors = Off/display_errors = On/g' /etc/php.ini
echo "Start Apache"
systemctl start httpd
systemctl status httpd
echo "Installing MySQL ..."
dnf -y install mysql-server
# systemctl enable --now mysqld
systemctl start mysqld
systemctl status mysqld
# mysql -u root -e "create database DBofDBs";
# mysql -u root DBofDBs < /vagrant/DBofDBs.sql;
# mysql> GRANT ALL PRIVILEGES ON DBofDBs.* TO 'root'@'localhost';
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
# dnf -y install git
# echo "Getting our git files"
# if [ -z "$(ls -A /var/www/html/)" ]; then
#    git clone https://github.com/utclibrary/liblab.git /var/www/html/
# else
#    cd /var/www/html/
#    git pull
# cd ~/
# fi
echo "see https://blog.benjie.me/connect-mysql-workbench-with-mysql-mariadb-in-vagrant-over-ssh/ to set up MySQL Workbench connection"
echo " run 'vagrant ssh-config' to configure MySQL Workbench"
echo " if warning on second connect modify ~/.ssh/know_host per https://www.thegeekdiary.com/how-to-fix-the-error-host-key-verification-failed/"
setenforce Permissive
echo "use http://liblab.local"
echo "be sure to 'git pull' in liblab directory"