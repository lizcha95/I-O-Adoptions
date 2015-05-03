create or replace procedure addMascota(

pnombre_mascota Varchar2,
pid_estado_crecimiento number,
pid_estado_fisico number,
pid_motivo_devolucion number,
pid_raza_mascota number,
pid_tamanio_mascota number,
pid_color_mascota number,
pid_facilidad_entrenamiento number,
pid_actividad_fisica number,
pid_nivel_energia number,
pcedula_duenio_anterior number,
pid_estado_adopcion number,
pcantidad_devoluciones number ) --/ empieza en 0 // hacer trigger check constraint cant < 0
  AS
    id_mascota_tmp number;

  begin

    id_mascota_tmp := sec_mascota.nextval;

    insert into mascota (id_mascota, cedula_duenio_anterior, nombre_mascota, id_estado_crecimiento,
        id_estado_fisico, id_motivo_devolucion,id_raza_mascota,id_tamanio_mascota, id_color_mascota, id_facilidad_entrenamiento,
        id_actividad_fisica, id_nivel_energia, id_estado_adopcion, Cantidad_devoluciones)

    values (id_mascota_tmp, pcedula_duenio_anterior, pnombre_mascota, pid_estado_crecimiento, pid_estado_fisico,
        pid_motivo_devolucion, pid_raza_mascota, pid_tamanio_mascota, pid_color_mascota, pid_facilidad_entrenamiento,
        pid_actividad_fisica, pid_nivel_energia, pid_estado_adopcion, pcantidad_devoluciones);

end;
