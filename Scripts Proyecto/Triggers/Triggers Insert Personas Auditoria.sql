
-- triggers tablas persona ------------------------------

-- tabla tipo usuario

create or replace trigger trigger_insert_tipo_usuario
    before insert on user1.tipo_usuario
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;



-- tabla usuario -----------------------------------------

create or replace trigger trigger_insert_usuario
    before insert on user1.usuarios
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;


-- tabla persona -----------------------------------------

create or replace trigger trigger_insert_persona
    before insert on user1.persona
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;



-- tabla pais ----------------------------------------------

create or replace trigger trigger_insert_pais
    before insert on user1.pais
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;


-- tabla provincia --------------------------------------------

create or replace trigger trigger_insert_provincia
    before insert on user1.provincia
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;


-- tabla canton ------------------------------------------------

create or replace trigger trigger_insert_canton
    before insert on user1.canton
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;



-- tabla direccion -----------------------------------------------

create or replace trigger trigger_insert_direccion
    before insert on user1.direccion
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;


-- tabla telefono -----------------------------------------------

create or replace trigger trigger_insert_telefono
    before insert on user1.telefono
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;


-- tabla correo --------------------------------------------------

create or replace trigger trigger_insert_correo
    before insert on user1.correo
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;


-- tabla adoptante -------------------------------------------------

create or replace trigger trigger_insert_adoptante
    before insert on user1.adoptante
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;


-- tabla rescatista -------------------------------------------------

create or replace trigger trigger_insert_rescatista
    before insert on user1.rescatista
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;

-- tabla lista negra ------------------------------------------------

create or replace trigger trigger_insert_lista_negra
    before insert on user1.lista_negra
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;



-- tabla rescatista_califica_adoptante -------------------------------

create or replace trigger trigger_in_resc_cal_adoptante
    before insert on user1.rescatista_califica_adoptante
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;

