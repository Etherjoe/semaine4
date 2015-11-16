require"open-uri"
require"json"


loop do
puts"Entrez le nuùéro du code barre:"

bar_code=gets.chomps
url="http://fr.openfoodfacts.org/api/v0/produit/un-code-barre.json"

json=open(url).read

data=JSON.parse(json)

puts data['product']['product_name']

end
