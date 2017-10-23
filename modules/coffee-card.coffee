
_formatString = (str, ar) ->
  res = str
  ar.forEach((token, index) -> res = res.split('{'+index+'}').join(token))
  return res

CoffeeCard = (cupSize, coffeeType, flavor, sugarType) ->
  this.cupSize = cupSize
  this.coffeeType = coffeeType
  this.flavor = flavor
  this.sugarType = sugarType
  this.flavorAmt = 1
  this.sugarAmt = 1
  this.getCost = () ->
    cost = 0
    if (this.cupSize)
      cost += this.cupSize.cost
    if (this.coffeeType)
      cost += this.coffeeType.cost
    if (this.flavor)
      cost += this.flavor.cost * this.flavorAmt
    if (this.sugarType)
      cost += this.sugarType.cost * this.sugarAmt
    return (Math.ceil(cost * 100) / 100)
  this.toStr = () ->
    return _formatString("{0} {1} {2} with {3} {1} shot(s) and {4} {5}(s)", [
      this.cupSize.label,#0
      this.flavor.label,#1
      this.coffeeType.label,#2
      this.flavorAmt,#3
      this.sugarAmt,#4
      this.sugarType.label#5
    ])
  return this

create = (cupSize, coffeeType, flavor, sugarType) ->
  return new CoffeeCard(cupSize, coffeeType, flavor, sugarType)

module = {
    create: create
}