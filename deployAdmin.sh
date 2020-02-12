sudo chmod -R 777 *

rm -rf nextremSinCompilar
mkdir nextremSinCompilar
sudo rm -rf ./admin
cd nextremSinCompilar/
git clone https://github.com/nextrem2-0/nextremDeploy.git

sudo chmod -R 777 *


cd ./nextremDeploy/

sudo docker container run -d -v /opt/nextrem/admin:/usr/local/apache2/htdocs  --name nextrem_admin --expose 80 -e VIRTUAL_HOST=admin.nextrem.pve2.fpmislata.com -e LETSENCRYPT_HOST=admin.nextrem.pve2.fpmislata.com --net nginx-net httpd:2.4.41

cd  ../
npm install
npm run build

sudo chmod -R 777 *
cd  ../
sudo chmod -R 777 *