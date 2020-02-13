#!/bin/bash

cd ..
sudo docker container stop nextrem_mysql
sudo docker container stop nextrem_site
sudo docker container stop nextrem_api
sudo docker container rm nextrem_mysql
sudo docker container rm nextrem_site
sudo docker container rm nextrem_api

sudo docker container stop nextrem_admin
sudo docker container rm nextrem_admin

sudo rm -R nextrem
mkdir nextrem 

sudo chmod -R 777 *

mv ./nextremDeploy/*.sh ./nextrem
cd ./nextrem

sudo sh ./deploy.sh
sudo sh ./deployServe.sh
sudo sh ./deployAdmin.sh

cd ../
sudo rm -R nextremDeploy
