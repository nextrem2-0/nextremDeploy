#!/bin/bash
cd ..
mkdir nextrem 

sudo chmod -R 777 *

mv ./nextremDeploy/*.sh ./nextrem
cd ./nextrem

sudo sh ./deploy.sh
sudo sh ./deployServe.sh
