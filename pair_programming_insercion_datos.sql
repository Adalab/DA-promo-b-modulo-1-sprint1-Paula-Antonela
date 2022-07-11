#EJERCICIO 1 - Inserción de datos

INSERT INTO `Tabla Zapatillas` (modelo,color,marca,talla)
VALUES ('XQYUN','Negro','Nike',42),
		('UOPMN','Rosas','Nike',39),
        ('OPNYT','Verdes','Adidas',35);
INSERT INTO `Tabla Empleados` (nombre,tienda,salario,fecha_incorporacion)
VALUES ('Laura','Alcobendas',25987,'2010-09-03'),
		('Maria','Sevilla',NULL,'2001-04-11'),
        ('Esther','Oviedo',30165.98,'2000-11-29');
INSERT INTO `Tabla Clientes`(nombre,numero_telefono,email,direccion,ciudad,provincia,codigo_postal)
VALUES ('Monica','1234567289','monica@email.com','Calle Felicidad','Mostoles','Madrid','28176'),
		('Lorena','289345678','lorena@gmail.com','Calle Alegría','Barcelona','Barcelona','12346'),
        ('Carmen','298463759','carmen@email.com','Calle del Color','Vigo','Pontevedra','23456');
INSERT INTO `Tabla Facturas`(numero_factura,fecha,id_zapatillas,id_empleado,id_cliente,total_factura)
VALUES (123,'2001-12-11',1,2,1,54.98),
		(1234,'2005-05-23',1,1,3,89.91),
        (12345,'2015-09-18',2,3,3,76.23);
        
        
#EJERCICIO 2 - Actualización de datos

UPDATE `Tabla Zapatillas` 
SET color = 'Amarillo'
WHERE color = 'Rosas';

UPDATE `Tabla Empleados`
SET tienda = 'A Coruña'
WHERE tienda = 'Alcobendas';

UPDATE `Tabla Clientes`
SET numero_telefono = '123456728'
WHERE nombre = 'Monica';

UPDATE `Tabla Facturas`
SET total_factura = 89.91
WHERE id_factura = 2;
