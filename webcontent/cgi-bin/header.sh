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

	<title>Team08 - Wetter App</title>
</head>
<body>
<nav class="container-fluid navbar navbar-expand-lg navbar-dark bg-dark">
	  <a class="navbar-brand" href="index.sh">
	  	<i class="fa fa-bolt text-warning mr-2" aria-hidden="true"></i>Thunder
	  </a>	  
	    <ul class="navbar-nav">
'
     cat data/navbar_menu.dat | while read link title; do
      if [ "$title" = "Kategorien" ]; then
        echo '
         <li class="nav-item c_dropdown">
	      '
        echo "
           <a class='nav-link dropdown-toggle' href='$link'>
	          $title
	         </a>
	         <div class='c_dropdown-menu'>
        "
           cat data/categories.dat | while read c_link c_title c_icon; do
            echo "
	            <a class="c_dropdown-item" href="$c_link">$c_title</a>
            "
           done
           echo "
	             </div>
	            </li>
           "
      elif [ "$title" = "Docs" ]; then
        echo "
         <li class="nav-item">
          <a class="nav-link" href="$link" target=\"_blank\">$title</a>
         </li>
        "
      else 
        echo "
	       <li class="nav-item">
	        <a class="nav-link" href="$link">$title</a>
	       </li>
        "
      fi
     done

echo '
    </ul>
</nav>'