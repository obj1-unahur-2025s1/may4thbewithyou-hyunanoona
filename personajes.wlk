class PersonajeConArma{
  var property armaActual 

  method potencia() = armaActual.energia()
}

class PersonajeCongelado inherits PersonajeConArma{ //han solo
  var estaCongelado = true

  override method potencia() = if(estaCongelado) 0 else super()*2
}

object r2d2{
  var bateria = 50
  const valentia = 10

  method potencia() = bateria + valentia

  method cargar() {bateria = 100}

  method descargar(unaCantidad) {bateria = bateria - unaCantidad}

  method initialize(){
    if(bateria < 0){
      self.error("es imposible que tenga" + bateria.toString() + "de bateria")
    }
  }
}
