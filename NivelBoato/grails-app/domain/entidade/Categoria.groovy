
package entidade


/**
 *
 * @author leonardo
 */
class Categoria {
    
    // Long id;
     String descricao;
     Date dataCadastro;
     Usuario usuarioCadastro;
     boolean status;

    static mapping = {
        version false
    }
}

