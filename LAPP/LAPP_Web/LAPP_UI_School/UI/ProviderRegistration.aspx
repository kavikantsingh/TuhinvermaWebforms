<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProviderRegistration.aspx.cs" Inherits="LAPP_UI_Individual_UI_ProviderRegistration" %>

<!DOCTYPE html>
<html>
<head>
    <title>Register</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

    <script src="../../Validation/FormValidation.js" type="text/javascript"></script>

    <link href="../../App_Themes/Login/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <script src="../../App_Themes/Login/js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <link href="../../App_Themes/Login/css/BeatPicker.min.css" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Login/css/forms.css" rel="stylesheet" type="text/css" />

    <link href="../../App_Themes/Login/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Login/css/style.css" rel="stylesheet" type="text/css" />

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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

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
                <a href="Login.aspx">
                    <img src="../../App_Themes/Login/images/logo.png" /></a>
            </div>
            <div class="heading-name">California Massage Therapy Council</div>
        </div>
    </div>
    <div class="body body-s">

        <form action="" runat="server" class="sky-form">

            <header>Registration</header>

            <div id="pnlSignUpStep2" style="display: none">
                <fieldset>
                    <section>
                        <asp:Label ID="ltrSignUpSuccess" runat="server"></asp:Label>
                    </section>
                </fieldset>
                <footer>
                    <a href="Login.aspx" class="button button-login" style="width: 85%; text-align: center;">Log In</a>
                </footer>
            </div>

            <div id="upRegistration">
                <fieldset>

                    <section>
                        <div id="error_validation" class="address-box posFixed" style="display: none; color: red;"></div>
                    </section>

                    <section>
                        <label class="input">
                            <input type="text" id="txtFirstName" class="OnlyAlphabet" placeholder="First Name">
                            <b class="tooltip  tooltip-bottom-right">Please Enter First Name</b>
                        </label>
                    </section>

                    <section>
                        <label class="input">
                            <input type="text" id="txtMiddleName" class="OnlyAlphabet" placeholder="Middle Name">
                            <b class="tooltip tooltip-bottom-right">Please Enter Middle Name</b>
                        </label>
                    </section>

                    <section>
                        <label class="input">
                            <input type="text" id="txtLastName" class="OnlyAlphabet" placeholder="Last Name">
                            <b class="tooltip tooltip-bottom-right">Please Enter Last Name</b>
                        </label>
                    </section>

                    <section>
                        <label class="input">
                            <input type="text" id="txtDOB" class="inputTextbox" placeholder="Date of Birth (mm/dd/yyyy)" style="background-image: none;" data-beatpicker="true" data-beatpicker-position="['right','*']" data-beatpicker-module="gotoDate,clear">
                            <b class="tooltip tooltip-bottom-right">Enter Date of Birth</b>
                            <script src="../../App_Themes/Login/js/BeatPicker.min.js" type="text/javascript"></script>
                        </label>
                    </section>

                    <section>
                        <label class="input">
                            <input type="text" id="txtEmail" placeholder="Email Address">
                            <b class="tooltip tooltip-bottom-right">Please Enter Email Address</b>
                        </label>
                    </section>

                    <section>
                        <label class="input">
                            <input type="text" id="txtSchoolName" class="OnlyAlphabet" placeholder="School Name">
                            <b class="tooltip tooltip-bottom-right">Please Enter School Name</b>
                        </label>
                    </section>

                </fieldset>

                <footer>
                    <input id="btnRegister" style="width: 100%" class="button" value="Submit" type="button" />
                    <a href="Login.aspx" class="button button-login" style="width: 85%; text-align: center;">Log In</a>
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
    <script type="text/javascript">

        function checkfrm() {

            $('#error_validation').text('');
            var error = '';
            error += ValidateEmail('<span class="notok"></span> <%=ErrorMessage.EmailFormat%><br/>', '#txtEmail', $('#txtEmail').val());
            error += ValidateTextbox('<span class="notok"></span> <%=ErrorMessage.FirstName%><br/>', '#txtFirstName', $('#txtFirstName').val());
            error += ValidateTextbox('<span class="notok"></span> <%=ErrorMessage.LastName%><br/>', '#txtLastName', $('#txtLastName').val());
            error += ValidateTextbox('<span class="notok"></span> <%=ErrorMessage.DOB%><br/>', '#txtDOB', $('#txtDOB').val());
            error += ValidateTextbox('<span class="notok"></span> <%=ErrorMessage.SchoolName%><br/>', '#txtSchoolName', $('#txtSchoolName').val());

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

            $("#btnRegister").click(function (event) {

                event.preventDefault();

                if (checkfrm()) {

                    ShowLoader();

                    $.ajax({
                        url: "http://96.31.91.68/lappws/api/Provider/ProviderRegister/key", //ToDo: Send Key to the API 
                        type: "POST",
                        data: JSON.stringify({
                            FirstName: $("#txtFirstName").val(),
                            MiddleName: $("#txtMiddleName").val(),
                            LastName: $("#txtLastName").val(),
                            DateofBirth: $("#txtDOB").val(),
                            Email: $("#txtEmail").val(),
                            SchoolName: $("#txtSchoolName").val()
                        }),

                        contentType: 'application/json; charset=utf-8',

                        success: function (data) {
                            if (data.Status) {
                                $('#upRegistration').hide();
                                $('#pnlSignUpStep2').show();
                                $('#ltrSignUpSuccess').text('Please check your email a temporary password has been sent to you. You need to login using that password.');
                            }
                            else {
                                $('#error_validation').show();
                                $('#error_validation').html("<span class='notok'></span> Oops! Something went wrong.<br/>");
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
