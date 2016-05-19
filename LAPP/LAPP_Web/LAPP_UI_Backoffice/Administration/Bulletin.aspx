<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="Bulletin.aspx.cs" Inherits="LAPP_UI_Backoffice_Administration_Bulletin" %>



<%@ Register Src="../../Module/UI_Backoffice/Administration/ucBulletin.ascx" TagName="ucBulletin" TagPrefix="uc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(function () {
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liAdministration').addClass('active');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucBulletin ID="ucBulletin1" runat="server" />
    &nbsp;<!--
    ********************************
    Start
    Update Panel Request Handler
    Javascript Method on Update
    ********************************
    --><script type="text/javascript">
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

               //For normal jquery calender
               $('.calender').datepicker({
                   inline: true,
                   altFormat: 'DD,MM, yy',
                   changeMonth: true,
                   changeYear: true, minDate: "-50Y",
                   yearRange: "1950:2023"

               });

               //Masking section
               // $('.phone_us').mask('(000) 000-0000');
               // $('.ssn').mask('999-99-9999');



           }

    </script><!--
    ********************************
    END
    Update Panel Request Handler
    Javascript Method on Update
    ********************************
    -->

</asp:Content>


