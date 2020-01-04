data=()

for dat in "$@"; do
  data+=( $dat )
done

# get data from API
./download_data.sh 30 > /dev/null

echo '<h2 class="table-title">'
echo "${data[1]} Tabelle"
echo '</h2>'


echo '
<table class="table table-hover border border-light">
  <thead>
    <tr class="bg-dark text-warning">'

    while read line; do
      echo "<th scope=\"col\">$line</th>"
    done <<< $(cat data/temp_cols.dat)

echo '
    </tr>
  </thead>
  <tbody>
'
  i=1
  source_path=$(./get_data_i_need.sh "${data[0]}")

  while read line; do
  echo '<tr>'
    k=0
    for val in $line; do
      if [ k = 0 ]; then
        echo "<th scope=\"row\">$val</th>"
      else
        echo "<td>$val</td>"
      fi
      ((k+=1))
    done
  echo '</tr>'
  ((i+=1))
  done <<< $(cat $source_path)


echo '
  </tbody>
</table>

'