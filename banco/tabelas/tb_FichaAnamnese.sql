USE DB_RUNTOLIVE
GO

IF EXISTS (SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'[FichaAnamnese]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
	DROP TABLE [FichaAnamnese]
END
GO
--------------------------------------------------------------------------
-- Cria a tabela de Ficha de Anamnese
--------------------------------------------------------------------------
CREATE TABLE FichaAnamnese
(
	cd_FichaAnamneseID INT IDENTITY(1,1) NOT NULL,
	cd_AlunoID INT NOT NULL,
	cd_Estatura DECIMAL(3,2) NOT NULL,
	cd_Peso DECIMAL(5,2) NOT NULL,
	cd_FrquenciaCardiaca VARCHAR(8) NOT NULL,
	ds_Objetivo VARCHAR(100) NOT NULL,
	ic_PraticanteAF CHAR(1) NOT NULL,
	ds_ModalidadeAF VARCHAR(50),
	ds_TempoPraticaAF VARCHAR(10),
	qt_RefeicaoDiaria INT NOT NULL,
	ic_DietaSuplemento CHAR(1) NOT NULL,
	ds_TipoDietaSuplementacao VARCHAR(100),
	ds_SonoDiario VARCHAR(10) NOT NULL,
	ic_Fumante CHAR(1) NOT NULL,
	qt_CigarroDia INT,
	ic_ExFumante CHAR(1) NOT NULL,
	ds_TempoParou VARCHAR(10),
	ic_Bebida CHAR(1) NOT NULL,
	ds_TipoBebida VARCHAR(50),
	qt_BebidaSemana INT,
    ic_Colesterol CHAR(1) NOT NULL,
	ic_AlteracaoCardiaca CHAR(1) NOT NULL,
	ic_HistoricoFamiliaCardiaca CHAR(1) NOT NULL,
	ds_ParenteCardiaco VARCHAR(50),
	ic_Hirpertensao CHAR(1) NOT NULL,
	ic_Diabete CHAR(1) NOT NULL,
	ic_HistoricoFamiliaDiabete CHAR(1) NOT NULL,
	ic_ProblemaPulmonar CHAR(1) NOT NULL,
	ds_TipoProblemaPulmonar VARCHAR(50),
	ic_UsoMedicamento CHAR(1) NOT NULL,
	ds_TipoMedicamento VARCHAR(50),
	ic_Cirurgia CHAR(1) NOT NULL,
	ds_TipoCirurgia VARCHAR(100),
	ic_DorColuna CHAR(1) NOT NULL,
	ic_DorArticulacao CHAR(1) NOT NULL,
	ic_DorMuscular CHAR(1) NOT NULL,
	ic_ProblemaOrtopedico CHAR(1) NOT NULL,
	ds_TipoProblemaOrtopedico VARCHAR(100),
	ic_RecomendacaoMedica CHAR(1) NOT NULL,
	ds_TipoEspecialista VARCHAR(50),
	ic_TesteErgometricoRecente CHAR(1) NOT NULL,
	ic_TesteErgoespirometricoRecente CHAR(1) NOT NULL,
	ic_HistoricoSobrepesoObesidade CHAR(1) NOT NULL,
	ic_PaisSobrepesoObeso CHAR(1) NOT NULL,
	img_AtestadoMedico VARBINARY(MAX),

	CHECK (ic_PraticanteAF IN ('S', 'N')),
	CHECK (ic_DietaSuplemento IN ('S', 'N')),
	CHECK (ic_Fumante IN ('S', 'N')),
	CHECK (ic_ExFumante IN ('S', 'N')),
	CHECK (ic_Bebida IN ('S', 'N')),
    CHECK (ic_Colesterol IN ('S', 'N')),
	CHECK (ic_AlteracaoCardiaca IN ('S', 'N')),
	CHECK (ic_HistoricoFamiliaCardiaca IN ('S', 'N')),
	CHECK (ic_Hirpertensao IN ('S', 'N')),
	CHECK (ic_Diabete IN ('S', 'N')),
	CHECK (ic_HistoricoFamiliaDiabete IN ('S', 'N')),
	CHECK (ic_ProblemaPulmonar IN ('S', 'N')),
	CHECK (ic_UsoMedicamento IN ('S', 'N')),
	CHECK (ic_Cirurgia IN ('S', 'N')),
	CHECK (ic_DorColuna IN ('S', 'N')),
	CHECK (ic_DorArticulacao IN ('S', 'N')),
	CHECK (ic_DorMuscular IN ('S', 'N')),
	CHECK (ic_ProblemaOrtopedico IN ('S', 'N')),
	CHECK (ic_RecomendacaoMedica IN ('S', 'N')),
	CHECK (ic_TesteErgometricoRecente IN ('S', 'N')),
	CHECK (ic_TesteErgoespirometricoRecente IN ('S', 'N')),
	CHECK (ic_HistoricoSobrepesoObesidade IN ('S', 'N')),
	CHECK (ic_PaisSobrepesoObeso IN ('S', 'N'))
)
GO
--------------------------------------------------------------------------
-- Cria a PK da tabela caso ela não exista
--------------------------------------------------------------------------
IF NOT EXISTS (SELECT * FROM SYSOBJECTS WHERE name = 'pk_cd_FichaAnamneseID' AND xtype = 'PK')
BEGIN
	ALTER TABLE [FichaAnamnese]
	ADD CONSTRAINT pk_cd_FichaAnamneseID PRIMARY KEY (cd_FichaAnamneseID)
END
GO
--------------------------------------------------------------------------
-- Adiciona as Foreign Keys da tabela caso elas não existam
--------------------------------------------------------------------------
IF NOT EXISTS (SELECT * FROM SYSOBJECTS WHERE name = 'fk_FichaRefUsuarioAluno' AND xtype = 'F')
BEGIN
	ALTER TABLE [FichaAnamnese]
	ADD CONSTRAINT fk_FichaRefUsuarioAluno FOREIGN KEY (cd_AlunoID)
	REFERENCES [tb_Usuarios] (cd_UsuarioID) 
END
GO