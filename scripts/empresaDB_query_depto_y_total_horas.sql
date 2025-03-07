with horas_total_departamento as (
select sum(AsignacionesDeProyectos.horas_asignadas) as horas_totales,
Empleados.depto_id as departamento_estudio from AsignacionesDeProyectos
join Empleados on AsignacionesDeProyectos.empleado_id = Empleados.empleado_id
group by departamento_estudio
)
select Departamentos.nombre, horas_total_departamento.horas_totales 
from Departamentos
join horas_total_departamento on Departamentos.depto_id = horas_total_departamento.departamento_estudio
group by depto_id
order by horas_totales desc