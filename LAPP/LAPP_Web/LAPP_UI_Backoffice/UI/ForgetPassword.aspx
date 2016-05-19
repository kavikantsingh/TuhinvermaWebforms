<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/AccountMaster.master"
    AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="NVBMT_WebProject_UI_ForgetPassword" %>

<%@ Register Src="~/Module/UI_Backoffice/Accounts/ucForgetPassword.ascx" TagName="ucForgetPassword"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <style>
        .messages li
        {
            background: none repeat scroll 0 0 #8AA5C6;
            border: 1px solid #89A3C2;
            border-radius: 5px 5px 5px 5px;
            color: #FFFFFF;
            font-weight: bold;
            line-height: 22px;
            margin-bottom: 3px;
            min-height: 30px;
            padding: 10px;
            text-align: center;
        }
    </style>
    <script>
        function RemoveElement(e) {
            $(e).remove();
        }
    </script>
    <uc1:ucForgetPassword ID="ucForgetPassword1" runat="server" />
</asp:Content>
