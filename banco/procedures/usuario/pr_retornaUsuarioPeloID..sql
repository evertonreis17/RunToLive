USE RunToLive
GO

IF EXISTS (SELECT * FROM SYSOBJECTS WHERE name = 'pr_retornaUsuarioPeloID' AND xtype = 'P')
BEGIN
	DROP PROCEDURE [pr_retornaUsuarioPeloID]
END
GO

SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================================
-- Nome: pr_retornaUsuarioPeloID
-- Descrição: Busca usuário cadastrado pelo ID
-- Autor: Everton Reis
-- Criado: 18/06/2015
-- =============================================================
CREATE PROCEDURE [pr_retornaUsuarioPeloID](
	@UsuarioID uniqueidentifier
)
AS
BEGIN
	
	SET NOCOUNT ON
			
		SELECT 
			UsuarioID, 
			Nome,
			Sexo,
			Nascimento,
			CampoAtuacao,
			RG,
			CPF,
			LoginID,
			Telefone,
			Celular,
			Cep,
			Naturalidade,
			Nacionalidade,
			Profissao,
			Foto,
			ExameMedico
		FROM
			[Usuarios]
		WHERE
			UsuarioID = @UsuarioID
			AND
			Removido = 0
		
	SET NOCOUNT OFF
	
END
GO