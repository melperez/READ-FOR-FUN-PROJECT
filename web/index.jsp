<%-- 
    Document   : index
    Author     : Mely
--%>
<%
    String modIni = "class='first current_page_item'";
    String modCuentos = "", modPadres = "", modLogico = "", modContacto = "class ='last'";
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
                modPadres = "";
                modLogico = "";
                modContacto = "class ='last'";
                modCuentos = "class='first current_page_item'";
            } else if (modulo.equals("Logico")) {
                modIni = "";
                modPadres = "";
                modCuentos = "";
                modContacto = "class ='last'";
                modLogico = "class='first current_page_item'";
            } else if (modulo.equals("Padres")) {
                modIni = "";
                modCuentos = "";
                modLogico = "";
                modContacto = "class ='last'";
                modPadres = "class='first current_page_item'";;
            } else if (modulo.equals("Contacto")) {
                modIni = "";
                modPadres = "";
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
                        <li <%=modPadres%>><a href="ControladorPages?accion=modpadres">Padres</a></li>
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
                <div style="text-align:center;">
<table cellspacing="1" style="margin:10px auto 40px;width:400px;border:1px solid #DDD;text-align:center;">
<tr><td style="background:#D1FFA4;vertical-align:middle;">
<p style="font-size:11px;font-family:Verdana;margin:0px;padding:2px;color:#666;"><strong>Check Page Rank of your Web site pages instantly:</strong></p>
</td></tr>
<form action="http://www.prchecker.info/check_page_rank.php" method="post" style="margin:0px;padding:0px;">
<tr><td style="border:1px solid #CCC;padding:10px;background:#DDD;">
<input type="hidden" name="action" value="docheck">
<input type="text" value="http://" name="urlo" maxlength="150" style="width:250px;padding:1px 2px 2px 3px;margin-right:10px;font-size:13px;font-family:Arial;"> 
<input type="submit" name="submit" value=" Check PR " style="width:80px;font-size:11px;font-family:Arial;padding:1px;">
</td></tr>
</form>
<tr><td>
<p style="margin:0px;padding:3px 0px 1px 0px;color:#AAA;font-size:9px;font-family:Verdana;">This page rank checking tool is powered by <a href="http://www.prchecker.info/" target="_blank">Page Rank Checker</a> service</p>
</td></tr></table>
</div>

        <div id="footer">
            Copyright (c)RFF 2012 Todos los derechos reservados. Diseñado por Melissa Pérez y Carolina Arteaga. Colombia
        </div>
    </body>
</html>