import ColoresYMateriales.*

object remera{

  const color = rojo
  const material = lino
  const gramos = 800
  
  method color(){
    return color
  }
  method material(){
    return material
  }
  method peso(){
    return gramos
  }
}

object pelota  {

  const color = pardo
  const material = cuero
  const gramos = 1300

  method color(){
    return color
  }
  method material(){
    return material
  }
  method peso(){
    return gramos
  }
}
object biblioteca {

  const color = verde
  const material = madera
  const gramos = 8000

  method color(){
    return color
  }
  method material(){
    return material
  }
  method peso(){
    return gramos
  }
}
object muñeco{

  const color = celeste
  const material = vidrio
  var gramos = (0..4000).anyOne()

  method color(){
    return color
  }
  method material(){
    return material
  }
  method peso(){
    return gramos
  }
  method cambiarPeso(unPeso) {
    gramos = unPeso
    return "El peso del muñeco ahora es " + gramos + " gramos."
  }
}
object placaDeCobre{
  
  var color = [rojo, verde, celeste, pardo].anyOne()
  const material = cobre
  var gramos = (0..5000).anyOne()

  method color(){
    return color
  }
  method material(){
    return material
  }
  method peso(){
    return gramos
  }
  method cambiarColor(unColor) {
    color = unColor
    return "El color de la placa de cobre ahora es " + color
  }
  method cambiarPeso(unPeso) {
    gramos = unPeso
    return "El peso de la placa de cobre ahora es " + gramos + " gramos."
  }
}
object arito{

  const color = celeste
  const material = cobre
  const gramos = 180
  
  method color(){
    return color
  }
  method material(){
    return material
  }
  method peso(){
    return gramos
  }
}
object banquito{

  var color = naranja
  const material = madera
  const gramos = 1700
  
  method color(){
    return color
  }
  method cambiarColor(unColor) {
    color = unColor
    return "El color del banquito ahora es " + color
  }
  method material(){
    return material
  }
  method peso(){
    return gramos
  }
}
object caja{

  const color = rojo
  const material = cobre
  var objetoAdentro = [remera, pelota, biblioteca, muñeco, placaDeCobre, arito, barco].anyOne()

  
  method color(){
    return color
  }
  method material(){
    return material
  }
  method peso(){
    return 400 + objetoAdentro.peso()
  }
  method cambiarObjetoAdentro(unObjeto){
    objetoAdentro = unObjeto
    return "Dentro de la caja ahora hay un " + unObjeto + " que pesa " + unObjeto.peso() + " gramos, es de color " + unObjeto.color() + " y es de material " + unObjeto.material() + "."
  }
  method objetoAdentro(){
    return "Dentro de la caja hay un " + objetoAdentro + " que pesa " + objetoAdentro.peso() + " gramos, es de color " + objetoAdentro.color() + " y es de material " + objetoAdentro.material() + "."
  }
  
}