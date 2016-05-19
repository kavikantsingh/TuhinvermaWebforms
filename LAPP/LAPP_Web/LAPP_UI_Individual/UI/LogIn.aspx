<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="LAPP_UI_Individual_UI_login" %>


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
                     <a href="Register.aspx" class="button button-login" style="width: 85%;text-align: center;">Click here to Register</a>
					
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