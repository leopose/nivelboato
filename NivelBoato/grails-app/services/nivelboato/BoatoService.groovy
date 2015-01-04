package nivelboato

import entidade.Categoria
import entidade.Boato
import entidade.PontuacaoBoato
import grails.transaction.Transactional

@Transactional
class BoatoService {

    def listaCategorias() {
    	return Categoria.findAllByStatus(true)
    }

    def listaBoatos(def userLogado, def pagina) {
    	def boatos = []
    	
    	pagina = pagina == 0 ? 0 : Long.parseLong(pagina) * 5
    	
    	def resultado = Boato.list(max: 5, offset: pagina, sort: "dataPublicado", order: "desc")
    	for(item in resultado){
    		def boato = [:]
    		boato.titulo = item.titulo
    		boato.descricao = item.descricao
    		boato.usuarioCadastro = item.usuarioCadastro
    		boato.categoria = item.categoria
    		boato.tags = item.tags
    		boato.id = item.id
    		boato.dataInicio = item.dataInicio
    		boato.dataFim = item.dataFim
    		boato.curtidas = item.curtidas
    		boato.negadas = item.negadas
    		boato.pontuado = boatoPontuado(userLogado, item)
    		boatos += boato
    	}
    	return boatos
    }

    def boatoPontuado(def userLogado, def boato) {
    	def pontuado = PontuacaoBoato.findAllByUsuarioAvaliadorAndBoatoAvaliado(userLogado,boato).size() == 0 ? false : true
    	return pontuado
    }
}
