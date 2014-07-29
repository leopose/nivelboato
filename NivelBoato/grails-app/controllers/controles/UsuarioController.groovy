package controles

import entidade.Usuario
import grails.converters.JSON
import java.security.MessageDigest
import utilitario.EnumPerfil
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
		if(usuario.senha){
			usuario.criptografar(usuario.senha)
		}

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

	def logar() {
		def chave = params.chave
		def senha = params.senha

		if(chave.equals("admin") && senha.equals("admin")){
			session.user = "logado"
			redirect (uri:"/index")
			return
		}

		def usuario = Usuario.findWhere(chave:chave,senha:criptografar(senha))
		if(usuario!= null){
			session.user = usuario
			redirect (uri:"/index")
			return
		}
		flash.message = "Usuário ou senha inválidos."
		redirect (uri:"/login")
	}
	
	def usuarioLogado = {
		def dados = [:]
		def usuario = Usuario.get(session.user.id)
		dados.put("nome", usuario.nome)
		dados.put("perfil", usuario.perfil)
		render dados as JSON
	}

	def criptografar(String digitado){
		MessageDigest algorithm = MessageDigest.getInstance("SHA-256");
		List<Byte> digest = algorithm.digest(digitado.getBytes("UTF-8"));

		StringBuilder hexString = new StringBuilder();
		for (Byte b : digest) {
			hexString.append(String.format("%02X", 0xFF & b));
		}
		return hexString.toString();
	}
}
