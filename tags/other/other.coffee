data = $modules.data
coffee = $modules['coffee-card']

$env.coffee = coffee.create(data.getCupSizes()[0], data.getCoffeeTypes()[0], data.getFlavors()[0], data.getSugarTypes()[0])

console.log('coffee', $env.coffee)

$env.coffeeTypes = data.getCoffeeTypes();
$env.cupSizes = data.getCupSizes();
$env.flavors = data.getFlavors();
$env.sugarTypes = data.getSugarTypes();
$env.metadata = [];

_metadata = (modelName, labelName, options) ->
    this.modelName = modelName
    this.labelName = labelName
    this.options = options
    return this

init = () ->
  $env.metadata = [
    new _metadata("cupSize", "Cup Sizes*", $env.cupSizes),
    new _metadata("coffeeType", "Coffee Types*", $env.coffeeTypes),
    new _metadata("flavor", "Flavors", $env.flavors),
    new _metadata("sugarType", "Sugar Types", $env.sugarTypes)
  ]

init();

$env.checkScroll = () -> return (document.body.scrollTop > 10)

$env.scrollToTop = () ->
  y = document.body.scrollTop;
  if (y > 0)
    y-=10;
    if(y < 0)
      y = 0;
    window.scrollTo(0, y);
    setTimeout($env.scrollToTop, 1)

$env.setValue = (selected) ->
  $env.selected = selected

$env.showCoffeeCard = () ->
  console.log('Checking out coffee:', $env.coffee.toStr())