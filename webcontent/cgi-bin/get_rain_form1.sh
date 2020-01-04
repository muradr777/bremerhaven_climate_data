type=$(($1 + 0))

case $type in 
	0)
		echo "<span class=\"rain_form_block\"><i class=\"fa fa-sun-o text-warning\" aria-hidden=\"true\"></i><span>Kein Niederschlag (oder kein Wert)</span></span>"
		;;
	1)
		echo "<span class=\"rain_form_block\"><i class=\"fa fa-tint text-primary\" aria-hidden=\"true\"></i><span>nur Regen</span></span>"
		;;
	2)
		echo "<span class=\"rain_form_block\"><i class=\"fa fa-snowflake-o text-primary\" aria-hidden=\"true\"></i><span>nur Schnee</span></span>"
		;;
	3)
		echo "<span class=\"rain_form_block\"><i class=\"fa fa-tint text-primary\" aria-hidden=\"true\"></i><i class=\"fa fa-snowflake-o text-primary\" aria-hidden=\"true\"></i><span>Regen und Schnee (und/oder Schneeregen)</span></span>"
		;;
esac


