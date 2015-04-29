
-- before update cedula dueno anterior

create or replace trigger trigger_cedula_anterior
    before update on User1.mascota
    For each row
    Declare
      cursor cursor_cedula_ant is
        select cedula_duenio_anterior from mascota;

        new_ced_ant number(8);

    begin
        open cursor_cedula_ant;
        fetch cursor_cedula_ant into new_ced_ant;
        update mascota
        set mascota.cedula_duenio_anterior = new_ced_ant
        where mascota.cedula_duenio_anterior = :new.ced_ant;


        close cursor_cedula_duenio_anterior;
end;




-- before update foto ant


create or replace trigger trigger_foto_ant
    before update on User1.mascota
    for each row
    declare
    cursor cursor_foto_ant is
    select foto_anterior from mascota;


    new_foto_ant varchar2(45);


    begin
    open cursor_foto_ant;
    fetch cursor_foto_ant into new_foto_ant;
    update mascota
    set mascota.foto_anterior = new_foto_ant
    where mascota.foto_anterior = :new.foto_anterior;
    close cursor_foto_ant;
end;




-- before update foto despues


create or replace trigger trigger_foto_desp
    before update on User1.mascota
    for each row
    declare
    cursor cursor_foto_desp is
    select foto_despues from mascota;


    new_foto_desp varchar2(45);


    begin
    open cursor_foto_desp;
    fetch cursor_foto_desp into new_foto_desp;
    update mascota
    set mascota.foto_despues = new_foto_desp
    where mascota.foto_despues = :new.foto_despues;
    close cursor_foto_desp;
end;



-- before update actividad fisica


create or replace trigger trigger_act_fis
    before update on User1.mascota
    for each row
    declare
    cursor cursor_act_fis is
    select actividad_fisica from mascota;


    new_act_fis varchar2(45);


    begin
    open cursor_act_fis;
    fetch cursor_act_fis into new_act_fis;
    update mascota
    set mascota.actividad_fisica = new_act_fis
    where mascota.actividad_fisica = :new.actividad_fisica;
    close cursor_foto_desp;
end;