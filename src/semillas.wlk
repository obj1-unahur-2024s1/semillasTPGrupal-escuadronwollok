class Planta{
	const property anioDeObtencion 
	const property altura
	
	
}

class Menta inherits Planta{
	
	method cantidadHorasDeSolTolera() = 6 
	method esFuerte()= false
	method daNuevasSemillas(){return altura > 0.4}
	method espacioQueOcupa() = altura * 3
}

class Soja inherits Planta{
	
	method cantidadHorasDeSolTolera(){
		return if (altura < 0.5) 6 else if (altura.between(0.5 , 1.0))7 else 9 
	}
	
	method esFuerte() = false
	method daNuevasSemillas() { return anioDeObtencion > 2007 and altura > 1 }
	method espacioQueOcupa() = altura / 2
	
}

class Quinoa inherits Planta{
	 var cantidadHorasDeSolTolera
	 
	 method esFuerte(){return cantidadHorasDeSolTolera > 10}
	 method daNuevasSemillas(){return anioDeObtencion < 2005}
	 method espacioQueOcupa() = 0.5
}

class SojaTransgenica inherits Soja {
	  
	  override method daNuevasSemillas()= false
	  
}

class Hierbabuena inherits Menta{
	
	 override method espacioQueOcupa()= super() * 2
}

class  Parcelas{}





