USE DB_RUNTOLIVE
GO

IF EXISTS (SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'[Endereco]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
	DROP TABLE [Endereco]
END
GO
--------------------------------------------------------------------------
-- Cria a tabela
--------------------------------------------------------------------------
CREATE TABLE Endereco (

  cd_EnderecoID		bigint IDENTITY(1,1),
  nm_Cidade			varchar(50) DEFAULT NULL,
  nm_Logradouro		varchar(70) DEFAULT NULL,
  nm_Bairro			varchar(72) DEFAULT NULL,
  cd_Cep			varchar(9) NOT NULL,
  tp_Logradouro		varchar(20) DEFAULT NULL,
  PRIMARY KEY (cd_EnderecoID)
)

SET IDENTITY_INSERT Endereco ON;
GO

