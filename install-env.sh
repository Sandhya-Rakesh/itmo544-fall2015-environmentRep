#!bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git

git clone https://github.com/SandhyaGupta/itmo544-fall2015-applicationRep.git

mkdir /var/www/html/images
cp -r ./itmo544-fall2015-applicationRep/images/* /var/www/html/images
cp ./itmo544-fall2015-applicationRep/index.html /var/www/html
cp ./itmo544-fall2015-applicationRep/page2.html /var/www/html

echo "Hello!" > /tmp/hello.txt