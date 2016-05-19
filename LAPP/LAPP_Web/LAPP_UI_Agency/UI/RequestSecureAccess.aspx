<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RequestSecureAccess.aspx.cs" Inherits="LAPP_UI_Agency_UI_RequestSecureAccess" %>

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
    <style>
        .sky-form .checkbox {
	margin-bottom: 4px;
	padding-left: 27px;
	font-size: 13px;
	line-height: 23px;
	color: #404040;
	cursor: pointer;
}

        .dropdown_css {
    width: 100%;
    height: 39px;
    padding: 8px 10px;
    color: rgb(141, 141, 141);
    font: 15px/19px "Open Sans",Helvetica,Arial,sans-serif;
    border: 1px solid rgb(229, 229, 229);
    transition: border-color 0.3s ease 0s;
    -o-transition: border-color 0.3s;
    -ms-transition: border-color 0.3s;
    -moz-transition: border-color 0.3s;
    -webkit-transition: border-color 0.3s;
}

        .listcss{height: 70px;
background-color: white;
width: 100%;
border: 1px solid rgb(222, 222, 222);
padding-left: 10px;}
        .listcss input{
            width:auto !important;
            height:auto !important;
            margin-top: 6px;
            float:left;
       
        }

        .listcss label {
            float:left;
            margin-left:5px;
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
            <header>Request Secure Access for Government Officials</header>
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
                            <input type="text" class="OnlyAlphabet" placeholder="Last Name">
                            <b class="tooltip tooltip-bottom-right">Please Enter Last Name</b>
                        </label>
                    </section>

                    <section>
                        <label class="input">
                            <input type="text" class="OnlyAlphabet" placeholder="Government Agency">
                            <b class="tooltip tooltip-bottom-right">Please Enter Government Agency</b>
                        </label>
                    </section>

                     <section>
                        <label class="input">
                            <input type="text" class="OnlyAlphabet" placeholder="Title">
                            <b class="tooltip tooltip-bottom-right">Please Enter Title</b>
                        </label>
                    </section>

                     <section>
                        <label class="input">
                            <input type="text" placeholder="Address">
                            <b class="tooltip tooltip-bottom-right">Please Enter Address</b>
                        </label>
                    </section>

                     <section>
                        <label class="input">
                            <input type="text" placeholder="Phone Number">
                            <b class="tooltip tooltip-bottom-right">Please Enter Phone Number</b>
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
                            <input type="text" placeholder="Email Address">
                            <b class="tooltip tooltip-bottom-right">Please Enter Email Address</b>
                        </label>
                    </section>

                    <section>
                        <label class="input">
                            Select as many Counties & Cities that you would like to receive CAMTC notifications for :
                        </label>
                    </section>
                   
                     <section>
                            <asp:CheckBoxList ID="CheckBoxList1" style="height: 70px;" CssClass="listcss"  runat="server">
                                <asp:ListItem>Select All</asp:ListItem>
                                <asp:ListItem>Country 1</asp:ListItem>
                                <asp:ListItem>Country 2</asp:ListItem>
                                <asp:ListItem>Country 3</asp:ListItem>
                                <asp:ListItem>Country 4</asp:ListItem>
                                <asp:ListItem>Country 5</asp:ListItem>
                            </asp:CheckBoxList>
                           
                           
                        
                    </section>

                     <section>
                         <asp:CheckBoxList ID="CheckBoxList2" style="height: 70px;" CssClass="listcss"  runat="server">
                                <asp:ListItem>Select All</asp:ListItem>
                                <asp:ListItem>City 1</asp:ListItem>
                                <asp:ListItem>City 2</asp:ListItem>
                                <asp:ListItem>City 3</asp:ListItem>
                                <asp:ListItem>City 4</asp:ListItem>
                                <asp:ListItem>City 5</asp:ListItem>
                            </asp:CheckBoxList>
                    </section>


                   


                    <section >
                        <label class="checkbox">
                            <asp:CheckBox ID="chkVerify1" ClientIDMode="Static" runat="server" /><i></i>
                            I would like to receive notifications regarding all<b> suspensions, revocations and permanent Revocations </b>of Certificate Holders in the jurisdiction(s) I have selected above, and agree that this information is being used for official purposes only.
                        </label>
                    </section>
                    <section >
                        <label class="checkbox">
                            <asp:CheckBox ID="ckverify2" ClientIDMode="Static" runat="server" /><i></i>
                            I would like to receive notifications regarding when <b>proposed denials</b>  and<b> disciplinary letters</b> are sent to Applicants and Certificate Holders in the jurisdiction(s) I have selected above, and agree that this information is being used for official purposes only.
                        </label>
                    </section>
                    <section >
                        <label class="checkbox">
                            <asp:CheckBox ID="CheckBox1" ClientIDMode="Static" runat="server" /><i></i>
                            I would like to receive notifications regarding when<b> final decision letters </b>are sent to Applicants and Certificate Holders in the jurisdiction(s) I have selected above, and agree that this information is being used for official purposes only.
                        </label>
                    </section>
                    <section >
                        <label class="checkbox">
                            <asp:CheckBox ID="CheckBox2" ClientIDMode="Static" runat="server" /><i></i>
                            I would like to receive notifications of <b>reinstatement / lifting of suspension</b> of Applicants and Certificate Holders in the jurisdiction(s) I have selected above, and agree that this information is being used for official purposes only.
                        </label>
                    </section>
                    <section >
                        <label class="checkbox">
                            <asp:CheckBox ID="CheckBox3" ClientIDMode="Static" runat="server" /><i></i>
                            I would like to receive notifications regarding <b>new work locations</b> of Applicants and Certificate Holders in the jurisdiction(s) I have selected above, and agree that this information is being used for official purposes only.
                        </label>
                    </section>

                     <section >
                        <label class="checkbox">
                            <asp:CheckBox ID="CheckBox4" ClientIDMode="Static" runat="server" /><i></i>
                          I would like to receive notifications of <b>complaints</b> about Applicants and Certificate Holders in the jurisdiction(s) I have selected above, and agree that this information is being used for official purposes only.
                        </label>
                    </section>

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
