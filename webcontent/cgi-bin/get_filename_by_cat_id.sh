cat_id=$1
arr=()

case $cat_id in 
	0)
		key="temp"
		;;
	1)	
		key="rain_all"
		;;
	2)
		key="wind"
		;;
	3)
		key="rain_height"
		;;
	*)
		key=""
		;;
esac

arr[0]="${key}.dat" # filename
arr[1]="${key}_cols.dat" # cols

echo "${arr[@]}"