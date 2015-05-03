insert into mascota(id_mascota, cedula_duenio_anterior, nombre_mascota, foto_anterior, foto_despues, id_estado_crecimiento, 
                    id_estado_fisico, id_raza_mascota, id_tamanio_mascota, id_color_mascota, id_facilidad_entrenamiento, 
                    id_actividad_fisica, id_nivel_energia, id_duennoanterior, id_estado_adopcion, cantidad_devoluciones)
                    
values(sec_mascota.nextval, 16987870, 'Turing', '', '', 1, 2, 1, 1, 2, 1, 1, 1, 123456788, 1, 0);

insert into mascota(id_mascota, cedula_duenio_anterior, nombre_mascota, foto_anterior, foto_despues, id_estado_crecimiento, 
                    id_estado_fisico, id_raza_mascota, id_tamanio_mascota, id_color_mascota, id_facilidad_entrenamiento, 
                    id_actividad_fisica, id_nivel_energia, id_duennoanterior, id_estado_adopcion, cantidad_devoluciones)
                    
values(sec_mascota.nextval, 35678908, 'Babagge', '', '', 3, 1, 5, 3, 1, 1, 1, 1, 123456788, 1, 0);

commit;

select * from mascota

begin 
  addmascota('LOLOLOLOL',1,1,1,1,1,1,1,1,1,109870654,2,0);
end;  
