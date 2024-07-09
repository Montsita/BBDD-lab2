DROP DATABASE IF EXISTS supermercado;
CREATE DATABASE supermercado;
use supermercado;

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR (255),
    direccion VARCHAR (255),
    telefono VARCHAR (20),
    email VARCHAR (255)
);

INSERT INTO Clientes (id_cliente, nombre, direccion, telefono, email) VALUES
(1, 'Juan Pérez', 'Calle Principal 123', '123-456-7890', 'juan.perez@example.com'),
(2, 'María López', 'Avenida Libertad 456', '987-654-3210', 'maria.lopez@example.com'),
(3, 'Pedro García', 'Calle Sur 789', '456-789-0123', 'pedro.garcia@example.com'),
(4, 'Ana Martínez', 'Calle Este 567', '321-654-0987', 'ana.martinez@example.com'),
(5, 'Luisa Torres', 'Avenida Central 789', '789-012-3456', 'luisa.torres@example.com'),
(6, 'Carlos Ruiz', 'Calle Norte 345', '210-987-6543', 'carlos.ruiz@example.com'),
(7, 'Sofía Rodríguez', 'Avenida Oeste 890', '543-210-9876', 'sofia.rodriguez@example.com'),
(8, 'Javier Gómez', 'Calle Este 789', '012-345-6789', 'javier.gomez@example.com'),
(9, 'Laura Sánchez', 'Avenida Libertad 678', '876-543-2109', 'laura.sanchez@example.com'),
(10, 'Diego Martín', 'Calle Principal 567', '234-567-8901', 'diego.martin@example.com');

CREATE TABLE Proveedores (
    id_proveedor INT PRIMARY KEY,
    nombre_proveedor VARCHAR (255),
    telefono VARCHAR (20),
    email VARCHAR (255)
);

INSERT INTO Proveedores (id_proveedor, nombre_proveedor, telefono, email) VALUES
(1, 'Proveedor A', '123-456-7890', 'contacto@proveedora.com'),
(2, 'Proveedor B', '987-654-3210', 'contacto@proveedorb.com'),
(3, 'Proveedor C', '456-789-0123', 'contacto@proveedorc.com'),
(4, 'Proveedor D', '321-654-0987', 'contacto@proveedord.com'),
(5, 'Proveedor E', '789-012-3456', 'contacto@proveedore.com'),
(6, 'Proveedor F', '210-987-6543', 'contacto@proveedorf.com'),
(7, 'Proveedor G', '543-210-9876', 'contacto@proveedorg.com'),
(8, 'Proveedor H', '012-345-6789', 'contacto@proveedorh.com'),
(9, 'Proveedor I', '876-543-2109', 'contacto@proveedori.com'),
(10, 'Proveedor J', '234-567-8901', 'contacto@proveedorj.com');

CREATE TABLE Productos (
    id_producto INT PRIMARY KEY,
    nombre_producto VARCHAR (255),
    precio float,
    id_proveedor INT,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)
);


INSERT INTO Productos (id_producto, nombre_producto, precio, id_proveedor) VALUES
(1, 'Producto 1', 10.99, 1),
(2, 'Producto 2', 15.99, 2),
(3, 'Producto 3', 8.50, 3),
(4, 'Producto 4', 12.75, 4),
(5, 'Producto 5', 5.20, 5),
(6, 'Producto 6', 22.30, 6),
(7, 'Producto 7', 7.80, 7),
(8, 'Producto 8', 18.40, 8),
(9, 'Producto 9', 3.99, 9),
(10, 'Producto 10', 6.45, 10);
