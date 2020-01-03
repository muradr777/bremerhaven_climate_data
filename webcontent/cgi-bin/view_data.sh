#!/bin/bash
echo "Content-type: text/html"
echo ""

./header.sh

SAVE_IFS=$IFS
IFS='=&'
set -- $QUERY_STRING
cat_id=$(($2 + 0)) 
IFS=$SAVE_IFS

cat_title=""

i=0
while read c_link c_title c_icon; do
	if [ $i = $cat_id ]; then
		cat_title="$c_title"
	fi
	((i+=1))
done <<< $(cat data/categories.dat)

echo '
	<main class="wrapper container-fluid">
		<h1>${cat_title}daten Presentation</h1>
		
		<section class="d_diagramm">
			<img width="100%" src="../img/plot_test.svg" alt="Plot test" />
		</section>

		<section class="d_table"> '
		
			./table.sh "$cat_id" "$cat_title"
			
echo '	</section>
	</main>
'

./footer1.sh
