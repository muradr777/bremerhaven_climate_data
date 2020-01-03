#!/bin/bash
echo "Content-type: text/html"
echo ""

./header.sh

SAVE_IFS=$IFS
IFS='=&'
set -- $QUERY_STRING
cat_id=$2
cat_title=""
IFS=$SAVE_IFS

i=0
while read c_link c_title c_icon; do
	echo "$c_title $i 11"
	((i+=1))
done <<< data/categories.dat

echo '
	<main class="wrapper container-fluid">
		<h1>Data Presentation</h1>
		
		<section class="d_diagramm">
			<img width="100%" src="../img/plot_test.svg" alt="Plot test" />
		</section>

		<section class="d_table"> '
		
			./table.sh "Temperatur" $cat_id
			
echo '	</section>
	</main>
'

./footer1.sh
