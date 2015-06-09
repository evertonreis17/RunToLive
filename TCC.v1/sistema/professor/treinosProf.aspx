<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="treinosProf.aspx.cs" Inherits="TCC.v1.sistema.professor.treinosProf" %>

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
    <form id="TreinosProfForm" runat="server">
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
                            <li class="active"><a href="treinosProf.aspx">Treinos</a></li>
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
                        <legend>Treinos:</legend>

                        <!-- Text input-->
                        <div class="form-group">
                            <div class="col-md-4">
                                <label>Aluno(a):</label>
                                <select id="selectbasicAluno" name="selectbasic" class="form-control">
                                    <option value="1">Kamila</option>
                                    <option value="2">Pedro</option>
                                    <option value="3">Thyago</option>
                                    <option value="4">Anderson</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label>Data/Treino:</label>
                                <select id="selectbasicData" name="selectbasic" class="form-control">
                                    <option value="1">Kamila</option>
                                    <option value="2">Pedro</option>
                                    <option value="3">Thyago</option>
                                    <option value="4">Anderson</option>
                                </select>

                            </div>
                            <button id="btnProcurar" name="btnadd" class="btn btn-primaryTreino">Procurar Treino</button>

                        </div>
                    </fieldset>
                </div>

                <div id="exTab1" class="container">
                    <ul class="nav nav-pills">
                        <li class="active">
                            <a href="#1a" data-toggle="tab">Elaboração de Treinos</a>
                        </li>
                    </ul>

                    <div class="tab-content clearfix">
                        <div class="tab-pane active" id="1a">
                            <div class="table-responsive">
                                <table class="table">
                                    <tr>
                                        <td>Data</td>
                                        <td class="center">Segunda</td>
                                        <td class="center">Terça</td>
                                        <td class="center">Quarta</td>
                                        <td class="center">Quinta</td>
                                        <td class="center">Sexta</td>
                                        <td class="center">Sábado</td>
                                        <td class="center">Domingo</td>
                                    </tr>
                                    <tr>
                                        <td>Método</td>
                                        <td class="center">
                                            <select id="Select">
                                                <option>-</option>
                                                <option>Intervalado</option>
                                                <option>Continuo Ext.</option>
                                            </select></td>
                                        <td class="center">
                                            <select id="Select1">
                                                <option>-</option>
                                                <option>Intervalado</option>
                                                <option>Continuo Ext.</option>
                                            </select></td>
                                        <td class="center">
                                            <select id="Select2">
                                                <option>-</option>
                                                <option>Intervalado</option>
                                                <option>Continuo Ext.</option>
                                            </select></td>
                                        <td class="center">
                                            <select id="Select3">
                                                <option>-</option>
                                                <option>Intervalado</option>
                                                <option>Continuo Ext.</option>
                                            </select></td>
                                        <td class="center">
                                            <select id="Select4">
                                                <option>-</option>
                                                <option>Intervalado</option>
                                                <option>Continuo Ext.</option>
                                            </select></td>
                                        <td class="center">
                                            <select id="Select5">
                                                <option>-</option>
                                                <option>Intervalado</option>
                                                <option>Continuo Ext.</option>
                                            </select></td>
                                        <td class="center">
                                            <select id="Select6">
                                                <option>-</option>
                                                <option>Intervalado</option>
                                                <option>Continuo Ext.</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>Detalhes</td>
                                        <td class="center">
                                            <select id="Select7">
                                                <option>-</option>
                                                <option>CO/Circuito</option>
                                                <option>Circuito</option>
                                                <option>Caminhada</option>
                                            </select></td>
                                        <td class="center">
                                            <select id="Select8">
                                                <option>-</option>
                                                <option>CO/Circuito</option>
                                                <option>Circuito</option>
                                                <option>Caminhada</option>
                                            </select></td>
                                        <td class="center">
                                            <select id="Select9">
                                                <option>-</option>
                                                <option>CO/Circuito</option>
                                                <option>Circuito</option>
                                                <option>Caminhada</option>
                                            </select></td>
                                        <td class="center">
                                            <select id="Select10">
                                                <option>-</option>
                                                <option>CO/Circuito</option>
                                                <option>Circuito</option>
                                                <option>Caminhada</option>
                                            </select></td>
                                        <td class="center">
                                            <select id="Select11">
                                                <option>-</option>
                                                <option>CO/Circuito</option>
                                                <option>Circuito</option>
                                                <option>Caminhada</option>
                                            </select></td>
                                        <td class="center">
                                            <select id="Select12">
                                                <option>-</option>
                                                <option>CO/Circuito</option>
                                                <option>Circuito</option>
                                                <option>Caminhada</option>
                                            </select></td>
                                        <td class="center">
                                            <select id="Select13">
                                                <option>-</option>
                                                <option>CO/Circuito</option>
                                                <option>Circuito</option>
                                                <option>Caminhada</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>Intensidade</td>
                                        <td class="center">
                                            <select id="Select14">
                                                <option>-</option>
                                                <option>Mod/Forte</option>
                                                <option>Moderado</option>
                                                <option>Fraco</option>
                                            </select></td>
                                        <td class="center">
                                            <select id="Select15">
                                                <option>-</option>
                                                <option>Mod/Forte</option>
                                                <option>Moderado</option>
                                                <option>Fraco</option>
                                            </select></td>
                                        <td class="center">
                                            <select id="Select16">
                                                <option>-</option>
                                                <option>Mod/Forte</option>
                                                <option>Moderado</option>
                                                <option>Fraco</option>
                                            </select></td>
                                        <td class="center">
                                            <select id="Select17">
                                                <option>-</option>
                                                <option>Mod/Forte</option>
                                                <option>Moderado</option>
                                                <option>Fraco</option>
                                            </select></td>
                                        <td class="center">
                                            <select id="Select18">
                                                <option>-</option>
                                                <option>Mod/Forte</option>
                                                <option>Moderado</option>
                                                <option>Fraco</option>
                                            </select></td>
                                        <td class="center">
                                            <select id="Select19">
                                                <option>-</option>
                                                <option>Mod/Forte</option>
                                                <option>Moderado</option>
                                                <option>Fraco</option>
                                            </select></td>
                                        <td class="center">
                                            <select id="Select20">
                                                <option>-</option>
                                                <option>Mod/Forte</option>
                                                <option>Moderado</option>
                                                <option>Fraco</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>Planejado</td>
                                        <td class="center">
                                            <input type="text" style="width:100px" />
                                        </td>
                                        <td class="center">
                                            <input type="text" style="width:100px" />
                                        </td>
                                        <td class="center">
                                            <input type="text" style="width:100px" />
                                        </td>
                                        <td class="center">
                                            <input type="text" style="width:100px" />
                                        </td>
                                        <td class="center">
                                            <input type="text" style="width:100px" />
                                        </td>
                                        <td class="center">
                                            <input type="text" style="width:100px" />
                                        </td>
                                        <td class="center">
                                            <input type="text" style="width:100px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Local</td>
                                        <td class="center">
                                            <input type="text" style="width:100px" />
                                        </td>
                                        <td class="center">
                                            <input type="text" style="width:100px" />
                                        </td>
                                        <td class="center">
                                            <input type="text" style="width:100px" />
                                        </td>
                                        <td class="center">
                                            <input type="text" style="width:100px" />
                                        </td>
                                        <td class="center">
                                            <input type="text" style="width:100px" />
                                        </td>
                                        <td class="center">
                                            <input type="text" style="width:100px" />
                                        </td>
                                        <td class="center">
                                            <input type="text" style="width:100px" />
                                        </td>
                                    </tr>
                                </table>
                                <div class="right">
                                    <button id="btnCadastrar" name="btnadd" class="btn btn-primaryTreino">Cadastrar</button>
                                    <button id="btnLimpa" name="btnclear" class="btn btn-primaryTreino">Limpar</button>
                                </div>
                            </div>
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
    </form>
    <!--/#footer-->
    <script src="../../../js/jquery.js"></script>
    <script src="../../../js/bootstrap.min.js"></script>
    <script src="../../../js/jquery.prettyPhoto.js"></script>
    <script src="../../../js/jquery.isotope.min.js"></script>
    <script src="../../../js/main.js"></script>
    <script src="../../../js/wow.min.js"></script>

</body>
</html>
