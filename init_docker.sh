#!/bin/bash
# Cleares www-data* directories in /tmp/
# deploys master to docker (using ./deploy.sh master)
# prepares /var/www/html/dockerxxxxx/img/


if [ "$USER" == "step2019team08" ];then
  ./clear_tmp.sh
  ssh mydocker "cd git/step2019team08-WebProjekt ; ./deploy.sh master"
  ./prepare_img.sh
elif [ "$HOSTNAME" == "docker11257" ];then
  ./clear_tmp.sh
  cd ~/git/step2019team08-WebProjekt; 
  ./deploy.sh master
  ./prepare_img.sh
else
  echo "not the right user or host"
  exit 1
fi
