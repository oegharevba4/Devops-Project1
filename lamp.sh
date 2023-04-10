#! /bin/sh

#script needs some modifications to run
#Linux
#update and upgrade packages
sudo apt update
sudo apt upgrade

#Apache
#install apache2 server
sudo apt install apache2

#check status of apache server
sudo systemctl status apache2

#MySQL
#install mysql server
sudo apt install mysql-server

#set a password for root user
#replace <password> with desired password
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY <password>

#run security script pre-installed with MySQL and respond to the prompt as desired
sudo mysql_secure_installation

#connect to mysql console
sudo mysql -p
exit

#PHP
#install PHP server, libapache-mod-php and php-mysql
sudo apt install php php-mysql libapache2-mod-php

#verify installed php version
php -v

exit