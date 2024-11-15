CREATE DATABASE IF NO EXISTS db_Inventario;
USE db_Inventario;

CREATE TABLE IF NO EXISTS proveedores (
    idProveedor INT PRIMARY KEY, AUTO_INCREMENT,
    nombreEmpresa VARCHAR(100) NOT NULL,
    nombreContacto VARCHAR(150) NOT NULL,
    telefono VARCHAR(20) NULL,
    direccion VARCHAR(150) NULL,
    pais VARCHAR(500) NULL
);

