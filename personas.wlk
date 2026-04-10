import objetos.*
import ColoresYMateriales.*


object rosa {

  method leGusta(unObjeto) {
        return unObjeto.peso() <= 2000
    }
  method esteObjetoLeGusta(unObjeto){
    if (self.leGusta(unObjeto)){
      return "este objeto le gusta a Rosa"
    }
    return "Este objeto no le gusta a Rosa"
  }
}
object estefania {
  
  method leGusta(unObjeto) {
    return unObjeto.color().esFuerte()
  }   
  method esteObjetoLeGustaAEstefania(unObjeto){
    if (self.leGusta(unObjeto)){
      return "Este objeto le gusta a Estefania."
    }
    else return "Este objeto no le gusta a Estefania."
  }
}
object luisa {

  method leGusta(unObjeto) {
        return unObjeto.material().esBrillante()
  }
  method aLuisaLeGustaEsteObjeto(unObjeto){
    if (self.leGusta(unObjeto)){
      return "Este objeto le gusta a Luisa."
    }
    else return "Este objeto no le gusta a Luisa."
  }
}
object juan {

  method leGusta(unObjeto) {
      var colorNoEsFuerte = !unObjeto.color().esFuerte()
      var pesoEnRango = unObjeto.peso().between(1200, 1500)
      return colorNoEsFuerte || pesoEnRango 
    }
  method aJuanLeGustaEsteObjeto(unObjeto){
    if (self.leGusta(unObjeto)){
      return "Este objeto le gusta a Juan."
    }
    else return "Este objeto no le gusta a Juan."
  }
}
