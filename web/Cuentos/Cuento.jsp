<%-- 
    Document   : Cuento
    Created on : 29/10/2012, 06:48:38 AM
    Author     : Mely
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%
        String modulo = (String) request.getAttribute("cuento");
    %>
    
         <head>
        <meta charset="utf-8">
        <title>Cuentos</title>

        <link rel="stylesheet" type="text/css" href="Cards.css" />
        <link rel="stylesheet" type="text/css" href="../style.css" />
        <link rel="shorcut icon" href="../images/RFF.ico" type="image/x-icon">
    </head>
    <body id="bodyini">
        <a href="../ControladorPages?accion=logout">
            <img  style="z-index: 10; width:5em; float: right" class="log" alt="Read For Fun" src='../images/Log-Out-icon.png'/> 
        </a>
        <div id="menuhoriz" style="border-color:black; float:right">

                <a href="../ControladorPages?accion=modhome">
                    <img  style="z-index: 100; width:4em; float:right"  alt="Read For Fun" src='../images/computer-icon.png'/> 
                </a>
                <a href="../ControladorPages?accion=modcuentos">
                    <img style="z-index: 100; width:4em; float:right"   alt="Read For Fun" src='../images/folder-font-icon.png'/> 
                </a>
                <a href="../ControladorPages?accion=modmath">
                    <img style="z-index: 100; width:4em; float: right"  alt="Read For Fun" src='../images/logico.png'/> 
                </a>

                <br class="clearfix" />
            </div>

        <img style="z-index: 1; width: 20%; right:10%" class="log" alt="Read For Fun" src='../images/logo_120.png'/>   
        <h2>HORA DEL CUENTO</h2>

        <%=modulo%>
        
    </body>
</html>
