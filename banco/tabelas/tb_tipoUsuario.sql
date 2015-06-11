USE DB_RUNTOLIVE
GO

IF EXISTS (SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'[tb_TipoUsuario]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
	DROP TABLE [tb_TipoUsuario]
END
GO
--------------------------------------------------------------------------
-- Cria a tabela
--------------------------------------------------------------------------
CREATE TABLE tb_TipoUsuario (
	cd_TipoUsuarioID INT NOT NULL,
	ds_Titulo VARCHAR(20) NOT NULL
)
GO
--------------------------------------------------------------------------
-- Cria a PK da tabela caso ela não exista
--------------------------------------------------------------------------
IF NOT EXISTS (SELECT * FROM SYSOBJECTS WHERE name = 'pk_tipoUsuario' AND xtype = 'PK')
BEGIN
	ALTER TABLE [tb_TipoUsuario]
	ADD CONSTRAINT pk_tipoUsuario PRIMARY KEY (cd_TipoUsuarioID)
END
GO