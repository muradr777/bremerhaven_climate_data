#!/bin/bash
if [ "$USER" = "step2019team08" ]; then
  ssh mydocker "echo 'rm -rf /tmp/www-data_*; echo \"content-type: text/html\"; echo \"\" ' > /usr/lib/cgi-bin/clear_all.sh ; curl https://informatik.hs-bremerhaven.de/docker$(id -u)/cgi-bin/clear_all.sh ; rm /usr/lib/cgi-bin/clear_all.sh"
else
  sudo -u step2019team08 ./clear_tmp.sh
fi
