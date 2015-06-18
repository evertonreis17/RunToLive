USE RunToLive
GO

IF EXISTS (SELECT * FROM SYSOBJECTS WHERE name = 'pr_removeUsuario' AND xtype = 'P')
BEGIN
	DROP PROCEDURE [pr_removeUsuario]
END
GO

SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================================
-- Nome: pr_removeUsuario
-- Descrição: Marca um usuário como excluído na tabela
-- Autor: Everton Reis
-- Criado: 16/06/2015
-- =============================================================
CREATE PROCEDURE [pr_removeUsuario] (
	@UsuarioID uniqueidentifier
)
AS
BEGIN
	
	SET NOCOUNT ON
	
		UPDATE 
			[Usuarios]
		SET
			Removido = 1
		WHERE
			UsuarioID = @UsuarioID
		
	SET NOCOUNT OFF
	
END
GO