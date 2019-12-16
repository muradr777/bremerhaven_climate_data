#!/bin/bash
source data/content.sh
echo "Content-type: text/html"
echo ""

echo '

<footer class="bg-dark text-light">
		<div class="container-fluid page-footer__content py-4">
			<div class="row">
				<div class="col-md-8">
					<h5 class="footer-title">

'
echo "					$footer_title"
echo '
					</h5>
					<p class="pst footer-info pb-4">
'
echo "					$footer_subtitle"
echo '				
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
			<small>2020 © Team 8</small>
		</div>
	</footer>

'