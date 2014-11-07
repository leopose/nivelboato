

package entidade

import entidade.Categoria
import entidade.Usuario
import java.util.Date
/**
 *
 * @author leonardo
 */
class Boato {
    Integer id
    String titulo
    String descricao
    Date dataInicio
    Date dataFim
    Date dataPublicado = new Date()
	
    static belongsTo =  [categoria : Categoria, usuarioCadastro: Usuario]
    static hasMany = [tags: Tag]

    static constraints = {
        descricao blank: false, nullable: false
        dataInicio blank: false, nullable: false
        dataFim blank: true, nullable: true
        tags blank: true, nullable: true
    }

    static mapping =  {
        table "TB_Boato"
        version false
        descricao column: "DescricaoBoato"
        dataInicio column: "DataInicio"
        dataFim column: "DataFim"
        dataPublicado column: "DataPublicado"
        categoria column: "CodCategoria"
        usuarioCadastro column: "CodUsuario"
        titulo column: "TituloBoato"
        id  column: "CodBoato"
        tags joinTable: [name: 'TB_BoatoTag',
            key: 'CodBoato',
            column: 'CodTag']
    }

}


