<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProviderLogin.aspx.cs" Inherits="LAPP_UI_School_UI_ProviderLogin" %>


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

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

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
            z-index: 99990;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=10)";
            filter: alpha(opacity=30);
        }

        .loader2 {
            position: fixed;
            width: 100px;
            height: 40px;
            background: transparent;
            z-index: 99999;
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

</head>
<body class="bg-cyan">

    <div class="top-header">
        <div class="logo-heading">
            <div class="logo">
                <a href="ProviderLogin.aspx">
                    <img src="../../App_Themes/Login/images/logo.png" /></a>
            </div>
            <div class="heading-name">California Massage Therapy Council</div>
        </div>
    </div>
    <div class="body body-s">

        <form action="" runat="server" class="sky-form">
            <header>Log In</header>

            <fieldset>
                <section>

                    <asp:Literal ID="ltrError" runat="server" />
                    <div id="error_validation" class="address-box posFixed" style="display: none; color: red;"></div>

                </section>
                <section>
                    <label class="input">
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="User Name (Email)"></asp:TextBox>
                        <b class="tooltip tooltip-bottom-right">Please Enter E-mail</b>
                    </label>
                </section>

                <section>
                    <label class="input">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                        <b class="tooltip tooltip-bottom-right">Please Enter Password</b>
                    </label>
                    <div class="note">
                        <asp:LinkButton ID="lnkForgot" runat="server" PostBackUrl="ForgotPassword.aspx">Forgot password?</asp:LinkButton>
                    </div>
                </section>

                <section>
                    <div class="row">
                        <div class="col col-8">
                            <label class="checkbox">
                                <input type="checkbox" name="checkbox-inline" checked><i></i>Keep me logged in</label>
                        </div>
                    </div>
                </section>

            </fieldset>
            <footer>
                <asp:Button ID="btnLogin" CssClass="button" runat="server" Style="width: 100%" Text="Log In"
                    OnClick="btnLogIn_Click" />
                <a href="ProviderRegistration.aspx" class="button button-login" style="width: 85%; text-align: center;">Click here to Register</a>
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
<script src="../../Validation/FormValidation.js" type="text/javascript"></script>
<script src="../../App_Themes/Public/js/ebsoft-loader.js?" type="text/javascript"></script>
<%--<script>

    function checkfrm() {
        $('#error_validation').text('');
        var error = '';
        error += ValidateEmail('<span class="notok"></span> <%=ErrorMessage.EmailFormat%><br/>', '<span class="notok"></span> <%=ErrorMessage.Email%><br/>', '#txtEmail', $('#txtEmail').val());
        error += ValidateTextbox('<span class="notok"></span> <%=ErrorMessage.Password%><br/>', '#<%= txtPassword.ClientID %>', $('#<%= txtPassword.ClientID %>').val());

        if (error != '') {
            $('#error_validation').show();
            $('#btnLogin').attr('type', 'button');
            $(document).scrollTop(0);

            $('#error_validation').html(error);
            return false;
        }
        else {
            $('#error_validation').hide();
            $('#btnLogin').attr('type', 'submit');
            return true;
        }
    }

    $(document).ready(function () {

        $("#btnLogin").click(function (event) {

            event.preventDefault();

            if (checkfrm()) {

                ShowLoader();

                $.ajax({
                    url: "http://96.31.91.68/lappws/api/Provider/ProviderLogin/Key",
                    type: "POST",
                    data: JSON.stringify({
                        Email: $("#txtEmail").val(),
                        Password: $("#txtPassword").val()
                    }),

                    contentType: 'application/json; charset=utf-8',

                    success: function (data) {
                        if (data.Status === true) {

                            $('#error_validation').hide();

                            sessionStorage.ApplicationId = data.ApplicationId;
                            sessionStorage.ApplicationStatus = data.ApplicationStatus;
                            sessionStorage.IndividualId = data.IndividualId;
                            sessionStorage.IndividualNameId = data.IndividualNameId;
                            sessionStorage.ProviderId = data.ProviderId;
                            sessionStorage.UserId = data.UserId;
                            sessionStorage.Key = data.Key;
                            sessionStorage.IsPasswordTemporary = data.IsPasswordTemporary;

                            if (data.IsPasswordTemporary) {
                                window.location.replace("ResetPassword.aspx");
                            }
                            else {
                                if (data.ApplicationStatus === "Submitted")
                                    window.location.replace("SchoolDashboard.aspx");
                                else
                                    window.location.replace("SchoolApplication.aspx");
                            }
                        }
                        else {
                            $('#error_validation').show();
                            $('#error_validation').html("<span class='notok'></span>" + data.Message + "<br/>");
                        }
                    },
                    error: function () {
                        $('#error_validation').show();
                        $('#error_validation').html("<span class='notok'></span>Oops! Something went wrong.<br/>");
                    },
                    complete: function () {
                        HideLoader();
                    }
                });

            }

        });
    });

</script>--%>
</html>
