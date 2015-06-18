using A = RunToLive.Domain.Model;
using RunToLive.Infrastructure.DomainBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RunToLive.Domain.Model
{
    [Serializable]
    public class FichaAnamnese : EntityBase, IAggregateRoot
    {
        private object alunoID;
        private double estatura;
        private double peso;
        private string frequenciaCardiaca;
        private string objetivo;
        private char praticanteAF;
        private string modalidadeAF;
        private string tempoPraticaAF;
        private int qtdeRefeicaoDia;
        private char dietaSuplemento;
        private string tipoDietaSuplementacao;
        private int hrsSonoDiario;
        private char fumante;
        private char qtdeCigarroDia;
        private char exFumante;
        private string aQntTempoParou;
        private char bebida;
        private string tipoBebida;
        private int qtdeBebidaSemana;
        private char colesterolAlto;
        private char alteracaoCardiaca;
        private char historicoFamiliarCardiaco;
        private string parenteCardiaco;
        private char hipertensao;
        private char diabete;
        private char historicoFamiliarDiabete;
        private char problemaPulmonar;
        private string tipoProblemaPulmonar;
        private char usoMedicamento;
        private string tipoMedicamento;
        private char cirurgia;
        private string tipoCirurgia;
        private char dorColuna;
        private char dorArticulacao;
        private char dorMuscular;
        private char problemaOrtopedico;
        private string tipoProblemaOrtopedico;
        private char recomendacaoMedica;
        private string tipoEspecialista;
        private char testeErgometricoRecente;
        private char testeErgoespirometricoRecente;
        private char historicoSobrepesoObesidade;
        private char paisSobrepesoObeso;
        private string atestadoMedico;
        

        #region Contrutores
		
        public FichaAnamnese(object alunoID)
            : this(null, alunoID)
        {
        }

        public FichaAnamnese(object id,object alunoID)
            : base(id)
        {
            this.alunoID = alunoID;
        }

	    #endregion


        #region Propriedades

        public double Estatura
        {
            get { return estatura; }
            set { estatura = value; }
        }

        public double Peso
        {
            get { return peso; }
            set { peso = value; }
        }

        public string FrequenciaCardiaca
        {
            get { return frequenciaCardiaca; }
            set { frequenciaCardiaca = value; }
        }

        public string Objetivo
        {
            get { return objetivo; }
            set { objetivo = value; }
        }

        public char PraticanteAF
        {
            get { return praticanteAF; }
            set { praticanteAF = value; }
        }

        public string ModalidadeAF
        {
            get { return modalidadeAF; }
            set { modalidadeAF = value; }
        }

        public string TempoPraticaAF
        {
            get { return tempoPraticaAF; }
            set { tempoPraticaAF = value; }
        }

        public int QtdeRefeicaoDia
        {
            get { return qtdeRefeicaoDia; }
            set { qtdeRefeicaoDia = value; }
        }

        public char DietaSuplemento
        {
            get { return dietaSuplemento; }
            set { dietaSuplemento = value; }
        }

        public string TipoDietaSuplementacao
        {
            get { return tipoDietaSuplementacao; }
            set { tipoDietaSuplementacao = value; }
        }

        public int HrsSonoDiario
        {
            get { return hrsSonoDiario; }
            set { hrsSonoDiario = value; }
        }

        public char Fumante
        {
            get { return fumante; }
            set { fumante = value; }
        }

        public char QtdeCigarroDia
        {
            get { return qtdeCigarroDia; }
            set { qtdeCigarroDia = value; }
        }

        public char ExFumante
        {
            get { return exFumante; }
            set { exFumante = value; }
        }

        public string AQntTempoParou
        {
            get { return aQntTempoParou; }
            set { aQntTempoParou = value; }
        }

        public char Bebida
        {
            get { return bebida; }
            set { bebida = value; }
        }

        public string TipoBebida
        {
            get { return tipoBebida; }
            set { tipoBebida = value; }
        }

        public int QtdeBebidaSemana
        {
            get { return qtdeBebidaSemana; }
            set { qtdeBebidaSemana = value; }
        }

        public char ColesterolAlto
        {
            get { return colesterolAlto; }
            set { colesterolAlto = value; }
        }

        public char AlteracaoCardiaca
        {
            get { return alteracaoCardiaca; }
            set { alteracaoCardiaca = value; }
        }

        public char HistoricoFamiliarCardiaco
        {
            get { return historicoFamiliarCardiaco; }
            set { historicoFamiliarCardiaco = value; }
        }

        public string ParenteCardiaco
        {
            get { return parenteCardiaco; }
            set { parenteCardiaco = value; }
        }

        public char Hipertensao
        {
            get { return hipertensao; }
            set { hipertensao = value; }
        }

        public char Diabete
        {
            get { return diabete; }
            set { diabete = value; }
        }

        public char HistoricoFamiliarDiabete
        {
            get { return historicoFamiliarDiabete; }
            set { historicoFamiliarDiabete = value; }
        }

        public char ProblemaPulmonar
        {
            get { return problemaPulmonar; }
            set { problemaPulmonar = value; }
        }

        public string TipoProblemaPulmonar
        {
            get { return tipoProblemaPulmonar; }
            set { tipoProblemaPulmonar = value; }
        }

        public char UsoMedicamento
        {
            get { return usoMedicamento; }
            set { usoMedicamento = value; }
        }

        public string TipoMedicamento
        {
            get { return tipoMedicamento; }
            set { tipoMedicamento = value; }
        }

        public char Cirurgia
        {
            get { return cirurgia; }
            set { cirurgia = value; }
        }

        public string TipoCirurgia
        {
            get { return tipoCirurgia; }
            set { tipoCirurgia = value; }
        }

        public char DorColuna
        {
            get { return dorColuna; }
            set { dorColuna = value; }
        }

        public char DorArticulacao
        {
            get { return dorArticulacao; }
            set { dorArticulacao = value; }
        }

        public char DorMuscular
        {
            get { return dorMuscular; }
            set { dorMuscular = value; }
        }

        public char ProblemaOrtopedico
        {
            get { return problemaOrtopedico; }
            set { problemaOrtopedico = value; }
        }

        public string TipoProblemaOrtopedico
        {
            get { return tipoProblemaOrtopedico; }
            set { tipoProblemaOrtopedico = value; }
        }

        public char RecomendacaoMedica
        {
            get { return recomendacaoMedica; }
            set { recomendacaoMedica = value; }
        }

        public string TipoEspecialista
        {
            get { return tipoEspecialista; }
            set { tipoEspecialista = value; }
        }

        public char TesteErgometricoRecente
        {
            get { return testeErgometricoRecente; }
            set { testeErgometricoRecente = value; }
        }

        public char TesteErgoespirometricoRecente
        {
            get { return testeErgoespirometricoRecente; }
            set { testeErgoespirometricoRecente = value; }
        }

        public char HistoricoSobrepesoObesidade
        {
            get { return historicoSobrepesoObesidade; }
            set { historicoSobrepesoObesidade = value; }
        }

        public char PaisSobrepesoObeso
        {
            get { return paisSobrepesoObeso; }
            set { paisSobrepesoObeso = value; }
        }

        public string AtestadoMedico
        {
            get { return atestadoMedico; }
            set { atestadoMedico = value; }
        }

        #endregion

    }
}
