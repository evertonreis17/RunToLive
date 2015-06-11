<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contato.aspx.cs" Inherits="RunToLive.Apresentacao.contato" %>

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
    <form id="ContatoForm" runat="server">
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
                            <li><a href="calendario.aspx">Calendário</a></li>
                            <li class="active"><a href="contato.aspx">Contato</a></li>
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

        <section id="contact-info">
            <div class="container">
                <div class="headerTop center">
                    <h2>Entre em Contato</h2>
                    <p>
                        <b>Telefone:</b> (13) 98214-1551
                       <br />
                        <b>Email:</b> pedrominga@uol.com.br
                    </p>
                </div>
                <div class="team">
                    <div class="center wow fadeInDown">
                        <h2>Praia</h2>
                    </div>
                </div>

                <div class="row clearfix">
                    <div class="col-md-4 col-sm-6">
                        <div class="single-profile-top wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                            <div class="media">
                                <div class="media-body">
                                    <h4>3ª e 5ª</h4>
                                    <h5>das 6:30 às 8:30</h5>
                                    <h5>das 19:00 às 21:00</h5>
                                    <br />                                    
                                    <h4>Sábado</h4>
                                    <h5>das 8:30 às 10:30</h5>
                                    <br />
                                    <h4>Endereço</h4>
                                    <h5>Av. Bartolomeu de Gusmão - Aparecida</h5>
                                    <h5>(Na praia, entre os canais 5 e 6, em frente ao Escolástica Rosa) Santos - SP</h5>
                                </div>
                            </div>
                            <!--/.media -->
                        </div>
                    </div>
                    <!--/.col-lg-4 -->

                    <div class="row">
                        <div class="col-sm-5 text-center">
                            <div class="gmap">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1916.0476844916511!2d-46.3112819!3d-23.9815668!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce02447174c0dd%3A0x20b454dc7ddba07e!2sAv.+Bartolomeu+de+Gusm%C3%A3o%2C+111+-+Aparecida%2C+Santos+-+SP!5e1!3m2!1spt-BR!2sbr!4v1429668630617" width="700" height="300" frameborder="0" style="border: 0"></iframe>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="team">
                    <div class="space center wow fadeInDown">
                        <h2>Zona Noroeste</h2>
                    </div>
                </div>

                <div class="row clearfix">
                        <div class="col-sm-5 text-center">
                            <div class="gmap">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m8!1m3!1d1524.1288399365403!2d-46.3732039!3d-23.950709!3m2!1i1024!2i768!4f13.1!4m7!1i0!3e6!4m0!4m3!3m2!1d-23.950016299999998!2d-46.373017999999995!5e1!3m2!1spt-BR!2s!4v1429669789222" width="700" height="300" frameborder="0" style="border:0"></iframe>
                            </div>
                        </div>

                    <div class="columnSpace col-md-4 col-sm-6 col-lg-offset-2">
                        <div class="single-profile-top wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                            <div class="media">
                                <div class="media-body">
                                    <h4>2ª e 4ª</h4>
                                    <h5>das 19:00 às 21:00</h5>                                    
                                    <br />
                                    <h4>Endereço</h4>
                                    <h5>Av. Afonso Schimidth - Areia Branca</h5>
                                    <h5>(Sambódromo) Santos - SP</h5>
                                </div>
                            </div>
                            <!--/.media -->
                        </div>
                    </div>
                    <!--/.col-lg-4 -->
                    
                </div>
            </div>
        </section>
        <!--/#contact-info-->

        <section id="contact-page">
            <div class="container">
                <div class="center">
                    <h2>Deixe sua Mensagem</h2>
                    <p class="lead">Tem alguma dúvida, sugestões ou reclamações? Por favor nos envie uma mensagem.</p>
                </div>
                <div class="row contact-wrap">
                    <div class="status alert alert-success" style="display: none"></div>
                    <form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="sendemail.php">
                        <div class="col-sm-5 col-sm-offset-1">
                            <div class="form-group">
                                <label>Nome *</label>
                                <input type="text" name="name" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Email *</label>
                                <input type="email" name="email" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Assunto *</label>
                                <input type="text" name="subject" class="form-control" required="required">
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div class="form-group">
                                <label>Mensagem *</label>
                                <textarea name="message" id="message" required="required" class="form-control" rows="8"></textarea>
                            </div>
                            <div class="form-group">
                                <button type="submit" name="submit" class="btn btn-primary btn-lg">Enviar</button>
                            </div>
                        </div>
                    </form>
                </div>
                <!--/.row-->
            </div>
            <!--/.container-->
        </section>
        <!--/#contact-page-->

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

