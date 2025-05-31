---Listar mascotas disponibles filtradas por especie, edad o estado de salud


-- Mascotas disponibles
SELECT *
FROM Mascotas
WHERE estado_adopcion = 'Disponible';

-- Mascotas disponibles filtradas por especie (ej: 'Perro')
SELECT *
FROM Mascotas
WHERE estado_adopcion = 'Disponible' AND especie = 'Perro';

-- Mascotas disponibles filtradas por edad (ej: menores de 3 años)
SELECT *
FROM Mascotas
WHERE estado_adopcion = 'Disponible' AND edad < 3;

-- Mascotas disponibles filtradas por estado de salud (ej: 'Sano')
SELECT *
FROM Mascotas
WHERE estado_adopcion = 'Disponible' AND estado_salud = 'Sano';

-- Combinando filtros (ej: Perros disponibles, sanos y menores de 5 años)
SELECT *
FROM Mascotas
WHERE estado_adopcion = 'Disponible'
  AND especie = 'Perro'
  AND estado_salud = 'Sano'
  AND edad < 5;



---Mostrar historial de adopciones por adoptante


SELECT
    A.nombre AS NombreAdoptante,
    A.apellido AS ApellidoAdoptante,
    M.nombre AS NombreMascota,
    M.especie AS EspecieMascota,
    M.raza AS RazaMascota,
    AD.fecha_adopcion AS FechaAdopcion,
    E.nombre AS NombreEmpleado,
    E.apellido AS ApellidoEmpleado
FROM Adopciones AS AD
JOIN Adoptantes AS A ON AD.id_adoptante = A.id_adoptante
JOIN Mascotas AS M ON AD.id_mascota = M.id_mascota
JOIN Empleados AS E ON AD.id_empleado = E.id_empleado
WHERE A.id_adoptante = 1; 


---Consultar seguimientos post-adopcion realizados por empleado o por mascota


-- Seguimientos post-adopción por empleado 
SELECT
    E.nombre AS NombreEmpleado,
    E.apellido AS ApellidoEmpleado,
    M.nombre AS NombreMascota,
    M.especie AS EspecieMascota,
    C.fecha_control AS FechaControl,
    C.observaciones AS Observaciones,
    C.estado_mascota_post AS EstadoMascotaPost,
    C.seguimiento_exitoso AS SeguimientoExitoso
FROM Controles_PostAdopcion AS C
JOIN Empleados AS E ON C.id_empleado = E.id_empleado
JOIN Adopciones AS AD ON C.id_adopcion = AD.id_adopcion
JOIN Mascotas AS M ON AD.id_mascota = M.id_mascota
WHERE E.id_empleado = 1; 

-- Seguimientos post-adopción por mascota 
SELECT
    M.nombre AS NombreMascota,
    M.especie AS EspecieMascota,
    A.nombre AS NombreAdoptante,
    A.apellido AS ApellidoAdoptante,
    C.fecha_control AS FechaControl,
    C.observaciones AS Observaciones,
    C.estado_mascota_post AS EstadoMascotaPost,
    C.seguimiento_exitoso AS SeguimientoExitoso,
    E.nombre AS NombreEmpleadoQueRealizoControl
FROM Controles_PostAdopcion AS C
JOIN Adopciones AS AD ON C.id_adopcion = AD.id_adopcion
JOIN Mascotas AS M ON AD.id_mascota = M.id_mascota
JOIN Adoptantes AS A ON AD.id_adoptante = A.id_adoptante
JOIN Empleados AS E ON C.id_empleado = E.id_empleado
WHERE M.id_mascota = 4;