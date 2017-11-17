package com.ar.meli.controllers

import com.ar.meli.models.Compra;

import ar.com.meli.VerComprasService;

class VerComprasController {
	
	VerComprasService verComprasService
	
	static allowedMethods = [ verCompras: 'GET' ]

    def index() { }
	
	def verCompras(){
		def compras = verComprasService.verCompras(session.usuario)
		render view:'verCompras.gsp' , model:[compras: compras]
	}
}
