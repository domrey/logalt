USE pmxlog_db;

CREATE TABLE IF NOT EXISTS PGeneralTbl (
	PersonaId INT UNIQUE NOT NULL,
	CURP CHAR(18) NOT NULL,
	RFC VARCHAR(13),
	Genero ENUM('Hombre', 'Mujer'),
	FechaNac DATE,
	EntidadNac VARCHAR(60),
	Eliminado BOOLEAN NOT NULL DEFAULT 0,
	Modificado TIMESTAMP NOT NULL DEFAULT NOW(),

	/* LLAVES */
	PRIMARY KEY (PersonaId)
) Engine=InnoDB
DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci
COMMENT='Tabla de datos generales de una persona'
