<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CAMTCEmails.aspx.cs" Inherits="LAPP_UI_Agency_UI_CAMTCEmails" %>
<%@ Register Src="~/Module/UI_Agency/CAMTCEmails.ascx" TagName="CAMTCEmails" TagPrefix="uc1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>California Massage Therapy Council</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="../../App_Themes/Agency/jquery-ui/js/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="../../App_Themes/Agency/js/jquery.mask.min.js" type="text/javascript"></script>
    <script src="../../App_Themes/Agency/jquery-ui/js/jquery-ui.js" type="text/javascript"></script>
    <link rel="stylesheet" href="../../App_Themes/Agency/css/style.css?" />
    <link href="../../App_Themes/Agency/css/searchPanel.css?" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Agency/css/FirmCSS.css?" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Agency/jquery-ui/css/start/jquery-ui-1.8.23.custom.css?"
        rel="stylesheet" type="text/css" />
    <%-- <link href="../../App_Themes/Agency/css/LoginPage.css" rel="stylesheet" type="text/css" />--%>
    <!-- Feeds and Pingback -->
    <link href="../../App_Themes/Agency/css/OnlineApplication.css?" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Agency/css/screen.css?" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Agency/css/skin.css?" rel="stylesheet" type="text/css" />
    <script type='text/javascript' src='../../App_Themes/Agency/js/l10n.js?ver=20101110'></script>
    <script type='text/javascript' src='../../App_Themes/Agency/js/jqueryslidemenu.js?ver=3.2.1'></script>
    <script type='text/javascript' src='../../App_Themes/Agency/js/jquery.tools.tabs.min.js?ver=1.2.5'></script>
    <script type='text/javascript' src='../../App_Themes/Agency/js/jquery.swfobject.1-1-1.min.js?ver=1.1.1'></script>
    <script type='text/javascript' src='../../App_Themes/Agency/js/video.js?ver=2.0.2'></script>
    <link href="../../App_Themes/Agency/css/Publicscreen.css?" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Agency/css/Publicskin.css?" rel="stylesheet" type="text/css" />
    <!--[if IE 8 ]>
    <link rel="stylesheet" type="text/css" href="../../App_Themes/Agency/css/ie8.css" />
    <![endif]-->
    <!--[if IE]>
	<link rel="stylesheet" type="text/css" href="../../App_Themes/Agency/css/ieAll.css" />
   <![endif]-->
    <style type='text/css'>
        .ui-autocomplete-loading {
            background: white url('//staff.nvbmt.inlumon.com/App_Themes/Agency/images/ajax-loader.gif') right center no-repeat;
        }

        doesnotexist:-o-prefocus, input[type="file"] {
            width: 183px;
        }
    </style>
    <script type="text/javascript">
        try {
            function showDivSlide(div) {

                $(div).slideDown();
            } function showDiv(div) {

                $(div).show();
            }
            function hideDivSlide(div) {

                $(div).slideUp();
            }
            function toggleDiv(div) {

                $(div).toggle();
            }
            function navigateToURL(url) {
                window.location = url;
            }
        }
        catch (e) {
        }
        function MessageShow(msg, type) {

            $('#DivAlertMessage div').removeClass('errorbox');
            $('#DivAlertMessage div').removeClass('confirmbox');

            $('#DivAlertMessage div').show();
            if (type == 1) {
                $('#DivAlertMessage div').addClass('confirmbox');
                $('#DivAlertMessage div').html('<span class="ok"></span>' + msg);
            }
            else {
                $('#DivAlertMessage div').addClass('errorbox');
                $('#DivAlertMessage div').html('<span class="notok"></span>' + msg);
            }

            setTimeout(function () {
                $('#DivAlertMessage').slideUp('slow');
            }, 180000);
            $('#DivAlertMessage').slideDown();

            $("html, body").animate({ scrollTop: 0 }, 100);
            $('#DivAlertMessage').click(function () {
                $(this).slideUp('slow');
            });
        }

        try {
            function MessageShow_Second(msg, type) {

                $('#DivAlertMessage_Second div').removeClass('errorbox');
                $('#DivAlertMessage_Second div').removeClass('confirmbox');

                $('#DivAlertMessage_Second div').show();
                if (type == 1) {
                    $('#DivAlertMessage_Second div').addClass('confirmbox');
                    $('#DivAlertMessage_Second div').html('<span class="ok"></span>' + msg);
                }
                else {
                    $('#DivAlertMessage_Second div').addClass('errorbox');
                    $('#DivAlertMessage_Second div').html('<span class="notok"></span>' + msg);
                }

                setTimeout(function () {
                    $('#DivAlertMessage_Second').slideUp('slow');
                }, 60000);
                $('#DivAlertMessage_Second').slideDown();
                $('#DivAlertMessage_Second').click(function () {
                    $(this).slideUp('slow');
                });

            }
        }
        catch (e) {
        }
        try {
            function MessageShow_Third(msg, type) {

                $('#DivAlertMessage_Third div').removeClass('errorbox');
                $('#DivAlertMessage_Third div').removeClass('confirmbox');

                $('#DivAlertMessage_Third div').show();
                if (type == 1) {
                    $('#DivAlertMessage_Third div').addClass('confirmbox');
                    $('#DivAlertMessage_Third div').html('<span class="ok"></span>' + msg);
                }
                else {
                    $('#DivAlertMessage_Third div').addClass('errorbox');
                    $('#DivAlertMessage_Third div').html('<span class="notok"></span>' + msg);
                }

                setTimeout(function () {
                    $('#DivAlertMessage_Third').slideUp('slow');
                }, 60000);
                $('#DivAlertMessage_Third').slideDown();

                $('#DivAlertMessage_Third').click(function () {
                    $(this).slideUp('slow');
                });
            }
        }
        catch (e) {
        }
        try {
            function MessageShow_Four(msg, type) {

                $('#DivAlertMessage_Four div').removeClass('errorbox');
                $('#DivAlertMessage_Four div').removeClass('confirmbox');

                $('#DivAlertMessage_Four div').show();
                if (type == 1) {
                    $('#DivAlertMessage_Four div').addClass('confirmbox');
                    $('#DivAlertMessage_Four div').html('<span class="ok"></span>' + msg);
                }
                else {
                    $('#DivAlertMessage_Four div').addClass('errorbox');
                    $('#DivAlertMessage_Four div').html('<span class="notok"></span>' + msg);
                }

                setTimeout(function () {
                    $('#DivAlertMessage_Four').slideUp('slow');
                }, 60000);
                $('#DivAlertMessage_Four').slideDown();
                $('#DivAlertMessage_Four').click(function () {
                    $(this).slideUp('slow');
                });

            }
        }
        catch (e) {
        }
        try {
            function MessageShow_Five(msg, type) {

                $('#DivAlertMessage_Five div').removeClass('errorbox');
                $('#DivAlertMessage_Five div').removeClass('confirmbox');

                $('#DivAlertMessage_Five div').show();
                if (type == 1) {
                    $('#DivAlertMessage_Five div').addClass('confirmbox');
                    $('#DivAlertMessage_Five div').html('<span class="ok"></span>' + msg);
                }
                else {
                    $('#DivAlertMessage_Five div').addClass('errorbox');
                    $('#DivAlertMessage_Five div').html('<span class="notok"></span>' + msg);
                }

                setTimeout(function () {
                    $('#DivAlertMessage_Five').slideUp('slow');
                }, 60000);
                $('#DivAlertMessage_Five').slideDown();

                $('#DivAlertMessage_Five').click(function () {
                    $(this).slideUp('slow');
                });
            }
        }
        catch (e) {
        }
    </script>
    <style>
        .loader2 {
            position: fixed;
            width: 100px;
            height: 40px;
            line-height: 40px;
            background: transparent;
            z-index: 9998;
            top: 45%;
            left: 45%;
            color: rgb(28, 112, 179);
            border-radius: 8px;
            overflow: hidden;
            padding: 10px 10px;
            background: #fff;
            text-align: center;
            font-size: 11px;
            cursor: wait;
            border: 1px solid rgb(189, 189, 189);
        }
    </style>
    <!--[if lte IE 7]>
            
        
      <div id="mask1" style="display:block">
        </div>
        <div class="noscriptmsg" style="text-align:center">
            You are using older version of browser which is not supporting!
          
        </div>
    <![endif]-->
    <noscript>
        <div id="mask1" style="display: block">
        </div>
        <div class="noscriptmsg" style="text-align: center">
            Please enable javascript.
        </div>
    </noscript>
    <style>
        #mask1 {
            background: #000;
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            opacity: 0.3;
            z-index: 999;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=10)";
            filter: alpha(opacity=30);
        }

        .noscriptmsg {
            border: 2px solid #eee;
            width: 400px;
            height: 30px;
            font-size: 16px;
            font-weight: bold;
            position: fixed;
            top: 50%;
            left: 34%;
            background: #fff;
            color: red;
            padding: 15px;
            overflow: hidden;
            z-index: 9999;
        }

        .body {
            font-family: Arial,Helvetica,sans-serif;
        }

        .mainpage {
            width: 1040px;
            margin: 0 auto;
            min-width: 940px;
            height: 100%;
        }

        .link {
            color: Blue !important;
            text-decoration: underline !important;
            cursor: pointer;
        }
    </style>
    <script type="text/javascript">
        function ActiveMenu(ID) {
            alert(id);
            $('.Act li a').each(function () {
                $(this).removeClass('actived');
            });
            $(ID).addClass('actived');
        };

        function ActiveMenuLink(div) {

            //alert(div);
            $(div).addClass('actived');
        }
        function RemoveClassLi(div) {

            $('#menu-w-licensure li').each(function () {
                var id = $(this).attr('id');
                if (id != div) {
                    $(this).removeClass('actived');
                }
            });
        }
        $("input.us_street").blur(function () {
            OnStreetChange(this);
        });
        function OnStreetChange(e) {
            $.ajax({
                type: 'POST',
                url: '../../Ajax_Handler/Address.ashx?AddressStreet=' + $(e).val(),
                dataType: 'text',

                success: function (result) {
                    $(e).val(result);
                }
            });

        }
    </script>

    <link href="../../App_Themes/Agency/css/button.css" rel="stylesheet" type="text/css" />
   
</head>
<body class="home blog">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="srm" ScriptMode="Release" runat="server" AsyncPostBackTimeout="36000">
            <Scripts>
            </Scripts>
        </asp:ScriptManager>
        <div id="header">
            <div class="inner">
                <%--            <div class="logo" style="float: left; position: relative !important; text-align: center;
                top: 7px; left: 90px;">
                <img src="../App_Themes/Theme1/images/logo.png" />
            </div>--%>
                <div id="logo_text" style="position: relative !important; text-align: center; top: 24px;">
                    <a href="#">
                        <div class="box-logo">
                        </div>
                        <span id="site_name">California Massage Therapy Council</span></a>
                </div>
                <div id="top_area">
                </div>
            </div>
        </div>
        <div class="clearboth">
        </div>
        <div style="width: 100%; background: #fff; padding: 0px 0px 60px 0px;">
            <div class="mainpage relative-box peel-shadows">
                <div class="dynamic-panels ui-sortable">
                    <div class="dashboard-panel clearfix">
                        <div class="get-started-content pdng5">
                            <div class="dashboardHeader">
                                <uc1:CAMTCEmails ID="CAMTCEmails1" runat="server" />
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="page_bottom">
        </div>
        <div id="footer">
            <div id="footer_shadow">
            </div>
            <div id="footer_bottom">
                <div class="inner">
                    <div id="copyright">
                        <center>
                            Copyright © 2016 | <a href="javascript:void()" target="_blank">California Massage Therapy Council</a> | All Rights Reserved
                        </center>
                    </div>
                    <div id="footer_right_area">
                    </div>
                    <div class="clearboth">
                    </div>
                </div>
            </div>
        </div>
        <!-------Valdiation and update panels ---->
        <script src="../../Validation/TextboxFormating.js?" type="text/javascript"></script>
        <script src="../../App_Themes/Agency/js/ebsoft-loader.js?" type="text/javascript"></script>
    </form>
</body>
</html>
