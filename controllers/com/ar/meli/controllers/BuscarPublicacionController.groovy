package com.ar.meli.controllers
import com.ar.meli.models.Publicacion
import com.ar.meli.models.Usuario


class BuscarPublicacionController {

	static allowedMethods = [
		buscarPorTitulo:['POST','GET']
		]
    def index = {
		
		redirect (action: buscarPorTitulo)
	}
	
	def volver = {
		redirect (action: buscarPorTitulo)
	}
	
	def buscarPorTitulo = { 
		def publicaciones = Publicacion.findAllByTituloIlike("%${params.titulo}%")
		render view:'buscarPorTitulo.gsp' , model:[publicaciones:publicaciones]
	}
	
}
