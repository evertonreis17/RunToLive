USE RunToLive
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
	FichaAnamneseID INT IDENTITY(1,1) NOT NULL,
	AlunoID INT NOT NULL,
	Estatura DECIMAL(3,2) NOT NULL,
	Peso DECIMAL(5,2) NOT NULL,
	FrquenciaCardiaca VARCHAR(8) NOT NULL,
	Objetivo VARCHAR(100) NOT NULL,
	PraticanteAF CHAR(1) NOT NULL,
	ModalidadeAF VARCHAR(50),
	TempoPraticaAF VARCHAR(10),
	QtdeRefeicaoDia INT NOT NULL,
	DietaSuplemento CHAR(1) NOT NULL,
	TipoDietaSuplementacao VARCHAR(100),
	HrsSonoDiario VARCHAR(10) NOT NULL,
	Fumante CHAR(1) NOT NULL,
	QtdeCigarroDia INT,
	ExFumante CHAR(1) NOT NULL,
	AQntTempoParou VARCHAR(10),
	Bebida CHAR(1) NOT NULL,
	TipoBebida VARCHAR(50),
	QtdeBebidaSemana INT,
    ColesterolAlto CHAR(1) NOT NULL,
	AlteracaoCardiaca CHAR(1) NOT NULL,
	HistoricoFamiliarCardiaco CHAR(1) NOT NULL,
	ParenteCardiaco VARCHAR(50),
	Hirpertensao CHAR(1) NOT NULL,
	Diabete CHAR(1) NOT NULL,
	HistoricoFamiliarDiabete CHAR(1) NOT NULL,
	ProblemaPulmonar CHAR(1) NOT NULL,
	TipoProblemaPulmonar VARCHAR(50),
	UsoMedicamento CHAR(1) NOT NULL,
	TipoMedicamento VARCHAR(50),
	Cirurgia CHAR(1) NOT NULL,
	TipoCirurgia VARCHAR(100),
	DorColuna CHAR(1) NOT NULL,
	DorArticulacao CHAR(1) NOT NULL,
	DorMuscular CHAR(1) NOT NULL,
	ProblemaOrtopedico CHAR(1) NOT NULL,
	TipoProblemaOrtopedico VARCHAR(100),
	RecomendacaoMedica CHAR(1) NOT NULL,
	TipoEspecialista VARCHAR(50),
	TesteErgometricoRecente CHAR(1) NOT NULL,
	TesteErgoespirometricoRecente CHAR(1) NOT NULL,
	HistoricoSobrepesoObesidade CHAR(1) NOT NULL,
	PaisSobrepesoObeso CHAR(1) NOT NULL,
	AtestadoMedico VARCHAR(255)

	CHECK (PraticanteAF IN ('S', 'N')),
	CHECK (DietaSuplemento IN ('S', 'N')),
	CHECK (Fumante IN ('S', 'N')),
	CHECK (ExFumante IN ('S', 'N')),
	CHECK (Bebida IN ('S', 'N')),
    CHECK (Colesterol IN ('S', 'N')),
	CHECK (AlteracaoCardiaca IN ('S', 'N')),
	CHECK (HistoricoFamiliaCardiaca IN ('S', 'N')),
	CHECK (Hirpertensao IN ('S', 'N')),
	CHECK (Diabete IN ('S', 'N')),
	CHECK (HistoricoFamiliaDiabete IN ('S', 'N')),
	CHECK (ProblemaPulmonar IN ('S', 'N')),
	CHECK (UsoMedicamento IN ('S', 'N')),
	CHECK (Cirurgia IN ('S', 'N')),
	CHECK (DorColuna IN ('S', 'N')),
	CHECK (DorArticulacao IN ('S', 'N')),
	CHECK (DorMuscular IN ('S', 'N')),
	CHECK (ProblemaOrtopedico IN ('S', 'N')),
	CHECK (RecomendacaoMedica IN ('S', 'N')),
	CHECK (TesteErgometricoRecente IN ('S', 'N')),
	CHECK (TesteErgoespirometricoRecente IN ('S', 'N')),
	CHECK (HistoricoSobrepesoObesidade IN ('S', 'N')),
	CHECK (PaisSobrepesoObeso IN ('S', 'N'))
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