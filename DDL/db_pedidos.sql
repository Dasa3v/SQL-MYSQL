CREATE DATABASE IF NO EXISTS db_pedidos;
USE db_pedidos;

CREATE TABLE IF NO EXISTS clientes (
    idCliente INT PRIMARY KEY, AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NO EXISTS productos (
    idProducto INT PRIMARY KEY, AUTO_INCREMENT,
    nombreProducto VARCHAR(100) NOT NULL,
    precio VARCHAR(100) NOT NULL
);

CREATE TABLE IF NO EXISTS ventas (
    idventas INT PRIMARY KEY, AUTO_INCREMENT,
    idClientes INT FOREIGN KEY (idCliente) REFERENCES Clientes (idCliente),
    idProducto INT FOREIGN KEY (idProducto) REFERENCES Productos (idProducto),
    cantidad INT NOT NULL,
    total/venta DECIMAL(10,2) NOT NULL
);

