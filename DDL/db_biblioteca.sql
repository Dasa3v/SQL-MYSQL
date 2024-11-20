CREATE DATABASE IF NO EXISTS db_biblioteca;
USE db_biblioteca;

CREATE TABLE IF NO EXISTS autores (
    idAutor INT PRIMARY KEY, AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    nacionalidad VARCHAR(50)
);

CREATE TABLE IF NO EXISTS libros (
    idLibro INT PRIMARY KEY, AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    fechaPublicacion DATE,
    precio DECIMAL(8,2) NOT NULL,
    idAutor INT,
    FOREIGN KEY (idAutor) REFERENCES Autores (idAutor)
);

