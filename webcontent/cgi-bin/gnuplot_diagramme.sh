#!/bin/bash
#Das Programm erstelt zu jeder .dat datei im temp verzeichnis eine gnuplot datei
#Zudem nimmt er die aktuellen daten vom 'download_data' skript
#am ende loescht er die erstellten '.dat' dateien & die '.gp' dateien
#Problem: der Output von der svg datei ist noch unbekannt, Output muss geaendert werden
#Zeile 22, 44, 68
#

file=$1
pfad=${1%/*}
output=/var/www/html/docker11257/img/plot/
svg_name="$output$$.svg"

#Gnuplot Lufttemperatur
if [ "${file##*/}" == "temp.dat" ]; then
  echo "
  set terminal svg size 1200,600

  set out "\'${svg_name}\'"

  set title "\'Lufttemperatur in Bremerhaven\'"
  set xdata time
  set xlabel "\'Datum\'"
  set ylabel "\'Temperatur in Celsius\'"
  set timefmt "\'%Y%m%d\'"
  set format x "\'%d %m %y\'"
  plot "\'$file\'" using 1:2 title "\'Temperatur\'" with linespoints linewidth 3 pointtype 7 linecolor rgb "\'#FF0000\'"
  " > "${pfad}/temp.gp"

  test -e "$pfad/temp.gp"
  if [ $? = 0 ];then 
    gnuplot "$pfad/temp.gp"
    echo "${svg_name##*/}"
  else
    echo 'false'
  fi
elif [ "${file##*/}" == "rain_height.dat" ]; then
  #Gnuplot Niederschlagsmenge
  echo "
  set terminal svg size 1200,600

  set out "\'${svg_name}\'"

  set title "\'Niederschlagsmenge in Bremerhaven\'"
  set xdata time
  set xlabel "\'Datum\'"
  set ylabel "\'Niederschlagsmenge in mm\'"
  set timefmt "\'%Y%m%d\'"
  set format x "\'%d %m %y\'"
  set boxwidth 0.85 relative
  set style fill solid 0.9 border rgb "\'#4169E1\'"
  plot "\'$file\'" using 1:2 title "\'Niederschlag\'" with boxes lc "\'#4169E1\'"
  " > "$pfad/rain_height.gp"

  test -e "$pfad/rain_height.gp"
  if [ $? = 0 ]; then 
    gnuplot "$pfad/rain_height.gp"
    echo "${svg_name##*/}"
  else
    echo 'false'
  fi

elif [ "${file##*/}" == "wind.dat" ]; then
#Gnuplot Windgeschwindigkeit
  echo "
  set terminal svg size 1200,600

  set out "\'${svg_name}\'"

  set title "\'Windgeschwindigkeit in Bremerhaven\'"
  set xdata time
  set xlabel "\'Datum\'"
  set ylabel "\'Windgeschwindigkeit in m/sec\'"
  set timefmt "\'%Y%m%d\'"
  set format x "\'%d %m %y\'"
  plot "\'$file\'" using 1:2 title"\'Windgeschwindigkeit\'" with linespoints linewidth 3 pointtype 7 linecolor rgb "\'#778899\'"
  " > "$pfad/wind.gp"

  test -e "$pfad/wind.gp"
  if [ $? = 0 ]; then 
    gnuplot "$pfad/wind.gp"
    echo "${svg_name##*/}"
  else
    echo 'false'
  fi
else 
	echo "$file"
fi
