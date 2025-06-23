//maestros jedi
class Maestros{
  var midiclorianos
  var sable
  var lado
  var property esperanza 

  method potencia() = (midiclorianos/1000 + sable.energia()) * lado.nivelDeFuerza()
  method vivirSuceso(suceso) {
    lado.vivirSuceso(self, suceso)
  }

  method cambiarDeLado() {lado = lado.cambiar()}
}

object ladoLuz{
  method nivelDeFuerza() =  10

  method vivirSuceso(unMaestro, unSuceso){
    if(unSuceso.cargaEmocional() > unMaestro.esperanza()){
      unMaestro.cambiarDeLado()
      ladoOscuro.recibirSith()
    }
  }

  method cambiar() = ladoOscuro
}

object ladoOscuro {
  var nivelDeFuerza = null

  method nivelDeFuerza() = nivelDeFuerza  

  method recibirSith(){nivelDeFuerza = nivelDeFuerza + 1}

  method vivirSuceso(unMaestro, unSuceso){
    if(unSuceso.cargaEmocional() > 100){
      unMaestro.cambiarDeLado()
      unMaestro.esperanza(50)
      nivelDeFuerza = nivelDeFuerza/2
    }
  }

  method cambiar() = ladoLuz
}

class Suceso{
  const cargaEmocional 

  method cargaEmocional() = cargaEmocional
}
