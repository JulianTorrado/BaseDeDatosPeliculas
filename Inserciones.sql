/*premio*/

INSERT INTO premio (nom_premio)
VALUES("Oscar"),
	  ("Globo De Oro"),
      ("Directors Guild of America Award"),
      ("Screen Actors Guild Awards"),
      ("New York Film Critics Circle Awards");
      
INSERT INTO nacionalidad (nom_pais)
VALUES ("Colombia"),
	   ("Estados Unidos"),
       ("Mexico"),
       ("Korea"),
       ("Autralia"),
       ("Peru"),
       ("Francia"),
       ("Inglaterra"),
       ("Italia"),
       ("Brasil");
       
INSERT INTO director(nom_director)
VALUES("Andres"),
      ("Jhon"),
      ("Guillermo"),
      ("Steven"),
      ("George"),
      ("Min ho "),
      ("Scott"),
      ("Peter"),
      ("Stanley"),
      ("Miguel");
      
      
INSERT INTO genero(nom_genero)
VALUES ("Terror"),
	   ("Drama"),
       ("Comedia"),
       ("Accion"),
       ("Romance"),
       ("Infantil"),
       ("Aventura"),
       ("Suspenso"),
       ("Ciencia ficcion");
       

       
INSERT INTO actor(nom_actor)
VALUES("Angelina"),
       ("Tom"),
       ("Ricardo"),
       ("Richard"),
       ("Kim"),
       ("Gary"),
       ("Marlon"),
       ("jhon"),
       ("Daniel"),
       ("Jack");
       
       
INSERT INTO clasificacion(nom_clasificacion)
VALUES ("Para todo publico"),
	   ("Mayores de quince años"),
	   ("mayores de dieciocho");
       
       
/*PELICULAS*/
INSERT INTO pelicula(nom_pelicula,id_premio_1,id_nac_1,id_director_1,id_genero_1,id_actor_1,id_clasificacion_1)
VALUES ("IT",1,2,1,1,3,3),
	   ("Yo antes de ti",3,5,3,5,1,1),
       ("Tormenta",1,8,8,1,9,3),
       ("Monsters",3,5,3,6,7,1),
       ("Fuerza Elite",3,6,4,4,1,2),
       ("Amelie",2,3,7,9,2,2),
       ("Sueños de libertad",5,2,3,2,4,2),
       ("Tomb rider",1,2,8,7,5,1),
       ("Venganza",3,10,10,9,10,3),
       ("Divergente",4,3,1,4,5,2);
       
/*SOCIO */

INSERT INTO socio(nom_socio,num_telefonico,direccion)
VALUES("Andres","3025632012","cll 1 No. 20-56"),
      ("Carlos","3052105689","Av 5 No. 30-11"),
      ("Sandra","2728058956","cra 30 No. 50-150"),
      ("Diego","4561238256","cll 81 No. 121-50"),
      ("Zuleima","3694125874","Av 4 No. 21-28"),
      ("Hernan","3259874563","cra 32 No. 7-15"),
      ("German","3255236589","cra 15 No. 25-70"),
      ("Ariel","3597895646","cll 5 No. 10-8"),
      ("Bianca","3598962356","Av 8 No. 6-11"),
      ("Carla","3598962356","cra 9 No. 56-120");
       
       
/*PRESTAMO ACTUAL */

INSERT INTO prestamo_actual (id_pelicula_1,id_socio_1,fecha,precio)
VALUES ("4","1","2019-12-28 00:00:00","10000"),
	   ("1","2","2020-01-05 00:00:00","10000"),
	   ("5","8","2020-01-07 00:00:00","10000"),
	   ("7","5","2020-01-10 00:00:00","10000"),
	   ("3","9","2020-01-13 00:00:00","10000");
   
INSERT INTO prestamo_finalizado (id_pelicula_2,id_socio_2,fecha)
VALUES ("4","1","2020-01-08 00:00:00"),
	   ("1","2","2020-01-15 00:00:00");
	   
       
       
       
       
	
       
      
	
    
    