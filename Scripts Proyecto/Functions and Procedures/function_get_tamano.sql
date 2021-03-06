CREATE OR REPLACE FUNCTION get_tamano
       RETURN tableType PIPELINED IS
           rec recordType := recordType(NULL,NULL);
       BEGIN
         FOR item in (
           SELECT tm.id_tamanio, tm.tamanio_mascota
              FROM tamanio_mascota tm
         )
         LOOP
         rec.id := item.id_tamanio;
         rec.nombre := item.tamanio_mascota;
         PIPE ROW (rec);
         END LOOP;
         RETURN;
       END get_tamano;
       
--TEST
Select *  from TABLE(get_facilidad_entrenamiento());
