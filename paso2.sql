-- Inserción de Empleados 
INSERT INTO Empleados (nombre, apellido, cargo, fecha_contratacion, telefono, email) VALUES
('Ana', 'García', 'Coordinadora de Adopciones', '2020-01-15', '555-1111', 'ana.garcia@org.com'),
('Luis', 'Martínez', 'Veterinario', '2019-03-20', '555-2222', 'luis.martinez@org.com'),
('Sofía', 'Rodríguez', 'Asistente', '2021-06-01', '555-3333', 'sofia.rodriguez@org.com'),
('Carlos', 'Sánchez', 'Administrador', '2018-11-10', '555-4444', 'carlos.sanchez@org.com'),
('Marta', 'Pérez', 'Educadora Canina', '2022-02-28', '555-5555', 'marta.perez@org.com');

-- Inserción de Adoptantes 
INSERT INTO Adoptantes (nombre, apellido, direccion, telefono, email, fecha_registro) VALUES
('Juan', 'Díaz', 'Calle Falsa 123, Ciudad', '555-6666', 'juan.diaz@example.com', '2023-01-10'),
('María', 'Gómez', 'Avenida Siempreviva 742, Ciudad', '555-7777', 'maria.gomez@example.com', '2023-02-05'),
('Pedro', 'López', 'Plaza Mayor 1, Pueblo', '555-8888', 'pedro.lopez@example.com', '2023-03-15'),
('Laura', 'Fernández', 'Calle del Sol 45, Ciudad', '555-9999', 'laura.fernandez@example.com', '2023-04-20'),
('Andrés', 'Ruiz', 'Paseo de la Reforma 10, Ciudad', '555-1010', 'andres.ruiz@example.com', '2023-05-01'),
('Gabriela', 'Torres', 'Blvd. de los Héroes 200, Ciudad', '555-1122', 'gabriela.torres@example.com', '2023-06-11'),
('Ricardo', 'Vargas', 'Via Panamericana Km 5, Pueblo', '555-3344', 'ricardo.vargas@example.com', '2023-07-01'),
('Paula', 'Hernández', 'Residencial Las Flores #8, Ciudad', '555-5566', 'paula.hernandez@example.com', '2023-08-09'),
('Jorge', 'Silva', 'Urbanización El Bosque Lote 1, Ciudad', '555-7788', 'jorge.silva@example.com', '2023-09-18'),
('Patricia', 'Castro', 'Condominio Altavista Torre B, Ciudad', '555-9900', 'patricia.castro@example.com', '2023-10-25');

-- Inserción de Mascotas 
INSERT INTO Mascotas (nombre, especie, raza, edad, estado_salud, estado_adopcion, fecha_rescate, descripcion) VALUES
('Max', 'Perro', 'Labrador', 3, 'Sano', 'Disponible', '2023-01-01', 'Perro muy juguetón y amigable.'),
('Luna', 'Gato', 'Siamés', 1, 'Sano', 'Disponible', '2023-01-15', 'Gata cariñosa y tranquila.'),
('Rocky', 'Perro', 'Pastor Alemán', 5, 'En Tratamiento', 'Disponible', '2023-02-01', 'Necesita tratamiento para la cadera, pero con buen pronóstico.'),
('Mia', 'Gato', 'Común Europeo', 2, 'Sano', 'Adoptada', '2023-02-10', 'Adoptada por Juan Díaz.'),
('Coco', 'Perro', 'Poodle', 2, 'Sano', 'Disponible', '2023-03-05', 'Perro pequeño y activo.'),
('Simba', 'Gato', 'Persa', 4, 'Necesita Cuidados Especiales', 'Disponible', '2023-03-20', 'Requiere cepillado diario y revisión ocular.'),
('Duque', 'Perro', 'Golden Retriever', 6, 'Sano', 'Adoptada', '2023-04-01', 'Adoptado por María Gómez.'),
('Bella', 'Perro', 'Chihuahua', 1, 'Sano', 'Disponible', '2023-04-10', 'Perra muy pequeña, ideal para apartamentos.'),
('Tom', 'Gato', 'Angora', 3, 'Sano', 'Disponible', '2023-05-01', 'Gato elegante y reservado.'),
('Zeus', 'Perro', 'Rottweiler', 4, 'Sano', 'Disponible', '2023-05-15', 'Perro leal y protector.'),
('Layla', 'Gato', 'Bengala', 2, 'Sano', 'Adoptada', '2023-06-01', 'Adoptada por Pedro López.'),
('Boby', 'Perro', 'Beagle', 3, 'Sano', 'Disponible', '2023-06-10', 'Perro de caza amigable.'),
('Pelusa', 'Gato', 'Maine Coon', 5, 'Sano', 'Disponible', '2023-07-01', 'Gato grande y peludo.'),
('Spirit', 'Caballo', 'Pura Raza Española', 8, 'Sano', 'Disponible', '2023-07-15', 'Caballo majestuoso y noble.'),
('Fenix', 'Pájaro', 'Loro', 2, 'Sano', 'Disponible', '2023-08-01', 'Loro parlanchín y sociable.'),
('Nemo', 'Pez', 'Payaso', 1, 'Sano', 'Disponible', '2023-08-10', 'Pez tropical de colores vivos.'),
('Rex', 'Perro', 'Doberman', 3, 'Sano', 'Adoptada', '2023-09-01', 'Adoptado por Laura Fernández.'),
('Kira', 'Gato', 'Ragdoll', 1, 'Sano', 'Disponible', '2023-09-15', 'Gata muy dulce y dócil.'),
('Thor', 'Perro', 'Gran Danés', 2, 'Sano', 'Disponible', '2023-10-01', 'Perro gigante, pero muy gentil.'),
('Copo', 'Conejo', 'Belier', 1, 'Sano', 'Disponible', '2023-10-10', 'Conejo dócil y fácil de cuidar.');

-- Inserción de Adopciones 
INSERT INTO Adopciones (id_mascota, id_adoptante, id_empleado, fecha_adopcion, condiciones_especiales) VALUES
(4, 1, 1, '2023-02-20', 'Seguimiento por un mes para asegurar adaptación.'), 
(6, 2, 1, '2023-04-10', 'Dieta especial y visitas al veterinario por enfermedad crónica.'), 
(7, 2, 1, '2023-04-10', 'Dieta especial y visitas al veterinario por enfermedad crónica.'), 
(11, 3, 2, '2023-06-15', NULL), 
(16, 4, 1, '2023-09-10', 'Seguimiento por la adaptacion a la nueva familia.'),
(17, 9, 3, '2023-11-05', 'Casa con amplio jardín y sin otras mascotas.'); 

-- Actualizar el estado de adopción de las mascotas que fueron adoptadas
UPDATE Mascotas SET estado_adopcion = 'Adoptada' WHERE id_mascota IN (4, 7, 11, 16, 17);

-- Inserción de Controles_PostAdopcion 
INSERT INTO Controles_PostAdopcion (id_adopcion, id_empleado, fecha_control, observaciones, estado_mascota_post, seguimiento_exitoso) VALUES
(1, 1, '2023-03-20', 'Mia se ha adaptado muy bien a su nuevo hogar. Juan es un excelente adoptante.', 'Bien', TRUE),
(1, 1, '2023-04-20', 'Mia sigue feliz y sana. Sin novedades.', 'Bien', TRUE),
(2, 2, '2023-05-10', 'Duque se recupera satisfactoriamente del tratamiento. María está muy comprometida.', 'Con Problemas Menores', TRUE),
(3, 2, '2023-07-15', 'Layla está perfectamente, Pedro nos informó de su buen comportamiento.', 'Bien', TRUE),
(4, 3, '2023-10-01', 'Rex está feliz, Laura ha seguido las indicaciones al pie de la letra.', 'Bien', TRUE),
(5, 3, '2023-12-05', 'Kira se está adaptando, pero se ha notado un poco tímida al principio.', 'Con Problemas Menores', TRUE);