-- Asegurar que use la base de datos de tu tienda
USE innovatech_db;

-- Limpiar productos viejos para no duplicar en cada despliegue
DELETE FROM productos;

-- Insertar productos estrella de prueba
INSERT INTO productos (id, nombre, descripcion, precio, stock) VALUES 
(1, 'Notebook Gamer Innovatech', 'Procesador de última generación, 16GB RAM, 1TB SSD', 899990, 15),
(2, 'Monitor UltraWide 34"', 'Resolución QHD, 144Hz ideal para productividad y gaming', 349990, 8),
(3, 'Teclado Mecánico RGB', 'Switches red silenciosos, distribución en español', 59990, 30),
(4, 'Mouse Ergonómico Inalámbrico', 'Batería recargable, sensor de alta precisión', 29990, 50);