CREATE OR REPLACE FUNCTION get_data_mascota(pestado_adopcion in number)
       RETURN tableDataMascotas PIPELINED is
       rec typeDataMascotas := typeDataMascotas(NULL, NULL, NULL, NULL, NULL, NULL, NULL,
       NULL, NULL, NULL);
       BEGIN
         FOR item IN (
           select vm.nombre_mascota as nm, vm.raza_mascota as rm, vm.color_mascota as cm,
           vm.actividad_fisica as af, vm.estado_crecimiento as ec, vm.estado_fisico as ef,
           vm.facilidad_entrenamiento as fe, vm.nivel_energia as ne, vm.tamanio_mascota as tam,
           vm.tipo_mascota as tim
              from view_all_data_mascota vm, mascota m
              where m.id_estado_adopcion = pestado_adopcion and vm.id_mascota = m.id_mascota)
         LOOP
         rec.nombre := item.nm;
         rec.raza := item.rm;
         rec.color := item.cm;
         rec.actividadfisica := item.af;
         rec.estadocrecimiento := item.ec;
         rec.estadofisico := item.ef;
         rec.facilidadentrenamiento := item.fe;
         rec.nivelenergia := item.ne;
         rec.tamanio := item.tam;
         rec.tipo := item.tim;
         PIPE ROW (rec);
         END LOOP;
         RETURN;
end get_data_mascota;
