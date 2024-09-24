import extras.*
import wollok.game.*

object pepita {

	var property energia = 100
	var property position = game.origin()

	method image() {
		return if (self.estaEnElNido()) "pepita-grande.png" else if (self.esAtrapada() or self.estaCansada()) "pepita-gris.png" else "pepita.png"
	}

	method comer() {
		if (!self.paradaSobre().fueComido()){
			energia += self.paradaSobre().energiaQueOtorga()
			self.paradaSobre().esComido()
		}
	}

	method vola(kms) {
		energia = energia - kms * 9
	}

	method esAtrapada(){
		return self.position() == silvestre.position()
	}

	method irA(nuevaPosicion) {
		if (!self.estaCansada() and self.dentroDeTablero(nuevaPosicion) and !self.esAtrapada()){
			self.vola(position.distance(nuevaPosicion))
			position = nuevaPosicion
		}
	}

	method dentroDeTablero(posicion){
		return posicion.x() < game.height() and posicion.x() >= 0 and posicion.y() < game.width() and posicion.y() >= 0 
	}

	method estaCansada() {
		return energia <= 0
	}

	method estaEnElNido() {
		return position == nido.position()
	}
	
	
	method estaEnElSuelo() {
		return position.y() == 0 
	}

	method cae(){
		if (!self.estaEnElSuelo()){
			position = self.position().down(1)
		}
	}

	method paradaSobre() = game.uniqueCollider(self)
}

