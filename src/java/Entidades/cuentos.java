/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Karolina
 */
public class cuentos {

    public cuentos(int idcuento, int nivel, String tituloCuento) {
        this.idcuento = idcuento;
        this.nivel = nivel;
        this.tituloCuento = tituloCuento;
    }

    public cuentos() {
    }

    public int getIdcuento() {
        return idcuento;
    }

    public void setIdcuento(int idcuento) {
        this.idcuento = idcuento;
    }

    public int getNivel() {
        return nivel;
    }

    public void setNivel(int nivel) {
        this.nivel = nivel;
    }

    public String getTituloCuento() {
        return tituloCuento;
    }

    public void setTituloCuento(String tituloCuento) {
        this.tituloCuento = tituloCuento;
    }
    int idcuento;
    int nivel;
    String tituloCuento;
}
