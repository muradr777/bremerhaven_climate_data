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

		<section class="d_table">
			<h2 class="table-title">
				Table title
			</h2>
			<table class="table table-hover border border-light">
			  <thead>
			    <tr class="bg-dark text-warning">
			      <th scope="col">#</th>
			      <th scope="col">First</th>
			      <th scope="col">Last</th>
			      <th scope="col">Handle</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
			      <td>Mark</td>
			      <td>Otto</td>
			      <td>@mdo</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			      <td>Jacob</td>
			      <td>Thornton</td>
			      <td>@fat</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			      <td colspan="2">Larry the Bird</td>
			      <td>@twitter</td>
			    </tr>
			    <tr>
			      <th scope="row">1</th>
			      <td>Mark</td>
			      <td>Otto</td>
			      <td>@mdo</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			      <td>Jacob</td>
			      <td>Thornton</td>
			      <td>@fat</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			      <td colspan="2">Larry the Bird</td>
			      <td>@twitter</td>
			    </tr>
			  </tbody>
			</table>
		</section>

	</main>
'

./footer1.sh
