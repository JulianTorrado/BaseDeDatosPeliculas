

/*listo*/
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

SELECT * FROM socio; /*listo*/

/*listo*/
SELECT id_prestamo_actual AS Codigo,id_pelicula AS CodigoPelicula,id_socio_1 AS CodigoSocio,nom_pelicula AS Pelicula,nom_socio AS Socio,num_telefonico AS Telefono,direccion AS Direccion,precio ,fecha FROM prestamo_actual
INNER JOIN pelicula 
ON prestamo_actual.id_pelicula_1 = pelicula.id_pelicula
INNER JOIN socio 
ON prestamo_actual.id_socio_1 = socio.id_socio;

/*listo*/
SELECT id_prestamo_finalizado AS Codigo,id_pelicula_2 AS CodigoPelicula,id_socio_2 AS CodigoSocio,nom_pelicula AS Pelicula,nom_socio AS Socio,num_telefonico AS Telefono,direccion AS Direccion,fecha FROM prestamo_finalizado
INNER JOIN pelicula 
ON prestamo_finalizado.id_pelicula_2 = pelicula.id_pelicula
INNER JOIN socio 
ON prestamo_finalizado.id_socio_2 = socio.id_socio;


