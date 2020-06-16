class Cucarachas {
	var poblacion 
	var pesoPromedio
	
	method setPoblacion(newValue){poblacion = newValue}
	method setPesoPromedio(newValue){pesoPromedio = newValue}
	method nivelDano(){return (poblacion/2)}
	method transmiteEnfermedad(){ return (pesoPromedio >= 10 && poblacion >= 10)}
}

class Pulgas {
	var poblacion 
	
	method setPoblacion(newValue){poblacion = newValue}
	method nivelDano(){return (poblacion*2)}
	method transmiteEnfermedad(){ return ( poblacion >= 10) }	
}

class Garrapatas {
	var poblacion 
	
	method setPoblacion(newValue){poblacion = newValue}
	method nivelDano(){return (poblacion*2)}
	method transmiteEnfermedad(){ return ( poblacion >= 10) }		
}

class Mosquito{
	var poblacion 
	var pesoPromedio
	
	method setPoblacion(newValue){poblacion = newValue}
	method setPesoPromedio(newValue){pesoPromedio = newValue}
	method nivelDano(){return poblacion}
	method transmiteEnfermedad(){ return ( poblacion % 3 == 0 && poblacion >= 10) }	
}

