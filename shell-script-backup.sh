#Shell Script para BKP de diretórios do Web Server
#
#Criando variáveis de ambiente
distro=$(cut -d"=" -f2 /etc/*-release | sed -n '1p')
data=$(/bin/date +%d-%m-%y)
diretorio_de_backup=~/backup-web-server
apache2_files=/etc/apache2/
apache2_log=/var/log/apache2/
httpd_files=/etc/httpd/
httpd_log=/var/log/httpd/
www_files=/var/www/
#
#Criando diretório dos arquivos de backup
mkdir $diretorio_de_backup
#
#Criando backup de acordo com a distro
if [ "$distro" = Ubuntu ]; then
  tar -zcf backup-apache2-${data}.tar.gz $apache2_files && mv backup-apache2-${data}.tar.gz $diretorio_de_backup
  tar -zcf backup-wwww-${data}.tar.gz $www_files && mv backup-wwww-${data}.tar.gz $diretorio_de_backup
  tar -zcf backup-log-${data}.tar.gz $apache2_log && mv backup-log-${data}.tar.gz $diretorio_de_backup
else
  tar -zcf backup-httpd-${data}.tar.gz $httpd_files && mv backup-httpd-${data}.tar.gz $diretorio_de_backup
  tar -zcf backup-wwww-${data}.tar.gz $www_files && mv backup-wwww-${data}.tar.gz $diretorio_de_backup
  tar -zcf backup-log-${data}.tar.gz $httpd_log && mv backup-log-${data}.tar.gz $diretorio_de_backup
fi
#
#Verificando se o backup foi realmente feito
if [ "$?" = 0 ]; then
  echo "${data}-Executado Sem Sucesso" >> /var/log/script-backup.log
else
  echo "${data}-Executado Sem Sucesso" >> /var/log/script-backup.log
fi
