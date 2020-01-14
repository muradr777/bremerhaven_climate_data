#!/bin/bash
if [ "$USER" = "step2019team08" ]; then
  cd ~/
  mkdir tmp
  echo '#!/bin/bash
  rm -rf /tmp/www-data_*
  echo "content-type: text/html"
  echo ""
  ' > tmp/clear_all.sh
  scp tmp/clear_all.sh mydocker:/usr/lib/cgi-bin/
  ssh mydocker chmod +x /usr/lib/cgi-bin/clear_all.sh
  curl https://informatik.hs-bremerhaven.de/docker$(id -u)/cgi-bin/clear_all.sh
  ssh mydocker rm /usr/lib/cgi-bin/clear_all.sh
  rm -rf tmp
elif [ "$HOSTNAME" == "hopper" ]; then
  sudo -u step2019team08 ./clear_tmp.sh
elif [ "$HOSTNAME" == "docker11257" ]; then
  echo '#!/bin/bash
  rm -rf /tmp/www-data_*
  echo "content-type: text/html"
  echo ""
  ' > /usr/lib/cgi-bin/clear_all.sh
  chmod +x /usr/lib/cgi-bin/clear_all.sh
  curl https://informatik.hs-bremerhaven.de/docker11257/cgi-bin/clear_all.sh
  rm /usr/lib/cgi-bin/clear_all.sh
fi
