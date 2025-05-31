---Lo primero que hice es crear mi base de datos

CREATE DATABASE IF NOT EXISTS AdopcionMascotasDB;
USE adopcionmascotasdb;

---Cree las siguientes tablas

-- Tabla Empleados

CREATE TABLE Empleados (
    id_empleado INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    cargo VARCHAR(50),
    fecha_contratacion DATE,
    telefono VARCHAR(15),
    email VARCHAR(100) UNIQUE
);

-- Tabla Adoptantes

CREATE TABLE Adoptantes (
    id_adoptante INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    direccion VARCHAR(200),
    telefono VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    fecha_registro DATE
);

-- Tabla Mascotas

CREATE TABLE Mascotas (
    id_mascota INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    raza VARCHAR(50),
    edad INT,
    estado_salud VARCHAR(100), 
    estado_adopcion VARCHAR(50), 
    fecha_rescate DATE,
    descripcion TEXT
);

-- Tabla Adopciones

CREATE TABLE Adopciones (
    id_adopcion INT PRIMARY KEY AUTO_INCREMENT,
    id_mascota INT NOT NULL,
    id_adoptante INT NOT NULL,
    id_empleado INT NOT NULL,
    fecha_adopcion DATE NOT NULL,
    condiciones_especiales TEXT,
    FOREIGN KEY (id_mascota) REFERENCES Mascotas(id_mascota),
    FOREIGN KEY (id_adoptante) REFERENCES Adoptantes(id_adoptante),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
);

-- Tabla Controles_PostAdopcion

CREATE TABLE Controles_PostAdopcion (
    id_control INT PRIMARY KEY AUTO_INCREMENT,
    id_adopcion INT NOT NULL,
    id_empleado INT NOT NULL,
    fecha_control DATE NOT NULL,
    observaciones TEXT,
    estado_mascota_post VARCHAR(100), 
    seguimiento_exitoso BOOLEAN,
    FOREIGN KEY (id_adopcion) REFERENCES Adopciones(id_adopcion),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
);

