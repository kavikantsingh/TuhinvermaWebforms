﻿<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/1Column.master" AutoEventWireup="true" CodeFile="InHouseClearance.aspx.cs" Inherits="LAPP_UI_Backoffice_Workflow_InHouseClearance" %>

<%@ Register Src="~/Module/UI_Backoffice/Workflow/ucInHouseClearance.ascx" TagPrefix="uc1" TagName="ucInHouseClearance" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../../App_Themes/Theme1/css/OnlineApplication.css" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Theme1/css/Publicscreen.css" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Theme1/css/Publiskin.css" rel="stylesheet" type="text/css" />
    <script src="../../App_Themes/Theme1/js/jquery.mask.min.js" type="text/javascript"></script>
    <link href="../../App_Themes/Theme1/jquery-ui/css/start/jquery-ui-1.9.2.custom.css"
        rel="stylesheet" type="text/css" />
    <script src="../../Validation/TextboxFormating.js" type="text/javascript"></script>
    <script src="../../Validation/FormValidation.js" type="text/javascript"></script>
    <link href="../../App_Themes/Theme1/css/NewButton.css" rel="stylesheet" type="text/css" />
    <!--[if IE]>
<link href="../../App_Themes/Theme1/css/ie8.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../../App_Themes/Theme1/css/ieAll.css" />
	<![endif]-->
    <script>
        $(function () {
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liPSD').addClass('active');

        });

    </script>
    <script>
        function InitiatePage() {
            MaskCalenderDOB();
            MaskPhone();
            MaskSSN();
            MaskCalender();
        }
    </script>
    <style>
        a.small {
            top: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" runat="Server">
    <div class="get-started-content">
        <uc1:ucInHouseClearance runat="server" ID="ucInHouseClearance" />
    </div>
    <script type="text/javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        function BeginRequestHandler(sender, args) {
            try {
                //alert('aa');
                ShowLoader();
                //alert('hi');
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
        function MaskCalender() {

            $('.calender').datepicker({
                inline: true,
                altFormat: 'DD,MM, yy',
                changeMonth: true,
                changeYear: true //, minDate: "0"

            }); $('.calender').mask("99/99/9999");
        }
        function MaskCalenderDOB() {

            $('.calenderDOB').datepicker({

                constrainInput: true, inline: true,
                changeMonth: true,
                changeYear: true, minDate: "-100Y", maxDate: "-18Y",
                yearRange: "1950:+nn"

            }); $('.calenderDOB').mask("99/99/9999");
        }
        function MaskSSN() {

            $('.ssn').mask('999-99-9999'); $('.calender').mask("99/99/9999"); $('.zip_us').mask("99999-9999");
        }
        function MaskPhone() {

            $('.phone_us').mask('(000) 000-0000');
        }
        function onUpdate() {
            InitiateOnlyAlphabet();
            InitiateOnlyNumeric();
            InitiateCalender();
            InitiateMasking();
            InitiateTooltip();
            $("input.us_street").blur(function () {
                OnStreetChange(this);
            });
        }



    </script>
</asp:Content>

