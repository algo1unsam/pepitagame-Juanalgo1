import wollok.game.*

class Comida{
	var property fueComido = false
	method teEncontro(ave){}
	method esComido(){game.removeVisual(self)}
}

object manzana inherits Comida(){

	method image() = "manzana.png"

	var property position = game.at(1, 8)

	method energiaQueOtorga() = 40
}

object alpiste inherits Comida(){

	method image() = "alpiste.png"

	var property position = game.at(2, 2)

	method energiaQueOtorga() = 70
}

