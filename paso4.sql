CREATE VIEW Vista_AdopcionesDetalle AS
SELECT
    AD.id_adopcion,
    AD.fecha_adopcion,
    A.nombre AS NombreAdoptante,
    A.apellido AS ApellidoAdoptante,
    A.telefono AS TelefonoAdoptante,
    A.email AS EmailAdoptante,
    M.nombre AS NombreMascota,
    M.especie AS EspecieMascota,
    M.raza AS RazaMascota,
    M.edad AS EdadMascota,
    M.estado_salud AS EstadoSaludMascota,
    E.nombre AS NombreEmpleado,
    E.apellido AS ApellidoEmpleado
FROM Adopciones AS AD
JOIN Adoptantes AS A ON AD.id_adoptante = A.id_adoptante
JOIN Mascotas AS M ON AD.id_mascota = M.id_mascota
JOIN Empleados AS E ON AD.id_empleado = E.id_empleado;

-- Para consultar la vista:
SELECT * FROM Vista_AdopcionesDetalle;