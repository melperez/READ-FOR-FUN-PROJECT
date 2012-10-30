/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Karolina
 */
public class Niveles {

    public Niveles(int idnivel, String nivel, String descripcion) {
        this.idnivel = idnivel;
        this.nivel = nivel;
        this.descripcion = descripcion;
    }

    public Niveles() {
    }

    public int getIdnivel() {
        return idnivel;
    }

    public void setIdnivel(int idnivel) {
        this.idnivel = idnivel;
    }

    public String getNivel() {
        return nivel;
    }

    public void setNivel(String nivel) {
        this.nivel = nivel;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    int idnivel;
    String nivel;
    String descripcion;
}
