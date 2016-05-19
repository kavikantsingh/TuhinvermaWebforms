<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucContactDashboardHeader.ascx.cs" Inherits="Module_UI_School_ucContactDashboardHeader" %>

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

    .dashboard-block-right-top {
        height: 208px;
        margin-bottom: 10px;
        border-radius: 4px;
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
</style>
<div class="dashboard-header">
    <div class="float_left">
        <h4 style="text-align: left; margin: 0px !important;">
            <asp:Literal ID="ltrDashboard" runat="server">Dashboard</asp:Literal>
            <%--<span>
                <asp:LinkButton ID="lnkBacktoDashboard" runat="server" PostBackUrl="~/LAPP_UI_School/UI/SchoolOwnerDashboard.aspx">
                    &larr; Back to Dashboard
                </asp:LinkButton>
            </span>--%>
        </h4>
        <p style="font-size: 15px;">
            Welcome <span class= "bold"> Mike Sullivan </span> | <span class= "bold"> A2 School </span> | <a href="ChangePassword.aspx?q=1">Change
                Password</a> | <a href="Login.aspx">Sign Out</a>
        </p>
        <p style="text-align: left;">
            Not <b>Mike Sullivan?</b> <a href="Login.aspx">Click here to log out</a>
        </p>
    </div>
    <div class="login-header">
    </div>
</div>