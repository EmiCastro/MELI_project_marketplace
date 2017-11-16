package ar.com.meli

import com.ar.meli.models.Compra;
import com.ar.meli.models.Publicacion
import com.ar.meli.models.Usuario

import grails.transaction.Transactional

@Transactional
class ComprarService {

    void comprar(Publicacion publicacion, Usuario comprador) {
		publicacion.usuario=comprador
		Compra compra = new Compra(publicacion: publicacion, comprador: comprador)
		compra.fechaCompra = new Date()		
		compra.save()
    }
}
