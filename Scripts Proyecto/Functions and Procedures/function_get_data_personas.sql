CREATE OR REPLACE FUNCTION get_data_Usuario(pUsername in varchar2, pPassword in varchar2)
       RETURN tableDataPersonas PIPELINED is
       rec typeDataPersonas := typeDataPersonas(NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
       NULL, NULL, NULL, NULL);
       BEGIN
         FOR item IN (
           select vp.cedula_persona as cepe, vp.nombre as nom, vp.apellido as ap, 
           vp.fecha_nacimiento as fena, vp.correo as co, vp.numero_telefono as nute,
           vp.nombre_pais as nopa, vp.nombre_provincia as nopr, vp.nombre_canton as noca, 
           vp.direccion_exacta as diex, vp.notas_adoptante as noad
              from view_all_data_personas vp, usuarios u
              where u.username = pUsername and u.contrasenia = pPassword and
              vp.username = u.username)
         LOOP
         rec.cedula := item.cepe;
         rec.nombre := item.nom;
         rec.apellido := item.ap;
         rec.fechaNacimiento := item.fena;
         rec.correo := item.co;
         rec.telefono := item.nute;
         rec.nombre_pais := item.nopa;
         rec.nombre_provincia := item.nopr;
         rec.nombre_canton := item.noca;
         rec.direccion_exacta := item.diex;
         rec.notas_adoptante := item.noad;
         PIPE ROW (rec);
         END LOOP;
         RETURN;
end get_data_Usuario;
