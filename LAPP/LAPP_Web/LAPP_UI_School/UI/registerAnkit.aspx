<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registerAnkit.aspx.cs" Inherits="LAPP_UI_Individual_UI_registerAnkit" %>


<!DOCTYPE html>
<html>
<head>
    <title>Register</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
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
            <asp:Panel ID="pnlSignUpStep2" Visible="false" runat="server">
                <fieldset>
                    <section>

                        <asp:Literal ID="ltrSignUpSuccess" runat="server"></asp:Literal>
                    </section>
                </fieldset>
                <footer>
                    <a href="Login.aspx" class="button button-login" style="width: 85%; text-align: center;">Log In</a>
                </footer>
            </asp:Panel>
            <asp:Panel ID="upRegistration" runat="server">
                <fieldset>


                    <section>
                        <label class="input">
                            <input type="text" class="OnlyAlphabet" placeholder="First Name">
                            <b class="tooltip  tooltip-bottom-right">Please Enter First Name</b>
                        </label>
                    </section>

                    <section>
                        <label class="input">
                            <input type="text" class="OnlyAlphabet" placeholder="Middle Name">
                            <b class="tooltip tooltip-bottom-right">Please Enter Middle Name</b>
                        </label>
                    </section>

                    <section>
                        <label class="input">
                            <input type="text" class="OnlyAlphabet" placeholder="Last Name">
                            <b class="tooltip tooltip-bottom-right">Please Enter Last Name</b>
                        </label>
                    </section>

                    <section>
                        <label class="input">
                            <input type="text"  class="calender inputTextbox" placeholder="Date of Birth (mm/dd/yyyy)" style="background-image: none;" data-beatpicker="true" data-beatpicker-position="['right','*']" data-beatpicker-module="gotoDate,clear">
                            <b class="tooltip tooltip-bottom-right">Enter Date of Birth</b>
                            <script src="../../App_Themes/Login/js/BeatPicker.min.js" type="text/javascript"></script>

                        </label>
                    </section>


                    <section>
                        <label class="input">
                            <input type="text" placeholder="Email Address">
                            <b class="tooltip tooltip-bottom-right">Please Enter Email Address</b>
                        </label>
                    </section>

                     <section>
                        <label class="input">
                            <input type="text" class="OnlyAlphabet" placeholder="School Name">
                            <b class="tooltip tooltip-bottom-right">Please Enter School Name</b>
                        </label>
                    </section>

                    <%--<section style="visibility:hidden;">
                        <label class="checkbox">
                            <asp:CheckBox ID="chkEmailVerification" ClientIDMode="Static" runat="server" /><i></i>

                            Click here if you do not have an email address
to continue with the application. Username will be assigned by the system and sent through postal mail.
                        </label>
                    </section>--%>

                </fieldset>


                <footer>
                    <asp:Button ID="btnSavePersonalInfo" Style="width: 100%" CssClass="button" runat="server"
                        Text="Submit" OnClick="btnSavePersonalInfo_Click" />
               
                    <a href="Login.aspx" class="button button-login" style="width: 85%; text-align: center;">Log In</a>

                </footer>
            </asp:Panel>
        </form>
        <script src="../../Validation/TextboxFormating.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                var statusGenerator = function (text) {
                    var statusElem = $(".status-box");
                    var child = $("<span style='display: block'></span>").text(text);
                    statusElem.append(child);
                };
                myDatePicker.on("select", function (data) {
                    statusGenerator(data.string + " selected")
                });
                myDatePicker.on("change", function (data) {
                    statusGenerator("Date picker changed current date: " + data.string);
                });
                myDatePicker.on("show", function () {
                    statusGenerator("Date picker show")
                });
                myDatePicker.on("clear", function (data) {
                    statusGenerator("Date picker cleared. cleared date: " + data.string)
                });
                myDatePicker.on("hide", function () {
                    statusGenerator("Date picker hide")
                });
            })

        </script>
        
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
