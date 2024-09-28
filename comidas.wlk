import wollok.game.*

class Comida{
	var property fueComido = false
	method teEncontro(ave){} //No hace nada
	method esComido(){game.removeVisual(self)}

	method image(){}
	var property position
	method energiaQueOtorga(){}
}

object manzana inherits Comida(position = game.at(1, 8)){
	override method image() = "manzana.png"
	override method energiaQueOtorga() = 40
}

object alpiste inherits Comida(position = game.at(2, 2)){
	override method image() = "alpiste.png"
	override method energiaQueOtorga() = 70
}

