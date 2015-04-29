--Retorna la provincia de una persona segun el id

create or replace function get_id_provincia(pid_provincia in number)
return varchar2 as
ret_provincia varchar2(45);
begin
  select p.nombre_provincia into ret_provincia from provincia p
  where p.id_provincia = pid_provincia;
  return (ret_provincia);
end;
