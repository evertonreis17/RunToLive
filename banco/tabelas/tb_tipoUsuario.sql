USE RunToLive
GO

IF EXISTS (SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'[TipoUsuario]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
	DROP TABLE [TipoUsuario]
END
GO
--------------------------------------------------------------------------
-- Cria a tabela
--------------------------------------------------------------------------
CREATE TABLE TipoUsuario (
	TipoUsuarioID TINYINT NOT NULL,
	Titulo VARCHAR(15) NOT NULL
)
GO
--------------------------------------------------------------------------
-- Cria a PK da tabela caso ela não exista
--------------------------------------------------------------------------
IF NOT EXISTS (SELECT * FROM SYSOBJECTS WHERE name = 'pk_tipoUsuario' AND xtype = 'PK')
BEGIN
	ALTER TABLE [TipoUsuario]
	ADD CONSTRAINT pk_tipoUsuario PRIMARY KEY (TipoUsuarioID)
END
GO

INSERT INTO TipoUsuario (TipoUsuarioID, Titulo)
VALUES (1, 'Administrador'), (2, 'Professor'), (3, 'Aluno')