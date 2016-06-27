<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="TemplateMessage.aspx.cs" Inherits="LAPP_UI_Backoffice_Administration_TemplateMessage" %>


<%@ Register Src="../../Module/UI_Backoffice/Administration/ucMessageTemplate.ascx" TagName="ucMessageTemplate" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        $(function () {
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liAdministration').addClass('active');
        });
    </script>

    <!--
    ********************************
    Start
    Update Panel Request Handler
    Javascript Method on Update
    ********************************
    -->
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
            $('.txtDatePicker').datepicker(
                {
                    dateFormat: 'm/d/yy',
                    changeMonth: true,
                    changeYear: true,
                    yearRange: '1950:2100'
                });
            //For normal jquery calender
            //            $('.calender').datepicker({
            //                inline: true,
            //                altFormat: 'DD,MM, yy',
            //                changeMonth: true,
            //                changeYear: true, minDate: "-50Y",
            //                yearRange: "1950:2023"

            //            });
            //Grid event
            //gridEvent();
        }

    </script>
    <!--
    ********************************
    END
    Update Panel Request Handler
    Javascript Method on Update
    ********************************
    -->
    <uc1:ucMessageTemplate ID="ucMessageTemplate1" runat="server" />
</asp:Content>


