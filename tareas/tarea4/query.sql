CREATE USER "TAREA" WITH
	LOGIN
	SUPERUSER
	INHERIT
	NOREPLICATION
	CONNECTION LIMIT -1
	PASSWORD 'TAREA';
	
--ejecutar primero el usuario
CREATE DATABASE "TAREA"
    WITH 
    OWNER = "TAREA";
--ejecutar luego la base

--abrir el contexto de la base TAREA y ejecutar materia
CREATE TABLE Materia(
  	idMateria SERIAL PRIMARY KEY,
  	nombre VARCHAR(150) ,
	 profesor VARCHAR(150) ,
	 ayudante VARCHAR(150) ,
	 salon VARCHAR(150) 
)