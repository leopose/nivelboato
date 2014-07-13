package entidade

class Tag {

    String descricao
    Date dataCadastro
    boolean status

    static constraints = {
        descricao size: 1..150, blank: false, unique: true
        status blank: false, unique: true
        usuarioCadastro blank: true, nullable: true
    }
    
    static belongsTo = [usuarioCadastro: Usuario]
}
