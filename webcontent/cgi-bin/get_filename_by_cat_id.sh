cat_id=$1
filename=""

case $cat_id in 
	0)
		filename="temp.dat"
		;;
	1)	
		filename="rain_form.dat"
		;;
	2)
		filename="wind.dat"
		;;
	*)
		filename=""
		;;
esac

echo $filename