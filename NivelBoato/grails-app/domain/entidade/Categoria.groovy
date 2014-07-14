
package entidade


/**
 *
 * @author leonardo
 */
class Categoria {
    
    String descricao
    Date dataCadastro = new Date()
    boolean status = true

    static constraints = {
        descricao (size: 1..150, blank: false, nullable: false, unique: true)
        status (blank: false, nullable: false)
        usuarioCadastro blank: true, nullable: true
    }
    
    static belongsTo =  [usuarioCadastro : Usuario]
   
    static mapping = {
        version false
    }
}

