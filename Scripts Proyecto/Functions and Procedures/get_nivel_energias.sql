CREATE OR REPLACE FUNCTION get_nivel_energias
       RETURN tableType PIPELINED IS
           rec recordType := recordType(NULL,NULL);
       BEGIN
         FOR item in (
           SELECT nv.id_nivel_energia, nv.nivel_energia
              FROM nivel_energia nv
         )
         LOOP
         rec.id := item.id_nivel_energia;
         rec.nombre := item.nivel_energia;
         PIPE ROW (rec);
         END LOOP;
         RETURN;
       END get_nivel_energias;
       
--TEST
Select *  from TABLE(get_nivel_energias());