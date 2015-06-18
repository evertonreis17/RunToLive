<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calendario.aspx.cs" Inherits="RunToLive.Presentation.calendario" %>

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
    <form id="CalendarioForm" runat="server">
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
                            <li><a href="equipe.aspx">Equipe</a></li>
                            <li class="active"><a href="calendario.aspx">Calendário</a></li>
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
                    <h2>Calendário</h2>
                    <p class="lead">2015</p>
                </div>


                <%--<ul class="portfolio-filter text-center">
                    <li><a class="btn btn-default active" href="#" data-filter="*">Todas Atividades</a></li>
                    <li><a class="btn btn-default" href="#" data-filter=".bootstrap">Corridas</a></li>
                    <li><a class="btn btn-default" href="#" data-filter=".html">Treinos</a></li>
                    <li><a class="btn btn-default" href="#" data-filter=".wordpress">Condomínios</a></li>
                </ul>
                <!--/#portfolio-filter-->--%>

                <div class="row">
                    <div class="portfolio-items">
                        <div class="portfolio-item apps html col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/calendar/recent/janeiro.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/calendar/full/janeiro.png" rel="prettyPhoto">Janeiro</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item joomla bootstrap col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/calendar/recent/fevereiro.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/calendar/full/fevereiro.png" rel="prettyPhoto">Fevereiro</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item html col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/calendar/recent/marco.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/calendar/full/marco.png" rel="prettyPhoto">Março</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item joomla wordpress apps col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/calendar/recent/abril.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/calendar/full/abril.png" rel="prettyPhoto">Abril</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item joomla html col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/calendar/recent/maio.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/calendar/full/maio.png" rel="prettyPhoto">Maio</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item bootstrap apps col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/calendar/recent/junho.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/calendar/full/junho.png" rel="prettyPhoto">Junho</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item html col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/calendar/recent/julho.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/calendar/full/julho.png" rel="prettyPhoto">Julho</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item bootstrap col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/calendar/recent/agosto.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/calendar/full/agosto.png" rel="prettyPhoto">Agosto</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item html col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/calendar/recent/setembro.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/calendar/full/setembro.png" rel="prettyPhoto">Setembro</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item html col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/calendar/recent/outubro.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/calendar/full/outubro.png" rel="prettyPhoto">Outubro</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item html col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/calendar/recent/novembro.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/calendar/full/novembro.png" rel="prettyPhoto">Novembro</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.portfolio-item-->

                        <div class="portfolio-item wordpress col-xs-12 col-sm-4 col-md-3">
                            <div class="recent-work-wrap">
                                <img class="img-responsive" src="images/calendar/recent/dezembro.png" alt="">
                                <div class="overlay">
                                    <div class="recent-work-inner">
                                        <h3><a class="preview" href="images/dezembro" rel="prettyPhoto">Dezembro</a></h3>
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

