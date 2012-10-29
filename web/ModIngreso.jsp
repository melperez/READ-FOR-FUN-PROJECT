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

        <img  id="logoini" alt="Read For Fun" src='images/logo_120.png'/>  
        <div id="header2" >

            <form action="Ingresar?accion=1" method="POST" id="formIngreso" >

                <div id="inisesion2" >
                    <img style="width: 80%;" src='images/Welcome.png'/>
                    <img style="width: 80%;" src='images/pass.png'/>
                </div>

                <div class="inisesion">
                    Nickname: <br/>
                    <input id="email1" type="text" title="mail@ejemplo.com" name="login" pattern="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" required /><br />
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
