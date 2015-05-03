CREATE OR REPLACE TYPE typeDataMascotas AS object (
  nombre varchar2(45), raza varchar2(45), color varchar2(45), actividadfisica varchar2(45), 
  estadocrecimiento varchar2(45), estadofisico varchar2(45), facilidadentrenamiento varchar2(45), 
  nivelenergia varchar2(45), tamanio varchar2(45), tipo varchar(100)
);

CREATE TYPE tableDataMascotas IS TABLE OF typeDataMascotas;
