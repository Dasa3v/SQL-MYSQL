CREATE DATABASE IF NO EXISTS db_colegio;
USE db_colegio;

CREATE TABLE IF NO EXISTS estudiantes (
    idEstudiante INT PRIMARY KEY, AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    grado VARCHAR(20) NOT NULL
);

CREATE TABLE IF NO EXISTS profesores (
    idProfesor INT PRIMARY KEY, AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    especialidad VARCHAR(50) NULL
);

CREATE TABLE IF NO EXISTS asignaturas (
    idAsignatura INT PRIMARY KEY, AUTO_INCREMENT,
    idProfesor INT FOREIGN KEY (idProfesor) REFERENCES Profesores (idProfesor),
    nombreAsignatura VARCHAR(100) NOT NULL
);