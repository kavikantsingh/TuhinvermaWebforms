<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="LAPP_UI_Agency_UI_Login" %>


<%--MasterPageFile="~/LAPP_UI_Agency/MasterPages/LogInPage.master"--%>
<%--<%@ Register Src="~/Module/UI_Agency/ucLogin.ascx" TagName="ucLogIn" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function RemoveElement(e) {
            $(e).remove();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <uc1:ucLogIn ID="ucLogIn1" runat="server" />
    <link href="../../App_Themes/Agency/jquery-ui/css/start/jquery-ui-1.9.2.custom.css?"
        rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        function BeginRequestHandler(sender, args) {
            try {
                ShowLoader();
                onUpdate();

            }
            catch (e) {
            }
        }

        function EndRequestHandler(sender, args) {
            try {
                HideLoader();
                onUpdate();
            }
            catch (e) {
            }
        }
        function onUpdate() {
            //autocomplete off
            $('.inputTextbox').attr('autocomplete', 'off');
            $('.calWidth').attr('autocomplete', 'off');
            $('input[type="text"]').attr('autocomplete', 'off');
            $('input[type="password"]').attr('autocomplete', 'off');
            $('select').attr('autocomplete', 'off');
            $('textarea').attr('autocomplete', 'off');
        }
        function ShowLoader() {
            $('.loader2').css('display', 'block');


        }
        function HideLoader() {
            $('.loader2').css('display', 'none');
            $('.loader2').slideUp('fast');

        }
        jQuery.fn.center = function () {

            this.css("position", "absolute");
            this.css("top", Math.max(0, (($(window).height() - $(this).outerHeight()) / 2) +
                                                $(window).scrollTop()) + "px");
            this.css("left", Math.max(0, (($(window).width() - $(this).outerWidth()) / 2) +
                                                $(window).scrollLeft()) + "px");
            return this;
        }

        $(function () {

      
        });
    </script>
</asp:Content>--%>


<!DOCTYPE html> 
<html>
	<head>
		<title>Log In</title>
		
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
        <link href="../../App_Themes/Login/css/forms.css" rel="stylesheet" type="text/css" />
        <link href="../../App_Themes/Login/css/style.css" rel="stylesheet" type="text/css" />
        <link href="../../App_Themes/Login/css/font-awesome.css" rel="stylesheet" type="text/css" />
        <link href="../../App_Themes/Login/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
		<!--[if lt IE 9]>
			<link rel="stylesheet" href="../../App_Themes/Login/css/sky-forms-ie8.css">
		<![endif]-->
		
		<!--[if lt IE 10]>
			<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
			<script src="../../App_Themes/Login/js/jquery.placeholder.min.js"></script>
		<![endif]-->		
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="../../App_Themes/Login/js/sky-forms-ie8.js"></script>
		<![endif]-->
	</head>
	<body class="bg-cyan">

    <div class="top-header">
    <div class="logo-heading">
    <div class="logo">
    <a href="Login.aspx"><img src="../../App_Themes/Login/images/logo.png" /></a>
    </div>
    <div class="heading-name">California Massage Therapy Council</div>
    </div>
    </div>
	<div class="body body-s">
		
			<form action="" runat="server" class="sky-form">
				<header>Log In</header>
				
				<fieldset>
                <section ><asp:Literal ID="ltrError" runat="server"></asp:Literal></section>
                <section>
						<label class="input">
                            <asp:TextBox ID="txtEmail"  runat="server" placeholder="User Name (Email)" ></asp:TextBox>
							<%--<input type="text" placeholder="User Name (Email)">--%>
							<b class="tooltip tooltip-bottom-right">Please Enter E-mail</b>
						</label>
					</section>					
					
					<section>
						<label class="input">
                             <asp:TextBox ID="txtPassword"  runat="server" TextMode="Password" placeholder="Password" ></asp:TextBox>
							<%--<input type="password" placeholder="Password">--%>
							<b class="tooltip tooltip-bottom-right">Please Enter Password</b>
                         </label>
                           <div class="note"> 
                               <asp:LinkButton ID="lnkForgot" runat="server" PostBackUrl="~/LAPP_UI_Individual/UI/ForgotPassword.aspx">Forgot password?</asp:LinkButton>

                           </div>
					</section>	
					
					
					<section>
						<div class="row">
							<div class="col col-8">
								<label class="checkbox"><input type="checkbox" name="checkbox-inline" checked><i></i>Keep me logged in</label>
							</div>
						</div>
					</section>

                   
				</fieldset>
				<footer>
					<%--<button type="submit" class="button" style=" width:100%">Log In</button>--%>
                      <asp:Button ID="btnSendEmail" CssClass="button" runat="server" style=" width:100%" Text="Log In"
                                            OnClick="btnLogIn_Click" />
                     <a href="RequestSecureAccess.aspx" class="button button-login" style="width: 85%;text-align: center;">Click here to Request Access</a>
					
				</footer>
			</form>
			
		</div>
        <div class="footer">
        <div class="footer-man">
        <div id="copyright">
                    <center>
                        Copyright © 2016 | <a href="javascript:void()" target="_blank">California Massage Therapy Council</a> | All Rights Reserved
                    </center>
                </div>
        </div>
        </div>
	</body>
</html>