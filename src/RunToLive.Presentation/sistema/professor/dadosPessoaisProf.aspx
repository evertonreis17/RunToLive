﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dadosPessoaisProf.aspx.cs" Inherits="RunToLive.Presentation.sistema.professor.dadosPessoaisProf" %>

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
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="../../../images/ico/iconPM.png">
    <%--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">--%>
</head>
<!--/head-->
<body class="homepage">
    <form id="dadosPessoaisProfForm" runat="server">
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
                            <li><a href="homeProfessor.aspx">Home</a></li>
                            <li class="active"><a href="dadosPessoaisProf.aspx">Alunos</a></li>
                            <li><a href="dadosProfessor.aspx">Professores</a></li>
                            <li><a href="treinosProf.aspx">Treinos</a></li>
                            <li><a href="pagamentoProf.aspx">Pagamentos</a></li>
                            <li><a href="eventoProf.aspx">Eventos</a></li>
                            <li><a href="../../../index.aspx">Sair</a></li>
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
                <div class="row">
                    <fieldset>
                        <!-- Form Name -->
                        <legend>Adicionar novo aluno:</legend>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-1 control-label right" for="textinput">Email</label>
                            <div class="col-md-4">
                                <input id="txtemail" name="txtemail" type="email" placeholder="Digite o email" class="form-control input-md">
                            </div>
                            <button id="btnadd" name="btnadd" class="btn btn-primary">Adicionar</button>
                        </div>

                        <div class="form-group">
                            <label class="col-md-1 control-label" for="selectbasic">Aluno(a):</label>
                            <div class="col-md-5">
                                <select id="selectbasic" name="selectbasic" class="form-control">
                                    <option value="1">Aline</option>
                                    <option value="2">Thalita</option>
                                    <option value="3">Rafael</option>
                                    <option value="4">Verônica</option>
                                </select>
                            </div>
                        </div>
                        <button id="btnvisualizar" name="btnvisualizar" class="btn btn-primary">Visualizar</button>
                        <button id="btnexcluir" name="btnexcluir" class="btn btn-primary">Exclui</button>
                    </fieldset>
                </div>

                <div id="exTab1" class="container">
                    <ul class="nav nav-pills">
                        <li class="active">
                            <a href="#1a" data-toggle="tab">Dados Pessoais</a>
                        </li>
                        <li><a href="#2a" data-toggle="tab">Ficha de Anamnése</a>
                        </li>
                    </ul>

                    <div class="tab-content clearfix">
                        <div class="tab-pane active" id="1a">
                            <div class="row system">
                                <div class="col-md-1">
                                    <label>Código:</label>
                                    <input id="txtCd" name="txtCd" type="text" class="form-control" />
                                </div>
                                <div class="col-md-3">
                                    <label>Nome Completo:</label>
                                    <input id="txtNomeCompleto" name="txtNomeCompleto" type="text" class="form-control" />
                                </div>
                                <div class="col-md-3">
                                    <label>Data de Nascimento:</label>
                                    <input id="txtDataNascimento" name="txtDataNascimento" type="datetime" class="form-control" />
                                </div>

                                <div class="col-md-1">
                                    <label>Sexo:</label>
                                </div>
                                <div class="col-md-2">
                                    <asp:RadioButtonList runat="server">
                                        <asp:ListItem Text="Feminino" Value="F" Selected="True" />
                                        <asp:ListItem Text="Masculino" Value="M"/>
                                    </asp:RadioButtonList>
                                    <%--<label>
                                        <input type="radio" name="rbFeminino" id="optionsRadios1" value="Feminino" checked />
                                        Feminino
                                    </label>
                                    <label>
                                        <input type="radio" name="rbMasculino" id="optionsRadios2" value="Masculino" />
                                        Masculino
                                    </label>--%>
                                </div>
                                <div class="col-md-2">
                                    <img src="images/blog/avatar3.png" alt="" />
                                </div>
                            </div>
                            <%-- /1º row --%>

                            <div class="row system">
                                <div class="col-md-3">
                                    <label>Naturalidade:</label>
                                    <input id="txtNaturalidade" name="txtNaturalidade" type="text" class="form-control" />
                                </div>
                                <div class="col-md-3">
                                    <label>Nacionalidade:</label>
                                    <input id="txtNacionalidade" name="txtNacionalidade" type="text" class="form-control" />
                                </div>
                                <div class="col-md-3">
                                    <label>Profissão:</label>
                                    <input id="txtProfissao" name="txtProfissao" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /2º row --%>

                            <div class="row system">
                                <div class="col-md-3">
                                    <label>RG:</label>
                                    <input id="txtRG" name="txtRG" type="text" class="form-control" />
                                </div>
                                <div class="col-md-3">
                                    <label>CPF:</label>
                                    <input id="txtCPF" name="txtCPF" type="number" class="form-control" />
                                </div>
                                <div class="col-md-3">
                                    <label>Email:</label>
                                    <input id="txtEmail" name="txtEmail" type="email" class="form-control" />
                                </div>
                            </div>
                            <%-- /3º row --%>

                            <hr />

                            <div class="row system">
                                <div class="col-md-6">
                                    <label>Endereço:</label>
                                    <input id="txtEndereco" name="txtendereco" type="text" class="form-control" />
                                </div>
                                <div class="col-md-1">
                                    <label>Número:</label>
                                    <input id="txtNumero" name="txtNumero" type="number" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                    <label>Complemento:</label>
                                    <input id="txtCompl" name="txtCompl" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /4º row --%>

                            <div class="row system">
                                <div class="col-md-3">
                                    <label>Bairro:</label>
                                    <input id="txtBairro" name="txtBairro" type="text" class="form-control" />
                                </div>
                                <div class="col-md-3">
                                    <label>Cidade:</label>
                                    <input id="txtCidade" name="txtCidade" type="text" class="form-control" />
                                </div>
                                <div class="col-md-1">
                                    <label>Estado:</label>
                                    <input id="txtEstado" name="txtEstado" type="text" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                    <label>CEP:</label>
                                    <input id="txtCEP" name="txtCEP" type="number" class="form-control" />
                                </div>
                            </div>
                            <%-- /5º row --%>

                            <div class="row system">
                                <div class="col-md-4">
                                    <label>Telefone:</label>
                                    <input id="txtTelefone" name="txtTelefone" type="tel" class="form-control" />
                                </div>
                                <div class="col-md-4">
                                    <label>Celular:</label>
                                    <input id="txtCelular" name="txtCelular" type="tel" class="form-control" />
                                </div>
                            </div>
                            <%-- /6º row --%>
                        </div>
                        <div class="tab-pane" id="2a">

                            <div class="row system">
                                <div class="col-md-6">
                                    <label>Qual seu objetivo com o treinamento?</label>
                                    <input id="txtObjt" name="txtObjt" type="text" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                    <label>Peso:</label>
                                    <input id="txtPeso" name="txtPeso" type="number" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                    <label>Estatura:</label>
                                    <input id="txtEstatura" name="txtEstatura" type="number" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                    <label>FC Repouso:</label>
                                    <input id="txtFC" name="txtFC" type="number" class="form-control" />
                                </div>
                            </div>
                            <%-- /1º row --%>

                            <div class="row system">
                                <div class="col-md-4">
                                    <label>Prática Atividade Física:</label>
                                    <input id="txtResp1" name="txtResp1" type="text" class="form-control" />
                                </div>
                                <div class="col-md-8">
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
                                    <input id="txtResp5" name="txtResp5" type="number" class="form-control" />
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
                                <div class="col-md-2">
                                    <label>Fuma?</label>
                                    <input id="txtResp7" name="txtResp7" type="text" class="form-control" />
                                </div>
                                <div class="col-md-4">
                                    <label>Quantos cigarros por dia?</label>
                                    <input id="txtResp8" name="txtResp8" type="number" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                    <label>Ex Fumante?</label>
                                    <input id="txtResp9" name="txtResp9" type="text" class="form-control" />
                                </div>
                                <div class="col-md-4">
                                    <label>Quanto tempo parou?</label>
                                    <input id="txtResp10" name="txtResp10" type="number" class="form-control" />
                                </div>
                            </div>
                            <%-- /5º row --%>

                            <div class="row system">
                                <div class="col-md-6">
                                    <label>Consome bebida alcoólica?</label>
                                    <input id="txtResp11" name="txtResp11" type="text" class="form-control" />
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
                                    <input id="txtResp13" name="txtResp13" type="text" class="form-control" />
                                </div>
                                <div class="col-md-4">
                                    <label>Possui alterações cardíaca?</label>
                                    <input id="txtResp14" name="txtResp14" type="text" class="form-control" />
                                </div>
                                <div class="col-md-4">
                                    <label>Algum parente com roblemas cardíacos?</label>
                                    <input id="txtResp15" name="txtResp15" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /7º row --%>

                            <div class="row system">
                                <div class="col-md-4">
                                    <label>Quem?</label>
                                    <input id="txtResp16" name="txtResp16" type="text" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                    <label>É hipertenso?</label>
                                    <input id="txtResp17" name="txtResp17" type="text" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                    <label>É diabético?</label>
                                    <input id="txtResp18" name="txtResp18" type="text" class="form-control" />
                                </div>
                                <div class="col-md-4">
                                    <label>Possui algum parente diabético?</label>
                                    <input id="txtResp19" name="txtResp19" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /8º row --%>

                            <div class="row system">
                                <div class="col-md-4">
                                    <label>Tem problemas pulmonares?</label>
                                    <input id="txtResp20" name="txtResp20" type="text" class="form-control" />
                                </div>
                                <div class="col-md-4">
                                    <label>Toma algum tipo de medicamento?</label>
                                    <input id="txtResp21" name="txtResp21" type="text" class="form-control" />
                                </div>
                                <div class="col-md-4">
                                    <label>Qual?</label>
                                    <input id="txtResp22" name="txtResp22" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /9º row --%>

                            <div class="row system">
                                <div class="col-md-4">
                                    <label>Fez alguma cirurgia?</label>
                                    <input id="txtResp23" name="txtResp23" type="text" class="form-control" />
                                </div>
                                <div class="col-md-8">
                                    <label>Qual?</label>
                                    <input id="txtResp24" name="txtResp24" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /10º row --%>

                            <div class="row system">
                                <div class="col-md-4">
                                    <label>Apresenta dores nas costas?</label>
                                    <input id="txtResp25" name="txtResp25" type="text" class="form-control" />
                                </div>
                                <div class="col-md-4">
                                    <label>Apresenta dores nas articulações?</label>
                                    <input id="txtResp26" name="txtResp26" type="text" class="form-control" />
                                </div>
                                <div class="col-md-4">
                                    <label>Apresenta dores musculares?</label>
                                    <input id="txtResp27" name="txtResp27" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /11º row --%>

                            <div class="row system">
                                <div class="col-md-6">
                                    <label>Possui algum problema ortopédico diagnosticado?</label>
                                    <input id="txtResp28" name="txtResp28" type="text" class="form-control" />
                                </div>
                                <div class="col-md-6">
                                    <label>Qual?</label>
                                    <input id="txtResp29" name="txtResp29" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /12º row --%>

                            <div class="row system">
                                <div class="col-md-6">
                                    <label>Tem alguma recomendação médica para prática de atividade física?</label>
                                    <input id="txtResp30" name="txtResp30" type="text" class="form-control" />
                                </div>
                                <div class="col-md-6">
                                    <label>Qual?</label>
                                    <input id="txtResp31" name="txtResp31" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /13º row --%>

                            <div class="row system">
                                <div class="col-md-6">
                                    <label>Fez teste ergométrico(casdiovascular)recentemente?</label>
                                    <input id="txtResp32" name="txtResp32" type="text" class="form-control" />
                                </div>
                                <div class="col-md-6">
                                    <label>Fez teste ergoespirométrico(cardiopulmonar)recentemente?</label>
                                    <input id="txtResp33" name="txtResp33" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /14º row --%>

                            <div class="row system">
                                <div class="col-md-6">
                                    <label>Foi um criança/adolescente obesa ou sobrepeso?</label>
                                    <input id="txtResp34" name="txtResp34" type="text" class="form-control" />
                                </div>
                                <div class="col-md-6">
                                    <label>Seus pais são obesos ou sobrepeso?</label>
                                    <input id="txtResp35" name="txtResp35" type="text" class="form-control" />
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
                            <li><a href="https://www.youtube.com.br/pedromingaassessoria" target="_blank"><i class="fa fa-youtube"></i></a></li>
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
