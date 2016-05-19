<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="LAPP_UI_Backoffice_UI_ChangePassword" %>

<%@ Register Src="../../Module/UI_Backoffice/Accounts/ucChangePassword.ascx" TagName="ucChangePassword" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .posRelative {
            line-height: 40px;
        }

            .posRelative label {
                width: 200px;
                display: inline-block;
                line-height: 30px;
                text-align: right;
            }

        .flsSignupForm {
            width: 70%;
            margin: 0 auto;
        }

        .button {
            width: 160px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">

        <br />
        <div class="clearb">
        </div>
        <div class="container primary-content ">
            <div class="primary-column ">
                <h2>Change Password</h2>
                <div id="dashboard-panels ">
                    <div class="relative-box peel-shadows">
                        <div class="dynamic-panels ui-sortable" style="">
                            <div id="Cashflow" class="dashboard-panel clearfix rounded">
                                <uc1:ucChangePassword ID="ucChangePassword1" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

