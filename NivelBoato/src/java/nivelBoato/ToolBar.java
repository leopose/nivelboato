/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nivelBoato;



/**
 *
 * @author leonardo
 */
public class ToolBar {

    private String titulo;
    private String subtitulo;

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getSubtitulo() {
        return subtitulo;
    }

    public void setSubtitulo(String subtitulo) {
        this.subtitulo = subtitulo;
    }

    @Override
    public String toString() {
        return "ToolBar{" + "titulo=" + titulo + ", subtitulo=" + subtitulo + '}';
    }

}
