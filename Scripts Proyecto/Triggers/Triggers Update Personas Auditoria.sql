
-- triggers tablas persona ------------------------------

-- tabla tipo usuario

create or replace trigger trigger_update_tipo_usuario
    after update on user1.tipo_usuario
    
    for each row
    begin 
    :new UsuarioUltimaModificacion := user;
    :new FechaUltimaModificacion := sysdate;
end;



-- tabla usuario -----------------------------------------

create or replace trigger trigger_update_usuario
    after update on user1.usuario
    
    for each row
    begin 
    :new UsuarioUltimaModificacion := user;
    :new FechaUltimaModificacion := sysdate;
end;


-- tabla persona -----------------------------------------

create or replace trigger trigger_update_persona
    after update on user1.persona
    
    for each row
    begin 
    :new UsuarioUltimaModificacion := user;
    :new FechaUltimaModificacion := sysdate;
end;



-- tabla pais ----------------------------------------------

create or replace trigger trigger_update_pais
    after update on user1.pais
    
    for each row
    begin 
    :new UsuarioUltimaModificacion := user;
    :new FechaUltimaModificacion := sysdate;
end;


-- tabla provincia --------------------------------------------

create or replace trigger trigger_update_provincia
    after update on user1.provincia
    
    for each row
    begin 
    :new UsuarioUltimaModificacion := user;
    :new FechaUltimaModificacion := sysdate;
end;


-- tabla canton ------------------------------------------------

create or replace trigger trigger_update_canton
    after update on user1.canton
    
    for each row
    begin 
    :new UsuarioUltimaModificacion := user;
    :new FechaUltimaModificacion := sysdate;
end;



-- tabla direccion -----------------------------------------------

create or replace trigger trigger_update_direccion
    after update on user1.direccion
    
    for each row
    begin 
    :new UsuarioUltimaModificacion := user;
    :new FechaUltimaModificacion := sysdate;
end;


-- tabla telefono -----------------------------------------------

create or replace trigger trigger_update_telefono
    after update on user1.telefono
    
    for each row
    begin 
    :new UsuarioUltimaModificacion := user;
    :new FechaUltimaModificacion := sysdate;
end;


-- tabla correo --------------------------------------------------

create or replace trigger trigger_update_correo
    after update on user1.correo
    
    for each row
    begin 
    :new UsuarioUltimaModificacion := user;
    :new FechaUltimaModificacion := sysdate;
end;


-- tabla adoptante -------------------------------------------------

create or replace trigger trigger_update_adoptante
    after update on user1.adoptante
    
    for each row
    begin 
    :new UsuarioUltimaModificacion := user;
    :new FechaUltimaModificacion := sysdate;
end;


-- tabla rescatista -------------------------------------------------

create or replace trigger trigger_update_rescatista
    after update on user1.rescatista
    
    for each row
    begin 
    :new UsuarioUltimaModificacion := user;
    :new FechaUltimaModificacion := sysdate;
end;

-- tabla lista negra ------------------------------------------------

create or replace trigger trigger_update_lista_negra
    after update on user1.lista_negra
    
    for each row
    begin 
    :new UsuarioUltimaModificacion := user;
    :new FechaUltimaModificacion := sysdate;
end;



-- tabla rescatista_califica_adoptante -------------------------------

create or replace trigger trigger_update_rescatista_califica_adoptante
    after update on user1.rescatista_califica_adoptante
    
    for each row
    begin 
    :new UsuarioUltimaModificacion := user;
    :new FechaUltimaModificacion := sysdate;
end;

