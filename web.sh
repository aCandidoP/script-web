#!/bin/bash

echo "Atualizando Sistema"

apt update -y
apt upgrade -y

echo "Instalando Apache"

apt install apache2 -y

echo "Baixando aplicação do git hub"

git clone https://github.com/aCandidoP/site_html

echo "copiando aplicação para dentro do diretório do apache"

mv site_html/* /var/www/html

echo "Restartando Apache"

/etc/init.d/apache2 restart

echo "Fim da execução do script"
