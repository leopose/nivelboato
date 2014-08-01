

package entidade

import java.security.MessageDigest
import utilitario.EnumPerfil




/**
 *
 * @author leonardo
 */
class Usuario implements Serializable {

	String nome
	String chave
	String senha
	String email
	Date dataCadastro = new Date()
	boolean status = true
	long perfil

	static constraints = {
		chave blank: false, nullable: false, unique: true
		senha blank: false, nullable: false
		perfil blank: false, nullable: false
		nome blank: false, nullable: false
		email email:true, blank: false, nullable: false
	}

	public String getPerfil(){

		return buscaPorNumero(perfil)
	}

	public void setPerfil(String nomeperfil){
		long tipo = buscaPorTipo(nomeperfil)
		perfil = tipo
	}
	
	public void setChave(String chave){
		this.chave = chave.toLowerCase()
	}

	public void criptografar(String digitado){
		MessageDigest algorithm = MessageDigest.getInstance("SHA-256");
		List<Byte> digest = algorithm.digest(digitado.getBytes("UTF-8"));

		StringBuilder hexString = new StringBuilder();
		for (Byte b : digest) {
			hexString.append(String.format("%02X", 0xFF & b));
		}
			this.senha = hexString.toString();
	}

	public long buscaPorTipo(String nomeperfil){
		def idenum = 0
		for(EnumPerfil p: EnumPerfil.values()){
			if(p.getTipo().equals(nomeperfil)){
				idenum = p.getNumero()
				break
			}
		}
		return idenum
	}

	public String buscaPorNumero(long idenum){
		def enumnome = "não encontrado"
		for(EnumPerfil p: EnumPerfil.values()){
			if(p.getNumero().equals(idenum)){
				enumnome = p.getTipo()
				break
			}
		}
		return enumnome
	}

	public def listaPerfil(){
		def tipos = []
		for(EnumPerfil p: EnumPerfil.values()){
			tipos.add(p.getTipo())
		}
		return tipos
	}
}


