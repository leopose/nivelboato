
package entidade

import entidade.Boato
import entidade.Usuario

class PontuacaoBoato {
    Long id
    boolean curtido
    Date dataEvento
	
    static belongsTo =  [usuarioAvaliador : Usuario, boatoAvaliado: Boato]

    static constraints = {
        curtido blank: true, nullable: true
    }

    static mapping =  {
        table "TB_Pontuacao"
        version false
        curtido column: "Curtido"
        usuarioAvaliador column: "CodUsuario"
        boatoAvaliado column: "CodBoato"
        id  column: "CodPontuacao"
        dataEvento column:"DataHoraEvento"
    }
}


