CREATE DATABASE IF NO EXISTS db_tienda;
USE db_tienda;

CREATE TABLE IF NO EXISTS empleados (
    idEmpleado INT PRIMARY KEY, AUTO_INCREMENT,
    nombreCompleto VARCHAR(50) NOT NULL,
    fechaNacimiento DATE NOT NULL,
    fechaContratacion DATE DEFAULT CURRENT_DATE,
    puesto VARCHAR(50) NOT NULL,
    salario DECIMAL (10,2) NOT NULL,
    cantidadProducto INT DEFAULT,
    email VARCHAR(100) UNIQUE
);