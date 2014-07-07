package nivelboato

import niveBoato.Entidade.Categoria
import nivelBoato.ToolBar


class CategoriaController {

    def index = {
        def toolAtual = toolBar("Lista")
        render (view:"index", model:[toollbarInstance: toolAtual, categoriaList: Categoria.list()])
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
        
        return titulos
    }
    
    def create = {
        def categoriaInstance = new Categoria()
        categoriaInstance.properties = params
        def toolAtual = toolBar("Cadastro")
        return [categoriaInstance: categoriaInstance,toollbarInstance: toolAtual]
    }
    
    def save = {
        def categoria = new Categoria(params) 
        categoria.save()
        redirect(action: "index")
    }
}
