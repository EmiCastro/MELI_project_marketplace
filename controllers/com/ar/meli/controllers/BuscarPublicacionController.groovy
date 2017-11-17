package com.ar.meli.controllers
import com.ar.meli.models.Publicacion

import ar.com.meli.ComprarService;
import ar.com.meli.FiltrarService

import com.ar.meli.models.Usuario


class BuscarPublicacionController {
	
	FiltrarService filtrarService

	static allowedMethods = [
		buscarPorTitulo:['POST','GET'],
		filtrarPorUso:['POST','GET']
		]
    def index = {
		
		redirect (action: buscarPorTitulo)
	}
	
	def volver = {
		redirect (action: buscarPorTitulo)
	}
	
	def buscarPorTitulo = { 
		def publicaciones = Publicacion.findAllByTituloIlike("%${params.titulo}%")
		System.out.println params.titulo
		render view:'buscarPorTitulo.gsp' , model:[publicaciones:publicaciones,titulo:params.titulo]
	}
	
	def filtrarPorUso = {
		def publicaciones = Publicacion.findAllByTituloIlike("%${params.titulo}%")
		if(!params.nuevo)
			render view:'buscarPorTitulo.gsp' , model:[publicaciones:filtrarService.filtrarPorUso(publicaciones, false)]
		else	
			render view:'buscarPorTitulo.gsp' , model:[publicaciones:filtrarService.filtrarPorUso(publicaciones, true)]
	}
	
}
