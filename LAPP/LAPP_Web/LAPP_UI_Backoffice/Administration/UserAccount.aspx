<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="UserAccount.aspx.cs" Inherits="LAPP_UI_Backoffice_Administration_UserAccount" %>


<%@ Register src="../../Module/UI_Backoffice/Administration/ucUserAccount_Page.ascx" tagname="ucUserAccount_Page" tagprefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../App_Themes/Theme1/css/UserAccount.css?" rel="stylesheet" type="text/css" />
    <script>
        $(function () {
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liAdministration').addClass('active');

            //For Date of Birth jquery calender
            $('.calenderDOB').datepicker({
                inline: true,
                changeMonth: true,
                changeYear: true, minDate: "-100Y", maxDate: "-18Y",
                yearRange: "1950:+nn"

            });
            $('.OnlyAlphabet').keydown(function (e) {
                if (e.keyCode != 9) {

                    var key = e.keyCode;
                    if (!((key == 8) || (key == 32) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
                        e.preventDefault();
                    }
                }
            });
        });
        function InitiateOnlyAlphabet() {
            $('.OnlyAlphabet').keydown(function (e) {
                if (e.keyCode != 9) {

                    var key = e.keyCode;
                    if (!((key == 8) || (key == 32) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
                        e.preventDefault();
                    }
                }
            });
        }


    </script>
    <style>
        .message.showDivMsg {
            width: 90% !important;
            margin: 0 auto !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="upPanel" runat="server">
        <ContentTemplate>
          
            <uc1:ucUserAccount_Page ID="ucUserAccount_Page1" runat="server" />
          
        </ContentTemplate>
    </asp:UpdatePanel>
    <!--
    ********************************
    Start
    Update Panel Request Handler
    Javascript Method on Update
    ********************************
    -->
    <%--<script src="../../Validation/TextboxFormating.js" type="text/javascript"></script>--%>
    <script type="text/javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        //Begin request handler
        function BeginRequestHandler(sender, args) {

            ShowLoader();

            onUpdate();
            BeginScroll();

        }
        //End request handler
        function EndRequestHandler(sender, args) {

            HideLoader();
            onUpdate();
            EndScroll();

        }
        //On Update method for this page
        function onUpdate() {

            InitiateOnlyAlphabet();
            //For Date of Birth jquery calender
            $('.calenderDOB').datepicker({
                inline: true,
                changeMonth: true,
                changeYear: true, minDate: "-100Y", maxDate: "-18Y",
                yearRange: "1950:+nn"

            });

        }
    </script>
    <!--
    ********************************
    END
    Update Panel Request Handler
    Javascript Method on Update
    ********************************
    -->
</asp:Content>


