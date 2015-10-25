#!bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git php5 php5-curl curl mysql-client php-mysqli

curl -sS https://getcomposer.org/installer | sudo php &> /tmp/getcomposer.txt
sudo php composer.phar require aws/aws-sdk-php &> /tmp/runcomposer.txt

git clone https://github.com/SandhyaGupta/itmo544-fall2015-applicationRep.git

mv ./itmo544-fall2015-applicationRep/images /var/www/html/images
mv ./itmo544-fall2015-applicationRep/index.html /var/www/html
mv ./itmo544-fall2015-applicationRep/images/*.php /var/www/html
sudo mv vendor /var/www/html &> /tmp/movevendor.txt

sudo php /var/www/html/setup.php &> /tmp/database-setup.txt
sudo chmod 600 /var/www/html/setup.php

echo "Hello!" > /tmp/hello.txt
