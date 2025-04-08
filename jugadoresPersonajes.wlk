import objetos.*
object floki{
    var arma = ballesta
    var armaEquipada = 1
    method cambiarDeArma(){
        if(armaEquipada == 1){
        arma = jabalina
        armaEquipada = 2
        }
        else{
            arma = ballesta
            armaEquipada = 1
        }
    }
    method encontrar(elemento) {
        if( arma.estaCargada() ) {
        elemento.recibeAtaqueConValor_(arma.potenciaDeArma())
        arma.fueUsada()
        }
    }
    }
object mario{
    var valorRecolectado = 0
    var trabajo = true
    var alturaDeUltimoElemento = 0
    method alternarTrabajo(){
        if (trabajo) {
        trabajo = false
        }
        else {
        trabajo = true
        }
    }
    method encontrar(elemento){
        if(elemento.nombre() == "castillo"){
            var defensaCastillo = elemento.defensa()
                if (trabajo){
                defensaCastillo = defensaCastillo + 20
            }
            valorRecolectado =  valorRecolectado + ( 
                defensaCastillo.min(defensaCastillo, 200) / 5 )
            alturaDeUltimoElemento = elemento.altura()
        }
        if(elemento.nombre() == "aurora"){
            valorRecolectado = valorRecolectado + 15
            alturaDeUltimoElemento = elemento.altura()
        }
        else{
             var alturaAurora = elemento.altura()
            if(trabajo){
                alturaAurora = alturaAurora + 1
            }
            valorRecolectado = valorRecolectado + (alturaAurora * 2)
            alturaDeUltimoElemento = elemento.altura()
            
        }
    }
    method esFeliz(){
        return(
            valorRecolectado >= 50
            ||
            alturaDeUltimoElemento >= 10

        )
    }
}

object luisa{
    var personajeActivo = floki
    method alternarPersonaje(){
        if(personajeActivo == floki){
            personajeActivo = mario
        else{
            personajeActivo = floki
        }
        }
    }
    method encontrar(elemento){
        personajeActivo.encontrar(elemento)

    }
}
