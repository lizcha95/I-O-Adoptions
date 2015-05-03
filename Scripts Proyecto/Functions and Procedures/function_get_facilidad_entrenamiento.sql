CREATE OR REPLACE FUNCTION get_facilidad_entrenamiento
       RETURN tableType PIPELINED IS
           rec recordType := recordType(NULL,NULL);
       BEGIN
         FOR item in (
           SELECT fe.id_facilidad_entrenamiento, fe.facilidad_entrenamiento
              FROM facilidad_entrenamiento fe
         )
         LOOP
         rec.id := item.id_facilidad_entrenamiento;
         rec.nombre := item.facilidad_entrenamiento;
         PIPE ROW (rec);
         END LOOP;
         RETURN;
       END get_facilidad_entrenamiento;
