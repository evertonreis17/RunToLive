<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="servico.aspx.cs" Inherits="RunToLive.Presentation.servico" %>

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
</head><!--/head-->

<body>
    <form id="servicoForm" runat="server">
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
                            <li class="active"><a href="servico.aspx">Serviços</a></li>
                            <li><a href="galeria.aspx">Galeria</a></li>
                            <li><a href="equipe.aspx">Equipe</a></li>
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

        <section id="services" class="service-item">
	   <div class="container">
            <div class="headerTop center wow fadeInDown">
                <h2>Serviços</h2>
            </div>

            <div class="row">

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/iconRun.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Corrida e Caminhada</h3>
                            <p>A Pedro Minga Assessoria Esportiva, tem como foco melhorar o rendimento dos alunos, desde a caminhada, tornando realidade, o sonho de correr provas de pedestrianismo.</p>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/iconCFunc.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Circuito Funcional</h3>
                            <p>Treinos coletivos em forma de circuito, visando à individualidade biológica.São trabalhadas diversas valências físicas como: Força, Resistência, Velocidade, Agilidade, Equilíbrio e Coordenação.</p>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/iconCond.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Assessoria em Condomínio</h3>
                            <p>Acompanhamento com personal trainer ou com planejamento para modalidades como: Musculação, Circuito, Caminhada, Corrida, Recreação e muito mais.</p>
                        </div>
                    </div>
                </div>  

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/iconPersonal.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Personal Trainer</h3>
                            <p>Aumento da qualidade dos treinos por meios de correções na execução dos exercícios, na postura, na respiração, no volume e intensidade do treino, séries, repetições e intervalo.</p>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/iconConsul.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Consultoria</h3>
                            <p>Uso de planilhas personalizadas com acompanhamento profissional.</p>
                        </div>
                    </div>
                </div>
                                              
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#services-->


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
