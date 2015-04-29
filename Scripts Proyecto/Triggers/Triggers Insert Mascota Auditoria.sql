
-- triggerss befores inserts:
-- Tabla Mascota

create or replace trigger trigger_insert_mascota
    before insert on user1.mascota
    
    for each row
    begin 
    :new.fec_creacion := sysdate;
    :new.usuario_creacion := user;
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;

    change_view_all_data_mascota();

end;


-- Tabla Motivo devolucion -----------------------------

create or replace trigger trigger_insert_motivo_dev
    before insert on user1.motivo_devolucion
    
    for each row
    begin 
    :new.fec_creacion := sysdate;
    :new.usuario_creacion := user;
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;


-- tabla Estado fisico -------------------------------------

create or replace trigger trigger_insert_estado_fisico
    before insert on user1.estado_fisico
    
    for each row
    begin 
    :new.fec_creacion := sysdate;
    :new.usuario_creacion := user;
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;


-- tabla estado crecimiento --------------------------------

create or replace trigger trigger_insert_estado_crec
    before insert on user1.estado_crecimiento
    
    for each row
    begin 
    :new.fec_creacion := sysdate;
    :new.usuario_creacion := user;
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;


-- tabla tipo mascota -------------------------------------

create or replace trigger trigger_insert_tipo_mascota
    before insert on user1.tipo_mascota
    
    for each row
    begin 
    :new.fec_creacion := sysdate;
    :new.usuario_creacion := user;
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;


-- tabla raza mascota -------------------------------------

create or replace trigger trigger_raza_mascota
    before insert on user1.raza_mascota
    
    for each row
    begin 
    :new.fec_creacion := sysdate;
    :new.usuario_creacion := user;
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;



-- tabla tamanio mascota -------------------------------------


create or replace trigger trigger_insert_tamanio_mascota
    before insert on user1.tamanio_mascota
    
    for each row
    begin 
    :new.fec_creacion := sysdate;
    :new.usuario_creacion := user;
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;



-- tabla color mascota ---------------------------------------

create or replace trigger trigger_insert_color_mascota
    before insert on user1.color_mascota
    
    for each row
    begin 
    :new.fec_creacion := sysdate;
    :new.usuario_creacion := user;
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;




-- tabla facilidad entrenamiento ----------------------------

create or replace trigger trigger_insert_fac_ent
    before insert on user1.facilidad_entrenamiento
    
    for each row
    begin 
    :new.fec_creacion := sysdate;
    :new.usuario_creacion := user;
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;


-- tabla enfermedades mascota -----------------------------------

create or replace trigger trigger_insert_enf_mascota
    before insert on user1.enfermedades_mascota
    
    for each row
    begin 
    :new.fec_creacion := sysdate;
    :new.usuario_creacion := user;
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;



-- tabla tratamientos enfermedades ---------------------------------

create or replace trigger trigger_insert_trat_enf
    before insert on user1.tratamientos_enfermedades
    
    for each row
    begin 
    :new.fec_creacion := sysdate;
    :new.usuario_creacion := user;
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;


-- tabla medicinas --------------------------------------------------

create or replace trigger trigger_insert_medicinas
    before insert on user1.medicinas
    
    for each row
    begin 
    :new.fec_creacion := sysdate;
    :new.usuario_creacion := user;
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;


-- tabla actividad fisica -------------------------------------------

create or replace trigger trigger_insert_act_fisica
    before insert on user1.actividad_fisica
    
    for each row
    begin 
    :new.fec_creacion := sysdate;
    :new.usuario_creacion := user;
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;




-- tabla nivel energia -----------------------------------------------

create or replace trigger trigger_insert_nivel_energia
    before insert on user1.nivel_energia
    
    for each row
    begin 
    :new.fec_creacion := sysdate;
    :new.usuario_creacion := user;
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;




-- tabla estado adopcion ----------------------------------------------

create or replace trigger trigger_insert_estado_adopcion
    before insert on user1.estado_adopcion
    
    for each row
    begin 
    :new.fec_creacion := sysdate;
    :new.usuario_creacion := user;
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;
