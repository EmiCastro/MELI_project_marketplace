package ar.com.meli

import com.ar.meli.models.Compra;
import com.ar.meli.models.Usuario;

import grails.transaction.Transactional

@Transactional
class VerComprasService {

    def verCompras(Usuario comprador){
		return Compra.findAllByComprador(comprador)
	}
}
