package entidade

class Tag {

    String descricao
    Date dataCadastro  = new Date()
    boolean status

    static constraints = {
        descricao size: 1..150, blank: false, unique: true
        status blank: false
        usuarioCadastro blank: true, nullable: true
    }
    
    static belongsTo = [usuarioCadastro: Usuario]
}
