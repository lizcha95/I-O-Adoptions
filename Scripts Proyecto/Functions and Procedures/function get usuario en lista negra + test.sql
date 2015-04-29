-- create fuction obtiene usuario en lista negra

Create or replace function get_usuario_lista_negra (padoptante_id in number)

return varchar2 as

ret_usuario_negro varchar2(45);

begin
  select persona.id_persona into ret_usuario_negro from persona
  inner join adoptante
  on persona.id_persona = adoptante.id_adoptante
  inner join lista_negra
  on lista_negra.id_adoptante = adoptante.id_adoptante
  
  where padoptante_id = lista_negra.id_adoptante;
  return(ret_usuario_negro);
end;



-- test for fuction returns usuario lista negra

-- Created on 4/10/2015 by lPablol
declare 
  usuario_negro varchar2;
begin
  usuario_negro := get_usuario_lista_negra (1);
  dbms_output.put_line('usuario en lista negra ' || usuario_negro);
  
end;
