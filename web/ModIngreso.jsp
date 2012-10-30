<%-- 
    Document   : ModIngreso
    Author     : Mely
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link type="text/css" href="css/unac-style/jquery-ui-1.8.23.custom.css" rel="stylesheet" />
        <link rel="shorcut icon" href="images/RFF.ico" type="image/x-icon">
        <title>ReadForFun</title>

        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body id="bodyini">
<%
                
                String mensaje2 = (String) request.getAttribute("contenido2");
                String mensaje = (String) request.getAttribute("contenido");
                if (mensaje2 == null) {
                    mensaje2 = " ";
                }
                if (mensaje == null){
                    mensaje = "Ingreso Exitoso";
                }
                
                

            %> 
            <div title="¡Registro Exitoso!" style="position:relative; width:30em; float: right; color: white">
            <%=mensaje2%>
        </div>
        <img  id="logoini" alt="Read For Fun" src='images/logo_120.png'/>  
        <div id="header2" >

            <form action="ValidarIngreso" method="POST" id="formIngreso" >

                <div id="inisesion2" >
                    <img style="width: 80%;" src='images/Welcome.png'/>
                    <img style="width: 80%;" src='images/pass.png'/>
                </div>

                <div class="inisesion">
                    Nickname: <br/>
                    <input id="name" type="text" title="nickname" name="nick" required /><br />
                    <br/><br/>
                    Contraseña: <br/><input  id="password1" type="password" name="pass" required />
                    <br/><br/>
                    <input name="btning" id="dialog_link" class="ui-state-default ui-corner-all" style="width: 120px; height:30px; cursor:pointer" type="submit" value="Entrar"/>
                    <br/><a id="login"  style="cursor:pointer; color:orange;" ><u><b>¿Has olvidado tu contraseña?</b></u></a>
                </div>
            </form>
        </div>
    </body>
</html>
