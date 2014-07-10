package nivelboato

import Entidade.Categoria
import Entidade.ToolBar

class CategoriaController {

    def index() {
        Long cat = 9;
        def toolAtual = toolBar()
        render (view:"index", model:[totalInstance: cat, toollbarInstance: toolAtual])
    }
    
    
    private def toolBar() {
        ToolBar titulos = new ToolBar()
        titulos.titulo = "Categoria"
        titulos.subtitulo = "Cadastro de Categoria"
        return titulos
    }
}
