
-- fuction returns mascota foto anterior

Create or replace function get_foto_ant (pmascota_id in number)

return varchar2 as

ret_foto_ant varchar2(45);

begin
  select foto_anterior into ret_foto_ant
  from mascota
  where pmascota_id = id_mascota;
  return(ret_foto_ant);
end;

-- test fuction returns mascota name.

-- Created on 4/10/2015 by lPablol
declare 
  foto_ant varchar2 (45);
begin
  foto_ant := get_foto_ant (1);
  dbms_output.put_line('la foto es: ' || foto_ant);
  
end;