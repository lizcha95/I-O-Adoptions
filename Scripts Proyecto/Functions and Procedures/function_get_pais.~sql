--Retorna el pais segun el id

create or replace function get_pais(pid_pais in number)
return varchar2
as
ret_pais varchar2(45);
begin
  select p.nombre_pais into ret_pais from pais p
  where p.id_pais = pid_pais;
  return (ret_pais);
end;
