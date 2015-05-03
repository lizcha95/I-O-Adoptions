create or replace procedure nuevoEstadoAdopcion(
  pNuevoEstadoAdopcion number, pid_mascota number) AS
  begin
    update mascota m
    set m.id_estado_adopcion = pNuevoEstadoAdopcion
    where m.id_mascota = pid_mascota;
  exception
    when dup_val_on_index then
      dbms_output.put_line('Error, ese id ya está en uso.');
       rollback;
    when value_error then
      dbms_output.put_line('Error, tipo de dato.');
       rollback;
  end;
