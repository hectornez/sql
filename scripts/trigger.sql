delimiter $$

create trigger inclusion_en_proyecto

after insert on empleados
for each row
begin
	insert into asignacionesDeProyectos (proyecto_id, empleado_id, horas_asignadas) 
    values ('1', new.empleado_id, '8');
end $$

delimiter ;    