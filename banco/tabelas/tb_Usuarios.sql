USE RunToLive
GO

IF EXISTS (SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'[Usuarios]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
	DROP TABLE [Usuarios]
END
GO
--------------------------------------------------------------------------
-- Cria a tabela de Usuarios
--------------------------------------------------------------------------
CREATE TABLE Usuarios (

	UsuarioID UNIQUEIDENTIFIER NOT NULL,
	Nome VARCHAR(80) NOT NULL,
    Sexo CHAR(1) NOT NULL,
    Nascimento DATE NOT NULL, 
    CampoAtuacao VARCHAR(50) DEFAULT NULL,    
	RG VARCHAR(9) NOT NULL,
	CPF VARCHAR(11) NOT NULL,
	LoginID UNIQUEIDENTIFIER NOT NULL,	
	Telefone VARCHAR(11) DEFAULT NULL,
	Celular VARCHAR(11) DEFAULT NULL,
	Cep VARCHAR(9) NOT NULL,
	Naturalidade VARCHAR(50) NOT NULL,
	Nacionalidade VARCHAR(50) NOT NULL,
	Profissao VARCHAR(50) DEFAULT NULL,
	Foto VARCHAR(255) DEFAULT NULL,
	ExameMedico VARCHAR(255) DEFAULT NULL,
	Removido BIT DEFAULT 0
)
GO
--------------------------------------------------------------------------
-- Cria a PK da tabela caso ela não exista
--------------------------------------------------------------------------
IF NOT EXISTS (SELECT * FROM SYSOBJECTS WHERE name = 'pk_usuarioId' AND xtype = 'PK')
BEGIN
	ALTER TABLE [Usuarios]
	ADD CONSTRAINT pk_UsuarioId PRIMARY KEY (UsuarioID)
END
GO
--------------------------------------------------------------------------
-- Adiciona as Foreign Keys da tabela caso elas não existam
--------------------------------------------------------------------------
IF NOT EXISTS (SELECT * FROM SYSOBJECTS WHERE name = 'fk_usuariosRefLogin' AND xtype = 'F')
BEGIN
	ALTER TABLE [Usuarios]
	ADD CONSTRAINT fk_usuariosRefLogin FOREIGN KEY (LoginID)
	REFERENCES [Login] (LoginID) 
END
GO