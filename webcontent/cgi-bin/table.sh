IFS="&="
set -- $QUERY_STRING
i=0
p_title=""
# Getting title from page_id($2)
while read link title resst; do
  if [ $2 = $i ]; then
    p_title=$title
  fi
  ((i+=1))
done <<< $(cat "data/categories.dat")

echo "$2 $ptitle 12312312"

echo '<h2 class="table-title">'
echo "$p_title Tabelle"
echo '</h2>'

echo '
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

'