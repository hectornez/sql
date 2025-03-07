with HorasEmpleado as (
select empleado_id, sum(horas_asignadas) as TotalHoras
from AsignacionesDeProyectos
group by empleado_id
)

select Empleados.nombre, Empleados.apellido, HorasEmpleado.TotalHoras 
from Empleados
join HorasEmpleado on Empleados.empleado_id = HorasEmpleado.empleado_id
order by HorasEmpleado.TotalHoras desc