import objetos.*
import ColoresYMateriales.*
import personas.*

// instrucciones: 
//1. Ingresa un objeto en la vidriera y el otro en el mostrador.
//2. De ahi podes lanzar los demas metodos del bolichito.

object bolichito {

  var vidriera = null
  var mostrador = null
  
  method vidriera(){
    return "en la vidriera esta a la venta " + vidriera + ".De peso " + vidriera.peso() + " gramos , de material " + vidriera.material() + " y de color " + vidriera.color() + "."
  } 
  method mostrador() {
    return "en el mostrador esta a la venta " + mostrador + ".De peso " + mostrador.peso() + " gramos , de material " + mostrador.material() + " y de color " + mostrador.color() + "."
  }
  method cambiarVidriera(unObjeto){
    vidriera = unObjeto
    return "En la vidriera del bolichito esta a la venta: " + unObjeto + "."
  }
  method cambiarMostrador(unObjeto){
    mostrador = unObjeto
    return "En el mostrador del bolichito esta a la venta: " + unObjeto + "."
  }
  method esBrillante(){

    if(vidriera.material().esBrillante() && mostrador.material().esBrillante()){
      return "El bolichito es brillante por que tanto la vidriera como el mostrador son materiales brillosos."
    }
    else {
      return "El bolichito no es brillante por que ni la vidriera ni el mostrador son materiales brillosos."
    }
  }
  method monocromatico(){
    return vidriera.color() == mostrador.color()
  }
  method esMonocromatico(){
    if(self.monocromatico()){
      return "El bolichito es monocromatico "
    }
    else {
      return "El bolichito no es monocromatico "
    }
  }
  method equilibrio(){
    return vidriera.peso() < mostrador.peso()
  }
  method elBolichitoEstaEquilibrado(){
    if(self.equilibrio()){
      return "El bolichito esta equilibrado por que mostrador pesa mas que la vidriera"
    }
    else {
      return "El bolichito no esta equilibrado por que la vidriera pesa mas que el mostrador o pesan lo mismo"
    }
  }
  method tieneObjetoDeColor(unColor){
    if(vidriera.color() == unColor || mostrador.color() == unColor){
      return "El bolichito tiene un objeto de color " + unColor
    }
    else {
      return "El bolichito no tiene un objeto de color " + unColor 
    }
  }
  method necesitaMejora(){
    return !self.equilibrio() || self.monocromatico()
  }
  method puedeMejorar(){
    if(self.necesitaMejora()){
      return "El bolichito puede mejorar por que esta no esta equilibrado o es monocromatico"
    }
    return "El bolichito no puede mejorar por que esta equilibrado o no es monocromatico"
  }
  method puedoOfrecer(unaPersona){
    return unaPersona.leGusta(vidriera) || unaPersona.leGusta(mostrador)
  }
  method ofrecerObjeto(unaPersona){
    if(self.puedoOfrecer(unaPersona)){ 
      return "Le ofrezco a " + unaPersona + " el objeto de la vidriera o del mostrador "
      }
    return "No le ofrezco a " + unaPersona + " ningun objeto."
}
}