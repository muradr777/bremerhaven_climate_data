#!/bin/bash
#Das Programm erstelt zu jeder .dat datei im temp verzeichnis eine gnuplot datei
#Zudem nimmt er die aktuellen daten vom 'download_data' skript
#am ende loescht er die erstellten '.dat' dateien & die '.gp' dateien
#Problem: der Output von der svg datei ist noch unbekannt, Output muss geaendert werden
#Zeile 22, 44, 68
#

# source download_data.sh

pfad=$1
output=$1

temper="$pfad/temp.dat"
rain="$pfad/rain_height.dat"
wind="$pfad/wind.dat"

#Gnuplot Lufttemperatur
echo "
set terminal svg size 1200,600

set out "\'${output}temp.svg\'"

set title "\'Lufttemperatur in Bremerhaven\'"
set xdata time
set xlabel "\'Datum\'"
set ylabel "\'Temperatur in Celsius\'"
set timefmt "\'%Y%m%d\'"
set format x "\'%d %m %y\'"
plot "\'$temper\'" using 1:2 title "\'Temperatur\'" with linespoints linewidth 3 pointtype 7 linecolor rgb "\'#FF0000\'"
" > "$output/temp.gp"

test -e "$output/temp.gp"
if [ $? = 0 ];
then gnuplot "$output/temp.gp"
else
  echo 'false_temp'
fi

#Gnuplot Niederschlagsmenge
echo "
set terminal svg size 1200,600

set out "\'${output}rain_height.svg\'"

set title "\'Niederschlagsmenge in Bremerhaven\'"
set xdata time
set xlabel "\'Datum\'"
set ylabel "\'Niederschlagsmenge in mm\'"
set timefmt "\'%Y%m%d\'"
set format x "\'%d %m %y\'"
set boxwidth 0.85 relative
set style fill solid 0.9 border rgb "\'#4169E1\'"
plot "\'$rain\'" using 1:2 title "\'Niederschlag\'" with boxes lc "\'#4169E1\'"
" > "$pfad/rain_height.gp"

test -e "$pfad/rain_height.gp"
if [ $? = 0 ];
then gnuplot "$pfad/rain_height.gp"
else
  echo 'false_rain'
fi

#Gnuplot Windgeschwindigkeit
echo "
set terminal svg size 1200,600

set out "\'${output}wind.svg\'"

set title "\'Windgeschwindigkeit in Bremerhaven\'"
set xdata time
set xlabel "\'Datum\'"
set ylabel "\'Windgeschwindigkeit in m/sec\'"
set timefmt "\'%Y%m%d\'"
set format x "\'%d %m %y\'"
plot "\'$wind\'" using 1:2 title"\'Windgeschwindigkeit\'" with linespoints linewidth 3 pointtype 7 linecolor rgb "\'#778899\'"
" > "$pfad/wind.gp"

test -e "$pfad/wind.gp"
if [ $? = 0 ];
then gnuplot "$pfad/wind.gp"
else
  echo 'false_wind'
fi

#rm -r $pfad
