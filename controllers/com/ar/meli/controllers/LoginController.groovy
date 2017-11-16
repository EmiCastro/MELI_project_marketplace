package com.ar.meli.controllers

import ar.com.meli.LoginService

import com.ar.meli.models.Usuario

class LoginController {

	LoginService loginService
	
	static allowedMethods = [login:"POST"]
	
    def index() { }
	
	def login(){
		if(loginService.validarUsuario(params.get("email"),params.get("password"))){
			flash.message = "Login Success"
			session.usuario = Usuario.findByEmail(params.get("email"))
			redirect(uri: '/')
		}
		else{
			flash.message = "Usuario y contraseña incorrectos"
			redirect(action: 'index')
		}
	}
	
	def logout() {
		session.invalidate()
		redirect (uri: '/')
	}
	
}
