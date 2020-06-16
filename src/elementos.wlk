class Hogar {
	
	var nivelMugre
	var confort
	
	method setNivelMugre(newNivel) { nivelMugre = newNivel}
	method setConfort(newConfort) { confort = newConfort}	
	method esBueno(){ return (nivelMugre/2 <= confort) }
}

class MasterHuerta{
	var nivelProduccion
	method setNivelProduccion(newValue){ nivelProduccion = newValue}
}
	
class Huerta inherits MasterHuerta{
	var capacidadProduccion
	method setCapacidadProduccion(newValue){ capacidadProduccion= newValue}
	method esBueno(){return (capacidadProduccion > nivelProduccion)}
}

class Mascota{
	var nivelSalud
	method setNivelSalud(newValue){nivelSalud = newValue}
	method esBueno(){ return (nivelSalud > 250)}
}

class Barrio{
	const elementos = []
	method addElemento(newElemento){elementos.add(newElemento)}
	method barrioCopado(){
		const elementoBueno = elementos.count({cosa=>cosa.esBueno()})
		const elementoMalo = elementos.count({cosa=>not cosa.esBueno()})
		return (elementoBueno > elementoMalo)
	}
}