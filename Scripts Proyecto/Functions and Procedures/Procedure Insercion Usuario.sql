create or replace procedure addUsuarioRegular(
  pNombre Varchar2, pApellido Varchar2, pCedula number,
  pFecha_nacimiento Date, pTelefono number, pCorreo varchar2,
  pId_pais number, pId_provincia number, pId_Canton number, 
  pDireccion_exacta varchar2, pNombre_Usuario varchar2, 
  pContrasenna varchar2)
  AS 
    id_usuario_tmp number;
    id_direccion_tmp number;
    id_telefono_tmp number;
    id_correo_tmp number;
  begin
    id_usuario_tmp := sec_persona.nextval;
    id_direccion_tmp := sec_direccion.nextval;
    id_telefono_tmp := sec_telefono.nextval;
    id_correo_tmp := sec_correo.nextval;
    insert into usuarios(Username, Contrasenia, id_tipo_usuario)
      values (pNombre_Usuario, pContrasenna, 3);
    insert into direccion(id_direccion, direccion_exacta, id_pais, id_provincia, id_canton)
      values(id_direccion_tmp, pDireccion_exacta, pid_pais, pid_provincia, pid_canton);
    insert into correo(id_correo, correo, id_persona)
      values(id_correo_tmp, pCorreo, id_usuario_tmp);
    insert into persona(id_persona, cedula_persona, nombre, apellido, fecha_nacimiento, tipo_usuario, usuario_username, id_direccion)
      values (id_usuario_tmp, pcedula, pnombre, papellido, pfecha_nacimiento, 3, pnombre_usuario, id_direccion_tmp);
    insert into telefono (id_telefono, numero_telefono, id_persona)
      values (id_telefono_tmp, ptelefono, id_usuario_tmp);
    insert into adoptante(id_adoptante, notas_adoptante)
      values (id_usuario_tmp, NULL);
  exception
    when dup_val_on_index then 
      dbms_output.put_line('Error, ese id ya está en uso.');
       rollback;
    when value_error then
      dbms_output.put_line('Error, tipo de dato.');
       rollback;
  end;
commit;
