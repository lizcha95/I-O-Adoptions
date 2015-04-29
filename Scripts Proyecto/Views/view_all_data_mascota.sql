  create or replace view view_all_data_mascota as
    select m.nombre_mascota, rm.raza_mascota, cm.color_mascota, af.actividad_fisica, ec.estado_crecimiento, ef.estado_fisico, 
           fe.facilidad_entrenamiento, ne.nivel_energia, tam.tamanio_mascota, tim.tipo_mascota
    from mascota m , raza_mascota rm, color_mascota cm, actividad_fisica af, estado_crecimiento ec, estado_fisico ef, facilidad_entrenamiento fe,
         nivel_energia ne, tamanio_mascota tam , tipo_mascota tim
    where  m.id_raza_mascota = rm.id_raza_mascota and
           m.id_color_mascota = cm.id_color and 
           m.id_actividad_fisica = af.id_actividad and
           m.id_estado_crecimiento = ec.id_estado_crecimiento and
           m.id_estado_fisico = ef.id_estado_fisico and
           m.id_facilidad_entrenamiento = fe.id_facilidad_entrenamiento and
           m.id_nivel_energia = ne.id_nivel_energia and
           m.id_tamanio_mascota = tam.id_tamanio and 
           rm.id_tipo_mascota = tim.id_tipo_mascota and 
           m.id_estado_adopcion = 2;
