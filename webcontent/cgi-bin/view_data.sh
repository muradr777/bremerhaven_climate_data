#!/bin/bash
echo "Content-type: text/html"
echo ""

./header.sh

IFS="&="
parm=($QUERY_STRING)
echo $parm

echo '
	<main class="wrapper container-fluid">
		<h1>Data Presentation</h1>
		
		<section class="d_diagramm">
			<img width="100%" src="../img/plot_test.svg" alt="Plot test" />
		</section>

		<section class="d_table"> '
		
			./table.sh "Temperatur" 0
			
echo '	</section>
	</main>
'

./footer1.sh
