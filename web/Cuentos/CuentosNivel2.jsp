<%-- 
    Document   : Cuentosnivel2
    Author     : Mely
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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

        <img style="z-index: 1; width: 20%" class="log" alt="Read For Fun" src='../images/logo_120.png'/>       


        <div id="wrapper">
            <h2>HORA DEL CUENTO</h2>
            <ul id="index_cards" style="position:relative;">
                <li id="card-1" style="height: 5em">
                    <h3>Pulgarcita</h3>
                    <a style="" href="../ControladorPages?accion=contar&nivel=1" target="_blank"><img src="http://www.escritoresarg.com.ar/fotos%20nov/pulgarcita.jpg"
                         height="130" width="130" alt="Pulgarcita" />
                    </a>
                </li>
                 <li id="card-2" style="height:5em">
                    <h3>Quiero ser distinta</h3>
                    <a style="" href="../ControladorPages?accion=contar&nivel=2" target="_blank"><img src="../images/distinta.png"
                         height="130" width="130" alt="Pulgarcita" />
                    </a>
                </li>
                 <li id="card-3" style="height:5em">
                    <h3>Pedro y el Lobo</h3>
                    <a style="" href="../ControladorPages?accion=contar&nivel=3" target="_blank"><img src="http://www.cuentos-infantiles.org/wp-content/uploads/2009/10/pedro-y-el-lobo.jpg"
                         height="130" width="130" alt="Pulgarcita" />
                    </a>
                </li>
                 <li id="card-4" style="height:5em">
                    <h3>El Pez Gato</h3>
                    <a style="" href="../ControladorPages?accion=contar&nivel=4" target="_blank"><img src="../images/gatopez.png"
                         height="130" width="130" alt="Pulgarcita" />
                    </a>
                </li>
            </ul>
            
        </div>

    </body>
</html>

