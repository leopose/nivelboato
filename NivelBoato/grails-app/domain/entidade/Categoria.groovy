
package entidade


/**
 *
 * @author leonardo
 */
class Categoria {
    
    String descricao
    Date dataCadastro
    boolean status

    static constraints = {
        descricao (size: 1..150, blank: false, nullable: false, unique: true)
        status (blank: false, nullable: false)
        usuarioCadastro (nullable: true)
        dataCadastro nullable:true
    }
    
    static belongsTo =  [usuarioCadastro : Usuario]
   
    static mapping = {
        version false
    }
}

