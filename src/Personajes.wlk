import armas.*
import elementos.*

object floki {
	var property arma
	
	method encontrar(elemento) {
		if(arma.estaCargada()){
			elemento.recibirAtaque(arma.potencia())
			arma.registrarUso()
		}
	}
}


object mario {
	var valorRecolectado = 0
	var elementoEncontrado
	
	method valorRecolectado() = valorRecolectado
	method elementoEncontrado() = elementoEncontrado
	
	method encontrar(elemento) {
		valorRecolectado += elemento.valorAOtorgar()
		elemento.valorQueRecibe()
		elementoEncontrado = elemento
	}
	
	method esFeliz() = valorRecolectado >= 50 || elementoEncontrado.altura() >= 10
}
