<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>I/O ADOPTIONS</title>
<link rel="stylesheet" href="css/CssSignIn.css" type="text/css" media="all">    
    
    <script src="js/jquery-1.11.2.min.js" type="application/javascript"></script>
    <script type="application/javascript">
        
        function cargarDropDownProvincia(pPais)
        {
            console.log(pPais);
            $.ajax({
                url: 'insert_dropdown_menu.php',
                type: 'get',
                dataType: 'json',
                data: {Pais:pPais},
                success: function(data){
                    $.each(data, function(index, provincia){
                    
                        $("#Provincia").append(
                            $("<option></option>")
                            .text(provincia.nombre_provincia)
                            .val(provincia.id_provincia)
                        )
                    });   
                    
                }
            });
        }
        $(document).ready(function(){
            
            $("#Pais").change(function(){
                var idPais = $(this).val();
                cargarDropDownProvincia(idPais);            
            });  
            
            $("#botonRegistrar").click(function(){
            
                $.ajax({
                    url: 'agregar_usuario.php',
                    type: 'post',
                    dataType: 'json',
                    data: $("#frmUsuario").serialize(),
                    success: function(data){
                       console.log("hpa"); 

                    }
                });
                
            });
        });
    </script>
        
</head>

<body background = "images/BackgroundSignIn.jpg">
    <div id = "Logo"><IMG SRC = "images/logo2.png"></div>
        <form id="frmUsuario">
    <div id = "datos">    
    
    <table>
        <tr>
            <td><font id = "nombre" color="white" face = Helvetica size="3">Nombre:</font></td>    
            <td><input id="Nombre" type="text" name="Nombre"></td>
            <td><font id = "correo" color="white" face = Helvetica size="3">Correo:</font></td>
            <td><input id="Correo" type="text" name="Correo"></td>
        </tr>
        <tr>
            <td><font id = "apellido" color="white" face = Helvetica size="3">Apellido:</font></td>
            <td><input id="Apellido" type="text" name="Apellido"></td>
            <td><font id = "pais" color="white" face = Helvetica size="3">Pais:</font></td>    
            <td><SELECT id = "Pais" NAME="Pais" SIZE=1 > 
                    <OPTION VALUE="1">Seleccionar</OPTION>
                    <OPTION VALUE="1">Costa Rica</OPTION>
                </SELECT></td>
        </tr>
        <tr>
            <td><font id = "cedula" color="white" face = Helvetica size="3">Cedula:</font></td>
            <td><input id="Cedula" type="text" name="Cedula"></td>
            <td><font id = "provincia" color="white" face = Helvetica size="3">Provincia:</font></td>
            <td><SELECT id = "Provincia" NAME="Provincia" SIZE=1 > 
                    
                </SELECT></td>
        </tr>
        <tr>
            <td><font id = "fecha" color="white" face = Helvetica size="3">Fecha de nacimiento:</font></td>
            <td><input id = "Fecha" type="date" name="Fecha"></td>
            <td><font id = "canton" color="white" face = Helvetica size="3">Canton:</font></td>
            <td><SELECT id = "Canton" NAME="Canton" SIZE=1 > 
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
            <td></td><td></td>
            <td><font id = "exacta" color="white" face = Helvetica size="3">Direccion Exacta:</font></td>
            <td><textarea id = "Direccion" name= "Direccion "rows="4" cols="25"></textarea></td>
        </tr>     
    </table>
        
    </div>
        
   
        
    <div id = "user">
        <li><font id = "usuario" color="white" face = Helvetica size="3">Usuario:</font></li>
        <li><input id = "Usuario" type="text" name="Usuario"></li>
        <li><font id = "contraseña" color="white" face = Helvetica size="3">Contraseña:</font></li>
        <li><input id = "Contraseña" type="password" name="Contraseña"></li>
        <li><font id = "repita" color="white" face = Helvetica size="3">Repita la contraseña:</font></li>
        <li><input id = "Repita" type="password" name="Repita"></li>
        <li><button type="button"id = "botonRegistrar" style="cursor: pointer"> Registrar </button></li>
    </div>
     <div id = foto>
         <table>
            <tr>
                <td><IMG id= "imagen" SRC=""></IMG></td>
            </tr>
            <tr>
                <td><button type = "button" id = "botonSubirFoto" style="cursor: pointer" onclick="addInDropdown()"> Subir Foto </div></td>
             </tr>
         </table>
         
    </div>
        </form>
</body>
</html>