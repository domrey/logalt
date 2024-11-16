USE pmxlogalt;

CREATE TABLE IF NOT EXISTS RhPuestoTbl (
	Nivel CHAR(2) NOT NULL COMMENT 'Cadena que representa el nivel del puesto',
	Familia CHAR(2) NOT NULL COMMENT 'Cadena que representa la familia del puesto',
	Grupo CHAR(2) NOT NULL COMMENT 'Cadena que representa el rupo de actividad del puesto',
	Descr VARCHAR(255) NOT NULL COMMENT 'Descripción del puesto de trabajo',
	Nombre VARCHAR(80) COMMENT 'Descripción corta del puesto',
	Regimen ENUM('Sindicalizado', 'Confianza') NOT NULL DEFAULT 'Sindicalizado' COMMENT 'Regimen del puesto',
	APartirDe DATE NOT NULL DEFAULT CURRENT_DATE COMMENT 'Fecha a partir de la cual es vigente el puesto',
	EsRelevante BOOLEAN NOT NULL DEFAULT 0 COMMENT 'Valor lógico que determina si se trata de un puesto relevante',
	EsCritico BOOLEAN NOT NULL DEFAULT 0 COMMENT 'Valor lógico que determina si es un puesto crítico',
	NivelNum TINYINT NOT NULL DEFAULT (Nivel) COMMENT 'Nivel del puesto en formato numérico',
	Creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	Id CHAR(8) NOT NULL DEFAULT (CONCAT(Nivel, '.', Familia, '.', Grupo)) COMMENT 'Llave del registro',
	
	CONSTRAINT PK_Puesto PRIMARY KEY (Nivel, Familia, Grupo)
)
ENGINE=InnoDb 
DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci 
COMMENT='Tabla de clasiificaciones de puestos de trabajo';






