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
							<ul class="list-unstyled footer-menu"> '
							cat data/navbar_menu.dat | while read link title; do
								echo "	<li><a href=\"$link\">$title</a></li>"
							done
echo '						</ul>
						</div>
						<div class="col-6">
							<ul class="list-unstyled footer-menu"> '
							cat data/categories.dat | while read link title icon; do
								echo "	<li><a href=\"$link\">$title</a></li>"
							done
echo '						</ul>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<div class="container-fluid text-center page-footer__rights py-2"> '
echo "		<small>$footer_year <br/>© $team_name</small>"
echo '	</div>
	</footer>

'