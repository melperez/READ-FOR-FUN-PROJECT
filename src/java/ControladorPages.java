/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
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
public class ControladorPages extends HttpServlet {

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

        response.setContentType("text/html;charset=UTF-8");

        //Parámetro Acción quien define la acción que se realizará con los datos
        String accion = request.getParameter("accion");

        String modulo = "";
        RequestDispatcher vista;

        if (accion.equals("modhome")) {
            modulo = "Inicio";
        } else if (accion.equals("modcuentos")) {
             modulo = "Cuentos";
        } else if (accion.equals("modmath")) {
            modulo = "Logico";
        } else if (accion.equals("modregistrar")) {
            modulo = "Registro";
        } else if (accion.equals("modcontacto")) {
            modulo = "Contacto";
        } else if (accion.equals("modjuegos")) {
            modulo = "Juegos";
        } else if (accion.equals("logout")) {

            logout(request, response);

        }else if(accion.equals("contar")){
            
            cuentacuento(request, response);
        }

        vista = request.getRequestDispatcher("index.jsp");
        request.setAttribute("titulo", modulo);
        vista.forward(request, response);


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

    public void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession sesion = request.getSession();
        sesion.invalidate();
        request.getRequestDispatcher("ModIngreso.jsp");



    }
    public void cuentacuento(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        
        String nivel =  request.getParameter("nivel");
        String cuento;
        
        
        if (nivel.equals("1")){
            
            cuento = "<iframe style=\"position:relative; \" src=\"http://www.zooburst.com/zb_books-viewer-embed.php?book_id=zb01_5075a75dcb936&bw=600&bh=438&fw=600&fh=538\" width=\"600\" height=\"538\" frameborder=\"0\"></iframe>";
        request.getRequestDispatcher("Cuentos.html");
        request.setAttribute("cuento", cuento);
        
        }else if (nivel.equals("2")){
            cuento = "<iframe style=\"position:relative; \" src=\"http://www.zooburst.com/zb_books-viewer-embed.php?book_id=zb04_507e2fffeaf05&bw=600&bh=438&fw=600&fh=538\" width=\"600\" height=\"538\" frameborder=\"0\"></iframe>";
        request.getRequestDispatcher("Cuentos.html");
        request.setAttribute("cuento", cuento);
        }else if (nivel.equals("3")){
            cuento = "<iframe style=\"position:relative; \" src=\"http://www.zooburst.com/zb_books-viewer.php?book=zb04_507f34889f021&bw=600&bh=438&fw=600&fh=538\" width=\"600\" height=\"538\" frameborder=\"0\"></iframe>";
        request.getRequestDispatcher("Cuentos.html");
        request.setAttribute("cuento", cuento);
        }
        request.getRequestDispatcher("Cuentos.html");



    }
    
    
}
