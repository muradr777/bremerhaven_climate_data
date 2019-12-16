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

	<footer class="bg-dark text-light">
		<div class="container-fluid page-footer__content py-4">
			<div class="row">
				<div class="col-md-8">
					<h5 class="footer-title">
						Team 8 - Web Application
					</h5>
					<p class="pst footer-info pb-4">
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ullam placeat, natus quidem possimus sunt fuga adipisci deleniti vitae. Ipsam, est.
					</p>
				</div>
				<div class="col-md-4">
					<h5 class="footer-title">Links</h5>
					<div class="row">
						<div class="col-6">
							<ul class="list-unstyled footer-menu">
								<li><a href="index.html">Home</a></li>
								<li><a href="categories.html">Data</a></li>
								<li><a href="#">Docs</a></li>
								<li><a href="team.html">Team</a></li>
								<li><a href="credits.html">Credits</a></li>
							</ul>
						</div>
						<div class="col-6">
							<ul class="list-unstyled footer-menu">
								<li><a href="index.html">Temperatur</a></li>
								<li><a href="categories.html">Niederschlag</a></li>
								<li><a href="#">Windstärke</a></li>
							</ul>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<div class="container-fluid text-center page-footer__rights py-2">
			<small>2020 | Wetter Projekt Aufgabe <br/>© Team 8</small>
		</div>
	</footer>
</body>
</html>
'