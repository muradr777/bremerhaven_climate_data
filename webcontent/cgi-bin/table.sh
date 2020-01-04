data=()

for dat in "$@"; do
  data+=( $dat )
done

# get data from API
# ./download_data.sh 30 > /dev/null

echo '<h2 class="table-title">'
echo "${data[1]} Tabelle"
echo '</h2>'

fileinfo=( $(./get_filename_by_cat_id.sh "${data[0]}") )
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
      echo "<td>$val</td>"
      ((k+=1))
    done
  echo '</tr>'
  ((i+=1))
  done <<< $(cat "/tmp/_723457_dwd_data/${filename}")


echo '
  </tbody>
</table>

'