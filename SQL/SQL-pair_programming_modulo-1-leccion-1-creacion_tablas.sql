create schema `zalando`;
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
    INDEX `fk_Zapatillas` (`id_zapatillas` ASC),
		CONSTRAINT `fk_Zapatillas`
			FOREIGN KEY (`id_zapatillas`)
			REFERENCES `Tabla Zapatillas` (id_zapatillas),
	INDEX `fk_Empleado` (`id_empleado` ASC),
		CONSTRAINT `fk_Empleados`
			FOREIGN KEY (`id_empleado`)
			REFERENCES `Tabla Empleados` (id_empleado),
	INDEX `fk_Clientes` (`id_cliente` ASC),
		CONSTRAINT `fk_Clientes`
			FOREIGN KEY (`id_cliente`)
			REFERENCES `Tabla Clientes` (id_cliente)
	);
    

