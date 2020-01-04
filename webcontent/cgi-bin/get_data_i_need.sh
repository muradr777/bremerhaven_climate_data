cat_id=$1
filename=""
path="/tmp/${USER}_$$_dwd_data"

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

newfilepath="data/tmp_${filename}"

cat $(echo "${path}/${filename}") | while read line; do
	echo $line >> $newfilepath
done

echo $newfilepath