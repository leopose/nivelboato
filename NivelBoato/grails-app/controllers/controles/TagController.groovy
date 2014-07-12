package controles
import entidade.Tag
import utilitario.ToolBar

class TagController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def toolAtual = toolBar()

    def index(Integer max) {
        def toolAtual = toolBar("Lista")
        params.max = Math.min(max ?: 10, 100)
        render (view:"index", model:[params: params, tagInstanceCount: Tag.count(), toollbarInstance: toolAtual, tagInstanceList: Tag.list(params)])
    }

    def show(Tag tagInstance) {
        respond tagInstance
    }

    def create() {
        respond new Tag(params)
    }

    def save(Tag tagInstance) {
        if (tagInstance == null) {
            notFound()
            return
        }

        if (tagInstance.hasErrors()) {
            respond tagInstance.errors, view:'create'
            return
        }

        tagInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tag.label', default: 'Tag'), tagInstance.id])
                redirect tagInstance
            }
            '*' { respond tagInstance, [status: CREATED] }
        }
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
                redirect tagInstance
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

    private def toolBar(String tipo) {
        ToolBar titulos = new ToolBar()
        titulos.titulo = "TAG"
        titulos.subtitulo = tipo + " de " + titulos.titulo
        return titulos
    }
}
