create or replace package package_get_mascotas is
    TYPE rtype_mascotas IS RECORD (id_mascota number(10);
    TYPE type_mascotas IS TABLE OF rtype_mascotas;
    function get_mascotas ()
    return type;
end package_get_mascotas;

Create or replace package body package_get_mascotas_body as 
    Create or replace function get_mascotas ()
    return  type;
    Declare 
        cursor cursor_mascota is
        select mascota.id_mascota, mascota.nombre_mascota, raza_mascota.raza_mascota, tipo_mascota.tipo_mascota into type_curso
        from mascota
        inner join raza_mascota
        on mascota.id_raza_mascota = raza_mascota.id_raza
                                   
        inner join tipo_mascota
        on 
        where ce.Carné_Estudiante = pCarne and ce.Id_Curso = c.Id_Curso;
    begin
      return (type_curso); 
    Exception 
        when NO_DATA_INPUT THEN
            dbms_output.put_line('Error, No tiene cursos registrados.');
    end;
end;