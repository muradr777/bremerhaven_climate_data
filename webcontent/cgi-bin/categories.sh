#!/bin/bash
echo "Content-type: text/html"
echo ""

./header.sh

echo '
<main class="wrapper container-fluid">
		<h1 class="cat-page-title">Wählen Sie der Daten-Kategorien</h1>

		<section class="categories-container">
			<div class="row">
'
        cat data/categories.dat | while read c_link c_title c_icon; do
          echo '
			    	<div class="col-md-4">
					    <article class="category-card">
					    	<div class="category-card__ico">
          '
			    echo "  <img src=\"$c_icon\" title=\"Icons made by Freepik and Vitaly Gorbachev from www.flaticon.com\" alt=\"$c_title\">
			          </div>
					    	<div class=\"category-card__title\">
							  	<a href=\"$c_link\" class=\"link__block\"></a>
			            <p>$c_title</p>
			      	  </div>
					    </article>
				    </div>
          "
        done 
echo '

			</div>
		</section>

	</main>
'

./footer.sh

echo '
</body>
</html>
'
