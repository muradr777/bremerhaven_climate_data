#!/bin/bash

baseurl="https://informatik.hs-bremerhaven.de/step2019team08/"
dockerurl="https://informatik.hs-bremerhaven.de/docker11257/cgi-bin"

curl_base() {
  curl "$dockerurl/$1" 2>&-
}

print_color() {
  if [ "$2" == "0" ]; then
    echo -e "\e[1;33m$1 \e[0m\e[32mfound \e[0m"
  else
    echo -e "\e[1;33m$1 \e[0m\e[31mnot found \e[0m"
  fi
}

quiet_grep() {
  grep -o "$1" <<<$(curl_base "$2") >/dev/null
}

grep -o 'docker11257/cgi-bin/index.sh' <<<$(curl -I "$baseurl" 2>&-)
moved=$?
print_color moved $moved

quiet_grep "Hallo von <span class='text-warning'>Team 8</span>" "index.sh"
index=$?
print_color index.sh $index

quiet_grep "Temperatur" "categories.sh"
categories=$?
print_color categories $categories

quiet_grep "Temperaturdaten Presentation" "view_data.sh?cat_id=0&range=7&order=desc&sort=1"
temp=$?
print_color temperature_page $temp

quiet_grep "Niederschlagdaten Presentation" "view_data.sh?cat_id=1&range=7&order=desc&sort=1"
rain=$?
print_color rain_page $rain

quiet_grep "Windstaerkedaten Presentation" "view_data.sh?cat_id=2&range=7&order=desc&sort=1"
wind=$?
print_color wind_page $wind

quiet_grep "Team Liste" "team.sh"
team=$?
print_color team $team

#curl -i "$dockerurl/index.sh"
#curl -i
