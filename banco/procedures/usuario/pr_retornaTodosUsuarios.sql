USE RunToLive
GO

IF EXISTS (SELECT * FROM SYSOBJECTS WHERE name = 'pr_retornaTodosUsuarios' AND xtype = 'P')
BEGIN
	DROP PROCEDURE [pr_retornaTodosUsuarios]
END
GO

SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================================
-- Nome: pr_retornaTodosUsuarios
-- Descrição: Busca todos os usuários cadastrados
-- Autor: Everton Reis
-- Criado: 17/06/2015
-- =============================================================
CREATE PROCEDURE [pr_retornaTodosUsuarios]
AS
BEGIN
	
	SET NOCOUNT ON
			
		SELECT 
			UsuarioID, 
			Nome,
			Sexo,
			Nascimento,
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
			Removido = 0
		
	SET NOCOUNT OFF
	
END
GO