/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Karolina
 */
public class Juegos {

    public Juegos(int idjuego, int niveljuego, String nombreJuego) {
        this.idjuego = idjuego;
        this.nivelJuego = niveljuego;
        this.nombreJuego = nombreJuego;
    }

    public Juegos() {
    }

    public int getIdjuego() {
        return idjuego;
    }

    public void setIdjuego(int idjuego) {
        this.idjuego = idjuego;
    }

    public int getNiveljuego() {
        return nivelJuego;
    }

    public void setNiveljuego(int niveljuego) {
        this.nivelJuego = niveljuego;
    }

    public String getNombreJuego() {
        return nombreJuego;
    }

    public void setNombreJuego(String nombreJuego) {
        this.nombreJuego = nombreJuego;
    }
 int idjuego;
 int nivelJuego;
 String nombreJuego;
}
