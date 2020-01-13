#!/bin/bash
# Cleares www-data* directories in /tmp/
# deploys master to docker (using ./deploy.sh master)
# prepares /var/www/html/dockerxxxxx/img/


./clear_tmp.sh
if [ "$USER" == "step2019team08" ];then
  ssh mydocker "cd git/step2019team08-WebProjekt ; ./deploy.sh master"
else
  echo "not the right user"
  exit 1
fi
./prepare_img.sh
