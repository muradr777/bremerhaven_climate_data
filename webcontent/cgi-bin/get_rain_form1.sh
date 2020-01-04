type=$(($1 + 0))

case $type in 
	0)
		echo "Kein Niederschlag (oder kein Wert)"
		;;
	1)
		echo "nur Regen"
		;;
	2)
		echo "nur Schnee"
		;;
	3)
		echo "Regen und Schnee (und/oder Schneeregen)"
		;;
esac


