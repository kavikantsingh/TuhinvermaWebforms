<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/1Column.master" AutoEventWireup="true" CodeFile="Email.aspx.cs" Inherits="LAPP_UI_Backoffice_Administration_Email" %>
<%@ Register Src="~/Module/UI_Backoffice/Administration/ucEmail.ascx" TagName="ucEmail" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script>
         $(function () {
             $('.nav-mainlinks li').each(function () {
                 $(this).removeClass('active');
             });
             $('#liAMG').addClass('active');

         });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
     <uc1:ucEmail ID="ucEmail1" runat="server" />
</asp:Content>

