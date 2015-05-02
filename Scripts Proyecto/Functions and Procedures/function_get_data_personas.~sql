CREATE OR REPLACE FUNCTION get_data_Usuario(pUsername in varchar2)
       RETURN tableDataPersonas PIPELINED is
       rec typeDataPersonas := typeDataPersonas(NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
       NULL, NULL, NULL, NULL);
       BEGIN
         FOR item IN (
           select vp.cedula_persona as cp, vp.nombre as n, vp.apellido as a, 
           vp.fecha_nacimiento as fn, vp.correo as c, vp.numero_telefono as nt,
           vp.nombre_pais as npa, vp.nombre_provincia as npr,vp.nombre_canton as nc, 
           vp.direccion_exacta as de, vp.notas_adoptante as na
              from view_all_data_personas vp, usuarios u
              where u.username = pUsername and
              vp.username = u.username)
         LOOP
         rec.cedula := item.cp;
         rec.nombre := item.n;
         rec.apellido := item.a;
         rec.fechaNacimiento := item.fn;
         rec.correo := item.c;
         rec.telefono := item.nt;
         rec.nombre_pais := item.npa;
         rec.nombre_provincia := item.npr;
         rec.nombre_canton := item.nc;
         rec.direccion_exacta := item.de;
         rec.notas_adoptante := item.na;
         PIPE ROW (rec);
         END LOOP;
         RETURN;
end get_data_Usuario;
