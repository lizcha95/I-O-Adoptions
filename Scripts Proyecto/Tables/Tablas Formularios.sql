--1. Crea la tabla de items correspondientes a cada pregunta
CREATE TABLE Items(
    ID_Item NUMBER(10) CONSTRAINT Items_IDItem_Const_NotNull NOT NULL,
    Item VARCHAR2(150) CONSTRAINT Items_Item_Const_NotNull NOT NULL,
    UsuarioInsercion Varchar2(10),
    FechaInsercion DATE,
    UsuarioUltimaModificacion Varchar2(10),
    FechaUltimaModificacion DATE
);

--Public synonym correspondiente a la tabla.
create public synonym Items for user1.Items;

--Crea las Primary Keys de Items
 Alter table items
      ADD  CONSTRAINT pk_iditems_items PRIMARY KEY (ID_Item)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

--2. Crea la tabla de enunciados correspondientes a cada pregunta
CREATE TABLE Enunciados(
    ID_Enunciado NUMBER(10) CONSTRAINT Enunciados_IDEnun_Const_NNull NOT NULL,
    Enunciado VARCHAR2(250) CONSTRAINT Enunciados_Enun_Const_NNull NOT NULL,
    UsuarioInsercion Varchar2(10),
    FechaInsercion DATE,
    UsuarioUltimaModificacion Varchar2(10),
    FechaUltimaModificacion DATE
);

--Public synonym correspondiente a la tabla
create public synonym Enunciados for user1.Enunciados;

--Crea las Primary Keys de Enunciados
 Alter table Enunciados
      ADD  CONSTRAINT pk_idenunciado_enunciados PRIMARY KEY (ID_Enunciado)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

--3. Crea la tabla de preguntas
CREATE TABLE Preguntas(
    ID_Preguntas NUMBER(10) 
    CONSTRAINT Preguntas_IDPreguntas_NotNull NOT NULL,
    ID_Enunciado NUMBER(10) 
    CONSTRAINT Preguntas_IDEnunciado_NotNull NOT NULL,
    ID_Item NUMBER(10) 
    CONSTRAINT Preguntas_IDItem_NotNull NOT NULL,
    UsuarioInsercion Varchar2(10),
    FechaInsercion DATE,
    UsuarioUltimaModificacion Varchar2(10),
    FechaUltimaModificacion DATE
);


--Public synonym correspondiente a la tabla.
create public synonym Preguntas  for user1.Preguntas;

--Crea las Primary Keys de preguntas
 Alter table Preguntas
      ADD  CONSTRAINT pk_idpreguntas_preguntas PRIMARY KEY (ID_Preguntas)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

--Crea las Foreign Keys de preguntas con enunciados
Alter table Preguntas
      ADD CONSTRAINT fk_idenunciado_preguntas 
      FOREIGN KEY (ID_Enunciado) 
      REFERENCES Enunciados(ID_Enunciado)
      on delete cascade;
      
--Crea las Foreign Keys de preguntas de items con enunciados
Alter table Preguntas
      ADD CONSTRAINT fk_iditem_preguntas 
      FOREIGN KEY (ID_Item) 
      REFERENCES Items(ID_Item)
      on delete cascade;

--4. Crea la tabla de formularios
CREATE TABLE Formularios (
    ID_Formulario NUMBER(10) CONSTRAINT Formularios_IDFormulario_NN NOT NULL,
    tipo NUMBER(10) CONSTRAINT Formularios_tipo_NN NOT NULL,
    UsuarioInsercion Varchar2(10),
    FechaInsercion DATE,
    UsuarioUltimaModificacion Varchar2(10),
    FechaUltimaModificacion DATE
);

--Public synonym correspondiente a la tabla.
create public synonym Formularios  for user1.Formularios;

--Crea las Primary Keys de formularios
Alter table Formularios
      ADD  CONSTRAINT pk_idformulario_formularios PRIMARY KEY (ID_Formulario)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

--Crea las Foreign Keys de Formularios con Tipo_Formularios
Alter table Formularios
      ADD CONSTRAINT fk_idtipo_formulario 
      FOREIGN KEY (tipo) 
      REFERENCES Tipo_Formulario(ID_tipo)
      on delete cascade;

--5. Crea la tabla catalogo de tipos de formularios
CREATE TABLE Tipo_Formulario (
    ID_tipo NUMBER(10) CONSTRAINT tipoFormul_IDFormulario_NN NOT NULL,
    nombre_Tipo VARCHAR2(50) CONSTRAINT tipoFormulario_nTipo_NN NOT NULL,
    UsuarioInsercion Varchar2(10),
    FechaInsercion DATE,
    UsuarioUltimaModificacion Varchar2(10),
    FechaUltimaModificacion DATE
);
  
--Public synonym correspondiente a la tabla.
create public synonym Tipo_Formulario  for user1.Tipo_Formulario;

--Crea las Primary Keys de tipos de formularios
Alter table Tipo_Formulario
      ADD  CONSTRAINT pk_IDtipo_tipoFormulario PRIMARY KEY (ID_tipo)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

--6. Crea la tabla de respuestas correspondientes a cada formulario
CREATE TABLE Preguntas_Formularios(
   ID_Pregunta_Formulario NUMBER(10) 
   CONSTRAINT pregForm_idpregform_NotNull NOT NULL,
   ID_Formulario NUMBER(10) 
   CONSTRAINT pregForm_idformulario_NotNull NOT NULL,
   ID_Pregunta NUMBER(10) 
   CONSTRAINT pregForm_IDPreguntas_NotNull NOT NULL,
   UsuarioInsercion Varchar2(10),
    FechaInsercion DATE,
   UsuarioUltimaModificacion Varchar2(10),
   FechaUltimaModificacion DATE
);

--Public synonym correspondiente a la tabla.
create public synonym Preguntas_Formularios for user1.Preguntas_Formularios;

--Crea las Primary Keys de respuestas
Alter table Preguntas_Formularios
      ADD  CONSTRAINT pk_idpregform_pregform PRIMARY KEY (ID_Pregunta_Formulario)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

--Crea las Foreign Keys de Preguntas_Formulario con Formularios
Alter table Preguntas_Formularios
      ADD CONSTRAINT fk_idform_preguntasformulario 
      FOREIGN KEY (ID_Formulario) 
      REFERENCES Formularios(ID_Formulario)
      on delete cascade;

--Crea las Foreign Keys de Preguntas_Formulario con Preguntas
Alter table Preguntas_Formularios
   ADD CONSTRAINT fk_idpreg_preguntasformularios 
   FOREIGN KEY (ID_Pregunta)
   REFERENCES Preguntas(ID_Preguntas)
   on delete cascade;

--7. Crea la tabla de respuestas correspondientes a cada formulario
CREATE TABLE Formularios_Respuestas(
   ID_Adoptante NUMBER(10) 
   CONSTRAINT formResp_idadoptante_NotNull NOT NULL,
   ID_Pregunta_Formulario NUMBER(10) 
   CONSTRAINT formResp_idpregform_NotNull NOT NULL,
   ID_Item NUMBER(10) 
   CONSTRAINT formResp_iditem_NotNull NOT NULL,
   UsuarioInsercion Varchar2(10),
    FechaInsercion DATE,
   UsuarioUltimaModificacion Varchar2(10),
   FechaUltimaModificacion DATE
 );

--Public synonym correspondiente a la tabla.
create public synonym Formularios_Respuestas for user1.Formularios_Respuestas;

--Crea las Primary Keys de respuestas
 Alter table Formularios_Respuestas
      ADD  CONSTRAINT pk_idformulario_formResp PRIMARY KEY (ID_Adoptante,ID_Pregunta_Formulario)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

--Crea las Foreign Keys de Formulario_Respuestas con adoptante
Alter table Formularios_Respuestas
      ADD CONSTRAINT fk_idadoptante_formresp
      FOREIGN KEY (ID_Adoptante) 
      REFERENCES adoptante(id_adoptante)
      on delete cascade;

--Crea las Foreign Keys de Formulario_Respuestas con Preguntas_Formulario
Alter table Formularios_Respuestas
   ADD CONSTRAINT fk_idform_formulariorespuestas 
   FOREIGN KEY (ID_Pregunta_Formulario)
   REFERENCES Preguntas_Formularios(ID_Pregunta_Formulario)
   on delete set null;


--Crea las Foreign Keys de Formulario_Respuestas con Items
Alter table Formularios_Respuestas
   ADD CONSTRAINT fk_iditem_formulariorespuestas 
   FOREIGN KEY (ID_Item) 
   REFERENCES Items(ID_Item)
   on delete set null;
   
--8. Crea la tabla de formularios aceptados correspondientes a cada rescatista(personaque da en adopci�n)
CREATE TABLE Formularios_Aceptados(
   ID_Adoptante NUMBER(10) 
   CONSTRAINT formacept_idadoptante_NotNull NOT NULL,
   ID_Rescatista NUMBER(10) 
   CONSTRAINT formacept_idrescatista_NotNull NOT NULL,
   ID_Pregunta_Formulario NUMBER(10) 
   CONSTRAINT formacept_idpregform_NotNull NOT NULL,
   UsuarioInsercion Varchar2(10),
    FechaInsercion DATE,
   UsuarioUltimaModificacion Varchar2(10),
   FechaUltimaModificacion DATE
);

--Public synonym correspondiente a la tabla.
create public synonym Formularios_Aceptados for User1.Formularios_Aceptados;

--Crea las Primary Keys de formularios aceptados
 Alter table Formularios_Aceptados
      ADD  CONSTRAINT pk_idAdoptRescat_formaceptados PRIMARY KEY (ID_Adoptante, ID_Rescatista, ID_Pregunta_Formulario)
      USING INDEX
      TABLESPACE proy_indx PCTFREE 20
      STORAGE(INITIAL 10k NEXT 10K PCTINCREASE 0);

--Crea las Foreign Keys de Formularios_Aceptados con Formularios_Respuestas
Alter table Formularios_Aceptados
   ADD CONSTRAINT fk_idadopt_formaceptados 
   FOREIGN KEY (ID_Adoptante) 
   REFERENCES adoptante(id_adoptante)
   on delete cascade;

--Crea las Foreign Keys de Formularios_Aceptados con rescatista
Alter table Formularios_Aceptados
   ADD CONSTRAINT fk_idrescatista_formaceptados 
   FOREIGN KEY (ID_Rescatista) 
   REFERENCES rescatista(id_rescatista)
   on delete cascade;
 
--Crea las Foreign Keys de Formularios_Aceptados con rescatista
Alter table Formularios_Aceptados
   ADD CONSTRAINT fk_idform_formaceptados
   FOREIGN KEY (ID_Pregunta_Formulario) 
   REFERENCES Preguntas_Formularios(ID_Pregunta_Formulario)
   on delete set null;
