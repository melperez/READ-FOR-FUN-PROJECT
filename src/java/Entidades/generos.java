/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Karolina
 */
public class generos {

    public generos(int idgenero, String genero) {
        this.idgenero = idgenero;
        this.genero = genero;
    }

    public generos() {
    }

    public int getIdgenero() {
        return idgenero;
    }

    public void setIdgenero(int idgenero) {
        this.idgenero = idgenero;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }
    int idgenero;
    String genero;
}
