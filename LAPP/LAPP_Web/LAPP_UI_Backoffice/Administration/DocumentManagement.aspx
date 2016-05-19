<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/1Column.master" AutoEventWireup="true" CodeFile="DocumentManagement.aspx.cs" Inherits="LAPP_UI_Backoffice_Administration_DocumentManagement" %>



<%@ Register Src="~/Module/UI_Backoffice/Administration/ucDocumentManagement.ascx" TagName="ucDocumentManagement" TagPrefix="uc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MidContent" runat="server">
    <script src="../App_Themes/Theme1/js/jquery.mask.min.js" type="text/javascript"></script>
    <script src="../App_Themes/Theme1/Expandables/expand.js" type="text/javascript"></script>
    <script>
        $(function () {
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liAdministration').addClass('active');

            //Masking
            $('.phone_us').mask('(000) 000-0000');
            $('.ssn').mask('999-99-9999');

            //For Date of Birth jquery calender
            $('.calenderDOB').datepicker({
                inline: true,
                changeMonth: true,
                changeYear: true, minDate: "-100Y", maxDate: "-18Y",
                yearRange: "1950:+nn"

            });
        });
    </script>
    <uc1:ucDocumentManagement ID="ucDocumentManagement1" runat="server" />

</asp:Content>


