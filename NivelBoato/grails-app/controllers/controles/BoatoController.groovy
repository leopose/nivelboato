package controles

import entidade.Categoria
import entidade.Boato
import entidade.Tag
import nivelboato.BoatoService
import utilitario.ToolBar


class BoatoController {
    def boatoService
    
    def index() { 
        redirect(action: "create")
    }
	
	def create() {
           
        render (view:"create", model:[listCategoriaInstance: boatoService.listaCategorias(), toollbarInstance: toolBar("Cadastro"), cadastroInstance: params.cadastro])
	}

	def save() {
		def boato = new Boato(params)
        boato.usuarioCadastro = session.user
		boato.categoria = Categoria.get(params.categoria)

        def listaTags = []
        listaTags = params.tag.split(",")

        boato.dataInicio = Date.parse('dd/MM/yyyy', params.dataInicio)
        boato.dataFim = params.dataFim ? Date.parse('dd/MM/yyyy', params.dataFim) : null
        
        if(!(params.tag.trim() == null || params.tag.trim()=="")){
            listaTags.each {
            
            def tag = Tag.findByDescricao(it)
                
                if(tag == null) {
                    tag = new Tag()
                    tag.descricao = it
                    tag.usuarioCadastro = session.user
                }  
                boato.addToTags(tag)
            }
        }

		if(!boato.save(flush: true)) {
			def toolAtual = toolBar("Cadastro")
            flash.message = boato.errors
			render view:"create", model: [boatoInstance: boato,toollbarInstance: toolAtual]
			return
		}
        flash.message = "Seu boato foi cadastrado com sucesso."

        redirect(action: "create", params: [cadastro: "ok"])
	}

	private def toolBar(def tipo) {
        ToolBar titulos = new ToolBar()
        titulos.titulo = "Boato"

        if(tipo=="Cadastro") {
            titulos.subtitulo = "Cadastro de Boato"
        }
        if(tipo=="Lista") {
            titulos.subtitulo = "Lista de Boatos"
        }
        
        if(tipo=="Edit") {
            titulos.subtitulo = "Editar Boato"
        }
        
        return titulos
    }
}
