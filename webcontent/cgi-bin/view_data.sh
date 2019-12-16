#!/bin/bash
echo "Content-type: text/html"
echo ""

./header.sh

echo '
	<main class="wrapper container-fluid">
		<h1>Data Presentation</h1>
		
		<section class="d_diagramm">
			<img width="100%" src="../img/plot_test.svg" alt="Plot test" />
		</section>

		<section class="d_table"> '
		
			./table.sh
			
echo '	</section>
	</main>
'

./footer1.sh
