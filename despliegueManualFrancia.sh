#!/bin/bash
cd ..
mkdir nextrem 

sudo chmod -R 777 *

mv ./nextremDeploy/*.sh ./nextrem
cd ./nextrem

sudo sh deployFrancia.sh