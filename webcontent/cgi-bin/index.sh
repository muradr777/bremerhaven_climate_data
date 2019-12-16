#!/bin/bash
source data/content.sh
echo "Content-type: text/html"
echo ""

./header.sh

echo '
	    </ul>
	</nav>

	<main class="wrapper container-fluid main__cover">
		<section class="cover-container">
			<div class="cover-txt">
				<h2 class="cover-txt__title">
' 
echo "    $main_title <span class='text-warning'>$team_name</span>"
echo '
				</h2>
				<p class="pst cover-txt__content">
' 
echo "	  $main_subtitle"
echo '
        </p>
				<p class="mt-4 cover-txt__content">
					<a href="categories.sh" class="btn btn-lg btn-warning">
						Weiter
					</a>
				</p>
			</div>
		</section>
		<div class="text-center">
			<small class="text-light">Photo by <a href="https://www.pexels.com/@kaiquestr" target="_blank">Kaique Rocha</a> from <a href="https://www.pexels.com/" target="_blank">Pexels</a></small>
		</div>
	</main>
</body>
</html>'
