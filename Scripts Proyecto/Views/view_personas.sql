create or replace view view_all_data_personas as
select p.cedula_persona, p.nombre, p.apellido, p.fecha_nacimiento, u.username,
         c.correo, t.numero_telefono, vd.nombre_pais, vd.nombre_provincia,
         vd.nombre_canton, vd.direccion_exacta, a.notas_adoptante
  from adoptante a, persona p, usuarios u, telefono t, correo c, view_direcciones vd
  where a.id_adoptante = p.id_persona and p.usuario_username = u.username and
        p.id_persona = t.id_persona and vd.id_direccion = p.id_direccion
        and p.id_persona = c.id_persona;
