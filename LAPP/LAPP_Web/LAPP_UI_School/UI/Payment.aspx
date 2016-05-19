<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Individual/MasterPage/Payment.Master" AutoEventWireup="true"
    CodeFile="Payment.aspx.cs" Inherits="NVBMT_Public.UI.Payment" %>

<%@ Register Src="~/Module/UI_School/ucPayment.ascx" TagName="ucPayment" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../App_Themes/Public/css/epayPage.css?" rel="stylesheet" type="text/css" />
    <%--<script src="../../App_Themes/Public/js/jquery.mask.min.js" type="text/javascript"></script>--%>
    <script>
       


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucPayment ID="ucPayment1" runat="server" />
</asp:Content>
