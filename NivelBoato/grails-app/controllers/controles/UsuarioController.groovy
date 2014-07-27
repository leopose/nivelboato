package controles

import entidade.Usuario;
import utilitario.ToolBar

class UsuarioController {

    def index = {
        def user = Usuario.findAll()
        
        render view: "index", model: [usuarioInstance:user, toollbarInstance: toolBar("Lista")]
    }
    
        private def toolBar(def tipo) {
        ToolBar titulos = new ToolBar()
        titulos.titulo = "Usuário"

        if(tipo=="Cadastro") {
            titulos.subtitulo = "Cadastro de Usuário"
        }
        if(tipo=="Lista") {
            titulos.subtitulo = "Lista de Usuários"
        }
        
        if(tipo=="Edit") {
            titulos.subtitulo = "Editar Usuário"
        }
        
        return titulos
    }
}
