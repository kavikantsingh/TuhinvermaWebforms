<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucAgencyDashboardHeader.ascx.cs" Inherits="Module_UI_Agency_ucAgencyDashboardHeader" %>
<style>
    span.bold {
        font-weight: bold;
    }

    .user-dashboard {
        min-height: 450px;
        clear: both;
        overflow: hidden;
    }

    .dashboard-header {
        padding: 5px 5px 8px 5px;
        text-align: right;
        border-bottom: 2px solid #35ADDB;
        margin-bottom: 15px;
        height: 70px;
    }

    .dashboard-block-left {
        float: left;
        width: 600px;
        min-height: 350px;
        border-radius: 4px;
    }

    .dashboard-block-right {
        float: right;
        width: 380px;
        min-height: 350px;
    }

    .dashboard-border {
        border: 1px solid #89CAE4;
    }

    .dashboard-block-right-top.dashboard-border {
    }

    .dashboard-block-header {
        background: #35ADDB;
        padding: 5px;
        color: #fff;
        font-weight: bold;
        line-height: 20px;
    }

    .dashboard-header a {
        color: Blue !important;
        text-decoration: underline !important;
    }
</style>
<div class="dashboard-header">
    <div class="float_left">
        <h4 style="text-align: left; margin: 0px !important;">
            <asp:Literal ID="ltrDashboard" runat="server"></asp:Literal>
            <% Response.Write(this.Page.Title); %><span>
            </span></h4>
        <p style="font-size: 15px;">
            <span class="">Welcome to the Government Agencies Secure site</span>
        </p>
        <p style="text-align: left;">
            <asp:LinkButton ID="lnkBacktoDashboard" runat="server" PostBackUrl="~/Lapp_Ui_Agency/UI/Dashboard.aspx">&larr; Back to Dashboard</asp:LinkButton><% if (lnkBacktoDashboard.Visible)
                                                                                                                                                                { %> | <%} %><a href="../../LAPP_UI_Agency/UI/CAMTCEmails.aspx">CAMTC Emails</a> | <a href="#">Change Password</a> | <a href="Login.aspx">Sign Out</a>
        </p>
    </div>
    <div class="login-header">
    </div>
</div>
