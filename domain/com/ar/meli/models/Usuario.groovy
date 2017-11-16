package com.ar.meli.models

class Usuario {
	
	Long id;
	String email;
	String password;
	
	static constraints ={
		email size: 6..10
		password size: 6..20
		email unique: true
	}
	
	static mapping ={
		id generator:'increment'
	}
	
}
