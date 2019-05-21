import wollok.game.*

class Vaca {

	var property position = game.at(3, 5)
	const property image = "vaca.gif"
	var property peso = 200
	var property tieneSed = false
	var property hambre = false

	method comer(kilos) {
		if (peso < 200) {
			peso += kilos / 2
			tieneSed = true
			self.tieneHambre()
		} else {
			self.error("no tengo hambre")
		}
	}

	method beber() {
		tieneSed = false
		peso = (peso - 1).max(50)
	}

	method puedeCaminar() {
		if (peso > 50) {
			self.perderPeso()
		} else {
			self.error("no puedo caminar")
		}
	}

	method perderPeso() {
		peso = (peso * 0.95).max(50)
		self.tieneHambre()
	}

	method tieneHambre() {
		if (peso < 200) {
			hambre = true
		} else {
			hambre = false
		}
	}

}

class Gallina {

	var property position = game.at(3, 7)
	const property image = "gallina.gif"
	const property peso = 4
	var property tieneSed = false
	var cont = 0
	var property hambre = false

	method comer(kilos) {
		cont += 1
	}

	method beber() {
		if (cont == 2 or cont == 5) {
			tieneSed = true
		} else {
			tieneSed = false
		}
	}

	method perderPeso() {
	}

	method tieneHambre() {
		if (cont.even()) {
			hambre = true
		} else {
			hambre = false
		}
	}

	method puedeCaminar() {
	}

}

class Comedero {

	var property position = game.at(9, 11)
	const property image = "comedero.gif"
	var property racion = 0
	var property pesoComedero = 0

	method puedeAtender(animal) {
		return pesoComedero > animal.peso() and animal.tieneHambre()
	}

	method recargar() {
		if (racion < 10) {
			racion += 30
		}
	}

}

