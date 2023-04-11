//Personajes

object luisa {
	var property personajeActivo 
	
	method aparece(elemento){
		personajeActivo.encontrar(elemento)
	}
}


object floki {
	var property arma
	
	method encontrar(elemento) {
		elemento.recibirAtaque(arma.potencia())
		arma.registrarUso()
	}
}


object mario {
	var property valorRecolectado = 0
	var property elementoEncontrado
	
	method encontrar(elemento) {
		elementoEncontrado = elemento
		valorRecolectado += elemento.valorAOtorgar()
		elemento.valorQueRecibe()
	}
	
	method esFeliz() {
		return valorRecolectado >= 50 || elementoEncontrado.altura() >= 10
	}
}


//Armas

object ballesta {
	var property flechas = 10
	
	method potencia() {
		if(flechas > 0){
			return 4		
		}
		else {
			return 0
		}
	}
	
	method registrarUso() {
		flechas -= 1
	}
}

object jabalina {
	var property estaCargada = true
	
	method potencia() {
		if(estaCargada){
			return 30		
		}
		else {
			return 0
		}
	}
	
	method registrarUso() {
		estaCargada = false
	}
}


//Elementos

object castillo {
	var property defensa = 150
	
	method valorAOtorgar() {
		return defensa / 5
	}
	
	method valorQueRecibe() {
		defensa = (defensa + 20).min(200)
	}
	
	method recibirAtaque(ataque) {
		defensa -= ataque
	}
	
	method altura() {
		return 20
	}
}

object aurora {
	var property estaViva = true
	
	method valorAOtorgar() {
		return 15
	}
	
	method valorQueRecibe() {
		
	}
	
	method recibirAtaque(ataque) {
		estaViva = ataque < 10
	}
	
	method altura() {
		return 20
	}
}

object tipa {
	var altura = 8
	
	method valorAOtorgar() {
		return altura * 2
	}
	
	method valorQueRecibe() {
		altura += 1
	}
	
	method recibirAtaque(ataque) {
	}
	
	method altura() {
		return altura
	}
}

