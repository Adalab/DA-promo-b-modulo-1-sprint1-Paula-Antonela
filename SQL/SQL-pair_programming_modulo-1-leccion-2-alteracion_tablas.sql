ALTER TABLE `Tabla Zapatillas`
ADD COLUMN marca VARCHAR (45) NOT NULL,
ADD COLUMN talla INT NOT NULL;

ALTER TABLE `Tabla Empleados`
MODIFY COLUMN salario FLOAT;

ALTER TABLE `Tabla Clientes`
DROP COLUMN pais;

ALTER TABLE `Tabla Clientes`
MODIFY COLUMN codigo_postal INT (5);

ALTER TABLE `Tabla Facturas`
ADD COLUMN total_factura FLOAT;
