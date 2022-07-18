create schema `zalando`;
USE zalando;
create table `Tabla Zapatillas` (
	id_zapatillas int auto_increment not null,
    modelo varchar (45) not null,
    color varchar (45) not null,
    primary key (id_zapatillas)
    );
create table `Tabla Clientes` (
	id_cliente int auto_increment not null,
    nombre varchar (45) not null,
    numero_telefono int (9) not null,
    email varchar (45) not null,
    direccion varchar (45) not null,
    ciudad varchar (45) default null,
    provincia varchar (45) not null,
    pais varchar (45) not null,
    codigo_postal varchar (45) not null,
    primary key (id_cliente)
    );
create table `Tabla Empleados` (
	id_empleado int auto_increment not null,
    nombre VARCHAR (45) NOT NULL,
    tienda VARCHAR (45) NOT NULL,
    salario INT DEFAULT NULL,
    fecha_incorporacion DATE NOT NULL,
    PRIMARY KEY (id_empleado)
    );
create table `Tabla Facturas` (
	id_factura INT AUTO_INCREMENT NOT NULL,
	numero_factura VARCHAR (45) NOT NULL,
    fecha DATE NOT NULL, 
    id_zapatillas INT NOT NULL,
    id_empleado INT NOT NULL,
    id_cliente INT NOT NULL,
    PRIMARY KEY (id_factura),
	CONSTRAINT `fk_Facturas_fk_Zapatillas`
		FOREIGN KEY (`id_zapatillas`)
		REFERENCES `Tabla Zapatillas` (id_zapatillas),
	CONSTRAINT `fk_Facturas_fk_Empleados`
		FOREIGN KEY (`id_empleado`)
		REFERENCES `Tabla Empleados` (id_empleado),
	CONSTRAINT `fk_Facturas_fk_Clientes`
			FOREIGN KEY (`id_cliente`)
			REFERENCES `Tabla Clientes` (id_cliente)
	);