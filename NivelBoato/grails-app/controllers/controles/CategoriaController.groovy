package controles



import entidade.Categoria
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
        categoria.dataCadastro =  new Date()
        categoria.status = true
        categoria.descricao = "teste"
        System.out.println("antes de salvar" +categoria.descricao +" " +categoria.id)
        categoria.save(flush: true)
        System.out.println("depois de salvar")
        
        redirect(action: "index")
    }
    
    def update(Long id) {
        def cat = Categoria.get(params.id)
        cat.properties = params
        if(!cat.save(flush: true)){
            flash.message = cat.errors
        }
        redirect action: 'edit', id: cat.id
    }
    
    
    def edit(Long id) {
        def cat = Categoria.get(id)
        render view:"edit", model:[categoriaInstance: cat, toollbarInstance: toolBar("Edit")]
    }
}
