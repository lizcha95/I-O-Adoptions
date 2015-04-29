-- 1. Tabla Motivo de Devoluci�n
CREATE TABLE motivo_devolucion
(
       id_motivo_devolucion NUMBER(10),
       motivo_devolucion VARCHAR2(45) CONSTRAINT motivodevolucion_motivo_nn not null,
       fec_creacion DATE,
       usuario_creacion VARCHAR2(10),
       fec_ultima_modificacion DATE,
       usuario_ultima_modificacion VARCHAR2(10)
);
       create public synonym motivo_devolucion for user1.motivo_devolucion;

-- PK Motivo Devoluci�n
ALTER TABLE motivo_devolucion
      ADD  CONSTRAINT pk_id_motivo PRIMARY KEY (id_motivo_devolucion)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

-- 2. Tabla de Estado F�sico 
CREATE TABLE estado_fisico
(
       id_estado_fisico NUMBER(10),
       estado_fisico VARCHAR2(45) CONSTRAINT estadofisico_estado_nn not null,
       fec_creacion DATE,
       usuario_creacion VARCHAR2(10),
       fec_ultima_modificacion DATE,
       usuario_ultima_modificacion VARCHAR2(10)
);
       create public synonym estado_fisico for user1.estado_fisico;
       
-- PK Estado F�sico
ALTER TABLE estado_fisico
      ADD CONSTRAINT pk_id_estado PRIMARY KEY (id_estado_fisico)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

-- 3. Tabla de Estado de Crecimiento
CREATE TABLE estado_crecimiento
(
       id_estado_crecimiento NUMBER(10),
       estado_crecimiento VARCHAR2(45) CONSTRAINT estadocrecimiento_estado_nn not null,
       fec_creacion DATE,
       usuario_creacion VARCHAR2(10),
       fec_ultima_modificacion DATE,
       usuario_ultima_modificacion VARCHAR2(10)
);
       create public synonym estado_crecimiento for user1.estado_crecimiento;
 
-- PK Estado Crecimiento      
ALTER TABLE estado_crecimiento
      ADD CONSTRAINT pk_estado_crecimiento PRIMARY KEY (id_estado_crecimiento)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

-- 4. Tabla del Tipo de Mascota
CREATE TABLE tipo_mascota
(
       id_tipo_mascota NUMBER(10),
       tipo_mascota VARCHAR2(45) CONSTRAINT tipomascota_tipo_nn not null,
       fec_creacion DATE,
       usuario_creacion VARCHAR2(10),
       fec_ultima_modificacion DATE,
       usuario_ultima_modificacion VARCHAR2(10)
);
       create public synonym tipo_mascota for user1.tipo_mascota;
       
-- PK Tipo de Mascota       
ALTER TABLE tipo_mascota
      ADD CONSTRAINT pk_tipo_mascota PRIMARY KEY (id_tipo_mascota)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);
       
-- 5. Tabla de la Raza de Mascota
CREATE TABLE raza_mascota
(
       id_raza_mascota NUMBER(10),
       id_tipo_mascota NUMBER(10),
       raza_mascota VARCHAR2(45) CONSTRAINT razamascota_raza_nn not null,
       fec_creacion DATE,
       usuario_creacion VARCHAR2(10),
       fec_ultima_modificacion DATE,
       usuario_ultima_modificacion VARCHAR2(10)
);
       create public synonym raza_mascota for user1.raza_mascota;
       
-- PK Raza Mascota
ALTER TABLE raza_mascota
      ADD CONSTRAINT pk_raza_mascota PRIMARY KEY (id_raza_mascota)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);
      
-- FK Raza Mascota
ALTER TABLE raza_mascota
  Add CONSTRAINT fk_tipo_mascota
  FOREIGN KEY (id_tipo_mascota)
  REFERENCES tipo_mascota(id_tipo_mascota)
  on delete cascade;
  
-- 6. Tabla de la Mascota
CREATE TABLE mascota
(
       id_mascota NUMBER(10),
       cedula_duenio_anterior NUMBER(8) CONSTRAINT mascota_duenioanterior_nn not null,
       nombre_mascota VARCHAR2(45) CONSTRAINT mascota_nombremascota_nn not null,
       foto_anterior VARCHAR2(45),
       foto_despues VARCHAR2(45),
       Actividad_fisica VARCHAR2(45) CONSTRAINT mascota_actividadfisica_nn not null,
       id_estado_crecimiento NUMBER(10),
       id_estado_fisico NUMBER(10),
       id_motivo_devolucion NUMBER(10),
       id_raza_mascota NUMBER(10),
       id_tamanio_mascota NUMBER(10),
       id_color_mascota NUMBER(10),
       id_facilidad_entrenamiento NUMBER(10),
       id_actividad_fisica NUMBER(10),
       id_nivel_energia NUMBER(10),
       id_duennoAnterior NUMBER(10),
       id_estado_adopcion NUMBER(10),
       Cantidad_devoluciones NUMBER(10) CONSTRAINT mascota_cantdevoluciones_nn not null, 
       fec_creacion DATE,
       usuario_creacion VARCHAR2(10),
       fec_ultima_modificacion DATE,
       usuario_ultima_modificacion VARCHAR2(10)
);
       create public synonym mascota for user1.mascota; 

alter table mascota 
add constraint cantidad_devoluciones_ck check ( cantidad_devoluciones > 0)
       
-- PK Mascota
ALTER TABLE mascota
      ADD CONSTRAINT pk_id_mascota PRIMARY KEY (id_mascota)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0); 
      
-- FK Tabla Mascota
ALTER TABLE mascota    
  ADD CONSTRAINT fk_id_estado_crec
  FOREIGN KEY (id_estado_crecimiento)
  REFERENCES estado_crecimiento(id_estado_crecimiento)
  on delete set null;
  
ALTER TABLE mascota         
  ADD CONSTRAINT fk_id_estado_fisico
  FOREIGN KEY (id_estado_fisico)
  REFERENCES estado_fisico(id_estado_fisico)
  on delete set null;
  
ALTER TABLE mascota         
  ADD  CONSTRAINT fk_id_motivo_devolucion
  FOREIGN KEY (id_motivo_devolucion)
  REFERENCES motivo_devolucion(id_motivo_devolucion)
  on delete set null;
  
ALTER TABLE mascota         
  ADD CONSTRAINT fk_id_raza_mascota
  FOREIGN KEY (id_raza_mascota)
  REFERENCES raza_mascota(id_raza_mascota)
  on delete cascade;
  
ALTER TABLE mascota         
  ADD CONSTRAINT fk_id_tamanio_mascota
  FOREIGN KEY (id_tamanio_mascota)
  REFERENCES tamanio_mascota(id_tamanio)
  on delete set null;
  
ALTER TABLE mascota       
  ADD CONSTRAINT fk_id_color_mascota
  FOREIGN KEY (id_color_mascota)
  REFERENCES color_mascota(id_color)
  on delete set null;
  
ALTER TABLE mascota         
  ADD CONSTRAINT fk_id_facilidad_entrenamiento
  FOREIGN KEY (id_facilidad_entrenamiento)
  REFERENCES facilidad_entrenamiento(id_facilidad_entrenamiento)
  on delete set null;
  
ALTER TABLE mascota         
  ADD CONSTRAINT fk_actividad_fisica
  FOREIGN KEY (id_actividad_fisica)
  REFERENCES actividad_fisica(id_actividad)
  on delete set null;
  
ALTER TABLE mascota         
  ADD CONSTRAINT fk_nivel_energia
  FOREIGN KEY (id_nivel_energia)
  REFERENCES nivel_energia(id_nivel_energia)
  on delete set null;
  
ALTER TABLE mascota
  ADD CONSTRAINT fk_id_estado_adopcion
  FOREIGN KEY (id_estado_adopcion)
  REFERENCES estado_adopcion(id_estado_adopcion)
  on delete cascade;

-- 7. Tabla del Tamanno de Mascota
CREATE TABLE tamanio_mascota
(
       id_tamanio NUMBER(10),
       tamanio_mascota VARCHAR2(45) CONSTRAINT tamaniomascota_tamanio_nn not null,
       fec_creacion DATE,
       usuario_creacion VARCHAR2(10),
       fec_ultima_modificacion DATE,
       usuario_ultima_modificacion VARCHAR2(10)
);
       create public synonym tamanio_mascota for user1.tamanio_mascota;
       
-- PK Tama�o Mascota
ALTER TABLE tamanio_mascota
      ADD CONSTRAINT pk_id_tamanio PRIMARY KEY (id_tamanio)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

-- 8. Tabla del Color de Mascota
CREATE TABLE color_mascota
(
       id_color NUMBER(10),
       color_mascota VARCHAR2(45) CONSTRAINT colormascota_color_nn not null, 
       fec_creacion DATE,
       usuario_creacion VARCHAR2(10),
       fec_ultima_modificacion DATE,
       usuario_ultima_modificacion VARCHAR2(10)
);
       create public synonym color_mascota for user1.color_mascota;
       
-- PK color_mascota
ALTER TABLE color_mascota
      ADD CONSTRAINT pk_id_color PRIMARY KEY (id_color)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

-- 9. Tabla de la Facilidad de Entrenamiento de Mascota
CREATE TABLE facilidad_entrenamiento
(
       id_facilidad_entrenamiento NUMBER(10),
       facilidad_entrenamiento VARCHAR2(45) CONSTRAINT facilidadentrenamiento_faci_nn not null,
       fec_creacion DATE,
       usuario_creacion VARCHAR2(10),
       fec_ultima_modificacion DATE,
       usuario_ultima_modificacion VARCHAR2(10)
);
       create public synonym facilidad_entrenamiento for user1.facilidad_entrenamiento;
       
-- PK Facilidad 
ALTER TABLE facilidad_entrenamiento
      ADD CONSTRAINT pk_id_facilidad_entrenamiento PRIMARY KEY (id_facilidad_entrenamiento)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

-- 10. Tabla Enfermedades de la Mascota
CREATE TABLE enfermedades_mascota
(
       id_enfermedad NUMBER(10),
       nombre_enfermedad VARCHAR2(45) CONSTRAINT enfermedadesmascota_nombre_nn not null,
       id_mascota NUMBER(10),
       fec_creacion DATE,
       usuario_creacion VARCHAR2(10),
       fec_ultima_modificacion DATE,
       usuario_ultima_modificacion VARCHAR2(10)
);
       create public synonym enfermedades_mascota for user1.enfermedades_mascota;
       
-- PK Enfermedades Mascota
ALTER TABLE enfermedades_mascota
      ADD CONSTRAINT pk_id_enfermedad PRIMARY KEY (id_enfermedad)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);
      
-- FK Enfermedades Mascota
ALTER TABLE enfermedades_mascota
  ADD CONSTRAINT fk_id_mascota
  FOREIGN KEY (id_mascota)
  REFERENCES mascota(id_mascota)
  on delete set null;

-- 11. Tabla de Tratamientos de las Enfermedades
CREATE TABLE tratamientos_enfermedades
(
       id_tratamiento NUMBER(10),
       nombre_tratamiento VARCHAR2(45) CONSTRAINT tratenfermedades_nombre_nn not null,
       id_enfermedad NUMBER(10),
       fec_creacion DATE,
       usuario_creacion VARCHAR2(10),
       fec_ultima_modificacion DATE,
       usuario_ultima_modificacion VARCHAR2(10)
);
       create public synonym tratamientos_enfermedades for user1.tratamientos_enfermedades;
       
-- PK Tratamientos de Enfermedades
ALTER TABLE tratamientos_enfermedades
       ADD CONSTRAINT id_tratamiento PRIMARY KEY (id_tratamiento)
       USING INDEX
       TABLESPACE proy_indx PCTFREE 20
       STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);
       
-- FK Tratamientos Enfermedades
ALTER TABLE tratamientos_enfermedades
  ADD CONSTRAINT fk_enfermedades_mascota
  FOREIGN KEY (id_enfermedad)
  REFERENCES enfermedades_mascota(id_enfermedad)
  on delete set null;

-- 12. Tabla de Medicinas para los Tratamientos
CREATE TABLE medicinas
(
       id_medicina NUMBER(10),
       nombre_medicina VARCHAR2(45) CONSTRAINT medicinas_nombremedicina_nn not null,
       id_tratamiento NUMBER(10),
       fec_creacion DATE,
       usuario_creacion VARCHAR2(10),
       fec_ultima_modificacion DATE,
       usuario_ultima_modificacion VARCHAR2(10)
);
       create public synonym medicinas for user1.medicinas;
       
-- PK Medicinas
ALTER TABLE medicinas
      ADD CONSTRAINT id_medicina PRIMARY KEY (id_medicina)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);
      
-- FK Medicinas
ALTER TABLE medicinas
  ADD CONSTRAINT fk_tratamientos_enfermedades
  FOREIGN KEY (id_tratamiento)
  REFERENCES tratamientos_enfermedades(id_tratamiento)
  on delete set null;

-- 13. Tabla Actividad F�sica
CREATE TABLE actividad_fisica
(
       id_actividad NUMBER(10),
       actividad_fisica VARCHAR2(45) CONSTRAINT actividadfisica_actividad_nn not null,
       fec_creacion DATE,
       usuario_creacion VARCHAR2(10),
       fec_ultima_modificacion DATE,
       usuario_ultima_modificacion VARCHAR2(10)
);
       create public synonym actividad_fisica for user1.actividad_fisica;
       
-- PK Actividad F�sica
Alter table actividad_fisica
      ADD CONSTRAINT id_actividad PRIMARY KEY (id_actividad)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);
       
-- 14. Tabla Nivel de Energ�a
CREATE TABLE nivel_energia
(
       id_nivel_energia NUMBER(10),
       nivel_energia VARCHAR2(45) CONSTRAINT nivelenergia_nivelenergia_nn not null,
       fec_creacion DATE,
       usuario_creacion VARCHAR2(10),
       fec_ultima_modificacion DATE,
       usuario_ultima_modificacion VARCHAR2(10)
);
       create public synonym nivel_energia for user1.nivel_energia;
       
-- PK Nivel de Energ�a
Alter Table nivel_energia
      ADD CONSTRAINT id_nivel_energia PRIMARY KEY (id_nivel_energia)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);
      
-- 15. Tabla Estado de Adopci�n
CREATE TABLE estado_adopcion
(
      id_estado_adopcion NUMBER(10),
      estado_adopcion VARCHAR2(45) CONSTRAINT estado_adopcion_estado_nn not null,
      fec_creacion DATE,
      usuario_creacion VARCHAR2(10),
      fec_ultima_modificacion DATE,
      usuario_ultima_modificacion VARCHAR2(10)
);

-- PK estado adopci�n
ALTER TABLE estado_adopcion
      ADD CONSTRAINT pk_estado_adopcion PRIMARY KEY (id_estado_adopcion)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

-- Tabla de devoluciones de las mascotas
Create Table devoluciones_mascotas(
       id_adoptante NUMBER(10),
       id_mascota Number(10) CONSTRAINT devoluciones_idmascota_nnull not null,
       id_motivo_devolucion number(10) CONSTRAINT devoluciones_motDevol_nnull not null,
       fec_creacion DATE,
       usuario_creacion VARCHAR2(10),
       fec_ultima_modificacion DATE,
       usuario_ultima_modificacion VARCHAR2(10)
);

-- PK devoluciones_mascotas
Alter Table devoluciones_mascotas
      ADD CONSTRAINT pk_devoluciones_M PRIMARY KEY (id_adoptante, id_mascota)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

ALTER TABLE devoluciones_mascotas
  ADD CONSTRAINT fk_adoptante_mDevuelta
  FOREIGN KEY (id_adoptante)
  REFERENCES persona(id_persona)
  on delete set null;

ALTER TABLE devoluciones_mascotas
  ADD CONSTRAINT fk_mDevuelta
  FOREIGN KEY (id_mascota)
  REFERENCES mascota(id_mascota)
  on delete cascade;

ALTER TABLE devoluciones_mascotas
  ADD CONSTRAINT fk_motivo_mDevuelta
  FOREIGN KEY (id_motivo_devolucion)
  REFERENCES motivo_devolucion(id_motivo_devolucion)
  on delete set null;
