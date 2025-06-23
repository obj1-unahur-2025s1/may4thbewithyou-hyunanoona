class Planetas{
  var poblacion
  const defensores 

  method poderDeDefensa() = defensores.sum{d => d.potencia()}

  method invasion(intensidad){
    if (intensidad > self.poderDeDefensa()){
      poblacion = poblacion * 0.9
    } 
  }

  method agregarDefensor(unDefensor){defensores.add(unDefensor)}

  method perderDefensor(unDefensor){defensores.remove(unDefensor)}
}

