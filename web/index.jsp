<%-- 
    Document   : index
    Author     : Mely
--%>
<%
    String modIni = "class='first current_page_item'";
    String modCuentos = "", modRegistrar = "", modLogico = "", modContacto = "class ='last'";
    String modulo = (String) request.getAttribute("titulo");
    if (modulo == null) {
        modulo = "Inicio";
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <%
            if (modulo.equals("Cuentos")) {
                modIni = "";
                modRegistrar = "";
                modLogico = "";
                modContacto = "class ='last'";
                modCuentos = "class='first current_page_item'";
            } else if (modulo.equals("Logico")) {
                modIni = "";
                modRegistrar = "";
                modCuentos = "";
                modContacto = "class ='last'";
                modLogico = "class='first current_page_item'";
            } else if (modulo.equals("Registrate")) {
                modIni = "";
                modCuentos = "";
                modLogico = "";
                modContacto = "class ='last'";
                modRegistrar = "class='first current_page_item'";;
            } else if (modulo.equals("Contacto")) {
                modIni = "";
                modRegistrar = "";
                modLogico = "";
                modCuentos = "";
                modContacto = "class='last current_page_item'";
            }

        %>
        <title>Read For Fun</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>

        <img style="z-index: 100" class="log" alt="Read For Fun" src='images/logo_120.png'/>       


        <div id="wrapper">
            <div id="header" >


                <div id="menu" style="border-color:black">

                    <ul style="position:relative; z-index: 4">
                        <li <%=modIni%>><a href="ControladorPages?accion=modhome">Inicio</a></li>
                        <li <%=modCuentos%>><a href="ControladorPages?accion=modcuentos">Lecturas</a></li>
                        <li <%=modLogico%>><a href="ControladorPages?accion=modmath">L&oacutegica</a></li>
                        <li <%=modRegistrar%>><a href="ControladorPages?accion=modregistrar">Registro</a></li>
                        <li <%=modContacto%>><a href="ControladorPages?accion=modcontacto">Contacto</a></li>
                    </ul>

                    <br class="clearfix" />
                </div>


                <img alt="Read Cuentos" id="truck" src='images/vanpool.png'/><img id="truck2" alt="Lee Aprende" src='images/vanpool.png'/>



            </div>


            <div id="page">
                <div id="sidebar">
                    <div id="box2">
                        <h3>CUENTOS</h3>
                    </div>
                    <div id="box2">
                        <h3>JUEGOS</h3>
                    </div>
                    <div  id="box">
                        <h3>Cuentos</h3>
                        <p>
                            Lista de cuentos
                        </p>
                    </div>
                    <div  id="box">
                        <h3>Cuentos</h3>
                        <p>
                            <a href="ControladorPages?accion=modjuegos">Jugar</a>
                        </p>

                    </div>
                </div>
                <%
                    if (modulo.equals("Inicio")) {
                %>
                <jsp:include page="ModInicio.jsp"/>
                <%} else if (modulo.equals("Cuentos")) {
                %>
                <jsp:include page="ModCuentos.jsp"/>
                <% } else if (modulo.equals("Padres")) {
                %>
                <jsp:include page="ModPadres.jsp"/>
                <% } else if (modulo.equals("Logico")) {
                %>
                <jsp:include page="ModLogico.jsp"/>
                <% } else if (modulo.equals("Contacto")) {
                %>
                <jsp:include page="ModContacto.jsp"/>
                <%}
                %>
                
                <br class="clearfix" />
            </div>
        </div>


        <div id="footer">
            Copyright (c)RFF 2012 Todos los derechos reservados. Diseñado por Melissa Pérez y Carolina Arteaga. Colombia
        </div>
    </body>
</html>