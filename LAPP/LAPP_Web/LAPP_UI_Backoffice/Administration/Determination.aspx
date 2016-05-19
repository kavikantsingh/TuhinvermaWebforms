<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/1Column.master" AutoEventWireup="true" CodeFile="Determination.aspx.cs" Inherits="LAPP_UI_Backoffice_Administration_Determination" %>

<%@ Register Src="../../Module/UI_Backoffice/Administration/ucDetermination.ascx" TagName="ucDetermination" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../../App_Themes/Theme1/js/jquery.mask.min.js" type="text/javascript"></script>
    <script src="../../Validation/TextboxFormating.js" type="text/javascript"></script>
    <script src="../../Validation/FormValidation.js" type="text/javascript"></script>

    <script>
        $(function () {
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liAdministration').addClass('active');

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
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" runat="server">

    <uc1:ucDetermination ID="ucDetermination1" runat="server" />
    <script>
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
                inline: true,
                changeMonth: true,
                changeYear: true, maxDate: "-18Y",
                yearRange: "1900:+nn"

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
        }



    </script>
</asp:Content>

