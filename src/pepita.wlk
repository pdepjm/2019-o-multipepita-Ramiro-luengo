object pepita {
	var energia = 100
	
	method estaFeliz(){
		return energia.between(500,1000)
	}
		
	method estaEntre300y400() {
		if (energia.between(300,400))
			return 10
		return 0
	}
	
	method esMultiploDe20(){
		if(energia % 20 == 0)
			return 15
		return 0
	}
	
	method cuantoQuiereVolar(){
		return energia.div(5) + self.estaEntre300y400() + self.esMultiploDe20()
	}
	
	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	method mojarse(){
		return 15
	}
	
	method secarse(){
		return 20
	}
}