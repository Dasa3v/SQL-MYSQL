CREATE DATABASE IF NO EXISTS db_ferreterias;
USE db_ferreterias;

CREATE TABLE IF NO EXISTS cliente (
    idCliente INT PRIMARY KEY, AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NULL,
    email VARCHAR (100) NOT NULL UNIQUE,
    direccion VARCHAR(150) NULL,
    fechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

