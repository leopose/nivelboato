package nivelboato

import entidade.Categoria
import entidade.Boato
import grails.transaction.Transactional

@Transactional
class BoatoService {

    def listaCategorias() {
    	return Categoria.findAllByStatus(true)
    }

    def listaBoatos() {
    	return Boato.findAll()
    }
}
