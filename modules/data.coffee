# module is the returned object

data = {}

goat.http.get('assets/data.json', (er, res) ->
  if(er)
    console.log(er)
  else
    data = JSON.parse(res)
)

module = {
  getCoffeeTypes: ()-> return data['coffee-type'],
  getCupSizes: ()-> return data['cup-size'],
  getFlavors: ()-> return data['flavor'],
  getSugarTypes: ()-> return data['sugar'],
  getCreamTypes: ()-> return data['cream']
}