-- 1. Forzar el uso de tu base de datos real
USE tienda_db;

-- 2. Limpiar registros anteriores para evitar conflictos de llaves primarias
DELETE FROM despacho;
DELETE FROM venta;

-- 3. INSERCIÓN DE VENTAS (Módulo de Ventas)
-- Columnas: id_venta, despacho_generado, direccion_compra, fecha_compra, valor_compra
-- Nota: b'1' significa que ya se le notificó a despachos, b'0' que está retenido en ventas.
INSERT INTO venta (id_venta, despacho_generado, direccion_compra, fecha_compra, valor_compra) VALUES 
(1, b'1', 'Av. San Bernardo 1234, San Bernardo', CURDATE(), 899990),
(2, b'0', 'Calle Arturo Prat 567, San Bernardo', CURDATE(), 59990),
(3, b'1', 'Av. Portales 3691 (Mallplaza Sur), San Bernardo', CURDATE(), 1450000),
(4, b'0', 'Camino Padre Hurtado 1200, San Bernardo', CURDATE(), 320000),
(5, b'1', 'Paseo San Bernardo 45, San Bernardo', CURDATE(), 15000);

-- 4. INSERCIÓN DE DESPACHOS (Módulo de Despachos)
-- Columnas: id_despacho, despachado, direccion_compra, fecha_despacho, id_compra, intento, patente_camion, valor_compra
-- Nota: id_compra debe coincidir con el id_venta que tiene despacho_generado en b'1'
INSERT INTO despacho (id_despacho, despachado, direccion_compra, fecha_despacho, id_compra, intento, patente_camion, valor_compra) VALUES 
(1, b'0', 'Av. San Bernardo 1234, San Bernardo', CURDATE(), 1, 1, 'HG-DF-88', 899990),
(2, b'1', 'Av. Portales 3691 (Mallplaza Sur), San Bernardo', CURDATE(), 3, 1, 'JK-RT-99', 1450000),
(3, b'0', 'Paseo San Bernardo 45, San Bernardo', CURDATE(), 5, 2, 'BB-CC-11', 15000);