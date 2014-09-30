package nivelboato

import entidade.Categoria
import grails.transaction.Transactional

@Transactional
class BoatoService {

    def listaCategorias() {
    	return Categoria.findAllByStatus(true)
    }
}
