create view VistaEmpleadosProyectos as

select empleados.nombre, empleados.apellido, proyectos.nombre_proyecto, asignacionesDeProyectos.proyecto_id,
asignacionesDeProyectos.horas_asignadas
from asignacionesDeProyectos
join empleados on empleados.empleado_id = asignacionesDeProyectos.empleado_id
join proyectos on proyectos.proyecto_id = asignacionesDeProyectos.proyecto_id


-- para utilizar la VIEW

select * from VistaEmpleadosProyectos