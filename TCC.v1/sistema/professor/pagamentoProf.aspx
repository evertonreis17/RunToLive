﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pagamentoProf.aspx.cs" Inherits="TCC.v1.sistema.professor.pagamentoProf" %>

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
    <script src="../../../js/html5shiv.js"></script>
    <script src="../../../js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="../../../images/ico/iconPM.png">
    <%--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">--%>
</head>
<!--/head-->
<body class="homepage">
    <form id="pagamentoProfForm" runat="server">
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
                            <li><a href="dadosProf.aspx">Professores</a></li>
                            <li><a href="treinosProf.aspx">Treinos</a></li>
                            <li class="active"><a href="pagamentoProf.aspx">Pagamentos</a></li>
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
                        <legend>Pagamentos:</legend>

                        <!-- Text input-->
                        <div class="form-group">
                            <div class="col-md-4">
                                <select id="selectbasic" name="selectbasic" class="form-control">
                                    <option value="1">Aline</option>
                                    <option value="2">Thalita</option>
                                    <option value="3">Rafael</option>
                                    <option value="4">Verônica</option>
                                </select>
                            </div>
                            <button id="btnVerificarPagamento" name="btnadd" class="btn btn-primary">Verificar Pagamento</button>
                        </div>
                    </fieldset>
                </div>

                <div id="exTab1" class="container">
                    <ul class="nav nav-pills">
                        <li class="active">
                            <a href="#1a" data-toggle="tab">Mensalidade e Itens de Compra</a>
                        </li>
                        <li>
                            <a href="#2a" data-toggle="tab">Pedidos</a>
                        </li>
                        <li>
                            <a href="#3a" data-toggle="tab">Recibos</a>
                        </li>
                    </ul>

                    <div class="tab-content clearfix">
                        <div class="tab-pane active" id="1a">
                            <div class="row system">
                                <div class="col-md-1">
                                    <label>Código:</label>
                                    <input id="txtCd" name="txtCd" type="text" class="form-control" />
                                </div>
                            </div>
                            <%-- /1º row --%>

                        </div>
                        <div class="tab-pane" id="2a">

                        </div>

                        <div class="tab-pane" id="3a">

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

