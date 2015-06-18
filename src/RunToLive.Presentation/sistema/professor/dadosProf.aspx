<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dadosProf.aspx.cs" Inherits="RunToLive.Presentation.sistema.professor.dadosProf" %>

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
    <form id="ProfessoresForm" runat="server">
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
                            <li><a href="homeProf.aspx">Home</a></li>
                            <li><a href="dadosPessoaisProf.aspx">Alunos</a></li>
                            <li class="active"><a href="dadosProf.aspx">Professores</a></li>
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
                        <legend>Adicionar novo professor:</legend>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-1 control-label right" for="textinput">Email</label>
                            <div class="col-md-4">
                                <input id="txtemail" name="txtemail" type="email" placeholder="Digite o email" class="form-control input-md">
                            </div>
                            <button id="btnadd" name="btnadd" class="btn btn-primary">Adicionar</button>
                        </div>

                        <div class="form-group">
                            <label class="col-md-1 control-label" for="selectbasic">Professor(a):</label>
                            <div class="col-md-5">
                                <select id="selectbasic" name="selectbasic" class="form-control">
                                    <option value="1">Kamila</option>
                                    <option value="2">Pedro</option>
                                    <option value="3">Thyago</option>
                                    <option value="4">Anderson</option>
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
                                    <label>
                                        <input type="radio" name="rbFeminino" id="optionsRadios1" value="Feminino" checked />
                                        Feminino
                                    </label>
                                    <label>
                                        <input type="radio" name="rbMasculino" id="optionsRadios2" value="Masculino" />
                                        Masculino
                                    </label>
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
                                    <label>Campo de Atuação:</label>
                                    <!--Combobox -->
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
