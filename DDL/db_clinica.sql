CREATE DATABASE IF NO EXISTS db_clinica;
USE db_clinica;

CREATE TABLE IF NO EXISTS pacientes (
    idPaciente INT PRIMARY KEY, AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    fechaNacimiento DATE NULL
);

CREATE TABLE IF NO EXISTS doctores (
    idDoctor INT PRIMARY KEY, AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    especialidad VARCHAR(50) NOT NULL
);

CREATE TABLE IF NO EXISTS citas (
    idCitas INT PRIMARY KEY, AUTO_INCREMENT,
    idPaciente INT FOREIGN KEY (idPaciente) REFERENCES Pacientes (idPaciente),
    idDoctor INT FOREIGN KEY (idDoctor) REFERENCES Doctores (idDoctor),
    fechaCita DATETIME NOT NULL,
    motivo VARCHAR(200) NULL
);
