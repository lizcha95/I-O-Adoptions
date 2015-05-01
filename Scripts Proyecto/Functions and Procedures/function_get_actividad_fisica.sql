CREATE OR REPLACE FUNCTION get_actividad_fisica
       RETURN tableType PIPELINED IS
           rec recordType := recordType(NULL,NULL);
       BEGIN
         FOR item in (
           SELECT af.id_actividad, af.actividad_fisica
              FROM actividad_fisica af
         )
         LOOP
         rec.id := item.id_actividad;
         rec.nombre := item.actividad_fisica;
         PIPE ROW (rec);
         END LOOP;
         RETURN;
       END get_actividad_fisica;
       
--TEST
Select *  from TABLE(get_actividad_fisica());
