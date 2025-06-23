import casas.*

class Criatura{
  var salud

  method perderVida(unValor){salud = salud - unValor}

  method recibirHechizo(unHechizo){salud = salud - unHechizo.daño()}
}


class Estudiante inherits Criatura{
  var casa
  const esPeligroso = salud >= 1 and casa.esPeligroso(self)
  var property habilidad
  var property esSangrePura
  var hechizosAprendidos
  var materia

  method cambiarDeCasa(unaCasa){casa = unaCasa}

  method anotarse(unaMateria){
    unaMateria.agregarAlumno(self)
    materia = unaMateria
  }

  method aprenderHechizo(){
    hechizosAprendidos.add(materia.hechizoActual())
    habilidad = habilidad + 1
  }

  method lanzarHechizo(unHechizo, unSerVivo){
    if (self.estaEnCondicionesDeLanzar(unHechizo)){
      unSerVivo.recibirHechizo(unHechizo)
      unHechizo.aplicarConsecuencias(self)
    }
    else{
      self.error("no estas en condiciones de lanzar el hechizo")
    }
  }

  method estaEnCondicionesDeLanzar(unHechizo) = hechizosAprendidos.contains(unHechizo) and unHechizo.puedeRealizarsePor(self)

  method initialize(){
        if(not casas.validas().contains(casa)){
            self.error(casa.toString() + "no es una casa valida")
        }
  }
}
