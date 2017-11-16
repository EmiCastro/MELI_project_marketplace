package ar.com.meli

import grails.transaction.Transactional

import com.ar.meli.models.Usuario

@Transactional
class LoginService {

	
	Boolean validarUsuario(String usuario, String clave){
		Usuario.findByEmailAndPassword(usuario, clave) != null
	}
}
