

class Publicacion {
	Long id
	String titulo
	String descripcion
	Date fechaCreacion
	Date fechaVencimiento
	
	
	static constraints = {
		titulo size: 3..100
	}
	
	Boolean contiene(String query) {
		return(titulo.contains(query))
	}
}
