/*CALLS*/

/*De Consulta:*/
CALL sp_mostrar_peliculas;
CALL sp_mostrar_socios;
CALL sp_mostrar_renta_actual;
CALL sp_mostrar_renta_final;

/*De Insercion*/

/* datos de peliculas */
CALL sp_insertar_datos_peliculas;
/*datos de peliculas individuales*/
CALL sp_insertar_nacionalidad();
CALL sp_insertar_director();
CALL sp_insertar_genero();
CALL sp_insertar_actor();
/*socios*/
CALL sp_insertar_datos_socio( );
/*peliculas*/
CALL sp_insertar_peliculas();
/*renta actual */
CALL sp_insertar_renta_actual();
/*renta final*/
CALL sp_insertar_renta_final();




/*UPDATES*/
/*pelicula*/
CALL sp_update_pelicula();
/*socio*/
CALL sp_update_socio();




/*DELETE*/
CALL sp_delete_pelicula(11);
CALL sp_delete_socio();
CALL sp_delete_datos_peliculas();





