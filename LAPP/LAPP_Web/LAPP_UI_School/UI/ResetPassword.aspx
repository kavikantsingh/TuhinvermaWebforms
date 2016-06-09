<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="LAPP_UI_School_UI_ResetPassword" %>

<!DOCTYPE html>
<html>
<head>
    <title>Reset Password</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <link href="../../App_Themes/Login/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Login/css/forms.css" rel="stylesheet" type="text/css" />

    <link href="../../App_Themes/Login/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Login/css/style.css" rel="stylesheet" type="text/css" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>


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

            <header>Reset Password</header>

            <div id="pnlSuccess" style="display: none">
                <fieldset>
                    <section>
                        <asp:Label ID="ltrSuccess" runat="server"></asp:Label>
                    </section>
                </fieldset>
                <footer>
                    <a href="ProviderLogin.aspx" class="button button-login" style="width: 85%; text-align: center;">Log In</a>
                </footer>
            </div>

            <div id="upReset">
                <fieldset>

                    <section>
                        <asp:Label ID="ltrError" Visible="false" Text="Please Create new password and login again." Style="color: red;" runat="server" />
                        <asp:HiddenField ID="hdnKey" runat="server" />
                        <asp:HiddenField ID="hdnUserId" runat="server" />                        
                        <div id="error_validation" class="address-box posFixed" style="display: none; color: red;"></div>
                    </section>

                    <section>
                        <label class="input">
                            <input type="password" id="txtCurrentPassword" placeholder="Temporary/Current Password">
                            <b class="tooltip  tooltip-bottom-right">Please Enter Temporary/Current Password</b>
                        </label>
                    </section>

                    <section>
                        <label class="input">
                            <input type="password" id="txtNewPassword" placeholder="New Password">
                            <b class="tooltip tooltip-bottom-right">Please Enter New Password</b>
                        </label>
                    </section>

                    <section>
                        <label class="input">
                            <input type="password" id="txtConfirmPassword" placeholder="Confirm Password">
                            <b class="tooltip tooltip-bottom-right">Please Enter Confirm Password</b>
                        </label>
                    </section>

                </fieldset>

                <footer>
                    <input id="btnReset" style="width: 100%" class="button" value="Submit" type="button" />
                    <a href="ProviderLogin.aspx" class="button button-login" style="width: 85%; text-align: center;">Log In</a>
                </footer>

            </div>
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

    <script src="../../App_Themes/Public/js/ebsoft-loader.js?" type="text/javascript"></script>
    <script src="../../Validation/FormValidation.js" type="text/javascript"></script>

    <script type="text/javascript">

        function checkfrm() {

            $('#error_validation').text('');
            var error = '';
            error += ValidateTextbox('<span class="notok"></span> <%=ErrorMessage.CurrentPassword%><br/>', '#txtCurrentPassword', $('#txtCurrentPassword').val());
            error += ValidateTextbox('<span class="notok"></span> <%=ErrorMessage.NewPassword%><br/>', '#txtNewPassword', $('#txtNewPassword').val());
            error += ValidateTextbox('<span class="notok"></span> <%=ErrorMessage.ConfirmPassword%><br/>', '#txtConfirmPassword', $('#txtConfirmPassword').val());

            if ($("#txtNewPassword").val() !== $("#txtConfirmPassword").val()) {
                error += 'Password and Confirm Password did not match.'
            }

            if (error != '') {
                $('#error_validation').show();
                $('#btnRegister').attr('type', 'button');
                $(document).scrollTop(0);

                $('#error_validation').html(error);
                return false;
            }
            else {
                $('#error_validation').hide();
                $('#btnRegister').attr('type', 'submit');
                return true;
            }
        }

        $(document).ready(function () {

            //if (sessionStorage.IsPasswordTemporary) {
            //    setTimeout(function () {
            //        $('#error_validation').show();
            //        $('#error_validation').html("<span class='notok'></span> Please Create new password and login again.<br/>");
            //    }, 50);
            //}

            $("#btnReset").click(function (event) {

                event.preventDefault();

                if (checkfrm()) {

                    ShowLoader();

                    $.ajax({
                        url: "http://96.31.91.68/lappws/api/User/ChangePassword/" + $('#hdnKey').val(), //ToDo: Send Key to the API 
                        type: "POST",
                        data: JSON.stringify({
                            UserId: $('#hdnUserId').val(),//This should return from the Registration Page. Needs discussion suppose a user registers i save the UserId but he close the browser and try to re login again then this UserId = 0
                            OldPassword: $("#txtCurrentPassword").val(),
                            NewPassword: $("#txtNewPassword").val(),
                            ConfirmPassword: $("#txtConfirmPassword").val()
                        }),

                        contentType: 'application/json; charset=utf-8',

                        success: function (data) {
                            if (data.Status) {
                                $('#upReset').hide();
                                $('#pnlSuccess').show();
                                $('#ltrSuccess').text('Password Reset has been successful. You need to login using your new password.');

                                //sessionStorage.IsPasswordTemporary = false;
                            }
                            else {
                                $('#error_validation').show();
                                $('#error_validation').html("<span class='notok'></span>" + data.Message + "<br/>");
                            }
                        },
                        error: function () {
                            $('#error_validation').show();
                            $('#error_validation').html("<span class='notok'></span> Oops! Something went wrong.<br/>");
                        },
                        complete: function () {
                            HideLoader();
                        }
                    });

                }

            });

        });

    </script>

</body>
</html>
