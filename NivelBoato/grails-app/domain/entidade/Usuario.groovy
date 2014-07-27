

package entidade

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
    boolean status
    Perfil perfil

    static constraints = {
        chave blank: false, nullable: false, unique: true
        senha blank: false, nullable: false
        email email:true, blank: false, nullable: false
    }
	
	
    public enum Perfil{
        FUNCIONARIO("Funcionário",1),
        ALUNO("Aluno",2),
        PROFESSOR("Professor",3),
        GESTOR("Gestor",4),
        ADMINISTRADOR("Administrador",5)
		
        private final long id
        private final String nome
		
        Perfil(long id, String nome){
            this.id = id;
            this.nome = nome;
        }
    }
}


