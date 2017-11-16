package com.ar.meli.models


class Publicacion {
	Long id
	String titulo
	String descripcion
	Date fechaCreacion
	Date fechaVencimiento
	Usuario usuario
	
	static belongsTo = [usuario: Usuario]
	
	
	static constraints = {
		titulo size: 3..100
	}
	
	Boolean contiene(String query) {
		return(titulo.contains(query))
	}
	
}