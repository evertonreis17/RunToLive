USE RunToLive
GO

IF EXISTS (SELECT * FROM SYSOBJECTS WHERE name = 'pr_retornaUsuarioPeloEmail' AND xtype = 'P')
BEGIN
	DROP PROCEDURE [pr_retornaUsuarioPeloEmail]
END
GO

SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================================
-- Nome: pr_retornaUsuarioPeloEmail
-- Descrição: Busca usuario procurando pelo Email/Login
-- Autor: Everton Reis
-- Criado: 18/06/2015
-- =============================================================
CREATE PROCEDURE pr_retornaUsuarioPeloEmail(
	@Email varchar(40)
)
AS
BEGIN
	
	SET NOCOUNT ON
			
		SELECT 
			u.UsuarioID, 
			u.Nome,
			u.Sexo,
			u.Nascimento,
			u.RG,
			u.CPF,
			u.LoginID,
			u.Telefone,
			u.Celular,
			u.Cep,
			u.Naturalidade,
			u.Nacionalidade,
			u.Profissao,
			u.Foto,
			u.ExameMedico
		FROM Usuarios u
		INNER JOIN [Login] l on l.LoginID = u.LoginID
		WHERE
			l.Email = @Email
			AND
			u.Removido = 0
		
	SET NOCOUNT OFF
	
END
GO