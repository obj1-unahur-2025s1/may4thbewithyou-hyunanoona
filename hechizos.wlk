class HechizoComun{
  const nivelDeDificultad

  method puedeRealizarsePor(unEstudiante) = unEstudiante.habilidad() > nivelDeDificultad
  
  method aplicarConsecuencias(unEstudiante){}

  method daño() = nivelDeDificultad + 10
}

class HechizoImperdonable inherits HechizoComun{
  var daño
  override method aplicarConsecuencias(unEstudiante){unEstudiante.recibirHechizo(daño)}
  
  override method daño() = super() * 2
}