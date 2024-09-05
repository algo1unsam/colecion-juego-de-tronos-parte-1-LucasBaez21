object daenerys{                    //Personaje principal, recolecta distintos artefactos.
    const artefactosEncima = #{}    //Conjutno de artefactos que lleva.
    var capacidadMax = 2            //Capacidad maxima de artefactos que puede llevar encima. Variable ya que al avanzar puede aumentar la capacidad.
    const encontrados = []          //Lista de artefactos que fue encontrando.
    
    method encontrar(artefacto) {   //Metodo que permite obtener un artefacto.
        encontrados.add(artefacto)    
        if (artefactosEncima.size() < capacidadMax) // Se evalua si no supera la capacidad maxima de artefactos.
            artefactosEncima.add(artefacto)
        else 
            return "No hay mas espacio para guardar el artefacto."
        
    }
    
    method volverACasa() { //Al llegar a la fortaleza "Rocadragon", se almacenan los artefactos.
      castillo.agregarArtefactos(artefactosEncima)     //Guarda los artefactos al almacen. 
      artefactosEncima.clear()                         //Limpia el conjunto de artefactos.
    }
    
    method artefactos(){return artefactosEncima}      //Muestra los artefactos que lleva encima.
    
    method posesiones() { return artefactosEncima.union(castillo.artefactos())} //Muestra todos los artefactos que se poseen (encima y almacen).
    
    method posee (artefacto){ //Muestra si un artefacto en especifico se posee o no.
        return artefactosEncima.contains(artefacto) || castillo.artefactos().contains(artefacto)
    }
    
    method historia(){return encontrados} //Muestra el historial de artefactos encontrados en orden.
}
//Fortaleza Rocadragón:
object castillo{
    const almacen = #{} //Conjutno de artefactos almacenados
    
    method agregarArtefactos(artefacto){//Metodo para agregar los artefactos del personaje al almacen.
        almacen.addAll(artefacto)
    }
    
    method artefactos(){return almacen}//Retorna los artefactos del almacen.
}
//Artefactos:
//Espada de Dragón
object espada{}
//Libro de Magia Ancestral
object libro{}
//Collar de Fuego
object collar{}
//Armadura de Acero Valyrio
object armadura{}