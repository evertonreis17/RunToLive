USE RunToLive
GO

IF EXISTS (SELECT * FROM SYSOBJECTS WHERE name = 'pr_storeAluno' AND xtype = 'P')
BEGIN
	DROP PROCEDURE [pr_storeAluno]
END
GO

SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================================
-- Nome: pr_storeAluno
-- Descrição: Armazena/atualiza os dados do aluno no banco
-- Autor: Everton Reis
-- Criado: 15/06/2015
-- =============================================================
CREATE PROCEDURE [pr_storeAluno] (
	@UsuarioID UNIQUEIDENTIFIER,
	@Nome VARCHAR(80),
    @Sexo CHAR(1),
    @Nascimento DATE, 
    @RG VARCHAR(9),
	@CPF VARCHAR(11),
	@Login VARCHAR(50),	
	@Telefone VARCHAR(11),
	@Celular VARCHAR(11),
	@Cep VARCHAR(9),
	@Naturalidade VARCHAR(50),
	@Nacionalidade VARCHAR(50),
	@Profissao VARCHAR(50),
	@Foto VARCHAR(255),
	@ExameMedico VARCHAR(255)
)
AS
BEGIN
	
	SET NOCOUNT ON
	
		/*IF EXISTS (SELECT 1 FROM [Usuarios] WHERE UserID = @UserID)
		BEGIN 
			-- Atualiza dados existentes no banco
			UPDATE 
				[Users]
			SET
				[Password] = @Password,
				FirstName = @FirstName,
				LastName = @LastName,
				Gender = @Gender
			WHERE
				UserID = @UserID
				AND
				Removed = 0
		END 
		ELSE
		BEGIN*/
			-- Insere um novo registro no banco
			INSERT INTO
				[Usuarios](
				UsuarioID, 
				Nome,
				Sexo,
				Nascimento,
				RG,
				CPF,
				[Login],
				Telefone,
				Celular,
				Cep,
				Naturalidade,
				Nacionalidade,
				Profissao,
				Foto,
				ExameMedico,
				Removido)
			VALUES
				(@UsuarioID, 
				@Nome,
				@Sexo,
				@Nascimento,
				@RG,
				@CPF,
				@Login,
				@Telefone,
				@Celular,
				@Cep,
				@Naturalidade,
				@Nacionalidade,
				@Profissao,
				@Foto,
				@ExameMedico, 
				0)
		--END
	
	SET NOCOUNT OFF
	
END
GO