
package entidade

import java.util.Date
/**
 *
 * @author leonardo
 */
class Categoria {
    Integer id
    String descricao
    Date dataCadastro = new Date()
    boolean status = true

    static constraints = {
        descricao (size: 1..150, blank: false, nullable: false, unique: true)
        status (blank: false, nullable: false)
       
    }
    
    static belongsTo =  [usuarioCadastro : Usuario]
   
     static mapping =  {
        table "TB_Categoria"
        version false
        descricao column: "DescricaoCategoria"
        dataCadastro column: "DataCadastro"
        status column: "Ativo"
        id column: "CodCategoria"
        usuarioCadastro column: "CodUsuario"
    }
}

