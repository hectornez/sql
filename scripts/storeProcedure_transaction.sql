use empresaDB;
DELIMITER //
create procedure AsignarHorasAProyecto(in proyectoID int, in empleadoID int, horasAsignadas int)
begin
-- declaramos 2 variables
declare horasTotales int default 0;
declare horasMaximas int default 100;
-- Iniciar una transaccion y punto de guardado
start transaction;
savepoint PreValidacion;
-- calcular el total actual de horas asignadas al proyecto
select sum(horas_asignadas) into horasTotales from asignacionesDeProyectos where proyecto_id=proyectoID;
-- asumiendo que sum() puede devolver null si no hay filas, lo convertimos a 0
set horasTotales = ifnull(horasTotales, 0) +horasAsignadas;
-- verificar si horasTotales>horasMaximas
if horasTotales>horasMaximas then
	rollback to PreValidacion;
    select 'Error: La asiganción de horas excede el máximo permitido' as mensaje_1;
else
-- insertar la nueva asignancion de horas
	insert into AsignacionesDeProyectos(proyecto_id, empelado_id, horas_asignadas) values (proyectoID, empleadoID, horasAsignadas);
-- confirmar la transaccion si todas las operaciones fueron exitosas
	commit;
end if;
end//
delimiter ;