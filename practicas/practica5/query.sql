CREATE USER "tecnologias" WITH
	LOGIN
	SUPERUSER
	INHERIT
	NOREPLICATION
	CONNECTION LIMIT -1
	PASSWORD 'tecnologias';
	
--ejecutar primero el usuario
CREATE DATABASE "PRACTICA"
    WITH 
    OWNER = "tecnologias";
--ejecutar luego la base

--abrir el contexto de la base TAREA y ejecutar materia
CREATE TABLE Usuario(
  	idMateria SERIAL PRIMARY KEY,
  	nombre VARCHAR(150) ,
	 profesor VARCHAR(150) ,
	 ayudante VARCHAR(150) ,
	 salon VARCHAR(150) 
)