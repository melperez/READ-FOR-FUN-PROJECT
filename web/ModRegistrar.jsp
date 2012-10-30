<%-- 
Document   : Módulo de Registro
Author     : Mely
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div id="content">
    <div class="box" style="margin-top: -6%; ">
       <%
                
                String mensaje2 = (String) request.getAttribute("contenido2");
                if (mensaje2 == null) {
                    mensaje2 = " ";
                }
                

            %> 
        
        <center>
            <img style="z-index: 100; width:80% ; height:8em " class="log"  alt="Read For Fun" src='images/boton-registrate.jpg'/>
        </center>
        <div title="¡Registro Exitoso!" style="position:relative; width:30em; ">
            <%=mensaje2%>
        </div>
   <!--Registro><!-->
   <iframe class="fondo" id="registro" name="window" src="Registro.jsp" style="padding-top:10px; width:100%; height: 51em" >Registro</iframe>
      
            

    <br class="clearfix" />
</div>
</div>

