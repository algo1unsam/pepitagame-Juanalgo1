import wollok.game.*

class Comida{
	var property fueComido = false
	method teEncontro(ave){}
}

object manzana inherits Comida(){

	method image() = "manzana.png"

	var property position = game.at(1, 8)

	method energiaQueOtorga() = 40

	method esComido(){
		self.position(game.at(-1,0))
	}
}

object alpiste inherits Comida(){

	method image() = "alpiste.png"

	var property position = game.at(2, 2)

	method energiaQueOtorga() = 70

	method esComido(){
		self.position(game.at(-1,0))
	}
}

