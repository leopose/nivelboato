package controles



import entidade.Categoria
import groovy.ui.ConsoleTextEditor.RedoAction;
import utilitario.ToolBar



class CategoriaController {

    def index = {
        def toolAtual = toolBar("Lista")
        render (view:"index", model:[toollbarInstance: toolAtual, categoriaList: Categoria.findAll()])
    }
    
    
    private def toolBar(def tipo) {
        ToolBar titulos = new ToolBar()
        titulos.titulo = "Categoria"

        if(tipo=="Cadastro") {
            titulos.subtitulo = "Cadastro de Categoria"
        }
        if(tipo=="Lista") {
            titulos.subtitulo = "Lista de Categorias"
        }
        
        if(tipo=="Edit") {
            titulos.subtitulo = "Editar Categoria"
        }
        
        return titulos
    }
    
    def create = {
        def categoriaInstance = new Categoria(params)
        def toolAtual = toolBar("Cadastro")
        return [categoriaInstance: categoriaInstance,toollbarInstance: toolAtual]
    }
    
    def save() {
        def categoria = new Categoria(params)
        
		
		if(!categoria.save(flush: true)) {
			 def toolAtual = toolBar("Cadastro")
			render view:"create", model: [categoriaInstance: categoria,toollbarInstance: toolAtual]
			return
		}
      
        
        redirect(action: "index")
    }
    
    def update(Long id) {
        def cat = Categoria.get(params.id)
        cat.properties = params
        if(!cat.save(flush: true)){
            flash.message = cat.errors
        }
        redirect action: 'index'
    }
    
    
    def edit(Long id) {
        def cat = Categoria.get(id)
        render view:"create", model:[categoriaInstance: cat, toollbarInstance: toolBar("Edit")]
    }
	
	def remove(Long id){
		def cat = Categoria.get(params.id);
		cat.setStatus(false)
		if(!cat.save(flush:true)){
			flash.message = cat.errors
		}
			
		flash.message = "Categoria desativada."
		redirect action:'index'
	}
}
