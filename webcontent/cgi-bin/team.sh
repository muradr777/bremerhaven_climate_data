#!/bin/bash
echo "Content-type: text/html"
echo ""

./header.sh

echo '
	<main class="wrapper container-fluid">
		<h1 class="cat-page-title page__title">Team Liste</h1>

		<section class="categories-container">
			<div class="row">
'
			cat data/team_list.dat | while read h_username img txt name; do
				echo "
					<div class=\"col-md-3\">
						<article class=\"team-card\">
							<div class=\"team-card__avatar\" style=\"background-image: url($img)\"></div>
							<div class=\"team-card__txt\">
									<a href=\"https://informatik.hs-bremerhaven.de/$h_username/\" class=\"link__block\" target=\"_blank\">
										<span>Webseite</span>
									</a>
									<p class=\"team-card__title pst\">$name</p>
									<p class=\"team-card__content pst\">$txt</p>
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