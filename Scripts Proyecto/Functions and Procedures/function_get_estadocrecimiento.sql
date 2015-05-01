CREATE OR REPLACE FUNCTION getestado_crecimiento
       RETURN tableType PIPELINED IS
           rec recordType := recordType(NULL,NULL);
       BEGIN
         FOR item in (
           SELECT ec.id_estado_crecimiento, ec.estado_crecimiento
              FROM estado_crecimiento ec
         )
         LOOP
         rec.id := item.id_estado_crecimiento;
         rec.nombre := item.estado_crecimiento;
         PIPE ROW (rec);
         END LOOP;
         RETURN;
       END getestado_crecimiento;
       
--TEST
Select *  from TABLE(getestado_crecimiento());
