#!/bin/bash
path="/var/www/html/docker11257/img"
if [ "$HOSTNAME" = "docker11257" ]; then
  if [ -d "$path" ]; then
    chgrp www-data $path
    chmod g+w $path
  else
    mkdir $path
    chgrp www-data $path
    chmod g+w $path
  fi
fi
