#!/bin/bash
echo "Content-type: text/html"
echo ""

./header.sh

arr=()

SAVE_IFS=$IFS
IFS='=&'
set -- $QUERY_STRING
arr[0]=$(($2 + 0)) 
IFS=$SAVE_IFS

i=0
while read c_link c_title c_icon; do
	if [ $i = $arr[0] ]; then
		arr[1]="$c_title"
	fi
	((i+=1))
done <<< $(cat data/categories.dat)

# if [ ${#arr[0]} = 0 ]; then
# 	echo '<div class="alert alert-danger" role="alert">'
# 	echo "		<b>Error:</b> Kategorie nicht gefunden. <a href="index.sh" class="alert-link">Link nach Hauptseite</a>"
# 	echo "</div>"

# 	exit 1
# fi

echo '
	<main class="wrapper container-fluid">
'
echo "		<h1>${cat_title}daten Presentation</h1>"		
echo '		
		<section class="d_diagramm">
			<img width="100%" src="../img/plot_test.svg" alt="Plot test" />
		</section>

		<section class="d_table"> '
		
			./table.sh "${arr[@]}"
			
echo '	</section>
	</main>
'

./footer1.sh
