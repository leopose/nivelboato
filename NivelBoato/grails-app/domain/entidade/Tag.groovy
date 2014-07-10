package entidade

class Tag {

	String descricao
	Date dataCadastro
	boolean status
	
	//TODO Criar a Entidade Groovy Usuario
	//Usuario usuarioCadastro

    static constraints = {
        descricao size: 1..150, blank: false, unique: true
    }
}
