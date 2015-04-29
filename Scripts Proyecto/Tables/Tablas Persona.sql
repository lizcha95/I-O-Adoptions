-- 1. Tabla Tipo de Usuario
CREATE TABLE tipo_usuario
( 
       id_tipo_usuario NUMBER(10),
       tipo_usuario VARCHAR2(45) 
       CONSTRAINT tipoUs_tipoUs_NotNull Not NULL,
       UsuarioInsercion Varchar2(10),
       FechaInsercion DATE,
       UsuarioUltimaModificacion Varchar2(10),
       FechaUltimaModificacion DATE
);

create public synonym tipo_usuario for User1.tipo_usuario;
       
-- PK Tipo Usuario       
ALTER TABLE tipo_usuario
      ADD CONSTRAINT pk_tipo_usuario PRIMARY KEY (id_tipo_usuario)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

-- 2. Tabla Usuario
CREATE TABLE usuarios
(
       username VARCHAR2(10),
       contrasenia VARCHAR2(45) 
       CONSTRAINT usuario_contrasenia_nn not null,
       id_tipo_usuario NUMBER(10)
       CONSTRAINT idtipousuario_contrasenna_nn not null,
       UsuarioInsercion Varchar2(10),
       FechaInsercion DATE,
       UsuarioUltimaModificacion Varchar2(10),
       FechaUltimaModificacion DATE
);

create public synonym usuarios for User1.usuarios;
       
-- PK Usuario
ALTER TABLE usuarios
      ADD CONSTRAINT pk_usuarios PRIMARY KEY (username)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

--Crea las Foreign Keys de usuarios con Formularios_Respuestas
Alter table usuarios
   ADD CONSTRAINT fk_idtipousuario_usuarios 
   FOREIGN KEY (id_tipo_usuario) 
   REFERENCES tipo_usuario(id_tipo_usuario)
   on delete cascade;
      
-- 3. Tabla Persona
CREATE TABLE persona
(
       id_persona NUMBER(10),
       Cedula_persona NUMBER(10) 
       CONSTRAINT persona_cedula_nn not null,
       Nombre VARCHAR2(45) 
       CONSTRAINT persona_nombre_nn not null,
       Apellido VARCHAR2(45) 
       CONSTRAINT persona_apellido_nn not null,
       Fecha_nacimiento DATE 
       CONSTRAINT persona_fechanacimiento_nn not null,
       Tipo_usuario NUMBER(10)
       CONSTRAINT persona_tipousuario_nn not null,
       usuario_username VARCHAR2(10)
       CONSTRAINT persona_uusername_nn not null,       
       id_direccion NUMBER(10)
       CONSTRAINT persona_idDireccion_nn not null,
       UsuarioInsercion Varchar2(10),
       FechaInsercion DATE,
       UsuarioUltimaModificacion Varchar2(10),
       FechaUltimaModificacion DATE
);

create public synonym persona for User1.persona;

-- PK Persona
ALTER TABLE persona
      ADD CONSTRAINT pk_persona PRIMARY KEY (id_persona)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

--Crea las Foreign Keys de persona con usuario
Alter table persona
   ADD CONSTRAINT fk_persona_username
   FOREIGN KEY (usuario_username)
   REFERENCES usuarios(username)
   on delete cascade;

--Crea las Foreign Keys de persona con direccion
Alter table persona
   ADD CONSTRAINT fk_iddireccion_persona
   FOREIGN KEY (id_direccion)
   REFERENCES direccion(id_direccion)
   on delete set null;

-- 4. Tabla Pais
CREATE TABLE pais
(
       id_pais NUMBER(10),
       nombre_pais VARCHAR2(45) CONSTRAINT pais_nombre_nn not null,
       UsuarioInsercion Varchar2(10),
       FechaInsercion DATE,
       UsuarioUltimaModificacion Varchar2(10),
       FechaUltimaModificacion DATE
);

create public synonym pais for user1.pais;
       
-- PK Pais
ALTER TABLE pais
      ADD CONSTRAINT pk_pais PRIMARY KEY (id_pais)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);
      
-- 5. Tabla Provincia
CREATE TABLE provincia
(
       id_provincia NUMBER(10),
       nombre_provincia VARCHAR2(45) CONSTRAINT provincia_nombre_nn not null,
       id_pais NUMBER(10),
       UsuarioInsercion Varchar2(10),
       FechaInsercion DATE,
       UsuarioUltimaModificacion Varchar2(10),
       FechaUltimaModificacion DATE
);

create public synonym provincia for user1.provincia;

-- PK Provincia
ALTER TABLE provincia
      ADD CONSTRAINT pk_provincia PRIMARY KEY (id_provincia)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

Alter Table provincia
  Add CONSTRAINT fk_id_pais_provincia
  FOREIGN KEY (id_pais)
  REFERENCES pais(id_pais)
  on delete cascade;
      
-- 6. Tabla Canton
CREATE TABLE canton
(
       id_canton NUMBER(10),
       nombre_canton VARCHAR2(45) CONSTRAINT canton_nombre_nn not null,
       id_provincia NUMBER(10)
       UsuarioInsercion Varchar2(10),
       FechaInsercion DATE,
       UsuarioUltimaModificacion Varchar2(10),
       FechaUltimaModificacion DATE
);

create public synonym canton for user1.canton;

-- PK Canton
ALTER TABLE canton
      ADD CONSTRAINT pk_canton PRIMARY KEY (id_canton)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);
      
Alter Table canton
  Add CONSTRAINT fk_id_provincia_canton
  FOREIGN KEY (id_provincia)
  REFERENCES provincia(id_provincia)
  on delete cascade;
        
-- 7. Tabla Direccion
CREATE TABLE direccion
(
       id_direccion NUMBER(10),
       direccion_exacta VARCHAR2(100),       
       id_pais NUMBER(10),         
       id_provincia NUMBER(10),         
       id_canton NUMBER(10),
       UsuarioInsercion Varchar2(10),
       FechaInsercion DATE,
       UsuarioUltimaModificacion Varchar2(10),
       FechaUltimaModificacion DATE
);

create public synonym direccion for user1.direccion;

--Crea las Foreign Keys de persona con pais
Alter table direccion
    ADD CONSTRAINT fk_id_pais
    FOREIGN KEY (id_pais)
    REFERENCES pais(id_pais)
    on delete cascade;

--Crea las Foreign Keys de persona con provincia
Alter table direccion
    ADD CONSTRAINT fk_id_provincia
    FOREIGN KEY (id_provincia)
    REFERENCES provincia(id_provincia)
    on delete cascade;
    
--Crea las Foreign Keys de persona con provincia
Alter table direccion
    ADD CONSTRAINT fk_id_canton
    FOREIGN KEY (id_canton)
    REFERENCES canton(id_canton)
    on delete cascade;
       
-- PK Direccion
ALTER TABLE direccion
      ADD CONSTRAINT pk_direccion PRIMARY KEY (id_direccion)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);
      
-- 8. Tabla Telefono
CREATE TABLE telefono
(
       id_telefono NUMBER(10),
       numero_telefono NUMBER(11) CONSTRAINT telefono_numero_nn not null,
       id_persona NUMBER(10),
       UsuarioInsercion Varchar2(10),
       FechaInsercion DATE,
       UsuarioUltimaModificacion Varchar2(10),
       FechaUltimaModificacion DATE
);

create public synonym telefono for user1.telefono;

--FK telefono referencia a persona
Alter Table Telefono
  Add CONSTRAINT fk_id_persona_telefono
  FOREIGN KEY (id_persona)
  REFERENCES persona(id_persona)
  on delete set null;

-- PK Telefono    
ALTER TABLE telefono
      ADD CONSTRAINT pk_telefono PRIMARY KEY (id_telefono)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

-- 9. Tabla Correo
CREATE TABLE correo
(
       id_correo NUMBER(10),
       correo VARCHAR2(45) CONSTRAINT correo_correo_nn not null,
       id_persona NUMBER(10),
       UsuarioInsercion Varchar2(10),
       FechaInsercion DATE,
       UsuarioUltimaModificacion Varchar2(10),
       FechaUltimaModificacion DATE
);

create public synonym correo for user1.correo;

--FK correo referencia a persona
Alter Table correo
  Add CONSTRAINT fk_id_persona_correo
  FOREIGN KEY (id_persona)
  REFERENCES persona(id_persona)
  on delete set null;

-- PK Correo   
ALTER TABLE correo
      ADD CONSTRAINT pk_correo PRIMARY KEY (id_correo)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);
      
-- 10. Tabla Adoptante
CREATE TABLE adoptante
(
       id_adoptante NUMBER(10),  
       notas_adoptante VARCHAR2(45),
       UsuarioInsercion Varchar2(10),
       FechaInsercion DATE,
       UsuarioUltimaModificacion Varchar2(10),
       FechaUltimaModificacion DATE
);

create public synonym adoptante for user1.adoptante
           
-- PK Adoptante
ALTER TABLE adoptante
      ADD CONSTRAINT pk_adoptante PRIMARY KEY (id_adoptante)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

--FK adoptante referencia a persona
Alter Table adoptante
  Add CONSTRAINT fk_id_persona_personaAdoptante
  FOREIGN KEY (id_adoptante)
  REFERENCES persona(id_persona)
  on delete cascade;

-- 11. Tabla Rescatista
CREATE TABLE rescatista
(
       id_rescatista NUMBER(10),
       UsuarioInsercion Varchar2(10),
       FechaInsercion DATE,
       UsuarioUltimaModificacion Varchar2(10),
       FechaUltimaModificacion DATE
);

create public synonym rescatista for user1.rescatista;

-- PK Rescatista
ALTER TABLE rescatista
      ADD CONSTRAINT pk_rescatista PRIMARY KEY (id_rescatista)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

--FK telefono referencia a persona
Alter Table rescatista
  Add CONSTRAINT fk_id_persona_rescatista
  FOREIGN KEY (id_rescatista)
  REFERENCES persona(id_persona)
  on delete cascade;
  
-- 12. Tabla de Lista Negra
CREATE TABLE lista_negra
(
       id_rescatista NUMBER(10),  
       id_adoptante NUMBER(10),
       UsuarioInsercion Varchar2(10),
       FechaInsercion DATE,
       UsuarioUltimaModificacion Varchar2(10),
       FechaUltimaModificacion DATE
);

create public synonym lista_negra for user1.lista_negra;

-- PK Lista Negra
ALTER TABLE lista_negra
      ADD CONSTRAINT pk_lista_negra PRIMARY KEY (id_rescatista, id_adoptante)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);  
      
--FK telefono referencia a persona
Alter Table lista_negra
  Add CONSTRAINT fk_id_rescatista_listanegra
  FOREIGN KEY (id_rescatista)
  REFERENCES rescatista(id_rescatista)
  on delete set null;
  
--FK telefono referencia a persona
Alter Table lista_negra
  Add CONSTRAINT fk_id_adoptante_listaNegra
  FOREIGN KEY (id_adoptante)
  REFERENCES adoptante(id_adoptante)
  on delete cascade;
  
-- 13. Tabla Rescatista Califica al Adoptante
CREATE TABLE rescatista_califica_adoptante
(
       calificacion NUMBER(10) CONSTRAINT rescatistacalifica_calific_nn not null,
       id_rescatista NUMBER(10),
       id_adoptante NUMBER(10),
       UsuarioInsercion Varchar2(10),
       FechaInsercion DATE,
       UsuarioUltimaModificacion Varchar2(10),
       FechaUltimaModificacion DATE
);

create public synonym rascatista_califica_adoptante for user1.rescatista_califica_adoptante;
       
-- PK rescatista_califica_adoptante
ALTER TABLE rescatista_califica_adoptante
      ADD CONSTRAINT pk_califica PRIMARY KEY (id_rescatista)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0); 

--FK telefono referencia a persona
Alter Table rescatista_califica_adoptante
  Add CONSTRAINT fk_id_rescatista
  FOREIGN KEY (id_rescatista)
  REFERENCES rescatista(id_rescatista)
  on delete set null;
            
--FK telefono referencia a persona
Alter Table rescatista_califica_adoptante
  Add CONSTRAINT fk_id_adoptante
  FOREIGN KEY (id_adoptante)
  REFERENCES adoptante(id_adoptante)
  on delete cascade;
