import cosas.*
import casa.*

object cuentaCorriente{
	var saldo = 1000
	
	method depositar(plata){
		saldo += plata
	}
	
	method extraer(plata){
		if(saldo>=plata) saldo -= plata
		else self.error("Saldo insuficiente")
	}
	
	method saldo() = saldo
	
	
}

object cuentaConGastos{

}

object cuentaCombinada{
	
}