USE RunToLive
GO

IF EXISTS (SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'[Login]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
	DROP TABLE [Login]
END
GO
--------------------------------------------------------------------------
-- Cria a tabela
--------------------------------------------------------------------------
CREATE TABLE [Login] (
	-- Definir Colunas
	LoginID			UNIQUEIDENTIFIER NOT NULL,
	TipoUsuarioID	TINYINT NOT NULL,
	Email			VARCHAR(40) UNIQUE NOT NULL,
	Senha			VARCHAR(16) NOT NULL
)
GO
--------------------------------------------------------------------------
-- Cria a PK da tabela caso ela não exista
--------------------------------------------------------------------------
IF NOT EXISTS (SELECT * FROM SYSOBJECTS WHERE name = 'pk_login' AND xtype = 'PK')
BEGIN
	ALTER TABLE [Login]
	ADD CONSTRAINT pk_login PRIMARY KEY (LoginID)
END
GO