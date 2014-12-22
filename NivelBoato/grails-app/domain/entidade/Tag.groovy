package entidade

import java.util.Date

class Tag {
    Long id
    String descricao
    Date dataCadastro  = new Date()
    boolean status = true

    static constraints = {
        descricao size: 1..150, blank: false, unique: true
        status blank: false
        
    }
    
    static belongsTo = [usuarioCadastro: Usuario]

    static mapping =  {
        table "TB_Tag"
        version false
        descricao column: "DescricaoTag"
        dataCadastro column: "DataCadastro"
        status column: "Ativo"
        id  column: "CodTag"
        usuarioCadastro  column: "CodUsuario"
    }
}
