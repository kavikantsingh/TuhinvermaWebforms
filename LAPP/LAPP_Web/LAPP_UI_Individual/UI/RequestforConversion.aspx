<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Individual/MasterPage/LogInPage.Master" AutoEventWireup="true" 
    CodeFile="RequestforConversion.aspx.cs" Inherits="LAPP_UI_Individual_UI_RequestforConversion" %>

<%@ Register Src="~/Module/UI_Individual/ucRequestforConversion.ascx"
    TagName="ucRequestforConversion" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <uc1:ucRequestforConversion ID="ucRequestforConversion1" runat="server" />
</asp:Content>

