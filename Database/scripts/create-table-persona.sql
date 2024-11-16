USE pmxlog_db;

CREATE TABLE IF NOT EXISTS PersonaTbl (
	Id INT UNIQUE NOT NULL,
	Tipo ENUM('Empleado', 'Externo') NOT NULL DEFAULT 'Empleado',
	Nombre VARCHAR(50) NOT NULL,
	Paterno VARCHAR(50) NOT NULL,
	Materno VARCHAR(50),
	Apodo VARCHAR(30),
	NombreCorto VARCHAR(30),
	NombreCompleto VARCHAR(150),
	NombrePropio VARCHAR(150),
	Foto BLOB,
	Status ENUM('Activo', 'Inactivo') NOT NULL DEFAULT 'Activo',
	Depto VARCHAR(80),
	Dato VARCHAR(80),
	Eliminado BOOLEAN NOT NULL DEFAULT 0,
	Creado TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	Modificado TIMESTAMP NOT NULL DEFAULT NOW(),

	/* LLAVES */
	PRIMARY KEY (Id)
) Engine=InnoDB;
	

