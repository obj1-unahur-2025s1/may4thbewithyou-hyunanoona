object gryffindor{
  method esPeligroso(unEstudiante) = false 
}

object slytherin{
  method esPeligroso(unEstudiante) = true
}

object ravenclaw{
  method esPeligroso(unEstudiante) = unEstudiante.habilidad() > 10
}

object hufflepuff{
  method esPeligroso(unEstudiante) = unEstudiante.esSangrePura()
}

object casas{
    method validas() = [gryffindor, slytherin, ravenclaw, hufflepuff]
}