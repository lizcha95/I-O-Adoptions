CREATE OR REPLACE FUNCTION getcolor
       RETURN tableType PIPELINED IS
           rec recordType := recordType(NULL,NULL);
       BEGIN
         FOR item in (
           SELECT cm.id_color, cm.color_mascota
              FROM color_mascota cm
         )
         LOOP
         rec.id := item.id_color;
         rec.nombre := item.color_mascota;
         PIPE ROW (rec);
         END LOOP;
         RETURN;
       END getcolor;
       
--TEST
Select *  from TABLE(getcolor());
