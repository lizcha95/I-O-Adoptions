
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>I/O ADOPTIONS</title>
<link rel="stylesheet" href="css/CssSignIn.css" type="text/css" media="all">
</head>
<body background = "images/BackgroundSignIn.jpg">
    <div id = "Logo"><IMG SRC = "images/logo.png"></div>
    <div id = "datos">    
    <table>
        <tr>
            <td><font id = "nombre" color="white" face = Helvetica size="3">Nombre:</font></td>    
            <td><input id="Nombre" type="text" name="usuario"></td>
            <td><font id = "correo" color="white" face = Helvetica size="3">Correo:</font></td>
            <td><input id="Correo" type="text" name="usuario"></td>
        </tr>
        <tr>
            <td><font id = "apellido" color="white" face = Helvetica size="3">Apellido:</font></td>
            <td><input id="Apellido" type="text" name="usuario"></td>
            <td><font id = "pais" color="white" face = Helvetica size="3">Pais:</font></td>    
            <td><SELECT id = "Pais" NAME="selCombo" SIZE=1 > 
                    <OPTION VALUE="1">Costa Rica</OPTION>
                </SELECT></td>
        </tr>
        <tr>
            <td><font id = "cedula" color="white" face = Helvetica size="3">Cedula:</font></td>
            <td><input id="Cedula" type="text" name="usuario"></td>
            <td><font id = "provincia" color="white" face = Helvetica size="3">Provincia:</font></td>
            <td><SELECT id = "Provincia" NAME="selCombo" SIZE=1 > 
                    <OPTION VALUE="1">San Jose</OPTION>
                    <OPTION VALUE="1">Alajuela</OPTION>
                    <OPTION VALUE="1">Cartago</OPTION>
                    <OPTION VALUE="1">Heredia</OPTION>
                    <OPTION VALUE="1">Guanacaste</OPTION>
                    <OPTION VALUE="1">Puntarenas</OPTION>
                    <OPTION VALUE="1">Limon</OPTION>
                </SELECT></td>
        </tr>
        <tr>
            <td><font id = "fecha" color="white" face = Helvetica size="3">Fecha de nacimiento:</font></td>
            <td><input id = "Fecha" type="date" name="fecha"></td>
            <td><font id = "canton" color="white" face = Helvetica size="3">Canton:</font></td>
            <td><SELECT id = "Canton" NAME="selCombo" SIZE=1 > 
                    <OPTION VALUE="1">Cantones 1</OPTION>
                    <OPTION VALUE="1">Cantones 2</OPTION>
                    <OPTION VALUE="1">Cantones 3</OPTION>
                    <OPTION VALUE="1">Cantones 4</OPTION>
                    <OPTION VALUE="1">Cantones 5</OPTION>
                    <OPTION VALUE="1">Cantones 6</OPTION>
                    <OPTION VALUE="1">Cantones 7</OPTION>
                </SELECT></td>
        </tr>
        <tr>
            <td><font id = "telefono" color="white" face = Helvetica size="3">Telefono:</font></td>
            <td><input id="Telefono" type="text" name="usuario"></td>
            <td><font id = "distrito"  color="white" face = Helvetica size="3">Distrito:</font></td>
            <td><SELECT id = "Distrito" NAME="selCombo" SIZE=1 > 
                    <OPTION VALUE="1">Distritos 1</OPTION>
                    <OPTION VALUE="1">Distritos 2</OPTION>
                    <OPTION VALUE="1">Distritos 3</OPTION>
                    <OPTION VALUE="1">Distritos 4</OPTION>
                    <OPTION VALUE="1">Distritos 5</OPTION>
                    <OPTION VALUE="1">Distritos 6</OPTION>
                    <OPTION VALUE="1">Distritos 7</OPTION>
                </SELECT></td>
        </tr>
        <tr>
            <td></td><td></td>
            <td><font id = "exacta" color="white" face = Helvetica size="3">Direccion Exacta:</font></td>
            <td><textarea id = "textarea" rows="4" cols="25"></textarea></td>
        </tr>     
    </table>
    </div>
        
   
        
    <div id = "user">
        <li><font id = "usuario" color="white" face = Helvetica size="3">Usuario:</font></li>
        <li><input id = "Usuario" type="text" name="usuario"></li>
        <li><font id = "contraseña" color="white" face = Helvetica size="3">Contraseña:</font></li>
        <li><input id = "Contraseña" type="password" name="usuario"></li>
        <li><font id = "repita" color="white" face = Helvetica size="3">Repita la contraseña:</font></li>
        <li><input id = "Repita" type="password" name="usuario"></li>
        <li><div id = "botonRegistrar" style="cursor: pointer" onclick="window.location='index.html'"> Registrar </div></li>
    </div>
     <div id = foto>
         <table>
            <tr>
                <td><IMG id= "imagen" SRC=""></IMG></td>
            </tr>
            <tr>
                <td><div id = "botonSubirFoto" style="cursor: pointer" onclick="window.location='index.html'"> Subir Foto </div></td>
             </tr>
         </table>
         
    </div>
</body>
</html>


<?php

    include ("conexion.php");

    $conn = OCIlogon ($user, $pass, $bd );

    if (!$conn){
        echo "conexion invalid"; var_dump (OCIError ());
        die ();        
    }


    $var_user1 = i_POST ("nombre");
    $var_user2 = i_POST ("apellido");
    $var_user3 = i_POST ("correo");
    $var_user4 = i_POST ("telefono");
    $var_user5 = i_POST ("pais");
    $var_user6 = i_POST ("provincia");
    $var_user7 = i_POST ("canton");
    $var_user8 = i_POST ("telefono");
    $var_user9 = i_POST ("distrito");
    $var_user10 = i_POST ("usuario");
    $var_user11 = i_POST ("contraseña");

    $query = ($conn, "insert into usuarios values (:dato1, :dato2, :dato3, :dato4, dato5, :dato6, :dato7, :dato8, :dato9, :dato10, dato11)");
    
    OCIBindByname ($query, "dato1", $var_user1  );
    OCIBindByname ($query, "dato2", $var_user2  );
    OCIBindByname ($query, "dato3", $var_user3  );
    OCIBindByname ($query, "dato4", $var_user4  );
    OCIBindByname ($query, "dato5", $var_user5  );
    OCIBindByname ($query, "dato6", $var_user6  );
    OCIBindByname ($query, "dato7", $var_user7  );
    OCIBindByname ($query, "dato8", $var_user8  );    
    OCIBindByname ($query, "dato9", $var_user9  );
    OCIBindByname ($query, "dato10", $var_user10  );
    OCIBindByname ($query, "dato11", $var_user11  );

    OCIExecute ($query, OCIdefault);
    
    OCICommit (conf);

    OCILogoff


?>
