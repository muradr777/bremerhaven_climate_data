data=()

for dat in "$@"; do
  data+=( $dat )
done

cat_id="${data[0]}"
cat_title="${data[1]}"
data_count="${data[2]}"

# get data from API

source_path=$(./download_data.sh $data_count)

echo '<div class="row justify-content-between">'
echo '  <div class="col-12 col-sm-4">'
echo '    <h2 class="table-title">'
echo "      $cat_title Tabelle"
echo '    </h2>'
echo '  </div>'
echo '  <div class="col-12 col-sm-4 text-right">'
echo '    <div class="btn-group" role="group" aria-label="Data Range">'
          while read line; do
            echo "  <button type=\"button\" class=\"btn btn-light text-dark\">$line</button>"
          done <<< $(cat data/data_range.dat)
echo '    </div>'
echo '  </div>'
echo '</div>'

rainform_col=2 # to convert form id in text

fileinfo=( $(./get_filename_by_cat_id.sh "$cat_id") )
filename=${fileinfo[0]}
filecols=${fileinfo[1]}

echo '
<table class="table table-hover border border-light">
  <thead>
    <tr class="bg-dark text-warning">'

    while read line; do
      echo "<th scope=\"col\">$line</th>"
    done <<< $(cat "data/${filecols}")

echo '
    </tr>
  </thead>
  <tbody>
'

  i=1
  while read line; do
  echo '<tr>'
    k=0
    for val in $line; do
      if [ $k = 0 ]; then
        echo "<th scope=\"row\">$i</th>"
      fi

      if [ $k = $rainform_col ]; then
        val=$(./get_rain_form1.sh "$val")
      fi

      echo "<td>$val</td>"
      ((k+=1))
    done
  echo '</tr>'
  ((i+=1))
  done <<< $(cat "${source_path}/${filename}")


echo '
  </tbody>
</table>

'