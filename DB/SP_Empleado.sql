-- Procedimientos almacenados Empleado

-- 1.- Registro empleado
DROP PROCEDURE IF EXISTS `SP_INSERTEMPLEADO`;
CREATE PROCEDURE SP_INSERTEMPLEADO(xidemp int, xcod varchar(45), xnom varchar(100), xape varchar(45), xdoc 
									int, xtel int, xdom varchar(100), xeda int, xest int)                                    
INSERT INTO empleados (id_empleados, cod_empleado, nombre, apellidos, documento, telefono, domicilio, edad, estado_id_estado)
VALUES (xidemp,xcod,xnom,xape,xdoc,xtel,xdom,xeda,xest);

-- Probar
CALL SP_INSERTEMPLEADO(null,'EM0032','Grecia','Pashanasi Valdez','70157896','985471235','Jr. la libertad 123','26','3');


-- 2.- Actualizar Empleado
DROP PROCEDURE IF EXISTS `SP_UPDATEEMPLEADO`;
CREATE PROCEDURE SP_UPDATEEMPLEADO(xidemp int, xcod varchar(45), xnombre varchar(100), xapellidos varchar(45), 
	xdocumento int, xtelefono int, xdomicilio varchar(100), xedad int, xestado int)
UPDATE empleados 
	set cod_empleado = xcod, nombre = xnombre, apellidos = xapellidos, documento = xdocumento, telefono = xtelefono,
		domicilio = xdomicilio, edad = xedad, estado_id_estado = xestado
		where id_empleados = xidemp;
		
-- probar
call SP_UPDATEEMPLEADO('1','EM0001','Alejandro David','Mendez Mendez','11564988','99125634','Av. Perú 1145','26','1');

-- 3.- Elimar Empleado (Cambiar el estado a "Separado")
DROP PROCEDURE IF EXISTS `SP_DELETEEMPLEADO`;
CREATE PROCEDURE SP_DELETEEMPLEADO(xidemp int)
UPDATE empleados
SET estado_id_estado = 4
WHERE id_empleados = xidemp;

-- probar
call SP_DELETEEMPLEADO('12');


-- 4.- Buscar Empleado
CREATE PROCEDURE SP_SEARCHEMPLEADO(xidemp int)
SELECT * FROM EMPLEADOS
WHERE id_empleados = xidemp;

-- probar
CALL SP_SEARCHEMPLEADO(3);