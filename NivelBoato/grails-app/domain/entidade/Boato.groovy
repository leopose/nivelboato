

package entidade

import entidade.Categoria
import entidade.Usuario
/**
 *
 * @author leonardo
 */
class Boato {
	Integer id
	String descricao
	Date dataInicio
	Date dataFim
	Date dataPublicado = new Date()
	
	static belongsTo =  [categoria : Categoria, usuarioCadastro: Usuario]
	static hasMany = [tags: Tag]

	static constraints = {
		descricao blank: false, nullable: false
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
        id  column: "CodBoato"
        tags joinTable: [name: 'TB_BoatoTag',
        				key: 'CodBoato',
        				column: 'CodTag']
    }

}


