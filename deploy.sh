#!/bin/bash
if [ "$1" != "" ]; then branch=$1; 
else
  echo "Please input branch name:"
  read branch
fi

git pull origin "$branch" 
cp -r webcontent/cgi-bin/* /usr/lib/cgi-bin/
cp -r webcontent/html/* /var/www/html/docker11257/
