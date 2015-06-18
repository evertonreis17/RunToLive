<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="equipe.aspx.cs" Inherits="RunToLive.Presentation.equipe" %>

<!DOCTYPE html>

<html lang="pt-br">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Aline Lima e Verônica Miranda">
    <title>Pedro Minga</title>

    <!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/ico/iconPM.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head>
<!--/head-->
<body>
    <form id="equipeForm" runat="server">
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
                            <img src="images/logoPM.png" alt="logo"></a>

                    </div>

                    <div class="collapse navbar-collapse navbar-right">
                        <ul class="nav navbar-nav">
                            <li><a href="index.aspx">Pedro Minga</a></li>
                            <li><a href="servico.aspx">Serviços</a></li>
                            <li><a href="galeria.aspx">Galeria</a></li>
                            <li class="active"><a href="equipe.aspx">Equipe</a></li>
                            <li><a href="calendario.aspx">Calendário</a></li>
                            <li><a href="contato.aspx">Contato</a></li>
                        </ul>
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Área do Aluno<i class="fa fa-angle-down"></i></a>
                                <div class="dropdown-menu">
                                    <form method="post" action="login" accept-charset="UTF-8">
                                        <input class="navbar-form" type="email" placeholder="Email" id="username" name="username">
                                        <input class="navbar-form" type="password" placeholder="Senha" id="password" name="password">
                                        <input type="checkbox" name="Lembre-me" id="remember-me" value="1">
                                        <label for="user_remember_me">Lembre-me</label>
                                        <input class="btn btn-primary btn-block" type="submit" id="sign-in" value="Entrar">
                                    </form>
                                </div>
                            </li>
                        </ul>
                        <!--/.dropdown-->
                    </div>
                </div>
                <!--/.container-->
            </nav>
            <!--/nav-->

        </header>
        <!--/header-->


        <section id="middle">
            <div class="container">
                <div class="headerTop center wow fadeInDown">
                    <h2>Equipe</h2>
                </div>
                <div class="row">
                    <div class="col-md-4 wow fadeInDown">
                        <div class="clients-comments text-center">
                            <img src="images/prof1.jpg" class="img-rounded" alt="">
                            <h4><span>-Pedro Minga /</span>  Fundador</h4>
                            <h3>Licenciado e bacharel em Educação Física (FEFIS - UNIMES) 2008.</h3>
                            <h3>Pós - Graduação em treinamento Desportivo (UGF/SP) 2010.</h3>
                        </div>
                    </div>



                    <div class="col-sm-8 wow fadeInDown">
                        <div class="accordion">
                            <div class="panel-group" id="accordion1">
                                <div class="panel panel-default">
                                    <div class="panel-heading active">
                                        <h3 class="panel-title">
                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1">Thyago Albuquerque Vasconcelos
                                            <i class="fa fa-plus pull-right"></i>
                                            </a>
                                        </h3>
                                    </div>

                                    <div id="collapseOne1" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <div class="media accordion-inner">
                                                <div class="pull-left">
                                                    <img class="img-responsive" src="images/prof2.jpg">
                                                </div>
                                                <div class="media-body">
                                                    <p>Licenciado e bacharel no curso de Educação Física e Esportes (Universidade Santa Cecília) 2013.</p>
                                                    <h4>Função: Corrida/Caminhada e Circuito Funcional.</h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">
                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo1">Kamila Nakamura
                                            <i class="fa fa-plus pull-right"></i>
                                            </a>
                                        </h3>
                                    </div>
                                    <div id="collapseTwo1" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <div class="media accordion-inner">
                                                <div class="pull-left">
                                                    <img class="img-responsive" src="images/prof3.jpg">
                                                </div>
                                                <div class="media-body">
                                                    <p>Licenciada e bacharela no curso de Educação Física e Esportes (Universidade Santa Cecília) 2012. </p>
                                                    <h4>Função: Atividades Aquáticas e Recreação.</h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">
                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseThree1">Alexandre Tavares Santiago
                                            <i class="fa fa-plus pull-right"></i>
                                            </a>
                                        </h3>
                                    </div>
                                    <div id="collapseThree1" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <div class="media accordion-inner">
                                                <div class="pull-left">
                                                    <img class="img-responsive" src="images/prof4.jpg">
                                                </div>
                                                <div class="media-body">
                                                    <p>Licenciado e bacharel em Educação Física (FEFIS - UNIMES) 1999. </p>
                                                    <h4>Função: Atividades Aquáticas e Recreação.</h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">
                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseFour1">Yan Reis
                                            <i class="fa fa-plus pull-right"></i>
                                            </a>
                                        </h3>
                                    </div>
                                    <div id="collapseFour1" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <div class="media accordion-inner">
                                                <div class="pull-left">
                                                    <img class="img-responsive" src="images/prof5.jpg">
                                                </div>
                                                <div class="media-body">
                                                    <p>Licenciado e bacharel em Educação Física (FEFIS - UNIMES) 2008.</p>
                                                    <h4>Função: Personal Trainer.</h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--/#accordion1-->
                        </div>
                    </div>

                </div>
                <!--/.row-->
            </div>
            <!--/.container-->
        </section>
        <!--/#middle-->


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
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/jquery.isotope.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/wow.min.js"></script>
    </form>
</body>
</html>

