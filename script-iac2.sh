#!/bin/bash

echo "Atualizando o servidor..."

apt-get update 
apt-get upgrade -y

echo "Instalando Apaache2..."

apt-get install apache2 -y

echo "Istalando unzip..."

apt-get install unzip -y

echo "Baixando e descompactando aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
