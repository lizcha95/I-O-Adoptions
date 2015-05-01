CREATE OR REPLACE FUNCTION get_estados_fisicos
       RETURN tableType PIPELINED IS
           rec recordType := recordType(NULL,NULL);
       BEGIN
         FOR item in (
           SELECT ef.id_estado_fisico, ef.estado_fisico
              FROM estado_fisico ef
         )
         LOOP
         rec.id := item.id_estado_fisico;
         rec.nombre := item.estado_fisico;
         PIPE ROW (rec);
         END LOOP;
         RETURN;
       END get_estados_fisicos;
       
--TEST
Select *  from TABLE(get_estados_fisicos());