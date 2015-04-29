--Retorna el nombre de una persona segun el id

create or replace function get_nombre(pid_persona in number)
return varchar2(45)
as
ret_nombre varchar2(45);
begin
  select nombre into ret_nombre from persona
  where id_persona = pid_persona;
  return (ret_nombre);
end;

--Retorna el apellido de una persona segun el id

create or replace function get_apellido(pid_persona in number)
return varchar2
as ret_apellido varchar2(45);
begin
  select apellido into ret_apellido from persona
  where id_persona = pid_persona;
  return ret_apellido;
end;

--Retorna la cedula de una persona segun el id

create or replace function get_cedula(pid_persona in number)
return varchar2(45)
as
ret_cedula varchar2(45);
begin
  select cedula_persona into ret_cedula from persona
  where id_persona = pid_persona;
  return (ret_cedula);
end;

--Retorna la fecha de nacimiento de una persona segun el id

create or replace function get_fechaNacimiento(pid_persona in number)
return date
as
ret_fechaNacimiento date;
begin
  select fecha_nacimiento into ret_fechaNacimiento from persona
  where id_persona = pid_persona;
  return (ret_fechaNacimiento);
end;

--Retorna el pais de una persona segun el id

create or replace function get_pais(pid_persona in number)
return varchar2
as
ret_pais varchar2(45);
begin
  select pa.nombre_pais into ret_pais from pais pa, persona pe, direccion di
  where pe.id_persona = pid_persona and pa.id_pais = di.id_pais and pe.id_direccion = di.id_direccion;
  return (ret_pais);
end;

--Retorna la provincia de una persona segun el id

create or replace function get_provincia(pid_persona in number)
return varchar2
as
ret_provincia varchar2(45);
begin
  select pr.nombre_provincia into ret_provincia from provincia pr, persona pe, direccion di
  where pe.id_persona = pid_persona and pr.id_provincia = di.id_provincia and pe.id_direccion = di.id_direccion;
  return (ret_provincia);
end;

--Retorna el canton de una persona segun el id

create or replace function get_canton(pid_persona in number)
return varchar2
as
ret_canton varchar2(45);
begin
  select ca.nombre_canton into ret_canton from canton ca, persona pe, direccion di
  where pe.id_persona = pid_persona and ca.id_canton = di.id_canton and pe.id_direccion = di.id_direccion;
  return (ret_canton);
end;

--Retorna la direccion exacta de una persona segun el id

create or replace function get_direccion_exacta(pid_persona in number)
return varchar2
as
ret_direccion_exacta varchar2(100);
begin
  select di.direccion_exacta into ret_direccion_exacta from persona pe, direccion di
  where pe.id_persona = pid_persona and pe.id_direccion = di.id_direccion;
  return (ret_direccion_exacta);
end;

--Retorna el telefono de una persona segun el id

create or replace function get_telefono(pid_persona in number)
return number
as
ret_telefono number(11);
begin
  select te.numero_telefono into ret_telefono from telefono te
  where te.id_persona = pid_persona;
  return (ret_telefono);
end;

--Retorna el correo de una persona segun el id

create or replace function get_correo(pid_persona in number)
return varchar2
as
ret_correo varchar2(45);
begin
  select co.correo into ret_correo from correo co
  where co.id_persona = pid_persona;
  return (ret_correo);
end;
