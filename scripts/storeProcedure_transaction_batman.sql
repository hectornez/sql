CREATE DEFINER=`root`@`localhost` PROCEDURE `currelas_de_batman`(in nombre_currela varchar(255), in apellido_currela varchar(255),
								in email_currela varchar(255), in depto_currela int)
begin
-- variables 
declare depto_obligatorio int default 1;
-- iniciar transaccion
start transaction;
savepoint PreValidacion;
set depto_obligatorio = depto_currela;
if depto_obligatorio = 3 then
	insert into empleados(nombre, apellido, email, depto_id) values (nombre_currela, 
												apellido_currela, email_currela, depto_currela);
else 
	rollback to PreValidacion;
    select 'Error: este currela tendra que ir a ciencias aplicadas' as mensaje;
    commit;
end if;
end