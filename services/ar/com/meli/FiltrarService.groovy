package ar.com.meli

import com.ar.meli.models.Publicacion
import grails.transaction.Transactional


@Transactional
class FiltrarService {

    def filtrarPorUso(List<Publicacion> publicaciones,Boolean nuevo) {
		List<Publicacion> publicacionesFiltradas = new LinkedList<Publicacion>()
		for(Publicacion p:publicaciones){
			if(p.nuevo == nuevo)
				publicacionesFiltradas.add(p)
		}
		return publicacionesFiltradas			
    }
}
