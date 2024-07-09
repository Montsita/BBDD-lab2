DROP DATABASE IF EXISTS entreno;
CREATE DATABASE entreno;
use entreno;

CREATE TABLE Entrenadores (
    id_entrenador INT PRIMARY KEY,
    nombre VARCHAR(255),
    especialidad VARCHAR(255),
    edad INT,
    telefono VARCHAR(20),
    email VARCHAR(255)
);

INSERT INTO Entrenadores (id_entrenador, nombre, especialidad, edad, telefono, email) VALUES
(1, 'Juan Pérez', 'Entrenamiento de fuerza', 35, '123-456-7890', 'juan.perez@example.com'),
(2, 'María López', 'Entrenamiento cardiovascular', 30, '987-654-3210', 'maria.lopez@example.com'),
(3, 'Pedro García', 'Entrenamiento funcional', 38, '456-789-0123', 'pedro.garcia@example.com'),
(4, 'Ana Martínez', 'Yoga y pilates', 32, '321-654-0987', 'ana.martinez@example.com'),
(5, 'Luisa Torres', 'Entrenamiento de resistencia', 29, '789-012-3456', 'luisa.torres@example.com'),
(6, 'Carlos Ruiz', 'Entrenamiento deportivo integral', 40, '210-987-6543', 'carlos.ruiz@example.com'),
(7, 'Sofía Rodríguez', 'Entrenamiento de alta intensidad', 33, '543-210-9876', 'sofia.rodriguez@example.com'),
(8, 'Javier Gómez', 'Entrenamiento personalizado', 36, '012-345-6789', 'javier.gomez@example.com'),
(9, 'Laura Sánchez', 'Nutrición deportiva', 31, '876-543-2109', 'laura.sanchez@example.com'),
(10, 'Diego Martín', 'Entrenamiento de flexibilidad', 34, '234-567-8901', 'diego.martin@example.com');

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(255),
    direccion VARCHAR(255),
    telefono VARCHAR(20),
    email VARCHAR(255)
);

INSERT INTO Clientes (id_cliente, nombre, direccion, telefono, email) VALUES
(1, 'Roberto Sánchez', 'Calle Principal 123', '123-456-7890', 'roberto.sanchez@example.com'),
(2, 'Elena González', 'Avenida Libertad 456', '987-654-3210', 'elena.gonzalez@example.com'),
(3, 'Martín Gómez', 'Calle Sur 789', '456-789-0123', 'martin.gomez@example.com'),
(4, 'Julia Rodríguez', 'Calle Este 567', '321-654-0987', 'julia.rodriguez@example.com'),
(5, 'Lucía Martínez', 'Avenida Central 789', '789-012-3456', 'lucia.martinez@example.com'),
(6, 'Pablo López', 'Calle Norte 345', '210-987-6543', 'pablo.lopez@example.com'),
(7, 'Sara Fernández', 'Avenida Oeste 890', '543-210-9876', 'sara.fernandez@example.com'),
(8, 'Diego Pérez', 'Calle Este 789', '012-345-6789', 'diego.perez@example.com'),
(9, 'Marina Soto', 'Avenida Libertad 678', '876-543-2109', 'marina.soto@example.com'),
(10, 'Alejandro Ruiz', 'Calle Principal 567', '234-567-8901', 'alejandro.ruiz@example.com');

CREATE TABLE Entrenamientos (
    id_entrenamiento INT PRIMARY KEY,
    fecha DATE,
    duracion TIME,
    id_cliente INT,
    id_entrenador INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_entrenador) REFERENCES Entrenadores(id_entrenador)
);

INSERT INTO Entrenamientos (id_entrenamiento, fecha, duracion, id_cliente, id_entrenador) VALUES
(1, '2023-07-09', '01:00:00', 1, 1),
(2, '2023-07-10', '00:45:00', 2, 2),
(3, '2023-07-11', '01:15:00', 3, 3),
(4, '2023-07-12', '00:50:00', 4, 4),
(5, '2023-07-13', '01:30:00', 5, 5),
(6, '2023-07-14', '01:10:00', 6, 6),
(7, '2023-07-15', '00:55:00', 7, 7),
(8, '2023-07-16', '01:20:00', 8, 8),
(9, '2023-07-17', '01:05:00', 9, 9),
(10, '2023-07-18', '00:48:00', 10, 10);
