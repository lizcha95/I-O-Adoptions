CREATE OR REPLACE FUNCTION getpais
       RETURN tableType PIPELINED IS
           rec recordType := recordType(NULL,NULL);
       BEGIN
         FOR item in (
           SELECT p.id_pais, p.nombre_pais
              FROM pais p
         )
         LOOP
         rec.id := item.id_pais;
         rec.nombre := item.nombre_pais;
         PIPE ROW (rec);
         END LOOP;
         RETURN;
       END getpais;
       
--TEST
Select *  from TABLE(getPais());
