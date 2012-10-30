<%-- 
    Document   : index
    Author     : Mely
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
    String modIni = "class='first current_page_item'";
    String modCuentos = "", modRegistrar = "", modLogico = "", modContacto = "class ='last'";
    String modulo = (String) request.getAttribute("titulo");
    if (modulo == null) {
        modulo = "Inicio";
    }

%>
<%!                java.util.Date date = new java.util.Date();
    long hours = date.getHours();
    int minutes = date.getMinutes();
    String fecha = "";

%>
<%

    fecha = " " + hours + ":" + minutes + " ";
    if (minutes < 10) {
        fecha = " " + hours + ": 0" + minutes + " ";
    }
    if (hours > 11) {
        fecha = fecha + "PM ";
    } else {
        fecha = fecha + "AM ";
    }
%>
<%

    String username = "";
    String puntaje = "";
    String nivel = "";
    String welcome = "";
    HttpSession sesionOk = request.getSession();
    if (sesionOk.getAttribute("username") == null) {
        request.getRequestDispatcher("/ModIngreso.jsp").forward(request, response);
    } else {
        username = (String) sesionOk.getAttribute("username");
        puntaje = (String) sesionOk.getAttribute("puntaje");
        nivel = (String) sesionOk.getAttribute("nivel");
    }


%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link rel="shorcut icon" href="images/RFF.ico" type="image/x-icon">
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
            } else if (modulo.equals("Registro")) {
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
        <a href="ControladorPages?accion=logout">
            <img class="icon" style="z-index: 10; width:5em; float: right" class="log" alt="Read For Fun" src='images/Log-Out-icon.png'/> 
        </a>
        <img style="z-index: 10" class="log" alt="Read For Fun" src='images/logo_120.png'/>       

        <div id="menuhoriz" style="border-color:black;">

            <a href="ControladorPages?accion=modhome">
                <img class="icon" style="z-index: 100;" class="log" alt="Read For Fun" src='images/computer-icon.png'/> 
            </a>
            <a href="ControladorPages?accion=modcuentos">
                <img class="icon" style="z-index: 100" class="log" alt="Read For Fun" src='images/folder-font-icon.png'/> 
            </a>
            <a href="ControladorPages?accion=modmath">
                <img class="icon" style="z-index: 100" class="log" alt="Read For Fun" src='images/logico.png'/> 
            </a>
            <a href="ControladorPages?accion=modregistrar">
                <img class="icon" style="z-index: 100;" class="log" alt="Read For Fun" src='images/folder-document-icon.png'/> 
            </a>
            <a href="ControladorPages?accion=modcontacto">
                <img class="icon" style="z-index: 100;" class="log" alt="Read For Fun" src='images/search-icon.png'/> 
            </a>

            <br class="clearfix" />
        </div>


        <div id="wrapper" >


            <div id="header" >
                <%
                    String tab = "Registro";

                    if (username.equals("Admin")) {
                        welcome = "¡Bienvenido Administrador!" + "|| " + fecha;
                        tab = "Informes";
                    } else {
                        welcome = "¡Bienvenido " + username + "! || PUNTAJE: " + puntaje + " || NIVEL: " + nivel + " ||" + fecha;
                    }

                %>

                <div id="menu" style="border-color:black;">

                    <ul style="position:relative; z-index: 4">
                        <li <%=modIni%>><a href="ControladorPages?accion=modhome">Inicio</a></li>
                        <li <%=modCuentos%>><a href="ControladorPages?accion=modcuentos">Lecturas</a></li>
                        <li <%=modLogico%>><a href="ControladorPages?accion=modmath">Juegos</a></li>
                        <li <%=modRegistrar%>><a href="ControladorPages?accion=modregistrar"><%=tab%></a></li>
                        <li <%=modContacto%>><a href="ControladorPages?accion=modcontacto">Contacto</a></li>
                    </ul>

                    <br class="clearfix" />
                </div>

                <img alt="Read Cuentos" id="truck" src='images/vanpool.png'/><img id="truck2" alt="Lee Aprende" src='images/vanpool.png'/>
            </div>
            <div style=" position:relative; color:white; z-index: 100;left:20%; float:top"><%=welcome%></div>

            <div id="page">

                <div id="sidebar">

                    <div id="box2">
                        <h3><a href="ControladorPages?accion=modcuentos">CUENTOS</a></h3>
                    </div>
                    <div id="box2">
                        <h3><a href="ControladorPages?accion=modmath">JUEGOS</a></h3>


                    </div>
                    <div  id="box">
                        <h3><a href="ControladorPages?accion=modcuentos">Cuentos</a></h3>
                    </div>
                    <div  id="box">
                        <h3><a href="ControladorPages?accion=modmath">Juegos</a></h3>
                    </div>
                </div>
                <%
                    if (modulo.equals("Inicio")) {
                %>
                <jsp:include page="ModInicio.jsp"/>
                <%} else if (modulo.equals("Cuentos")) {
                %>
                <jsp:include page="ModCuentos.jsp"/>
                <% } else if (modulo.equals("Registro")) {
                %>
                <jsp:include page="ModRegistrar.jsp"/>
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
