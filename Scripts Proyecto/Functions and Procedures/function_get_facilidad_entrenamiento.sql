CREATE OR REPLACE FUNCTION gettamano
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
       END gettamano;
       
--TEST
Select *  from TABLE(gettamano());
