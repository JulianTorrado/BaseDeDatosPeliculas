

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_datos_peliculas`(
IN del_premio INT,
IN del_nac INT,
IN del_director INT,
IN del_genero INT,
IN del_actor INT,
IN del_clasificacion INT
)
BEGIN
DELETE FROM premio WHERE id_premio = del_premio;
DELETE FROM nacionalidad WHERE id_nac = del_nac;
DELETE FROM director WHERE id_director = del_director;
DELETE FROM genero WHERE id_genero = del_genero;
DELETE FROM actor WHERE id_actor = del_actor;
DELETE FROM clasificacion WHERE id_clasificacion = del_clasificacion;
END




CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_pelicula`(
/*Declaro una variable para usarla despues */ 
IN del_id INT
)
BEGIN
/*Uso la variable para obtener el numero de la id que se va a borrar*/
DELETE FROM pelicula WHERE id_pelicula = del_id;
END


CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_socio`(
IN del_id INT
)
BEGIN
DELETE FROM socio WHERE id_pelicula = del_id;
END


CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_socio`(
IN del_id INT
)
BEGIN
DELETE FROM socio WHERE id_pelicula = del_id;
END


CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insercion_renta_actual`(
IN ins_cod_pelicula INT,
IN ins_cod_socio INT,
IN ins_fecha DATETIME,
IN ins_precio DOUBLE)
BEGIN
INSERT INTO prestamo_actual (id_pelicula_1,id_socio_1,fecha,precio)
VALUES (ins_cod_pelicula,ins_cod_socio,ins_fecha,ins_precio);
END


CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_actor`(
IN ins_actor VARCHAR(45)
)
BEGIN
INSERT INTO actor(nom_actor)
VALUES(ins_actor);
END


CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_datos_peliculas`(
/*Declaro algunas variables para recibir los datos*/
IN ins_nacionalidad VARCHAR(45),
IN ins_director VARCHAR(45),
IN ins_genero VARCHAR(45),
IN ins_actor VARCHAR(45)
)
BEGIN
/*Envio los valores recibidos en las variables antes declaradas*/
INSERT INTO nacionalidad (nom_pais)
VALUES (ins_nacionalidad);

INSERT INTO director(nom_director)
VALUES(ins_director);

INSERT INTO genero(nom_genero)
VALUES (ins_genero);

INSERT INTO actor(nom_actor)
VALUES(ins_actor);

END


CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_director`(
IN ins_director VARCHAR(45)
)
BEGIN
INSERT INTO director (nom_director)
VALUES (ins_director);
END


CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_genero`(
IN ins_genero VARCHAR(45)
)
BEGIN
INSERT INTO genero(nom_genero)
VALUES (ins_genero);

END


CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_nacionalidad`(
IN ins_nac VARCHAR(45)
)
BEGIN
INSERT INTO nacionalidad (nom_pais)
VALUES (ins_nac);
END


CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_peliculas`(
IN ins_nombre_p VARCHAR(45),
IN ins_cod_premio INT,
IN ins_cod_nacionalidad INT,
IN ins_cod_director INT,
IN ins_cod_genero INT,
IN ins_cod_actor INT,
IN ins_cod_clasificacion INT
)
BEGIN
INSERT INTO pelicula(nom_pelicula,id_premio_1,id_nac_1,id_director_1,id_genero_1,id_actor_1,id_clasificacion_1)
VALUES (ins_nombre_p,ins_cod_premio,ins_cod_nacionalidad,ins_cod_director,ins_cod_genero,ins_cod_actor,ins_cod_clasificacion);
END



CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_renta_actual`(
IN ins_cod_pelicula INT,
IN ins_cod_socio INT,
IN ins_fecha DATETIME,
IN ins_precio DOUBLE)
BEGIN
INSERT INTO prestamo_actual (id_pelicula_1,id_socio_1,fecha,precio)
VALUES (ins_cod_pelicula,ins_cod_socio,ins_fecha,ins_precio);
END


CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_renta_final`(
IN ins_cod_pelicula INT,
IN ins_cod_socio INT,
IN ins_fecha INT
)
BEGIN
INSERT INTO prestamo_finalizado (id_pelicula_2,id_socio_2,fecha)
VALUES (ins_cod_pelicula,ins_cod_socio,ins_fecha);

END


CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_socio`(
IN ins_nombre VARCHAR(45),
IN ins_telefono BIGINT,
IN ins_direccion VARCHAR(45)
)
BEGIN
INSERT INTO socio(nom_socio,num_telefonico,direccion)
VALUES(ins_nombre,ins_telefono,ins_direccion);

END


CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar_peliculas`()
BEGIN
SELECT id_pelicula AS CodigoPelicula,nom_pelicula AS Pelicula,nom_premio AS Premio,nom_pais AS Pais,nom_genero AS Genero,nom_actor AS ActorPrincipal,nom_clasificacion AS Clasificacion FROM pelicula
INNER JOIN premio 
ON pelicula.id_premio_1 = premio.id_premio
INNER JOIN nacionalidad 
ON pelicula.id_nac_1 = nacionalidad.id_nac
INNER JOIN genero 
ON pelicula.id_genero_1 = genero.id_genero
INNER JOIN clasificacion  
ON pelicula.id_clasificacion_1 = clasificacion.id_clasificacion
INNER JOIN actor  
ON pelicula.id_actor_1 = actor.id_actor
INNER JOIN director  
ON pelicula.id_director_1 = director.id_director
ORDER BY  id_pelicula ASC;
END


CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar_renta_actual`()
BEGIN
SELECT id_prestamo_actual AS Codigo,id_pelicula AS CodigoPelicula,id_socio_1 AS CodigoSocio,nom_pelicula AS Pelicula,nom_socio AS Socio,num_telefonico AS Telefono,direccion AS Direccion,precio ,fecha FROM prestamo_actual
INNER JOIN pelicula 
ON prestamo_actual.id_pelicula_1 = pelicula.id_pelicula
INNER JOIN socio 
ON prestamo_actual.id_socio_1 = socio.id_socio;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar_renta_final`()
BEGIN
SELECT id_prestamo_finalizado AS Codigo,id_pelicula_2 AS CodigoPelicula,id_socio_2 AS CodigoSocio,nom_pelicula AS Pelicula,nom_socio AS Socio,num_telefonico AS Telefono,direccion AS Direccion,fecha FROM prestamo_finalizado
INNER JOIN pelicula 
ON prestamo_finalizado.id_pelicula_2 = pelicula.id_pelicula
INNER JOIN socio 
ON prestamo_finalizado.id_socio_2 = socio.id_socio;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar_socios`()
BEGIN
SELECT * FROM socio;
END


CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_pelicula`(
/*Declaro un par de variables para usarlas despues */
IN upd_nom_pelicula VARCHAR(45), 
IN upd_id INT
)
BEGIN
/* Utilizo las variables para obtener el nuevo nombre y el id a modificar */
UPDATE pelicula SET nom_pelicula = upd_nom_pelicula
WHERE id_pelicula = upd_id;
END



CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_socio`(
IN upd_nom_socio VARCHAR(45),
IN upd_telefono BIGINT,
IN upd_direccion VARCHAR(45),
IN upd_id INT

)
BEGIN
UPDATE socio 
SET nom_socio = upd_nom_socio,
num_telefonico = upd_telefono ,
direccion = upd_direccion
WHERE id_socio = upd_id;
END
