((goat) ->

  goat.router.addRoute('/', 'home', ["data", "coffee-card"])
  goat.router.addRoute('/home', 'home', ["data", "coffee-card"])
  goat.router.addRoute('/other', 'other', ["data", "coffee-card"])

  goat.router.start()

)(window.goat)