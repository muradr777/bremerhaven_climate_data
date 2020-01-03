#!/usr/bin/gnuplot

set terminal svg size 1600,800 font 'Courier,22'
set out '/var/www/html/jpeters/test.svg'
set title "Bremerhavens Niederschlagstypen der letzten 30 Tage"
set xdata time
set timefmt '%Y%m%d'
set xrange [ : ]
set xlabel "Datum"
set format x '%d.%m.%Y'
set ylabel "Niederschlagstyp"
VALUE="Kein Regen Schnee Schneeregen"
set ytics ( "Kein" 0 )
set for [i=1:4] ytics add ( word(VALUE,i%4+1) i )

plot 'rain_form.dat' using 1:2 title "Niederschlag"  with linespoints pointtype 7 pointsize 0.5 linewidth 3 linecolor rgb '#990000'  
