CREATE OR REPLACE FUNCTION get_tipos_mascotas
       RETURN tableType PIPELINED IS
           rec recordType := recordType(NULL,NULL);
       BEGIN
         FOR item in (
           SELECT tm.id_tipo_mascota, tm.tipo_mascota
              FROM tipo_mascota tm
         )
         LOOP
         rec.id := item.id_tipo_mascota;
         rec.nombre := item.tipo_mascota;
         PIPE ROW (rec);
         END LOOP;
         RETURN;
       END get_tipos_mascotas;
       
--TEST
Select *  from TABLE(get_tipos_mascotas());