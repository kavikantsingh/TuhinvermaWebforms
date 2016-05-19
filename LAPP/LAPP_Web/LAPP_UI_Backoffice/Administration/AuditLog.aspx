<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/1Column.master" AutoEventWireup="true" CodeFile="AuditLog.aspx.cs" Inherits="LAPP_UI_Backoffice_Administration_AuditLog" %>

<%@ Register Src="../../Module/UI_Backoffice/Administration/ucAuditLog.ascx" TagName="ucAuditLog" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MidContent" runat="server">
    <script>
        $(function () {
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liAdministration').addClass('active');

        });
    </script>
    <uc1:ucAuditLog ID="ucAuditLog1" runat="server" />
    &nbsp;
</asp:Content>

