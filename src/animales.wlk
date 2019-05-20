import wollok.game.*

class Vaca {

	var property position = game.at(3, 5)
	const property image = "vaca.gif"
	var property peso = 200
	var property tieneSed = false

	method comer(kilos) {
		peso += kilos / 2
		tieneSed = true
	}

	method beber() {
		tieneSed = false
		peso = (peso - 1).max(10)
	}
}

class Gallina {
	
	var property position = game.at (3, 7)
	const property image = "gallina.gif"
	const property peso = 4
	var property tieneSed = false
	var cont = 0
	
	method comer(kilos) {	cont += 1	}
	method beber(){	 if (cont == 2 or cont == 5){ tieneSed = true}else{ tieneSed = false}	}
	
	
}
