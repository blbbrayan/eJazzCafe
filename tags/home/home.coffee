$env.popular = [
  "Mocha Frappe",
  "Vanilla Frappe",
  "Black"
]

data = $modules.data
coffee = $modules['coffee-card']

$env.coffee = coffee.create(data.getCupSizes()[0], data.getCoffeeTypes()[0], data.getFlavors()[0], data.getSugarTypes()[0])

console.log('coffee', $env.coffee)