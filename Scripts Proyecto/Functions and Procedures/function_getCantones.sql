CREATE OR REPLACE FUNCTION getcantones(idProvincia in number)
       RETURN tableType PIPELINED IS
           rec recordType := recordType(NULL,NULL);
       BEGIN
         FOR item IN (
           SELECT c.id_canton, c.nombre_canton
              FROM canton c
              where c.id_provincia = idProvincia)
         LOOP
         rec.id := item.id_canton;
         rec.nombre := item.nombre_canton;
         PIPE ROW (rec);
         END LOOP;
         RETURN;
       END getcantones;
       
--TEST
select * from TABLE(getCantones(1));
