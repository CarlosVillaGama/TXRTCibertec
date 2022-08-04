-- Procedimientos almacenados Usuario

-- 1.- Registro usuario
DROP PROCEDURE IF EXISTS `SP_INSERTUSUARIO`;
CREATE PROCEDURE SP_INSERTUSUARIO(xidusu int, xusu varchar(45), xpas varchar(5), xidrol
									int, xcodemp varchar(45), xidest int)                                    
INSERT INTO usuarios (id_usuarios, usuario, password, id_rol, cod_empleado, estado_id_estado)
VALUES (xidusu,xusu,xpas,xidrol,xcodemp,xidest);


-- 2.- Actualizar Usuario
DROP PROCEDURE IF EXISTS `SP_UPDATEUSUARIO`;
CREATE PROCEDURE SP_UPDATEUSUARIO(xidusu int, xusu varchar(45), xpas varchar(5), xidrol
									int, xcodemp varchar(45), xidest int) 
UPDATE usuarios 
	set usuario = xusu, password=xpas, id_rol=xidrol, cod_empleado=xcodemp, estado_id_estado=xidest
		where id_usuarios = xidusu;
		

-- 3.- Elimar Usuario (En el caso de Usuarios solo hay 2 estados >>> 1-Activo 2-Inactivo)
DROP PROCEDURE IF EXISTS `SP_DELETEUSUARIO`;
CREATE PROCEDURE SP_DELETEUSUARIO(xidusu int)
UPDATE usuarios
SET estado_id_estado = 2
WHERE id_usuarios = xidusu;


-- 4.- Buscar Usuario
CREATE PROCEDURE SP_SEARCHUSUARIO(xidusu int)
SELECT * FROM USUARIOS
WHERE id_usuarios = xidusu;
