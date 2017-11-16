package com.ar.meli.controllers


import static org.springframework.http.HttpStatus.*
import com.ar.meli.models.Publicacion
import com.ar.meli.models.Usuario
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PublicacionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Publicacion.list(params), model:[publicacionInstanceCount: Publicacion.count()]
    }

    def show(Publicacion publicacionInstance) {
        respond publicacionInstance
    }

    def create() {
        respond new Publicacion()
    }

    @Transactional
    def save(Publicacion publicacionInstance) {
		publicacionInstance.usuario = session.usuario
		
		if (publicacionInstance == null) {
            notFound()
            return
        }
		
        if (!publicacionInstance.save()) {
            respond publicacionInstance.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'publicacion.label', default: 'Publicacion'), publicacionInstance.id])
                redirect publicacionInstance
            }
            '*' { respond publicacionInstance, [status: CREATED] }
        }
    }

    @Transactional
    def delete(Publicacion publicacionInstance) {

        if (publicacionInstance == null) {
            notFound()
            return
        }

        publicacionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Publicacion.label', default: 'Publicacion'), publicacionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'publicacion.label', default: 'Publicacion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
