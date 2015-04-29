
-- fuction returns mascota foto actual

Create or replace function get_foto_desp (pmascota_id in number)

return varchar2 as

ret_foto_desp varchar2(45);

begin
  select foto_despues into ret_foto_desp
  from mascota
  where pmascota_id = id_mascota;
  return(ret_foto_desp);
end;

-- test fuction returns foto actual

-- Created on 4/10/2015 by lPablol
declare 
  foto_desp varchar2 (45);
begin
  foto_desp := get_foto_desp (1);
  dbms_output.put_line('la foto actual es: ' || foto_desp);
  
end;