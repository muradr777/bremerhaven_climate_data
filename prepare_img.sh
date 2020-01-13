#!/bin/bash
path="/var/www/html/docker11257/img/plot"
if [ "$HOSTNAME" = "docker11257" ]; then
  if [ -d "$path" ]; then
    chgrp www-data $path
    chmod g+w $path
  else
    mkdir -p $path
    chgrp www-data $path
    chmod g+w $path
  fi
elif [ "$HOSTNAME" = "hopper" ]; then
  if [ "$USER" = "step2019team08" ]; then
    ssh mydocker "if [ -d "$path" ]; then chgrp www-data $path; chmod g+w $path; else mkdir -p $path; chgrp www-data $path; chmod g+w $path; fi"
  else
    sudo -u step2019team08 ssh mydocker "if [ -d "$path" ]; then chgrp www-data $path; chmod g+w $path; else mkdir -p $path; chgrp www-data $path; chmod g+w $path; fi"
  fi
fi
