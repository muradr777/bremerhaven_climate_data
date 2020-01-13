#!/bin/bash
# Cleares www-data* directories in /tmp/
# deploys master to docker (using ./deploy.sh master)
# prepares /var/www/html/dockerxxxxx/img/


./clear_tmp.sh
if [ "$USER" == "step2019team08" ];then
  ssh mydocker ./deploy.sh master
else
  sudo -iu step2019team08 ./deploy.sh master
fi
./prepare_img.sh
