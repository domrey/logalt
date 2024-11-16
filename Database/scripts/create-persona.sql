USE pmxlog_db;

CREATE TABLE IF NOT EXISTS PersonaTbl (
	Id INT UNIQUE NOT NULL COMMENT 'Llave principal del registro',
	Tipo ENUM('Empleado', 'Externo') NOT NULL DEFAULT 'Empleado' COMMENT 'Tipo de persona',
	Nombre VARCHAR(50) NOT NULL COMMENT 'Nombre(s) de la persona',
	Paterno VARCHAR(50) NOT NULL COMMENT 'Apellido paterno de la persona',
	Materno VARCHAR(50) COMMENT 'Apellido materno de la persona',
	Apodo VARCHAR(30),
	NombreCorto VARCHAR(30),
	NombreCompleto VARCHAR(150) COMMENT 'Nombre completo en mayúsculas',
	NombrePropio VARCHAR(150),
	CURP CHAR(18),
	RFC CHAR(13),
	Genero ENUM('Hombre', 'Mujer'),
	FechaNac DATE COMMENT 'Fecha de nacimiento',
	EntidadNac VARCHAR(60) COMMENT 'Entidad de nacimiento',
	Foto BLOB COMMENT 'Foto principal de la persona',
	Status ENUM('Activo', 'Inactivo') NOT NULL DEFAULT 'Activo' COMMENT 'Estado actual de la persona',
	Depto VARCHAR(80) 'Clave del departamento relacionado a la persona. 16100 para vincular con Logística',
	Dato VARCHAR(80),
	Eliminado BOOLEAN NOT NULL DEFAULT 0,
	Creado TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	Modificado TIMESTAMP NOT NULL DEFAULT NOW(),

	/* LLAVES */
	PRIMARY KEY (Id)
) Engine=InnoDB
DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci
COMMENT='Tabla de personas';

