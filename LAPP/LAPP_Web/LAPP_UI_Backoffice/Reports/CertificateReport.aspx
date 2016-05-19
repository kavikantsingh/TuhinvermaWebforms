<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/ReportPage.Master" AutoEventWireup="true" CodeFile="CertificateReport.aspx.cs" Inherits="LicenseReport" %>
<%@ Register src="~/Module/UI_Backoffice/Reports/ucCertificateReport.ascx" tagname="ucLicenseReport" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucLicenseReport ID="ucLicenseReport1" runat="server" />
</asp:Content>
