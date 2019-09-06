import cosas.* 
import cuentasBancarias.*

object casaDePepeYJulian {
	const cosas = []
	const cosasPendientes = []
	
	method cosasCompradas() = cosas
	
	/*
	method agregarPendientes(cosa){
		cosasPendientes.add(cosa)
	}
	
	method quitarPendientes(cosa){
		cosasPendientes.remove(cosa)
	}
	*/
	method comprar(cosa){ 
		cuentaCorriente.extraer(cosa.precio())
		cosas.add(cosa)		
	}
	
	method cantidadDeCosasCompradas() = cosas.size()
	
	method tieneComida() = cosas.any( {cosa => cosa.esComida()} )

	method vieneDeEquiparse() = cosas.last().esElectrodomestico() or cosas.last().precio()>5000 

	method esDerrochona() = cosas.sum( {cosa => cosa.precio()} ) >= 9000
	
	method compraMasCara() = cosas.max( {cosa => cosa.precio()} )
	
	method electrodomesticosComprados() = cosas.filter( {cosa => cosa.esElectrodomestico()} )
	
	method malaEpoca() = cosas.all( {cosa => cosa.esComida()} )

	method queFaltaComprar(set) = set.difference(cosas.asSet())
	
	method faltaComida() = cosas.count( {cosa => cosa.esComida()} ) < 2
	
	method comprarLoQueFalta(){}
}

