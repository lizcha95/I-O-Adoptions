
-- fuction returns mascota name

Create or replace function get_nombre_mascota (pmascota_id in number)

return varchar2 as

ret_nomb_masc varchar2(45);

begin
  select nombre_mascota into ret_nomb_masc 
  from mascota
  where pmascota_id = id_mascota;
  return(ret_nomb_masc);
end;

-- test fuction returns mascota name.

-- Created on 4/10/2015 by lPablol
declare 
  nombre_mascota varchar2 (45);
begin
  nombre_mascota := get_nombre_mascota(1);
  dbms_output.put_line('el nombre del animal es: ' || nombre_mascota);
  
end;