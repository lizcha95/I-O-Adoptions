create or replace
trigger trigger_Insert_calificaciones
    before Insert on user1.Rescatista_Califica_Adoptante
    For each row
    Declare 
      cursor cursor_calif is
        select AVG(calificacion)
        from Rescatista_Califica_Adoptante
        INNER JOIN adoptante 
        on Rescatista_Califica_Adoptante.id_adoptante = adoptante.id_adoptante
        where Rescatista_Califica_Adoptante.id_adoptante = :new.id_adoptante;
      notas NUMBER(10);
    begin 
      open cursor_calif;
      fetch cursor_calif into notas;
      update adoptante
        set adoptante.notas_adoptante = notas
        where adoptante.id_adoptante = :new.id_adoptante;
      close cursor_calif;
    end;
