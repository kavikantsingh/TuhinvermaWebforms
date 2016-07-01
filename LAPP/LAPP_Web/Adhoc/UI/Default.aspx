<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Adhoc_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="css/bootstrap.min.css" rel="stylesheet"
        type="text/css" />
    <link href="css/sqlbuilder.css" rel="stylesheet"
        type="text/css" />
    <link rel="stylesheet" href="../../App_Themes/Theme1/jquery-ui/css/start/jquery-ui-1.8.23.custom.css" />
    <link href="../../App_Themes/Theme1/css/navigation.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../../App_Themes/Theme1/css/style.css"
        type="text/css" />
    <link rel="stylesheet" href="../../App_Themes/Theme1/css/searchPanel.css" type="text/css" />
    <link rel="stylesheet" href="../../App_Themes/Theme1/css/Publicscreen.css"
        type="text/css" />
    <link href="../../App_Themes/Theme1/css/NewButton.css" rel="stylesheet" type="text/css" />
    <!-- <link rel="stylesheet" href="App_Themes/Theme1/css/style.css"
type="text/css"> -->

    <script src="js/jquery-2.1.4.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/bootstrap-treeview.js" type="text/javascript"></script>
    <script src="js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="js/adhoc-query.js" type="text/javascript"></script>
    <script src="js/jquery.table2excel.js" type="text/javascript"></script>
    <script src="js/jquery.tabletoCSV.js" type="text/javascript"></script>
    <title>Adhoc query tool</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="">
        <nav class="navbar navbar-default">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="myDefaultNavbar1">
                    <ul class="nav navbar-nav">
                        <li><a href="adhocconn.html" target="iframe" id="dbConnection">Connect</a></li>
                        <li><a href="adhocquery.html" target="iframe">Query</a></li>
                        <li><a href="#" id="navExecute">Execute</a></li>
                        <li><a href="#">View</a></li>
                        <li><a href="#" id="navRefresh">Refresh</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Export Data 
                                <span class="caret">
                                </span>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#" id="navExportExcel">Excel</a></li>
                                <li><a href="#" id="navExportCSV">CSV</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </div>
        </nav>
        <div class="container-fluid">
            <div class="row">
                <iframe class="iframestyle" id="iframe" name="iframe" scrolling="yes" frameborder="0"></iframe>
            </div>
        </div>
        <footer class="text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-xs-12"></div>
            </div>
        </div>
        </footer>
    </div>
</asp:Content>

