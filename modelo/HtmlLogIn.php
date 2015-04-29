<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>I/O ADOPTIONS</title>
<link rel="stylesheet" href="css/CssLogIn.css" type="text/css" media="all">
</head>
<body background = "images/Background.jpg">
    <div id = "Logo"><IMG SRC = "images/logo.png"></div>
    <table>
        <tr>
            <td><font id = "usuario">Usuario:</font></td>
            <td><font id = "contraseña">Contraseña:</font></td>
        </tr>
        <tr>
            <td><input id="Usuario" type="text" name="usuario"></td>
            <td><input id="Contraseña" type="password" name="contraseña"></td>
        </tr>
    </table>    
    
    <div id = "divUsuario">
        <li></li>
        <li></li>
        <div id = "botonIngresar" style="cursor: pointer" onclick="window.location='index.html'"> Ingresar </div>
        <li><font id = "notienescuenta">No tienes cuenta?</font></li>
        <div id = "botonRegistrar" style="cursor: pointer" onclick="window.location='HtmlSignIn.html'"> ¡Regístrate! </div>
    </div>
</body>
</html>
