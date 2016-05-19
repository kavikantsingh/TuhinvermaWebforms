<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucCertificateReport.ascx.cs" Inherits="ucLicenseReport" %>
<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
   
<div id="Cashflow" class="dashboard-panel clearfix rounded">
    <div class="cashflow1 crtoolbar">
    </div>
    <CR:CrystalReportViewer  ID="crLicenseReport" runat="server" ReportSourceID="CrystalReportSource2"
        EnableDatabaseLogonPrompt="False" GroupTreeImagesFolderUrl="" Height="50px" PrintMode="pdf"
        DisplayStatusbar="true" ToolbarImagesFolderUrl="" ToolPanelWidth="" Width="350px"
        BestFitPage="True" ShowAllPageIds="true" ToolPanelView="None" />
</div>