CREATE DATABASE IF NO EXISTS db_empresa;
USE db_empresa;

CREATE TABLE IF NO EXISTS inventarios (
    idInventario INT PRIMARY KEY, AUTO_INCREMENT,
    codigoProducto VARCHAR(50) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    fechaFabricacion DATE,
    fechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    cantidadProducto INT DEFAULT,
    precioCompra DECIMAL(10,2) NOT NULL,
    precioVenta DECIMAL(10,2) NOT NULL


);