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
        usuario.criptografar(usuario.senha)
        if(!usuario.save(flush: true)) {
            def toolAtual = toolBar("Cadastro")
            flash.message = usuario.errors
            render view:"create", model: [usuarioInstance: usuario,toollbarInstance: toolAtual]
            return
        }
      
        
        redirect(action: "index")
    }
	
	def update(Long id) {
		def usuario = Usuario.get(params.id)
		usuario.properties = params
		if(!usuario.save(flush: true)){
			flash.message = usuario.errors
		}
		redirect action: 'index'
	}
	
	def edit(Long id) {
		def usuario = Usuario.get(id)
		render view:"edit", model:[usuarioInstance: usuario, toollbarInstance: toolBar("Edit")]
	}
	
	def remove(Long id){
		def usuario = Usuario.get(id);
		usuario.setStatus(false)
		if(!usuario.save(flush:true)){
			flash.message = usuario.errors
		}
			
		flash.message = "Usuário desativado."
		redirect action:'index'
	}
}
