CREATE OR REPLACE FUNCTION getprovincias(idPais in number)
       RETURN tableType PIPELINED IS
           rec recordType := recordType(NULL,NULL);
       BEGIN
         FOR item in (
           SELECT p.id_provincia, p.nombre_provincia
              FROM provincia p
              WHERE  p.id_pais = idPais
         )
         LOOP
         rec.id := item.id_provincia;
         rec.nombre := item.nombre_provincia;
         PIPE ROW (rec);
         END LOOP;
         RETURN;
       END getprovincias;
