package nivelboato

import niveBoato.Entidade.Categoria
import nivelBoato.ToolBar


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
}
