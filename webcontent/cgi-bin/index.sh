#!/bin/bash
source data/content.sh
echo "Content-type: text/html"
echo ""

echo '
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	
	<link rel="stylesheet" href="../css/style.css" />
	
	 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- Fonawesome 4.7.0 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<title>Home</title>
</head>
<body>
'
    ./navbar.sh

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
