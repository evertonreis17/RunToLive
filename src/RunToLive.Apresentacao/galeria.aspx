<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="galeria.aspx.cs" Inherits="RunToLive.Apresentacao.galeria" %>

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
    <form id="galeriaForm" runat="server">
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
                            <li class="active"><a href="galeria.aspx">Galeria</a></li>
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

        <section id="portfolio">
            <div class="container">
                <div class="headerTop center wow fadeInDown">
                    <h2>Galeria</h2>
                    <p class="lead">
                        Aqui estão algumas fotos das nossas atividade, para mais fotos acesse nossa Fan Page
                        <br>
                        <a href="https://www.facebook.com/pedromingaassessoriaesportiva?fref=ts" target="_blank"><u>Pedro Minga Assessoria Esportiva</u></a>
                    </p>
                </div>


                <ul class="portfolio-filter text-center">
                    <li><a class="btn btn-default active" href="#" data-filter="*">Todas Atividades</a></li>
                    <li><a class="btn btn-default" href="#" data-filter=".bootstrap">Corridas</a></li>
                    <li><a class="btn btn-default" href="#" data-filter=".html">Treinos</a></li>
                    <li><a class="btn btn-default" href="#" data-filter=".wordpress">Condomínios</a></li>
                </ul>
                <!--/#portfolio-filter-->

                <div class="row">
                    <div class="portfolio-items">
                        <div class="portfolio-item apps html col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/portfolio/recent/foto10.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/portfolio/full/foto10.png" rel="prettyPhoto">Meninas</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item joomla bootstrap col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/portfolio/recent/foto11.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/portfolio/full/foto11.png" rel="prettyPhoto">Santos Run 2015</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item html col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/portfolio/recent/foto12.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/portfolio/full/foto12.png" rel="prettyPhoto">Alongamento</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item joomla wordpress apps col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/portfolio/recent/foto19.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/portfolio/full/foto19.png" rel="prettyPhoto">Natação Infantil</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item joomla html col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/portfolio/recent/foto9.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/portfolio/full/foto9.png" rel="prettyPhoto">Turma da Manhã  Aniversário do Professor Thyago</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item bootstrap apps col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/portfolio/recent/foto16.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/portfolio/full/foto16.png" rel="prettyPhoto">Corrida Aryton Senna 2014</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item html col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/portfolio/recent/foto15.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/portfolio/full/foto15.png" rel="prettyPhoto">Treino no Ilha Porchat</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item bootstrap col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/portfolio/recent/foto14.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/portfolio/full/foto14.png" rel="prettyPhoto">Santos Run 2015</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item html col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/portfolio/recent/foto17.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/portfolio/full/foto17.png" rel="prettyPhoto">Turma da Praia</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item html col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/portfolio/recent/foto18.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/portfolio/full/foto18.png" rel="prettyPhoto">Treino no Ilha Porchat</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item html col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/portfolio/recent/foto13.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/portfolio/full/foto13.png" rel="prettyPhoto">Turma da Zona Noroeste</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item wordpress col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/portfolio/recent/foto20.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/portfolio/full/foto20.png" rel="prettyPhoto">Aula de Hidroginástica</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                    </div>
                </div>
            </div>
        </section>
        <!--/#portfolio-item-->

        <section id="video">
            <div class="container">
                <div class="headerTop center wow fadeInDown">
                    <h2>Vídeos</h2>
                </div>

                <div class="row">
                    <div class="col-sm-6 wow fadeInLeft">
                        <!-- 16:9 aspect ratio -->
                        <div class="embed-responsive embed-responsive-16by9">
                            <video width="410" height="230" controls>
                                <source src="videos/Pedro Minga.mp4" type="video/mp4">
                                Seu Navegador não suporta a tag de vídeo.
                                Your browser does not support the video tag.
                            </video>
                        </div>
                    </div>
                    <!--/#video-item-->


                    <div class="col-sm-6 wow fadeInLeft">
                        <!-- 16:9 aspect ratio -->
                        <div class="embed-responsive embed-responsive-16by9">
                            <video width="410" height="230" controls>
                                <source src="videos/smartPedro.mp4" type="video/mp4">
                                Seu Navegador não suporta a tag de vídeo.
                                Your browser does not support the video tag.
                            </video>
                        </div>
                    </div>
                </div>
                <!--/#video-item-->
            </div>
        </section>

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

