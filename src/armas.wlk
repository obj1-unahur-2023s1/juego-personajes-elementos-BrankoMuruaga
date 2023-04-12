object ballesta {
	var flechas = 10
	
	method potencia() = 4	
	
	method registrarUso() {
		flechas--
	}
	
	method estaCargada() = flechas > 0
	
}

object jabalina {
	var estaCargada = true
	
	method potencia() = 30	
	
	method registrarUso() {
		estaCargada = false
	}
	
	method estaCargada() = estaCargada
	
}
