sudo chmod -R 777 *

sudo rm -rf ./admin
git clone https://github.com/nextrem2-0/nextremAdmin.git

sudo chmod -R 777 *


SRCPATH="./nextremAdmin/*"
DISTPATH="./admin/"
rm -rf ${DISTPATH}
mkdir ${DISTPATH}
cp -r ${SRCPATH} ${DISTPATH}


sudo docker container run -d -v /opt/nextrem/admin:/usr/local/apache2/htdocs  --name nextrem_admin --expose 80 -e VIRTUAL_HOST=admin.nextrem.pve2.fpmislata.com -e LETSENCRYPT_HOST=admin.nextrem.pve2.fpmislata.com --net nginx-net httpd:2.4.41

cd  ./admin
npm install
npm run build

sudo chmod -R 777 *
cd  ../
sudo chmod -R 777 *