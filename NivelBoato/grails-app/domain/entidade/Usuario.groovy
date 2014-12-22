

package entidade

import java.security.MessageDigest
import utilitario.EnumPerfil
import entidade.Perfil
import java.util.Date
/**
 *
 * @author leonardo
 */
class Usuario implements Serializable {
	Long id
	String nome
	String chave
	String senha
	String email
	Date dataCadastro = new Date()
	boolean status = true
	
	static belongsTo =  [perfil : Perfil]

	static constraints = {
		chave blank: false, nullable: false, unique: true
		senha blank: false, nullable: false
		perfil blank: false, nullable: false
		nome blank: false, nullable: false
		email email:true, blank: false, nullable: false
	}

	 static mapping =  {
        table "TB_Usuario"
        version false
        nome column: "Nome"
        chave column: "CPF"
        email column: "Email"
        dataCadastro column: "DataCadastro"
        status column: "Ativo"
        perfil column: "CodPerfil"
        id  column: "CodUsuario"
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

}


