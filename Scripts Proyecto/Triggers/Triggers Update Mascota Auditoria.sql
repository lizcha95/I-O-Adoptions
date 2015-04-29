
-- triggerss afters inserts:
-- Tabla Mascota

create or replace trigger trigger_update_mascota
    before update on user1.mascota
    
    for each row
    begin
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;

    change_view_all_data_mascota();

end;


-- Tabla Motivo devolucion -----------------------------

create or replace trigger trigger_update_motivo_dev
    before update on user1.motivo_devolucion
    
    for each row
    begin 
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;


-- tabla Estado fisico -------------------------------------

create or replace trigger trigger_update_estado_fisico
    before update on user1.estado_fisico
    
    for each row
    begin
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;


-- tabla estado crecimiento --------------------------------

create or replace trigger trigger_update_est_crec
    before update on user1.estado_crecimiento
    
    for each row
    begin 
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;


-- tabla tipo mascota -------------------------------------

create or replace trigger trigger_update_tipo_mascota
    before update on user1.tipo_mascota
    
    for each row
    begin
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;


-- tabla raza mascota -------------------------------------

create or replace trigger trigger_update_raza_mascota
    before update on user1.raza_mascota
    
    for each row
    begin
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;



-- tabla tamanio mascota -------------------------------------


create or replace trigger trigger_update_tamanio_mascota
    before update on user1.tamanio_mascota
    
    for each row
    begin 
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;



-- tabla color mascota ---------------------------------------

create or replace trigger trigger_update_color_mascota
    before update on user1.color_mascota
    
    for each row
    begin 
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;




-- tabla facilidad entrenamiento ----------------------------

create or replace trigger trigger_update_fac_entr
    before update on user1.facilidad_entrenamiento
    
    for each row
    begin
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;


-- tabla enfermedades mascota -----------------------------------

create or replace trigger trigger_update_enf_mascota
    before update on user1.enfermedades_mascota
    
    for each row
    begin 
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;



-- tabla tratamientos enfermedades ---------------------------------

create or replace trigger trigger_update_trat_enf
    before update on user1.tratamientos_enfermedades
    
    for each row
    begin
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;


-- tabla medicinas --------------------------------------------------

create or replace trigger trigger_upd_ins_medicinas
    before update on user1.medicinas
    
    for each row
    begin 
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;


-- tabla actividad fisica -------------------------------------------

create or replace trigger trigger_update_act_fisica
    before update on user1.actividad_fisica
    
    for each row
    begin 
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;




-- tabla nivel energia -----------------------------------------------

create or replace trigger trigger_update_nivel_energia
    before update on user1.nivel_energia
    
    for each row
    begin 
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;




-- tabla estado adopcion ----------------------------------------------

create or replace trigger trigger_update_estado_adopcion
    before update on user1.estado_adopcion
    
    for each row
    begin
    :new.usuario_ultima_modificacion := user;
    :new.fec_ultima_modificacion := sysdate;
end;