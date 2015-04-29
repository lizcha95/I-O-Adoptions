-- triggerss afters inserts:
-- Tabla Item

create or replace trigger trigger_insert_items
    before insert on user1.items     
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;

-- Tabla Enunciados

create or replace trigger trigger_insert_Enunciados
    before insert on user1.Enunciados
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;

-- Tabla Enunciados

create or replace trigger trigger_insert_Preguntas
    before insert on user1.Preguntas
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;

-- Tabla Formularios

create or replace trigger trigger_insert_Formularios
    before insert on user1.Formularios
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;

-- Tabla Tipo_Formulario

create or replace trigger trigger_insert_Tipo_Formulario
    before insert on user1.Tipo_Formulario
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;

-- Tabla Preguntas_Formularios

create or replace trigger trigger_insert_Preg_Form
    before insert on user1.Preguntas_Formularios
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;

-- Tabla Formularios_Respuestas

create or replace trigger trigger_insert_Form_Resp   
    before insert on user1.Formularios_Respuestas
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;

-- Tabla Formularios_Aceptados

create or replace trigger trigger_insert_Form_Acept
    before insert on user1.Formularios_Aceptados
    
    for each row
    begin 
    :new.FechaInsercion := sysdate;
    :new.UsuarioInsercion := user;
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;
