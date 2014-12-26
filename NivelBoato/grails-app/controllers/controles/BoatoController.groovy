package controles

import entidade.Categoria
import entidade.Boato
import entidade.Usuario
import entidade.Tag
import entidade.PontuacaoBoato
import nivelboato.BoatoService
import utilitario.ToolBar
import grails.converters.JSON


class BoatoController {
    def boatoService
    
    def index() { 
        redirect(action: "create")
    }
	
	def create() {
           
        render (view:"create", model:[listCategoriaInstance: boatoService.listaCategorias(), toollbarInstance: toolBar("Cadastro"), cadastroInstance: params.cadastro])
	}

    def list() {
        render (view: "list", model:[listBoatoInstance: boatoService.listaBoatos()])
    }

	def save() {
		
        String dataInicioStr = params.dataInicio
        String dataFimStr = params.dataFim

        params.dataInicio = null
        params.dataFim = null

        def boato = new Boato(params)
        boato.usuarioCadastro = session.user
		boato.categoria = Categoria.get(params.categoria)

        def listaTags = []
        listaTags = params.tag.split(",")

        boato.dataInicio = Date.parse('dd/MM/yyyy', dataInicioStr)
        boato.dataFim = dataFimStr ? Date.parse('dd/MM/yyyy', dataFimStr) : null

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


    //TODO Criar um servico para fazer esta funcao
    def ajaxCurtir() {

        Usuario usuario = session.user
        Boato boato = Boato.get(params.boato)

        def pontuacoesUsuarioBoato = PontuacaoBoato.findAllByUsuarioAvaliadorAndBoatoAvaliado(usuario,boato)    

        def dados = [:]

        if(!pontuacoesUsuarioBoato){
            PontuacaoBoato pontuacao = new PontuacaoBoato()
            pontuacao.usuarioAvaliador = usuario
            pontuacao.boatoAvaliado = boato
            pontuacao.curtido = true
            pontuacao.dataEvento = new Date()
            pontuacao.save(flush: true)
        }else{
            dados.jaCurtiu='true'
        }
        dados.curtidas = boato.curtidas;
        dados.idBoato = params.boato;
        
        render dados as JSON
    }
}
