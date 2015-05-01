<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>I/O ADOPTIONS</title>
<link rel="stylesheet" href="css/CssLogIn.css" type="text/css" media="all">
    
<script src="js/jquery-1.11.2.min.js" type="application/javascript"></script>
<script type="application/javascript">
        
        $(document).ready(function(){
            $("#botonIngresar").click(function(){
                $.ajax({
                    url: 'php/verificar_usuario.php',
                    type: 'get',
                    dataType: 'json',
                    data: $("#frmLogin").serialize(),
                    success: function(data){
                        if(data == 1){
                            window.open("index.php");
                        }
                    }
                });
            });
        });
    
</script>
</head>
<body background = "images/Background.jpg">
    <div id = "Logo"><IMG SRC = "images/logo2.png"></div>
    <table>
        <form id="frmLogin">
        <tr>
            <td><font id = "usuario">Usuario:</font></td>
            <td><font id = "contrasena">Contraseña:</font></td>
        </tr>
        <tr>
            <td><input id="Usuario" type="text" name="Usuario"></td>
            <td><input id="Contrasena" type="password" name="Contrasena"></td>
        </tr>
        </form>
    </table>    
    
    <div id = "divUsuario">
        <li></li>
        <li></li>
        <div id = "botonIngresar" style="cursor: pointer"> Ingresar </div>
        <li><font id = "notienescuenta">No tienes cuenta?</font></li>
        <div id = "botonRegistrar" style="cursor: pointer" onclick="window.location='HtmlSignIn.html'"> ¡Regístrate! </div>
    </div>
</body>
</html>
