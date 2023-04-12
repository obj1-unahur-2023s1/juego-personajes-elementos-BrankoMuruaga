object castillo {
	var defensa = 150
	
	method defensa() = defensa
	
	method valorAOtorgar() = defensa / 5
	
	method valorQueRecibe() {
		defensa = (defensa + 20).min(200)
	}
	
	method recibirAtaque(ataque) {
		defensa = 0.max(defensa - ataque) // entre cero y el valor, setea la defensa en el valor maximo
	}
	
	method altura() =  20
}



object aurora {
	var estaViva = true
	
	method estaViva() = estaViva
	
	method valorAOtorgar() = 15
	
	method valorQueRecibe() {}
	
	method recibirAtaque(ataque) {
		estaViva = !(ataque >= 10)
	}
	
	method altura() =  1
}



object tipa {
	var altura = 8
	
	method altura() = altura
	
	method valorAOtorgar() = altura * 2
	
	method valorQueRecibe() {
		altura ++
	}
	
	method recibirAtaque(ataque) {}
	
}
