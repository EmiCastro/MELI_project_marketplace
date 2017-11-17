package com.ar.meli.controllers

import com.ar.meli.models.Publicacion;

import ar.com.meli.ComprarService;


class ComprarController {

	ComprarService comprarService
	static allowedMethods = [realizarCompra:"POST"]
	
    def index() { }
	
	def realizarCompra(){
		comprarService.comprar(Publicacion.get(params.idPublicacion), session.usuario)
	}
	
}
