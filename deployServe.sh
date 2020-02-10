#!/bin/bash
sudo docker container stop nextrem_api
sudo docker container rm nextrem_api
sudo rm -rf ./api
git clone -b master https://github.com/nextrem2-0/nextremServidor.git ./api

sudo rm -R ./api/vendor/
cd ./api
composer update
cd ..

chmod -R 777 ./api
sudo docker container run -d --name nextrem_api -v /opt/nextrem/api:/var/www/html --expose 80 -e VIRTUAL_HOST=api.nextrem.pve2.fpmislata.com -e LETSENCRYPT_HOST=api.nextrem.pve2.fpmislata.com --net "nginx-net" php:7.3-apache
sudo docker exec -it nextrem_api a2enmod rewrite
sudo docker exec -it nextrem_api docker-php-ext-install pdo pdo_mysql
sudo docker container restart nextrem_api

cd ./api
php artisan storage:link
cd ..

chmod -R 777 * ./api
