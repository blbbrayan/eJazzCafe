$env.coffee = $req.coffee

$env.checkout = () -> goat.broadcast('checkout', $env.coffee);