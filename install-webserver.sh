#!bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git php5 php5-curl curl mysql-client

curl -sS https://getcomposer.org/installer | php
php composer.phar require aws/aws-sdk-php

sudo mv vendor /var/www/html

#git clone https://github.com/SandhyaGupta/itmo544-fall2015-applicationRep.git

#mkdir /var/www/html/images
#cp -r ./itmo544-fall2015-applicationRep/images/* /var/www/html/images
#cp ./itmo544-fall2015-applicationRep/index.html /var/www/html
#cp ./itmo544-fall2015-applicationRep/page2.html /var/www/html

echo "Hello!" > /tmp/hello.txt