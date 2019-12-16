#!/bin/bash
read branch
git pull origin "$branch" 
cp -r webcontent/cgi-bin/* /usr/lib/cgi-bin/
cp -r webcontent/html/* /var/www/html/docker11257/
