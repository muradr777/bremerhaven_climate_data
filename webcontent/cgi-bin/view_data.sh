#!/bin/bash
echo "Content-type: text/html"
echo ""

./header.sh

arr=()

SAVE_IFS=$IFS
IFS='=&'
set -- $QUERY_STRING
data_id=$(($2 + 0))
arr+=( $data_id )
IFS=$SAVE_IFS

i=0
while read c_link c_title c_icon; do
	if [ $i = ${arr[0]} ]; then
		arr+=( $c_title )
	fi
	((i+=1))
done <<< $(cat data/categories.dat)


data_range=7
if [ ! ${#4} = 0 ]; then
	data_range=$(( $4 + 0 ))
	arr+=( $data_range )
fi

data_order=0
if [ ! ${#6} = 0 ]; then
	if [ $6 = "asc" ]; then
		data_order=1
	fi
	arr+=( $data_order )
fi

data_sort=1
if [ ! ${#8} = 0 ]; then
	data_sort=$(( $8 + 0 ))
	arr+=( $data_sort )
fi

# get data from API
source_path=$(./download_data.sh $data_range)

if [ ! ${#source_path} = 0 ]; then
	arr+=( $source_path )
fi

graph="../img/plot_test.svg"

if [ ${#arr[1]} = 0 ]; then
	echo '<div class="alert alert-danger" role="alert">'
	echo "		<b>Error:</b> Kategorie nicht gefunden. <a href="index.sh" class="alert-link">Link nach Hauptseite</a>"
	echo "</div>"

	exit 1
fi

echo '
	<main class="wrapper container-fluid">
'
echo "		<h1>${arr[1]}daten Presentation</h1>"		
echo '	<section class="d_diagramm">'
echo "		<img width="100%" src="${graph}" alt="Plot test" />"
echo '	</section>

		<section class="d_table"> '
		
			./table.sh "${arr[@]}"

			echo "$source_path 12123123123"
			# rm -rf "$source_path" 2> /dev/null
			
echo '	</section>
	</main>
'

./footer1.sh
