# Docker CE Swarm 18.09

## Clone do Projeto

<pre>
$ git clone https://github.com/Navoscone/shell-script-challenge.git
</pre>

## Sobre o Script
<pre>
O Script shell-script-backup.sh é um script que faz backup dos arquivos do seu Web Server. Ele também é um script agnóstico, ou seja, é possível que seja feito backup tanto em distros da família Debian, quanto da Família Red Hat.

O Script também trabalha com diversas variáveis de ambiente, sendo possível alterá-las em casos específicos. Mas é importante que saiba o que está fazendo.
</pre>

## Agendando Execução do Script

Caso queira adicionar o script no crontab, para que ele seja executadas de forma automática e de acordo com a sua necessidade, basta seguir o tutorial abaixo:

http://www.vitorbritto.com.br/blog/agendando-tarefas-com-crontab/

## Running Playbook!
<pre>
ansible-playbook play-docker-swarm.yml -i hosts --extra-vars "user=USER DOCKER HUB password=SENHA DOCKER HUB"
</pre>
