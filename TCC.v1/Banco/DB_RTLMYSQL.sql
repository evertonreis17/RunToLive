-- -------------------------------------------------------
-- TRABALHO DE CONCLUSÃO DE CURSO    CRIADO EM 08/03/2015

-- BANCO DE DADOS PARA O SISTEMA RTL - RUN TO LIVE

-- AUTORAS ALINE E VERÔNICA
-- -------------------------------------------------------

-- -----------------------------------
-- CRIANDO O BANCO DE DADOS
-- -----------------------------------
CREATE DATABASE DB_RUNTOLIVE;

-- -----------------------------------
-- USANDO O BANCO DE DADOS
-- -----------------------------------
 USE DB_RUNTOLIVE;

-- -------------------------------------------------------------------------------------
-- CRIANDO AS TABELAS COM AS RESPECTIVAS RESTRIÇÕES E CHAVES PRIMÁRIAS E ESTRANGEIRAS
-- -------------------------------------------------------------------------------------
CREATE TABLE TB_AUTENTICACAO
(
	ds_EmailLogin VARCHAR(80) NOT NULL,
	ds_Senha VARCHAR(6) NOT NULL,
	ds_LembreteSenha VARCHAR(50),
	CHECK (ds_EmailLogin LIKE '%@%' AND ds_EmailLogin LIKE '%.%'),
    
	PRIMARY KEY (ds_EmailLogin)
    
) ENGINE=INNODB DEFAULT CHARSET=LATIN1;

CREATE TABLE TB_USUARIO
(
	cd_Usuario INT NOT NULL AUTO_INCREMENT,
	ds_EmailLogin VARCHAR(80) NOT NULL,
	cd_TipoUsuario INT NOT NULL,
	nm_Usuario VARCHAR(100) NOT NULL,
	cd_RG VARCHAR(9),
	cd_CPF VARCHAR(11),
	ds_Endereco VARCHAR(80) NOT NULL,
	nm_Bairro VARCHAR(50) NOT NULL,
	nm_Cidade VARCHAR(50) NOT NULL,
	sg_Estado CHAR(2) NOT NULL,
	cd_CEP CHAR(8) NOT NULL,
	cd_DDD CHAR(2),
	cd_Telefone CHAR(8),
	cd_Celular CHAR(9),
	CHECK (ds_EmailLogin LIKE '%@%' AND ds_EmailLogin LIKE '%.%'),
	CHECK (cd_TipoUsuario IN (1, 2, 3)),
    
    PRIMARY KEY (cd_Usuario),
    FOREIGN KEY (ds_EmailLogin)
		REFERENCES TB_AUTENTICACAO
    
) ENGINE=INNODB DEFAULT CHARSET=LATIN1;


CREATE TABLE TB_ADMINISTRADOR
(
	cd_Administrador INT NOT NULL AUTO_INCREMENT,
	cd_Usuario INT  NOT NULL,
    
   	PRIMARY KEY (cd_Administrador),
    FOREIGN KEY (cd_Usuario)
		REFERENCES TB_USUARIO
    
) ENGINE=INNODB DEFAULT CHARSET=LATIN1;


CREATE TABLE TB_PROFESSOR
(
	cd_Professor INT NOT NULL AUTO_INCREMENT,
	cd_Usuario INT NOT NULL,
	ds_TipoProfessor VARCHAR(80) NOT NULL,
	dt_Nascimento DATE NOT NULL,
	img_Foto BLOB,
    
    PRIMARY KEY (cd_Professor),
    FOREIGN KEY (cd_Usuario)
		REFERENCES TB_USUARIO
    
) ENGINE=INNODB DEFAULT CHARSET=LATIN1;

CREATE TABLE TB_ALUNO
(
	cd_Aluno INT NOT NULL AUTO_INCREMENT,
	cd_Usuario INT NOT NULL, 
	dt_Nascimento DATE NOT NULL,
	nm_Naturalidade VARCHAR(50) NOT NULL,
	nm_Nacionalidade VARCHAR(50) NOT NULL,
	nm_Profissao VARCHAR(50),
	img_Foto BLOB,
    
    PRIMARY KEY (cd_Aluno),
    FOREIGN KEY (cd_Usuario)
		REFERENCES TB_USUARIO
    
) ENGINE=INNODB DEFAULT CHARSET=LATIN1;
 


CREATE TABLE TB_FICHAANAMNESE
(
	cd_FichaAnamnese INT NOT NULL AUTO_INCREMENT,
	cd_Usuario INT NOT NULL,
	cd_Peso CHAR(5) NOT NULL,
	cd_Estatura CHAR(3) NOT NULL,
	cd_FrquenciaCardiaca INT NOT NULL,
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
	img_AtestadoMedico BLOB,
	CHECK (ic_PraticanteAF IN ('S', 'N')),
	CHECK (ic_DietaSuplemento IN ('S', 'N')),
	CHECK (ic_Fumante IN ('S', 'N')),
	CHECK (ic_ExFumante IN ('S', 'N')),
	CHECK (ic_Bebida IN ('S', 'N')),
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
	CHECK (ic_PaisSobrepesoObeso IN ('S', 'N')),
    
    PRIMARY KEY (cd_FichaAnamnese),
    FOREIGN KEY (cd_Usuario)
		REFERENCES TB_USUARIO
    
)  ENGINE=INNODB DEFAULT CHARSET=LATIN1;


CREATE TABLE TB_PAGAMENTO
(
	cd_Pagamento INT NOT NULL AUTO_INCREMENT,
	cd_Usuario INT NOT NULL,
	dt_Vencimento DATE NOT NULL,
	dt_Pagamento  DATETIME,
	vl_Pago DECIMAL(10,2),
	nm_Item VARCHAR(50),
	ds_Item VARCHAR(50),
	vl_Item DECIMAL(10,2),
	qt_Item INT,
	vl_Total DECIMAL(10,2),
	CHECK (vl_Pago > 0),
    
	PRIMARY KEY (cd_Pagamento),
    FOREIGN KEY (cd_Usuario)
		REFERENCES TB_USUARIO
    
) ENGINE=INNODB DEFAULT CHARSET=LATIN1;


CREATE TABLE TB_TREINOSEMANAL
(
	cd_Treino INT NOT NULL AUTO_INCREMENT,
	ds_Metodo VARCHAR(80) NOT NULL,
	ds_Detalhe VARCHAR(50) NOT NULL,
	ds_Intensidade VARCHAR(50) NOT NULL,
	ds_Planejamento VARCHAR(10) NOT NULL,
	ds_Realizacao VARCHAR(10),
	ds_TempoPercurso VARCHAR(10),
	ds_Temperatura VARCHAR(20),
	nm_Local VARCHAR(50),
	ds_Observacao VARCHAR(100),
	img_DesempenhoGrafico BLOB,
    
	PRIMARY KEY (cd_Treino)
     
) ENGINE=INNODB DEFAULT CHARSET=LATIN1;


CREATE TABLE TB_TREINOSEMANALUSUARIO
(
	cd_Treino INT NOT NULL,
	cd_Usuario INT NOT NULL,
	dt_Treino DATETIME NOT NULL,
    
    FOREIGN KEY (cd_Treino)
		REFERENCES TB_TREINOSEMANAL,
	FOREIGN KEY (cd_Usuario)
		REFERENCES TB_USUARIO
    
) ENGINE=INNODB DEFAULT CHARSET=LATIN1;


CREATE TABLE TB_FEEDBACK
(
	cd_Feedback INT NOT NULL AUTO_INCREMENT,
	ds_Comentario VARCHAR(1000),
    
    PRIMARY KEY (cd_Feedback)
    
) ENGINE=INNODB DEFAULT CHARSET=LATIN1;


CREATE TABLE TB_FEEDBACKUSUARIO
(
	cd_Feedback INT NOT NULL,
	cd_Usuario INT NOT NULL,
	dt_Publicacao DATETIME NOT NULL,
    
    FOREIGN KEY (cd_Feedback)
		REFERENCES TB_FEEDBACK,
	FOREIGN KEY (cd_Usuario)
		REFERENCES TB_USUARIO
    
) ENGINE=INNODB DEFAULT CHARSET=LATIN1;


CREATE TABLE TB_EVENTO
(
	cd_Evento INT NOT NULL AUTO_INCREMENT,
	dt_Evento DATETIME,
	nm_Evento VARCHAR(50),
	ds_Evento VARCHAR(150),
    
    PRIMARY KEY (cd_Evento)
    
) ENGINE=INNODB DEFAULT CHARSET=LATIN1;


CREATE TABLE TB_USUARIOEVENTO
(
	cd_Usuario INT NOT NULL,
	cd_Evento INT NOT NULL,
	dt_Publicacao DATETIME NOT NULL,
	ds_LinkInscricao VARCHAR(200),
	ds_Recomendacao VARCHAR(500),
	
	FOREIGN KEY (cd_Usuario)
		REFERENCES TB_USUARIO,
	FOREIGN KEY (cd_Evento)
		REFERENCES TB_EVENTO
        
) ENGINE=INNODB DEFAULT CHARSET=LATIN1;
