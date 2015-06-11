
---------------------------------------------------------------------------------------------------------------
-- TRABALHO DE CONCLUSÃO DE CURSO    CRIADO EM 08/03/2015

-- BANCO DE DADOS PARA O SISTEMA RTL - RUN TO LIVE

-- AUTORAS ALINE E VERÔNICA
---------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------
-- CRIANDO O BANCO DE DADOS
---------------------------------------------------------------------------------------------------------------
CREATE DATABASE db_RunToLive
GO

---------------------------------------------------------------------------------------------------------------
-- UTILIZANDO O BANCO DE DADOS CRIADO
---------------------------------------------------------------------------------------------------------------
USE db_RunToLive
GO

CREATE TABLE TB_TREINO
(
	cd_Treino INT IDENTITY(1,1) NOT NULL,
   	ds_Metodo VARCHAR(80) NOT NULL,
	ds_Detalhe VARCHAR(50) NOT NULL,
	ds_Intensidade VARCHAR(50) NOT NULL,
	ds_Planejamento VARCHAR(10) NOT NULL,	
	ds_Observacao VARCHAR(500),
	ds_Realizacao VARCHAR(10),
	ds_TempoPercurso VARCHAR(10),
	ds_Temperatura VARCHAR(20),
	nm_Local VARCHAR(50),
    ds_Comentario VARCHAR(500)
)
GO

CREATE TABLE TB_PROFESSOR_TREINO
(
	cd_Professor INT NOT NULL,
    cd_Treino INT NOT NULL,
    dt_Treino DATE NOT NULL
)
GO

CREATE TABLE TB_PROVA
(
	cd_Prova INT IDENTITY(1,1) NOT NULL,
	dt_Prova DATE,
	nm_Prova VARCHAR(50),
	ds_Prova VARCHAR(150),
    cd_KM CHAR(2),
    vl_Inscricao DECIMAL(10,2),
    ds_LinkInscricao VARCHAR(150),
    ds_Rcomendacao VARCHAR(150)
)
GO

CREATE TABLE TB_PROFESSOR_PROVA
(
	cd_Professor INT NOT NULL,
    cd_Prova INT NOT NULL,
    dt_Publicação DATE NOT NULL
)
GO

CREATE TABLE TB_CONFRATERNIZACAO
(
	cd_Confra INT IDENTITY(1,1) NOT NULL,
	dt_Confra DATE,
	nm_Confra VARCHAR(50),
    ds_Confra VARCHAR(150),
    vl_Confra DECIMAL(10,2),
    ds_Local VARCHAR(150),
	ds_Observacao VARCHAR(150)	
)
GO

CREATE TABLE TB_PROFESSOR_CONFRA
(
	cd_Professor INT NOT NULL,
    cd_Confra INT NOT NULL,
    dt_Publicação DATE NOT NULL
)
GO

CREATE TABLE TB_PRODUTO
(
	cd_Produto INT IDENTITY(1,1) NOT NULL,
    nm_Produto VARCHAR(50),
    ds_Produto VARCHAR(100),
    qt_MaximaProduto INT,
    vl_Produto DECIMAL(10,2),

    CHECK (vl_Produto > 0)
)
GO

CREATE TABLE TB_PEDIDO
(
	cd_Pedido INT IDENTITY(1,1) NOT NULL,
    dt_Pedido DATE NOT NULL,
	vl_Pedido DECIMAL(10,2),
    
	CHECK (vl_Pedido > 0)    
) 
GO

CREATE TABLE TB_ITENS
(
	cd_Pedido INT NOT NULL,
    cd_Produto INT NOT NULL,
    qt_Itens INT     
)
GO

CREATE TABLE TB_PAGAMENTO
(
	cd_Pagamento INT IDENTITY(1,1) NOT NULL,
	cd_Aluno INT NOT NULL,
    cd_Administrador INT,
    cd_Pedido INT,
	dt_Vencimento DATE NOT NULL,
	dt_Pagamento  DATETIME,
	vl_MensalidadePaga DECIMAL(10,2),
	vl_Total DECIMAL(10,2),

	CHECK (vl_MensalidadePaga > 0),
    CHECK (vl_Total > 0)
)
GO

---------------------------------------------------------------------------------------------------------------
-- ALTERANDO AS TABELAS PARA INCLUSÃO DAS CHAVES PRIMÁRIAS
---------------------------------------------------------------------------------------------------------------
ALTER TABLE TB_LOGIN
	ADD CONSTRAINT PK_EmailLogin PRIMARY KEY (ds_EmailLogin)
GO

ALTER TABLE TB_ADMINISTRADOR
	ADD CONSTRAINT PK_Administrador PRIMARY KEY (cd_Administrador)
GO

ALTER TABLE TB_PROFESSOR
	ADD CONSTRAINT PK_Professor PRIMARY KEY (cd_Professor)
GO

ALTER TABLE TB_ALUNO
	ADD CONSTRAINT PK_Aluno PRIMARY KEY (cd_Aluno)
GO

ALTER TABLE TB_FICHA_ANAMNESE
	ADD CONSTRAINT PK_FichaAnamnese PRIMARY KEY (cd_FichaAnamnese)
GO

ALTER TABLE TB_TREINO
	ADD CONSTRAINT PK_Treino PRIMARY KEY (cd_Treino)
GO

ALTER TABLE TB_PROVA
	ADD CONSTRAINT PK_Prova PRIMARY KEY (cd_Prova)
GO

ALTER TABLE TB_CONFRATERNIZACAO
	ADD CONSTRAINT PK_Confra PRIMARY KEY (cd_Confra)
GO

ALTER TABLE TB_PRODUTO
	ADD CONSTRAINT PK_Produto PRIMARY KEY (cd_Produto)
GO

ALTER TABLE TB_PEDIDO
	ADD CONSTRAINT PK_Pedido PRIMARY KEY (cd_Pedido)
GO

ALTER TABLE TB_PAGAMENTO
	ADD CONSTRAINT PK_Pagamento PRIMARY KEY (cd_Pagamento)
GO

---------------------------------------------------------------------------------------------------------------
-- ALTERANDO AS TABELAS PARA INCLUSÃO DAS CHAVES ESTRANGEIRAS
---------------------------------------------------------------------------------------------------------------
ALTER TABLE TB_ADMINISTRADOR
	ADD CONSTRAINT FK_Administrador_EmailLogin FOREIGN KEY (ds_EmailLogin)
		REFERENCES TB_LOGIN (ds_EmailLogin)	
GO

ALTER TABLE TB_PROFESSOR
	ADD	CONSTRAINT FK_Professor_EmailLogin FOREIGN KEY (ds_EmailLogin)
		REFERENCES TB_LOGIN (ds_EmailLogin)
GO

ALTER TABLE TB_ALUNO
	ADD CONSTRAINT FK_Aluno_EmailLogin FOREIGN KEY (ds_EmailLogin)
		REFERENCES TB_LOGIN (ds_EmailLogin)
GO

ALTER TABLE TB_ALUNO
	ADD CONSTRAINT FK_Aluno_FichaAnamnese FOREIGN KEY (cd_FichaAnamnese)
		REFERENCES TB_FICHA_ANAMNESE (cd_FichaAnamnese) 
GO

ALTER TABLE TB_ALUNO
	ADD CONSTRAINT FK_Aluno_Treino FOREIGN KEY (cd_Treino)
		REFERENCES TB_TREINO (cd_Treino)
GO

ALTER TABLE TB_PROFESSOR_TREINO
	ADD CONSTRAINT FK_Prof FOREIGN KEY (cd_Professor)
		REFERENCES TB_PROFESSOR (cd_Professor)
GO

ALTER TABLE TB_PROFESSOR_TREINO
	ADD CONSTRAINT FK_Prof_Treino FOREIGN KEY (cd_Treino)
		REFERENCES TB_TREINO (cd_Treino)
GO

ALTER TABLE TB_PROFESSOR_PROVA
	ADD CONSTRAINT FK_Prof_Prova FOREIGN KEY (cd_Professor)
		REFERENCES TB_PROFESSOR (cd_Professor)
GO

ALTER TABLE TB_PROFESSOR_PROVA
	ADD CONSTRAINT FK_Prova FOREIGN KEY (cd_Prova)
		REFERENCES TB_PROVA (cd_Prova)
GO

ALTER TABLE TB_PROFESSOR_CONFRA
	ADD  CONSTRAINT FK_Prof_Confra FOREIGN KEY (cd_Professor)
		REFERENCES TB_PROFESSOR (cd_Professor)
GO	

ALTER TABLE TB_PROFESSOR_CONFRA
	ADD CONSTRAINT FK_Confra FOREIGN KEY (cd_Confra)
		REFERENCES TB_CONFRATERNIZACAO (cd_Confra)
GO

ALTER TABLE TB_ITENS
	ADD CONSTRAINT FK_Itens_Pedido FOREIGN KEY (cd_Pedido)
		REFERENCES TB_PEDIDO (cd_Pedido)
GO

ALTER TABLE TB_ITENS
	ADD CONSTRAINT FK_Itens_Produto FOREIGN KEY (cd_Produto)
		REFERENCES TB_PRODUTO (cd_Produto)
GO

ALTER TABLE TB_PAGAMENTO
	ADD CONSTRAINT FK_Pagamento_Aluno FOREIGN KEY (cd_Aluno)
		REFERENCES TB_ALUNO (cd_Aluno)
GO

ALTER TABLE TB_PAGAMENTO
	ADD CONSTRAINT FK_Pagamento_Administrador FOREIGN KEY (cd_Administrador)
		REFERENCES TB_ADMINISTRADOR (cd_Administrador)
GO

ALTER TABLE TB_PAGAMENTO
	ADD CONSTRAINT FK_Pagamento_Pedido FOREIGN KEY (cd_Pedido)
		REFERENCES TB_PEDIDO (cd_Pedido)
GO