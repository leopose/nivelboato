package controles
import entidade.Tag
import grails.converters.JSON
import utilitario.ToolBar

class TagController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def toolAtual = toolBar()

    def index(Integer max) {
        def toolAtual = toolBar("Lista")
        params.max = Math.min(max ?: 10, 100)
        render (view:"index", model:[params: params, tagInstanceCount: Tag.count(), toollbarInstance: toolAtual, tagInstanceList: Tag.list(params)])
    }

    def listaTodas() {
        def lista = []
        
        Tag.findAll().each {it ->
            def mapa = [:]
            mapa.id = it.id
            mapa.dataCadastro= it.dataCadastro.format("dd/MM/yyyy hh:mm:SS")
            mapa.descricao= it.descricao
            mapa.status= it.status
            mapa.usuarioCadastro= it.usuarioCadastro.nome
            lista += mapa
        }
        def dados = [:]
        dados.data = lista
        
        render dados as JSON
    }

    def show(Tag tagInstance) {
        respond tagInstance
    }

    def create() {
        def tagInstance = new Tag(params)
        def toolAtual = toolBar("Cadastro")
        return [tagInstance: tagInstance,toollbarInstance: toolAtual]
    }

    def save() {
        def tag = new Tag(params)
        tag.usuarioCadastro = session.user
        
        if(!tag.save(flush: true)) {
             def toolAtual = toolBar("Cadastro")
                        flash.message = tag.errors
            render view:"create", model: [tagInstance: tag,toollbarInstance: toolAtual]
            return
        }
        
        redirect(action: "index")

    }

    def edit(Tag tagInstance) {
        respond tagInstance
    }

    def update(Tag tagInstance) {
        if (tagInstance == null) {
            notFound()
            return
        }

        if (tagInstance.hasErrors()) {
            respond tagInstance.errors, view:'edit'
            return
        }

        tagInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Tag.label', default: 'Tag'), tagInstance.id])
                redirect action: 'index'
            }
            '*'{ respond tagInstance, [status: OK] }
        }
    }

    def delete(Tag tagInstance) {

        if (tagInstance == null) {
            notFound()
            return
        }

        tagInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Tag.label', default: 'Tag'), tagInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tag.label', default: 'Tag'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def remove(Long id){
        def tagInstance = Tag.get(params.id);
        tagInstance.setStatus(false)
        if(!tagInstance.save(flush:true)){
            flash.message = tagInstance.errors
        }
            
        flash.message = "Tag desativada."
        redirect action:'index'
    }

    private def toolBar(String tipo) {
        ToolBar titulos = new ToolBar()
        titulos.titulo = "TAG"
        titulos.subtitulo = tipo + " de " + titulos.titulo
        return titulos
    }
}
