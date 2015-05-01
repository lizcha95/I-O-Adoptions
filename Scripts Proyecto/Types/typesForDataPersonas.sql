CREATE OR REPLACE TYPE TypeDataPersonas AS object (
  cedula NUMBER, nombre varchar2(45), apellido varchar2(45), fechaNacimiento date, 
  correo varchar2(45), telefono number, nombre_pais varchar2(45), 
  nombre_provincia varchar2(45), nombre_canton varchar2(45), direccion_exacta varchar(100),
  notas_adoptante number
);

CREATE TYPE TableDataPersonas IS TABLE OF TypeDataPersonas;
