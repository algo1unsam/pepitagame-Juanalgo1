import pepita.*
import wollok.game.*

object nido {

	var property position = game.at(7, 8)

	method image() = "nido.png"

	method teEncontro(ave) {
		game.say(ave, "¡GANÉ!")
		game.schedule(2000, { game.stop() })
	}
}


object silvestre {
	method position() = game.at(pepita.position().x().max(3), 0)
	method image() = "silvestre.png"

	method teEncontro(ave) {
		game.say(ave, "¡PERDÍ!")
		game.schedule(2000, { game.stop() })
	}
}
