


sudo chmod -R 777 *

rm -rf nextremSinCompilar
mkdir nextremSinCompilar
cd nextremSinCompilar/
git clone https://github.com/nextrem2-0/nextremServidor.git
git clone https://github.com/nextrem2-0/nextremCliente.git

sudo chmod -R 777 *







sudo chmod -R 777 *
cd ./nextremCliente/

# Build cliente
DISTPATH="./dist"
SRCPATH="./src/*"
CSSpATH="./dist/assets/css"
rm -rf ${DISTPATH}
mkdir ${DISTPATH}
cp -r ${SRCPATH} ${DISTPATH}
mkdir ${CSSpATH}
node-sass ${DISTPATH}/assets/scss/main.scss ${CSSpATH}/styles.css
rm -rf ${DISTPATH}/assets/scss
rm -rf ${DISTPATH}/assets/components/*/*.scss

sudo chmod -R 777 *

# Deploy cliente
SPATH="./dist/*"
DPATH="../../site/"
rm -rf ${DPATH}
mkdir ${DPATH}
cp -r ${SPATH} ${DPATH}


sudo docker container run -d --name nextrem_mysql -v /opt/nextrem/mysql:/var/lib/mysql  -e MYSQL_ROOT_PASSWORD=root -e MYSQL_USER=nextrem -e MYSQL_PASSWORD=nextrem -e MYSQL_DATABASE=nextremdb -p 10200:3306 mariadb:10.1
sudo docker container run -d -v /opt/nextrem/site:/usr/local/apache2/htdocs  --name nextrem_site --expose 80 -e VIRTUAL_HOST=www.nextrem.pve2.fpmislata.com -e LETSENCRYPT_HOST=www.nextrem.pve2.fpmislata.com --net nginx-net httpd:2.4.41


sudo chmod -R 777 *
cd  ../../
sudo chmod -R 777 *

