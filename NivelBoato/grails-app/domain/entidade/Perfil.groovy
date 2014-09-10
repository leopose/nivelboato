
package entidade


/**
 *
 * @author leonardo
 */
class Perfil {
    Integer id
    String descricao
    boolean status = true

    static constraints = {
        descricao (size: 1..150, blank: false, nullable: false, unique: true)
        status (blank: false, nullable: false)
       
    }

     static mapping =  {
        table "TB_Perfil"
        version false
        descricao column: "DescricaoPerfil"
        dataCadastro column: "DataCadastro"
        status column: "Status"
        id column: "CodPerfil"
    }
}
