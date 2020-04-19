#!/bin/bash
cd "$(dirname "$0")"

APP_DIR=app
MYSQL_DIR=mysql

rm -R -f $APP_DIR
mkdir -p $APP_DIR
rm -R -f $MYSQL_DIR
mkdir -p $MYSQL_DIR
wget -O Ianseo.zip http://ianseo.net/Release/Ianseo_20190701.zip && unzip -o Ianseo.zip -d $APP_DIR

rm -f Ianseo.zip

rm -f $APP_DIR/Common/config.inc.php 

chmod -R a+w $APP_DIR

docker rm ianseo
docker run -i -t -p "80:80" -v ${PWD}/app:/app -v ${PWD}/mysql:/var/lib/mysql --name "ianseo" mattrayner/lamp:latest
