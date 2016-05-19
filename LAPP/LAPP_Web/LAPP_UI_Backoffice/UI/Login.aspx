<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="LAPP_UI_Backoffice_UI_Login" %>



<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="../../Module/UI_Backoffice/ucLogin.ascx" TagName="ucLogin" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="CACHE-CONTROL" content="NO-CACHE">
    <title>California Massage Therapy Council</title>
    <link href="../../App_Themes/Theme1/css/loginPage.css" rel="stylesheet" />
 
    <script src="App_Themes/Theme1/js/jquery-1.8.0.min.js" type="text/javascript"></script>
    <%--<script src="App_Themes/Theme1/js/jquery-ui-1.8.23.custom.min.js" type="text/javascript"></script>--%>
    <script type="text/javascript">
        $(document).ready(function () {

            $(".w_effect").focus(function () {
                if ($(this).val() == this.title) {
                    $(this).val("");
                    $(this).removeClass("w_effect");
                }
            });
            $(".w_effect").blur(function () {
                if ($.trim($(this).val()) == "") {
                    $(this).val(this.title);
                    $(this).addClass("w_effect");
                }

            });

            $(".w_effect").each(function () {

                $(this).val($(this).attr('title'));
            });
        });

        function ShowLoader() {
            $('.loader2').css('display', 'block');
            setTimeout(function () {
                HideLoader();
            }, 63000);

        }
        function HideLoader() {
            $('.loader2').css('display', 'none');
            $('.loader2').slideUp('fast');

        }
    </script>
    <style type="text/css">
        .w_effect {
            font-family: Tahoma, Arial, sans-serif;
            font-size: 75%;
            color: #ddd !important;
        }

        @media screen and (-webkit-min-device-pixel-ratio:0) {
            #ucLogin1_VCEFpassword_popupTable1, #ucLogin1_ValidatorCalloutExtender1_popupTable1, #ucLogin1_VCEEmail_popupTable1 {
                left: -202px !important;
            }

            .width146px {
                width: 157px;
            }
        }

        @-moz-document url-prefix() {
            .width146px {
                width: 146px !important;
            }
        }
    </style>
    <!--[if ie 8]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <link rel="stylesheet" type="text/css" href="App_Themes/Theme1/css/ie8.css" />
	<![endif]-->
    <script type="text/javascript">
        function startTimer() {
            // var tim = window.setTimeout("slideUp('slow')", 5000);  // 5000 milliseconds = 5 seconds
            scroll();
        }
        $(window).load(function () {
            HideLoader();
            // $('#tab').tabs();
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ToolkitScriptManager ID="tksm" runat="server">
        </asp:ToolkitScriptManager>
        <div style="background: #c0c0c0; overflow: hidden">
            <div class="container">

                <div class="forms" id="forms">
                    <div id="log-in" style="display: block;">
                        <h2 class="site-name large">
                            <a href="javascript://"><span></span></a>
                        </h2>
                        <div class="messages">
                            <ul>
                            </ul>
                        </div>
                        <div style="margin-top: 31px; position: relative">
                            <uc2:ucLogin ID="ucLogin2" runat="server" />

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
