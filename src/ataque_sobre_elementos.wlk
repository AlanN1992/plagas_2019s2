import plagas.*
import elementos.*

class AtaqueSobreHogar inherits Hogar{
	var plaga
	method addPlaga(newPlaga){plaga = newPlaga}
	method nivelMugre(){return (plaga.nivelDano())}
}

class AtaqueSobreHuerta inherits MasterHuerta{
	var plaga
	method addPlaga(newPlaga){ plaga=newPlaga}
	method bajaProduccion(){
		var newProduccion = plaga.nivelDano() /10
		if (plaga.transmiteEnfermedad()){newProduccion = newProduccion - 10}
		return newProduccion
	}
}

class AtaqueSobreMascota inherits Mascota{
	var plaga
	method addPlaga(newPlaga){ plaga=newPlaga}
	method nivelSalud(){ 
		if (plaga.transmiteEnfermedad()) {
			nivelSalud = plaga.nivelDano() } 
		return nivelSalud
	}
}