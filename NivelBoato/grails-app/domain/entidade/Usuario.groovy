

package entidade

import utilitario.EnumPerfil;



/**
 *
 * @author leonardo
 */
class Usuario {

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
        email email:true, blank: false, nullable: false
        
    }

    public String getPerfil(){
        
        return buscaPorNumero(perfil)
		
    }

    public void setPerfil(String nomeperfil){
        long tipo = buscaPorTipo(nomeperfil)
        perfil = tipo
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


