-- 1. Forzar el uso de tu base de datos real
USE tienda_db;

-- 2. Limpiar registros anteriores para evitar errores de llaves duplicadas
DELETE FROM despacho;
DELETE FROM venta;

-- 3. Insertar Órdenes de Venta de prueba
-- Columnas: id_venta, despacho_generado, direccion_compra, fecha_compra, valor_compra
-- Nota: b'1' es True (Despacho creado) y b'0' es False (Sin despacho aún)
INSERT INTO venta (id_venta, despacho_generado, direccion_compra, fecha_compra, valor_compra) VALUES 
(1, b'1', 'Av. San Bernardo 1234, Santiago', CURDATE(), 899990),
(2, b'0', 'Calle Arturo Prat 567, San Bernardo', CURDATE(), 59990);

-- 4. Insertar el Despacho asociado a la Venta 1 (Para conectar ambos módulos)
-- Columnas: id_despacho, despachado, direccion_compra, fecha_despacho, id_compra, intento, patente_camion, valor_compra
-- Nota: id_compra apunta al id_venta (1) para que se enlacen en el sistema
INSERT INTO despacho (id_despacho, despachado, direccion_compra, fecha_despacho, id_compra, intento, patente_camion, valor_compra) VALUES 
(1, b'0', 'Av. San Bernardo 1234, Santiago', CURDATE(), 1, 1, 'HG-DF-88', 899990);