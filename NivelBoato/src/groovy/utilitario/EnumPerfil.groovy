/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package utilitario

/**
 *
 * @author leonardo
 */
public enum EnumPerfil{
    FUNCIONARIO("Funcionário",1),
    ALUNO("Aluno",2),
    PROFESSOR("Professor",3),
    GESTOR("Gestor",4),
    ADMINISTRADOR("Administrador",5)

    private long numero
    private String tipo

    EnumPerfil(String tipo, long numero){
        this.numero = numero;
        this.tipo = tipo;
    }

    public long getNumero(){
        return this.numero
    }

    public String getTipo(){
        return this.tipo
    }


}

