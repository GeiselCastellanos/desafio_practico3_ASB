DELIMITER //

CREATE PROCEDURE RegistrarNuevaAdopcion (
    IN p_id_mascota INT,
    IN p_id_adoptante INT,
    IN p_id_empleado INT,
    IN p_fecha_adopcion DATE,
    IN p_condiciones_especiales TEXT
)
BEGIN
    -- Insertarmos la nueva adopción
    INSERT INTO Adopciones (id_mascota, id_adoptante, id_empleado, fecha_adopcion, condiciones_especiales)
    VALUES (p_id_mascota, p_id_adoptante, p_id_empleado, p_fecha_adopcion, p_condiciones_especiales);

    -- Actualizamos el estado de la mascota a 'Adoptada'
    UPDATE Mascotas
    SET estado_adopcion = 'Adoptada'
    WHERE id_mascota = p_id_mascota;

END //

DELIMITER ;

-- Para llamar al procedimiento:
-- Primero,nos aseguramos de tener una mascota disponible. Por ejemplo, la mascota con ID 1 ('Max') está disponible.
-- Y un adoptante y un empleado. Por ejemplo, el adoptante con ID 5 ('Andrés Ruiz') y el empleado con ID 3 ('Sofía Rodríguez').
CALL RegistrarNuevaAdopcion(1, 5, 3, '2024-05-27', 'Compromiso de visitas mensuales al veterinario.');

-- Verificamos el estado de la mascota después de la adopción:
SELECT id_mascota, nombre, estado_adopcion FROM Mascotas WHERE id_mascota = 1;

-- Aca verificamos la nueva adopcion
SELECT * FROM Adopciones WHERE id_mascota = 1;