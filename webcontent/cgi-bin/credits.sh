#!/bin/bash
echo "Content-type: text/html"
echo ""

./header.sh

echo '
	<main class="wrapper container-fluid">
		<h1>Credits</h1>
		<div>
			Icons made by 
			<a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> and 
			<a href="https://www.flaticon.com/authors/vitaly-gorbachev" title="Vitaly Gorbachev">Vitaly Gorbachev</a>
			from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a>
		</div>
		<div>
			Cover photo made by <a href="https://www.pexels.com/@kaiquestr" target="_blank">Kaique Rocha</a> from <a href="https://www.pexels.com/" target="_blank">Pexels</a>
		</div>
	</main>
'

./footer1.sh