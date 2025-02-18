use empresaDB;
delimiter //
create procedure AgregarDepartamento (in nuevo_nombre varchar(255), in nueva_ubicacion varchar(255))
begin
insert into departamentos (nombre, ubicacion) values ('ciencias aplicadas','secreta');

end//

delimiter ;

