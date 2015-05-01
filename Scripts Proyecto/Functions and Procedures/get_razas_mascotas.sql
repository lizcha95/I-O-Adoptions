CREATE OR REPLACE FUNCTION get_razas_mascotas(idTipo in number)
       RETURN tableType PIPELINED IS
           rec recordType := recordType(NULL,NULL);
       BEGIN
         FOR item IN (
           SELECT rm.id_raza_mascota, rm.raza_mascota
              FROM raza_mascota rm
              where rm.id_tipo_mascota = idTipo)
         LOOP
         rec.id := item.id_raza_mascota;
         rec.nombre := item.raza_mascota;
         PIPE ROW (rec);
         END LOOP;
         RETURN;
       END get_razas_mascotas;
       
--TEST
select * from TABLE(get_razas_mascotas(1));