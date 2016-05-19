<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/1Column.master" AutoEventWireup="true" CodeFile="Appeal.aspx.cs" Inherits="LAPP_UI_Backoffice_Administration_Appeal" %>

<%@ Register Src="../../Module/UI_Backoffice/Administration/ucAppeal.ascx" TagName="ucAppeal" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MidContent" runat="server">
    <script>
        $(function () {
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liAdministration').addClass('active');

        });
    </script>
    <uc1:ucAppeal ID="ucAppeal1" runat="server" />
</asp:Content>

