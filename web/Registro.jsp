<%-- 
    Document   : Registro
    Created on : 11/09/2012, 08:57:11 AM
    Author     : Mely
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="dcterms.created" content="Mon, 27 Aug 2012 00:41:36 GMT">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <title>Registro</title>
        <link rel="stylesheet" type="text/css" href="css/Style1.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="css/Style2.css" media="screen" />
        <script src="lib/jquery.js"></script>
        <script src="lib/Validar.js" type="text/javascript"></script>
        <script src="lib/Registro.js" type="text/javascript"></script>
        <script type="text/javascript" src="lib/jquery-ui-1.8.23.custom.min.js"></script>
        <link type="text/css" href="css/unac-style/jquery-ui-1.8.23.custom.css" rel="stylesheet" />

        <!--[if IE]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <div id="titulo" style="font-family:BonvenoCF, Arial, sans-serif; font-size:15px;  text-shadow:none; padding-top:0px">
            <div class="fondo" id="b2" style=" padding:10%; font-family:BonvenoCF, Arial, sans-serif; font-size:15px; width: 29em; height:50em; text-shadow:none; padding-top:3px">
                
                <form action="Controlar" method="POST" id="signupForm" target="_top" style="color: black; text-align:justify; text-shadow:2px 2px 2px #646464">
                   
                    <P>
                       <label for="Nick">Nickname: </label><br/>
                        <input id="Nick" class="required"  type="text" name="Nick" placeholder="Nick" minlength="2"  style="width:400px;height:20px;"/> 
                    </P>
                    <p>
                        <label for="firstname">Nombre: </label><br/>
                        <input id="Nomniño" class="required"  type="text" name="firstname" placeholder="Nombre" minlength="2"  style="width:400px;height:20px;"/>
                    </p>
                    <p>
                        <label for="lastname">Apellidos: </label><br/>
                        <input id="lastname" class="required" type="text" name="lastname" placeholder="Apellido" style="width:400px;height:20px;" />
                    </p>
                    <p>
                        <label for="email">Correo Electr&oacutenico:</label><br/>
                        <input id="email" type="text" class="required" title="mail@ejemplo.com" name="email" placeholder="email@dominio.com" style="width:400px;height:20px;" />
                    </p>
                    <p>
                        <label for="firstname">Nombre Acudiente: </label><br/>
                        <input id="Nomacudi" class="required"  type="text" name="firstname" placeholder="Nombre" minlength="2"  style="width:400px;height:20px;"/>
                    </p>
                    <p>
                        <label for="password">Contrase&ntildea: </label>
                        <br><input id="password" class="required" type="password" name="password" placeholder="Password"  style="width:400px;height:20px;" />
                    </p>
                    <p>
                        <label for="confirm_password">Repita la contrase&ntildea: </label><br/>
                        <input  id="confirm_password" class="required" type="password" name="confirm_password" placeholder="Repite Password"  style="width:400px;height:20px;"   />
                    </p>
                    <p>
                        <label for="digits" >Tel&eacutefono: </label><br/>
                        <input  id="digits" type="tel" class="required" name="digits" placeholder="Telefono"  style="width:400px;height:20px;" />
                    </p>
                    <p>
                        <label for="genero">G&eacutenero:</label><br/>
                        <input id="genero" name="genero" value="" class="requiered" style="font-family:BonvenoCF, Arial, sans-serif; font-size:15px; width:400px; height:20px; border-radius:10px; border:solid; border-color:#C0C0C0" required/>
                        <datalist>
                            <option value="Select" >Selecciona un g&eacutenero</option>
                            <option value="Masculino">Masculino</option>     
                            <option value="Femenino">Femenino</option>
                        </datalist>
                    </p>
                 
                     <p>
                        <label for="genero">Edad:</label><br/>
                        <select id="edad" name="edad" style="font-family:BonvenoCF, Arial, sans-serif; font-size:15px; width:400px; height:30px; border-radius:10px; border:solid; border-color:#C0C0C0">
                            <option value="Select" >Selecciona tu edad</option>
                            <option value="4 años">4 años</option>     
                            <option value="5 años">5 años</option>
                             <option value="6 años">6 años</option>     
                            <option value="7 años o mas">7 años o mas</option>
                        </select>
                    </p>
                    
                    <p>
                        <label for="firstname">PIN: </label><br/>
                        <input id="cod" class="required"  type="text" name="firstname" placeholder="Nombre" minlength="2"  style="width:400px;height:20px;"/>
                    </p>
                    <p>
                    <input id="Registrate" class="ui-state-default ui-corner-all" style="width: 92%; height:5em; cursor: pointer; font-size: 150%" type="submit" value="Registrate" />
                    </p>
                         <input type="hidden" name="accion"  />
                        <input type="hidden" name="id"  />
                        
                        
                </form>
            </div>  
        </div>
    </body>
</html>