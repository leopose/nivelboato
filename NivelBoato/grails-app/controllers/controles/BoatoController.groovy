package controles

import nivelboato.BoatoService

class BoatoController {
    def boatoService
    
    def index() { }
	
	def create() {
           
            render (view:"create", model:[listCategoriaInstance: boatoService.listaCategorias()])
	}
}
