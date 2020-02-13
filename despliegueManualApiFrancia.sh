#!/bin/bash

cd ..
sudo docker container stop nextrem_api
sudo docker container rm nextrem_api


sudo chmod -R 777 *

mv ./nextremDeploy/*.sh ./nextrem
cd ./nextrem

sudo sh ./deployServe.sh

cd ../
sudo rm -R nextremDeploy