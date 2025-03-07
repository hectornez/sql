select Empleados.nombre, Empleados.apellido, Proyectos.nombre, AsignacionesDeProyectos.horas_asignadas
from AsignacionesDeProyectos 
join Empleados on AsignacionesDeProyectos.empleado_id = Empleados.empleado_id
join Proyectos on AsignacionesDeProyectos.proyecto_id = Proyectos.proyecto_id

order by Empleados.nombre, Empleados.apellido,horas_asignadas desc