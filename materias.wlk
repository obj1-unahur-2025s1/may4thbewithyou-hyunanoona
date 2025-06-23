
class Materia{
  var profesor
  var property hechizoActual
  var alumnos

  method agregarEstudiante(unEstudiante){alumnos.add(unEstudiante)}

  method dictar(){
    alumnos.forEach{a => a.aprenderHechizo()}
  }

  method hacerUnaPractica(unaCriatura){
    alumnos.forEach{a => a.lanzarHechizo(hechizoActual, unaCriatura)}
  }
}