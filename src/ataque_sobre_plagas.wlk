import plagas.*

class AtaqueSobreCucarachas inherits Cucarachas{
	method poblacionEnAtaque(){
		poblacion = (poblacion*10/100) + poblacion
		pesoPromedio = pesoPromedio + 2 
	}
}

class AtaqueDeGarrapatas inherits Garrapatas{
		method poblacionEnAtaque(){
		poblacion = (poblacion*20/100) + poblacion }
}