<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dadosPessoaisAluno.aspx.cs" Inherits="RunToLive.Presentation.sistema.aluno.dadosPessoaisAluno" %>

<!DOCTYPE html>
<html lang="pt-br">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Aline Lima e Verônica Miranda">
    <title>Pedro Minga</title>

    <!-- core CSS -->
    <link href="../../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../css/font-awesome.min.css" rel="stylesheet">
    <link href="../../../css/animate.min.css" rel="stylesheet">
    <link href="../../../css/prettyPhoto.css" rel="stylesheet">
    <link href="../../../css/main.css" rel="stylesheet">
    <link href="../../../css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="~/js/html5shiv.js"></script>
    <script src="~/js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="../../../images/ico/iconPM.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../../../images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../../../images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../../../images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../../../images/ico/apple-touch-icon-57-precomposed.png">
</head>
<!--/head-->
<body class="homepage">
    <form id="dadosPessoaisAlunoForm" runat="server">
        <header id="header">

            <nav class="navbar navbar-inverse navbar-default navbar-fixed-top" role="banner">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index.aspx">
                            <img src="../../../images/logoPM.png" alt="logo"></a>

                    </div>

                    <div class="collapse navbar-collapse navbar-right">
                        <ul class="nav navbar-nav">
                            <li><a href="#">Home</a></li>
                            <li class="active"><a href="dadosPessoaisAluno.aspx">Dados Pessoais</a></li>
                            <li><a href="treinosAluno.aspx">Treinos</a></li>
                            <li><a href="pagamentoAluno.aspx">Pagamentos</a></li>
                            <li><a href="eventoAluno.aspx">Eventos</a></li>
                            <li><a href="index.aspx">Sair</a></li>
                        </ul>
                    </div>
                </div>
                <!--/.container-->
            </nav>
            <!--/nav-->

        </header>
        <!--/header-->

        <section id="system-tab">
            <div class="container">
                                
                <h1 class="h1">Complete seus dados:</h1>
                
                <div id="exTab1" class="container">
                    <ul class="nav nav-pills">
                        <li class="active">
                            <a href="#1a" data-toggle="tab">Meus Dados</a>
                        </li>
                        <li><a href="#2a" data-toggle="tab">Ficha de Anamnése</a>
                        </li>
                    </ul>

                    <div class="tab-content clearfix">
                        <div class="tab-pane active" id="1a">
                            <div class="row system">
                                <div class="col-md-3">
                                    <label>Nome Completo:</label>
                                    <input id="txtNomeCompleto" name="NomeCompleto" type="text" class="form-control" />
                                </div>
                                <div class="col-md-3">
                                    <label>Data de Nascimento:</label>
                                    <input id="txtDataNascimento" name="DataNascimento" type="datetime" class="form-control" />
                                </div>

                                <div class="col-md-1">
                                    <label>Sexo:</label>
                                </div>
                                <div class="col-md-2">
                                    <asp:RadioButtonList ID="rblSexo" runat="server">
                                        <asp:ListItem Text="Feminino" Value="FEMININO" Selected="True" />
                                        <asp:ListItem Text="Masculino" Value="MASCULINO" />
                                    </asp:RadioButtonList>
                                </div>
                                <div class="col-md-2">
                                    <img src="../../../images/blog/avatar3.png" alt="" />
                                </div>
                            </div>
                            <%-- /1º row --%>

                            <div class="row system">
                                <div class="col-md-3">
                                    <label>Naturalidade:</label>
                                    <input id="txtNaturalidade" name="Naturalidade" type="text" class="form-control" />
                                </div>
                                <div class="col-md-3">
                                    <label>Nacionalidade:</label>
                                    <input id="txtNacionalidade" name="Nacionalidade" type="text" class="form-control" />
                                </div>
                                <div class="col-md-3">
                                    <label>Profissão:</label>
                                    <input id="txtProfissao" name="Profissao" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /2º row --%>

                            <div class="row system">
                                <div class="col-md-3">
                                    <label>RG:</label>
                                    <input id="txtRG" name="RG" type="text" class="form-control" />
                                </div>
                                <div class="col-md-3">
                                    <label>CPF:</label>
                                    <input id="txtCPF" name="CPF" type="number" class="form-control" />
                                </div>
                                <div class="col-md-3">
                                    <label>Email:</label>
                                    <input id="txtEmail" name="Email" type="email" class="form-control" />
                                </div>
                            </div>
                            <%-- /3º row --%>

                            <hr />

                            <div class="row system">
                                <div class="col-md-6">
                                    <label>Endereço:</label>
                                    <input id="txtEndereco" name="Endereco" type="text" class="form-control" />
                                </div>
                                <div class="col-md-1">
                                    <label>Número:</label>
                                    <input id="txtNumero" name="Numero" type="number" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                    <label>Complemento:</label>
                                    <input id="txtCompl" name="Compl" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /4º row --%>

                            <div class="row system">
                                <div class="col-md-3">
                                    <label>Bairro:</label>
                                    <input id="txtBairro" name="Bairro" type="text" class="form-control" />
                                </div>
                                <div class="col-md-3">
                                    <label>Cidade:</label>
                                    <input id="txtCidade" name="Cidade" type="text" class="form-control" />
                                </div>
                                <div class="col-md-1">
                                    <label>Estado:</label>
                                    <input id="txtEstado" name="Estado" type="text" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                    <label>CEP:</label>
                                    <input id="txtCEP" name="CEP" type="number" class="form-control" />
                                </div>
                            </div>
                            <%-- /5º row --%>

                            <div class="row system">
                                <div class="col-md-4">
                                    <label>Telefone:</label>
                                    <input id="txtTelefone" name="Telefone" type="tel" class="form-control" />
                                </div>
                                <div class="col-md-4">
                                    <label>Celular:</label>
                                    <input id="txtCelular" name="Celular" type="tel" class="form-control" />
                                </div>
                            </div>
                            <%-- /6º row --%>
                        </div>
                        <div class="tab-pane" id="2a">

                            <div class="row system">
                                <div class="col-md-6">
                                    <label>Qual seu objetivo com o treinamento?</label>
                                    <input id="txtObjt" name="Objt" type="text" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                    <label>Peso:</label>
                                    <input id="txtPeso" name="Peso" type="number" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                    <label>Estatura:</label>
                                    <input id="txtEstatura" name="Estatura" type="number" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                    <label>FC Repouso:</label>
                                    <input id="txtFC" name="FC" type="number" class="form-control" />
                                </div>
                            </div>
                            <%-- /1º row --%>

                            <div class="row system">
                                <div class="col-md-3">
                                    <label>Prática Atividade Física:</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="sAtividade" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="nAtividade" value="Nao" />
                                        Não
                                    </label>
                                </div>
                                <div class="col-md-4">
                                    <label>Quais e Há quanto tempo?</label>
                                    <input id="txtResp2" name="txtResp2" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /2º row --%>

                            <div class="row system">
                                <div class="col-md-4">
                                    <label>Faz quantas refeições por dia?</label>
                                    <input id="txtResp3" name="txtResp3" type="number" class="form-control" />
                                </div>
                                <div class="col-md-4">
                                    <label>Dorme quantas horas por noite?</label>
                                    <input id="txtResp4" name="txtResp4" type="number" class="form-control" />
                                </div>
                                <div class="col-md-4">
                                    <label>Faz dieta ou suplementação?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="sdieta" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="ndieta" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                            </div>
                            <%-- /3º row --%>

                            <div class="row system">
                                <div class="col-md-12">
                                    <label>Comente a dieta ou suplementação:</label>
                                    <input id="txtResp6" name="txtResp6" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /4º row --%>

                            <div class="row system">
                                <div class="col-md-1">
                                    <label>Fuma?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="sfuma" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="nfuma" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                                <div class="col-md-3">
                                    <label>Quantos cigarros por dia?</label>
                                    <input id="txtResp8" name="txtResp8" type="number" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                    <label>Ex Fumante?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="sExFuma" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="nExFuma" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                                <div class="col-md-3">
                                    <label>Quanto tempo parou?</label>
                                    <input id="txtResp10" name="txtResp10" type="number" class="form-control" />
                                </div>
                            </div>
                            <%-- /5º row --%>

                            <div class="row system">
                                <div class="col-md-3">
                                    <label>Consome bebida alcoólica?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="sbebida" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="nbebida" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                                <div class="col-md-6">
                                    <label>Quais e quantas vezes por semana?</label>
                                    <input id="txtResp12" name="txtResp12" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /6º row --%>

                            <div class="row system">
                                <div class="col-md-4">
                                    <label>Possui Colesterol, Triglicérides ou Glicose Alta?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="scolesterol" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="ncolesterol" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                                <div class="col-md-3">
                                    <label>Possui alterações cardíaca?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="sAlteCard" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="nAlteCard" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                                <div class="col-md-4">
                                    <label>Algum parente com problemas cardíacos?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="sparente" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="nparente" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                                <div class="col-md-4">
                                    <label>Quem?</label>
                                    <input id="txtResp16" name="txtResp16" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /7º row --%>

                            <div class="row system">
                                
                                <div class="col-md-2">
                                    <label>É hipertenso?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="shipertenso" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="nhipertenso" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                                <div class="col-md-2">
                                    <label>É diabético?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="sdiabético" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="ndiabético" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                                <div class="col-md-4">
                                    <label>Possui algum parente diabético?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="sparentediab" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="nparentediab" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                            </div>
                            <%-- /8º row --%>

                            <div class="row system">
                                <div class="col-md-3">
                                    <label>Tem problemas pulmonares?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="spulmonares" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="npulmonares" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                                <div class="col-md-3">
                                    <label>Toma algum tipo de medicamento?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="smedicamento" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="nmedicamento" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                                <div class="col-md-3">
                                    <label>Qual?</label>
                                    <input id="txtResp22" name="txtResp22" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /9º row --%>

                            <div class="row system">
                                <div class="col-md-3">
                                    <label>Fez alguma cirurgia?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="scirurgia" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="ncirurgia" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                                <div class="col-md-8">
                                    <label>Qual?</label>
                                    <input id="txtResp24" name="txtResp24" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /10º row --%>

                            <div class="row system">
                                <div class="col-md-3">
                                    <label>Apresenta dores nas costas?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="scostas" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="ncostas" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                                <div class="col-md-3">
                                    <label>Apresenta dores nas articulações?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="saticulacoes" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="narticulacoes" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                                <div class="col-md-3">
                                    <label>Apresenta dores musculares?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="smusculares" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="nmusculares" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                            </div>
                            <%-- /11º row --%>

                            <div class="row system">
                                <div class="col-md-6">
                                    <label>Possui algum problema ortopédico diagnosticado?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="sortopedico" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="nortopedico" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                                <div class="col-md-5">
                                    <label>Qual?</label>
                                    <input id="txtResp29" name="txtResp29" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /12º row --%>

                            <div class="row system">
                                <div class="col-md-6">
                                    <label>Tem alguma recomendação médica para prática de atividade física?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="srecomendacao" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="nrecomendacao" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                                <div class="col-md-5">
                                    <label>Qual?</label>
                                    <input id="txtResp31" name="txtResp31" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /13º row --%>

                            <div class="row system">
                                <div class="col-md-5">
                                    <label>Fez teste ergométrico(casdiovascular)recentemente?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="sergometrico" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="nergometrico" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                                <div class="col-md-5">
                                    <label>Fez teste ergoespirométrico(cardiopulmonar)recentemente?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="scardiopulmonar" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="ncardiopulmonar" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                            </div>
                            <%-- /14º row --%>

                            <div class="row system">
                                <div class="col-md-4">
                                    <label>Foi um criança/adolescente obesa ou sobrepeso?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="scrianca" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="ncrianca" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                                <div class="col-md-4">
                                    <label>Seus pais são obesos ou sobrepeso?</label>
                                </div>
                                <div class="col-md-1">
                                    <label>
                                        <input type="radio" name="rbSim" id="spais" value="Sim" checked />
                                        Sim
                                    </label>
                                    <label>
                                        <input type="radio" name="rbNao" id="npais" value="Nao" />
                                        Não
                                    </label>
                                 </div>
                            </div>
                            <%-- /15º row --%>

                            <div class="row system">
                                <div class="col-md-6">
                                    <label>Data do Exame Médico:</label>
                                    <input id="txtResp36" name="txtResp36" type="datetime" class="form-control" />
                                </div>
                                <div class="col-md-6">
                                    <label>Exame Médico:</label>
                                    <button id="btnvisualizarExame" name="btnvisualizarExame" class="btn btn-primary">Visualizar</button>
                                </div>
                            </div>
                            <%-- /16º row --%>

                        </div>
                    </div>
                </div>

            </div>
        </section>
        <%-- /section system-tab --%>
        <footer id="footer" class="midnight-blue">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        &copy; 2015 Aline Lima e Verônica Miranda.
                    </div>
                    <div class="col-sm-6">
                        <ul class="pull-right">
                            <li><a href="index.aspx">Pedro Minga</a></li>
                            <li><a href="contato.aspx">Contato</a></li>
                            <li><a href="https://www.facebook.com/pedromingaassessoriaesportiva?fref=ts" target="_blank"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="https://www.instagram.com/pedromingaoficial" target="_blank"><i class="fa fa-instagram"></i></a></li>
                            <li><a href="https://www.youtube.com.br/pedromingaassessoria/pedromingaassessoria" target="_blank"><i class="fa fa-youtube"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
        <!--/#footer-->
        <script src="../../../js/jquery.js"></script>
        <script src="../../../js/bootstrap.min.js"></script>
        <script src="../../../js/jquery.prettyPhoto.js"></script>
        <script src="../../../js/jquery.isotope.min.js"></script>
        <script src="../../../js/main.js"></script>
        <script src="../../../js/wow.min.js"></script>
    </form>
</body>
</html>

