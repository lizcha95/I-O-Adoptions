-- create fuction obtiene el tipo de un usuario

Create or replace function get_tipo_usuario (pusername in varchar2, ppassword in varchar2)

return number as

ret_tipo number(10);

begin
  select usuarios.id_tipo_usuario into ret_tipo from usuarios
  where usuarios.username = pusername and usuarios.contrasenia = ppassword;
  return (ret_tipo);
  
  exception
        when NO_DATA_FOUND then
             return(-1);
end;
