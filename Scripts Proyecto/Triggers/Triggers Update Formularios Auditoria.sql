-- triggerss afters Updates:
-- Tabla Item

create or replace trigger trigger_Update_items
    before Update on user1.items
    
    for each row
    begin 
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;

-- Tabla Enunciados

create or replace trigger trigger_Update_Enunciados
    before Update on user1.Enunciados
    
    for each row
    begin 
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;

-- Tabla Enunciados

create or replace trigger trigger_Update_Preguntas
    before Update on user1.Preguntas
    
    for each row
    begin 
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;

-- Tabla Formularios

create or replace trigger trigger_Update_Formularios
    before Update on user1.Formularios
    
    for each row
    begin 
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;

-- Tabla Tipo_Formulario

create or replace trigger trigger_Update_Tipo_Formulario
    before Update on user1.Tipo_Formulario
    
    for each row
    begin 
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;

-- Tabla Preguntas_Formularios

create or replace trigger trigger_Update_Preg_Form
    before Update on user1.Preguntas_Formularios
    
    for each row
    begin 
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;

-- Tabla Formularios_Respuestas

create or replace trigger trigger_Update_Formularios_Respuestas
    before Update on user1.Formularios_Respuestas
    
    for each row
    begin 
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;

-- Tabla Formularios_Aceptados

create or replace trigger trigger_Update_Form_Acept
    before Update on user1.Formularios_Aceptados
    
    for each row
    begin 
    :new.UsuarioUltimaModificacion := user;
    :new.FechaUltimaModificacion := sysdate;
end;
