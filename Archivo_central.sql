CREATE DATABASE Peliculas; 

USE Peliculas; 

/* TABLA PREMIOS*/

DROP TABLE IF EXISTS premio; 

CREATE TABLE premio (
id_premio int AUTO_INCREMENT NOT NULL,
nom_premio VARCHAR(45),
CONSTRAINT premio_pk PRIMARY KEY (id_premio)
);

/*TABLA NACIONALIDAD*/

DROP TABLE IF EXISTS nacionalidad; 

CREATE TABLE nacionalidad (
id_nac int AUTO_INCREMENT NOT NULL,
nom_pais VARCHAR(45),
CONSTRAINT nacionalidad_pk PRIMARY KEY (id_nac)
);

/*DIRECTORES*/


DROP TABLE IF EXISTS director; 

CREATE TABLE director (
id_director int AUTO_INCREMENT NOT NULL,
nom_director VARCHAR(45),
CONSTRAINT director_pk PRIMARY KEY (id_director)
);

/*GENERO*/

DROP TABLE IF EXISTS genero; 

CREATE TABLE genero (
id_genero int AUTO_INCREMENT NOT NULL,
nom_genero VARCHAR(45),
CONSTRAINT genero_pk PRIMARY KEY (id_genero)
);

/*ACTORES*/

DROP TABLE IF EXISTS actor; 

CREATE TABLE actor (
id_actor int AUTO_INCREMENT NOT NULL,
nom_actor VARCHAR(45),
 CONSTRAINT actor_pk PRIMARY KEY (id_actor)
);

/*CLASIFICACION*/

DROP TABLE IF EXISTS clasificacion; 

CREATE TABLE clasificacion (
id_clasificacion int AUTO_INCREMENT NOT NULL,
nom_clasificacion VARCHAR(45),
CONSTRAINT clasificacion_pk PRIMARY KEY (id_clasificacion)
);


/*PELICULA*/

DROP TABLE IF EXISTS pelicula; 

CREATE TABLE pelicula (
id_pelicula INT AUTO_INCREMENT NOT NULL,
nom_pelicula VARCHAR(45),
id_premio_1 int,
id_nac_1 int,
id_director_1 int,
id_genero_1 int,
id_actor_1 int,
id_clasificacion_1 int,
PRIMARY KEY (id_pelicula),
FOREIGN KEY (id_premio_1) REFERENCES premio(id_premio),
FOREIGN KEY (id_nac_1) REFERENCES nacionalidad(id_nac),
FOREIGN KEY (id_genero_1) REFERENCES genero(id_genero),
FOREIGN KEY (id_actor_1) REFERENCES actor(id_actor),
FOREIGN KEY (id_clasificacion_1) REFERENCES clasificacion(id_clasificacion),
FOREIGN KEY (id_director_1) REFERENCES director(id_director)
);

/*SOCIO*/

DROP TABLE IF EXISTS socio; 

CREATE TABLE socio (
id_socio int AUTO_INCREMENT NOT NULL,
nom_socio VARCHAR(45),
num_telefonico BIGINT, 
direccion VARCHAR(45),
 PRIMARY KEY(id_socio)
);

/*RESULTANTES */

/*PRESTAMO ACTUAL */


DROP TABLE IF EXISTS prestamo_actual; 

CREATE TABLE prestamo_actual (
id_prestamo_actual int AUTO_INCREMENT NOT NULL,
id_pelicula_1 int,
id_socio_1 int, 
fecha DATETIME,
precio DOUBLE,
PRIMARY KEY (id_prestamo_actual),
FOREIGN KEY (id_pelicula_1) REFERENCES pelicula(id_pelicula),
FOREIGN KEY (id_socio_1) REFERENCES socio(id_socio)
);

/*PRESTAMO FINALIZADO*/


DROP TABLE IF EXISTS prestamo_finalizado; 

CREATE TABLE prestamo_finalizado (
id_prestamo_finalizado int AUTO_INCREMENT NOT NULL,
id_pelicula_2 int,
id_socio_2 int, 
fecha DATETIME,
PRIMARY KEY (id_prestamo_finalizado),
FOREIGN KEY (id_pelicula_2) REFERENCES pelicula(id_pelicula),
FOREIGN KEY (id_socio_2) REFERENCES socio(id_socio)
);






