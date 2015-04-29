create or replace view view_direcciones as
  select d.id_direccion, pa.nombre_pais, pr.nombre_provincia, c.nombre_canton, d.direccion_exacta
  from pais pa, provincia pr, canton c, direccion d
  where pa.id_pais = d.id_pais and pr.id_provincia = d.id_provincia and
        c.id_canton = d.id_canton;
