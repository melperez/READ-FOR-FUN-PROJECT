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
public class ValidacionIngreso extends HttpServlet {

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


        String contenido = "";
        RequestDispatcher vista;

//Datos para la conexion BD 
        String driver = "com.mysql.jdbc.Driver";
        String urlDB = "jdbc:mysql://localhost/dbreadforfun?";
        String userDB = "AdminRFF";
        String passDB = "readforfun";

        //Objetos para la conexion con la BD
        Connection conexion = null;
        Statement sentencia = null;
        ResultSet resultado;
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

        //Validacion de Login     
        String nick = request.getParameter("nick");
        String pass = request.getParameter("pass");

        sql = "Select iduser, puntaje, niveluser from usuarios where iduser ='" + nick + "' AND pass = '" + pass + "'";

        try {
            sentencia = conexion.createStatement();
            sentencia.execute(sql);
            resultado = sentencia.getResultSet();


            if (resultado.next()) {
                System.out.println("autenticado ...");
                //creamos la sesion
                HttpSession sesionOk = request.getSession();//creamos la sesion
                //agregamos el usuario a la sesión
                sesionOk.setAttribute("username", resultado.getString("iduser"));
                //agregamos el perfil a la sesión                                        
                sesionOk.setAttribute("puntaje", resultado.getString("puntaje"));
                //agregamos el id del usuario                                        
                sesionOk.setAttribute("nivel", resultado.getString("niveluser"));
                
                vista = request.getRequestDispatcher("index.jsp");

            } else {

                contenido = "Correo o contraseña incorrecta o no se encuentra registrado !";
                vista = request.getRequestDispatcher("ModIngreso.jsp");
            }

            request.setAttribute("contenido", contenido);
            vista.forward(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(ValidacionIngreso.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                sentencia.close();
                conexion.close();
            } catch (SQLException ex) {
                Logger.getLogger(ValidacionIngreso.class.getName()).log(Level.SEVERE, null, ex);
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
