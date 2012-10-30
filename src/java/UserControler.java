/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mely
 */
public class UserControler extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("firstname");
        String apellido = request.getParameter("lastname");
        String correo2 = request.getParameter("email");
        String password = request.getParameter("password");
        String telefono = request.getParameter("digits");
        String Gen = request.getParameter("genero");
        String nick = request.getParameter("nick");
        String edads = request.getParameter("edad");
        String pin = request.getParameter("pin");
        String nomPadre = request.getParameter("firstname2");
        int puntaje = 0;
        int nivel = 1;
        int genero;
        if (Gen.equals("Masculino")) {
            genero = 1;
        } else {
            genero = 2;
        }

        int edad = 0;
        if (edads.equals("4 años")) {
            edad = 4;
        } else if (edads.equals("5 años")) {
            edad = 5;
        } else if (edads.equals("6 años")) {
            edad = 6;
        } else if (edads.equals("7 años o mas")) {
            edad = 7;
        }



        String contenido2;
        boolean error = false;
        RequestDispatcher vista = null;

        String driver = "com.mysql.jdbc.Driver";
        String urlDB = "jdbc:mysql://localhost/dbreadforfun?";
        String userDB = "AdminRFF";
        String passDB = "readforfun";

        //Objetos para la conexion con la BD
        Connection conexion = null;
        Statement sentencia = null;
        ResultSet resultado;
        int resul;
        String sql;
        System.out.println("Conectado ...");

        //Cargar Driver
        try {

            Class.forName(driver).newInstance();
            conexion = DriverManager.getConnection(urlDB, userDB, passDB);

        } catch (IllegalAccessException e1) {
            System.out.println("Error cargando Driver");
        } catch (InstantiationException e1) {
            System.out.println("Error cargando Driver");
        } catch (ClassNotFoundException e1) {
            System.out.println("Error cargando Driver");
        } catch (SQLException e2) {
            System.out.println("Error conectando DB");
        }

        sql = "call newuser('" + nick + "', '" + nombre + "', '" + apellido + "','" + correo2 + "'," + edad + ",'" + password + "','" + telefono + "','"
                + nomPadre + "'," + puntaje + "," + nivel + "," + genero + ",'" + pin + "')";


        try {
            sentencia = conexion.createStatement();
            sentencia.execute(sql);
            resultado = sentencia.getResultSet();
            resultado.next();

            
        } catch (SQLIntegrityConstraintViolationException b) {
            contenido2 = "<p>El Nick" + nick + " ya se encuentra registrado,"
                    + " por favor ingresa otro nick o inicia sesión.</p>";
            error = true;
            request.setAttribute("contenido2", contenido2);
            request.setAttribute("error", error);
            vista.forward(request, response);

        } catch (NullPointerException a) {

            contenido2 = "<p>!Bienvenido " + nick + " usted se ha registrado exitosamente!<b/>"
                    + "<br/>Nickname: " + nick + "<br/> Contraseña: " + password + "</p>";

            System.out.println("autenticado ...");
            //creamos la sesion
            HttpSession sesionOk = request.getSession();//creamos la sesion
            //agregamos el usuario a la sesión
            sesionOk.setAttribute("username", nick);
            //agregamos el perfil a la sesión                                        
            sesionOk.setAttribute("puntaje", puntaje);
            //agregamos el id del usuario                                        
            sesionOk.setAttribute("nivel", nivel);

            vista = request.getRequestDispatcher("ModIngreso.jsp");
            request.setAttribute("contenido2", contenido2);
            request.setAttribute("error", error);
            vista.forward(request, response);

        } catch (SQLException e2) {
            contenido2 = "No se ha podido registrar con exito, revisa que el PIN sea válido";
            error = true;
            request.setAttribute("contenido2", contenido2);
            request.setAttribute("error", error);
            vista.forward(request, response);
        } finally {
            try {
                sentencia.close();
                conexion.close();
            } catch (SQLException e2) {
                Logger.getLogger(UserControler.class.getName()).log(Level.SEVERE, null, e2);
            }
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
