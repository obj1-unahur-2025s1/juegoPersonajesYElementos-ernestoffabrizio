import jugadoresPersonajes.*
object castillo{
    method nombre(){
        return(
            "castillo"
        )
    }
    var defensaCastillo = 150
    method altura(){
        return(
            20
        )
    }
    method defensa(){
        return(
            defensaCastillo
        )
    }
    method recibeAtaqueConValor_(potenciaDeArma){
        defensaCastillo = defensaCastillo - potenciaDeArma

    }
}
object aurora{
    method nombre(){
        return(
            "aurora"
        )
    }
var vive = true
    method altura(){
        return(
            1
        )
    }
    method estaViva(){
        return(
            vive
        )
    }
    method recibeAtaqueConValor_(potenciaDeArma){
    if (potenciaDeArma >= 10){
        vive = false
    }
    }
}
object tipa{
    method nombre(){
        return(
            "tipa"
        )
    }
    var alturaTipa = 8
    method altura(){
        return(
            alturaTipa
        )
    }
    method recibeAtaqueConValor_(potenciaDeArma){}
}
object ballesta{
    var flechas = 10
    method potenciaDeArma(){
        return(
            4
        )
    }
    method fueUsada(){
        flechas = flechas - 1
    }
    method estaCargada(){
        return(
            flechas >= 1
        )
    }
}
object jabalina{
    var estaCargada = true
    method potenciaDeArma(){
        return(
            30
        )
    }
    method estaCargada(){
        return(
            estaCargada
        )
    }
    method fueUsada(){
        estaCargada = false
    }
}