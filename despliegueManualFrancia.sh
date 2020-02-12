#!/bin/bash
cd ..
mkdir nextrem 

mv ./nextremDeploy/*.sh ./nextrem
cd ./nextrem/nextremDeploy

sudo sh deployFrancia.sh