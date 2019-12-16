#!/bin/bash
echo '
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
