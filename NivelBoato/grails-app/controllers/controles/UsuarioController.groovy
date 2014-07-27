package controles

import entidade.Usuario;
import utilitario.EnumPerfil;
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
    
    def create = {
        def usuarioInstance = new Usuario(params)
		def perfil = usuarioInstance.listaPerfil()
        return [usuarioInstance: usuarioInstance,toollbarInstance: toolBar("Cadastro"), perfilInstance: perfil]
    }
    
    def save() {
        def usuario = new Usuario(params)
        
        if(!usuario.save(flush: true)) {
            def toolAtual = toolBar("Cadastro")
            flash.message = usuario.errors
            render view:"create", model: [usuarioInstance: usuario,toollbarInstance: toolAtual]
            return
        }
      
        
        redirect(action: "index")
    }
}
