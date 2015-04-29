create or replace
trigger trigger_Insert_cant_Devol
    before Insert on user1.devoluciones_mascotas
    For each row
    Declare 
      cursor cursor_devol is
        select count(1)
        from devoluciones_mascotas
        INNER JOIN mascota
        on devoluciones_mascotas.id_mascota = mascota.id_mascota
        where devoluciones_mascotas.id_mascota = :new.id_mascota;
      cant_devol NUMBER(10);
    begin 
      open cursor_devol;
      fetch cursor_devol into cant_devol;
      update mascota
        set mascota.Cantidad_devoluciones = cant_devol
        where mascota.id_mascota = :new.id_mascota;
      close cursor_devol;
    end;
