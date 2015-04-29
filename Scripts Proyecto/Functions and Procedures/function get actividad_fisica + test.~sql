
-- fuction returns mascota actividade

Create or replace function get_actividad_fisica (pmascota_id in number)

return varchar2 as

ret_actividad_fisica varchar2(45);

begin
  select id_actividad_fisica into ret_actividad_fisica from actividad_fisica
  from mascota
  where pmascota_id = id_mascota;
  return(ret_actividad_fisica);
end;


-- test fuction returns actividade

-- Created on 4/10/2015 by lPablol
declare 
  actividad_fisica varchar2 (45);
begin
  actividad_fisica := get_actividad_fisica (1);
  dbms_output.put_line('actividad fisica es ' || actividad_fisica);
  
end;
