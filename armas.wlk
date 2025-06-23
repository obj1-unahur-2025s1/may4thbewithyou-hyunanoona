class Arma{
  var property energia 
}

class Blaster inherits Arma{
  const potencionador 

  override method energia() = super() * potencionador
}
