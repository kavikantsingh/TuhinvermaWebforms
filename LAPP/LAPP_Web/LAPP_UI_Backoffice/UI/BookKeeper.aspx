<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="BookKeeper.aspx.cs" Inherits="LAPP_UI_Backoffice_UI_BookKeeper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../App_Themes/Theme1/css/Codes.css?" rel="stylesheet" type="text/css" />
    <script>
        $(function () {
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liHome').addClass('active');
        });
    </script>
    <style>
        .pager_style {
            text-align: left;
        }

        .bg_total {
            background-color: white;
        }

        thead th, tbody tr th {
            text-align: center;
        }

        .alignleft {
            text-align: left !important;
            padding-left: 10px !important;
        }

        .alignright {
            text-align: right !important;
            padding-right: 10px !important;
        }

        .alterbgcolor {
            background-color: #DDEBF6;
        }

        .matrix tr td, th {
            text-align: center;
            border: 1px solid #B4B4B4;
            color: rgb(0, 0, 0);
        }

        .matrix tr {
            line-height: 26px;
        }

            .matrix tr th {
                background-color: white;
            }

        .matrix {
            text-align: center;
        }

        .index tr td {
            padding-left: 5px;
        }

        .index tr .pdgnone {
            padding: 0px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="pnlTask" runat="server">
        <ContentTemplate>
            <div class="clearb">
            </div>
            <div class="main">
                <br />
                <br />
                <div class="clearb">
                </div>
                <div class="container primary-content ">
                    <div class="home-sidebar append-1 fltlft" style="width: 100%;">

                        <div class="rounded-container peel-shadows">
                            <div class="content clearfix">
                                <div>
                                    
                                        <span style="float: right; margin-top: 0px;">
                                            <asp:Button ID="btnRunReport" runat="server" Text="Run Report" class="buttonGreen medium" Style="width: 100px;" />
                                        </span>
                                    
                                    <div id="divPanelList" style="border: 1px solid rgb(222, 222, 222); margin-top: 0px; float: left; width: 88%;">
                                    <asp:Panel id="pnlBookKeeper" runat="server">
                                    <div style="margin-top: 40px;">
                                    <h4 style="text-align: center; float: left; margin-left: 18%; margin-right:5%;">CAMTC Monthly Certification Data </h4>
                                    <h4>July 7, 2009 -- February 29, 2016</h4>

                                    <table style="border: 3px solid black; margin-top: 10px;width: 98%;margin-left: 1%;" class="matrix index">
                                        <tr>
                                            <th style="text-align: left; color: black; padding-left: 10px; font-weight: bold; height: 20px !important;"><b>CASH</b></th>
                                            <th style="text-align: center; color: black; padding-left: 10px; font-weight: bold; height: 20px !important;"><b>Checking</b></th>
                                            <th style="text-align: center; color: black; padding-left: 10px; font-weight: bold; height: 20px !important;"><b>Savings / CD's</b></th>
                                            <th style="text-align: center; color: black; padding-left: 10px; font-weight: bold; height: 20px !important;"><b>TOTAL</b></th>
                                        </tr>
                                        <tr>
                                            <td class="alignleft">Current Cash Balance</td>
                                            <td class="aligncenter" width="150px">$480,928</td>
                                            <td class="aligncenter" width="150px">$2,994,615</td>
                                            <td class="aligncenter" width="150px">$3,475,543</td>
                                        </tr>
                                    </table>
                                    <table style="border: 3px solid black; margin-top: 30px;width: 98%;margin-left: 1%;" class="matrix index">
                                        <tr>
                                            <th style="text-align: left; color: black; padding-left: 10px;height: 20px !important;"><b>APPLICATIONS</b></th>
                                            <th style="height: 20px !important;"></th>
                                        </tr>
                                        <tr>
                                            <td class="alignleft">Total New Applications Received</td>
                                            <td class="aligncenter" width="150px">79,872</td>
                                        </tr>
                                        <tr>
                                            <td class="alignleft">Total Recertification Applications Received</td>
                                            <td class="aligncenter" width="150px">65,059</td>
                                        </tr>
                                        <tr>
                                            <td class="alignleft">Total Applications Received</td>
                                            <td class="aligncenter" width="150px">144,931</td>
                                        </tr>
                                        <tr>
                                            <td class="alignleft" style="height: 25px;"></td>
                                            <td class="aligncenter" width="150px"></td>
                                        </tr>
                                        <tr>
                                            <td class="alignleft">Total Pending Applications</td>
                                            <td class="aligncenter" width="150px">3,468</td>
                                        </tr>
                                        <tr>
                                            <td class="alignleft">Total Disciplinary Actions</td>
                                            <td class="aligncenter" width="150px">0</td>
                                        </tr>
                                        <tr>
                                            <td class="alignleft">Total Purged Applications</td>
                                            <td class="aligncenter" width="150px">1,288</td>
                                        </tr>
                                        <tr>
                                            <td class="alignleft">Total Certificates Issued (New & Recertifications)</td>
                                            <td class="aligncenter" width="150px">2,182</td>
                                        </tr>
                                        <tr>
                                            <td class="alignleft" style="height: 25px;"></td>
                                            <td class="aligncenter" width="150px"></td>
                                        </tr>
                                        <tr>
                                            <td class="alignleft">Total Active Certificate Holders</td>
                                            <td class="aligncenter" width="150px">50,160</td>
                                        </tr>
                                    </table>
                                    <table style="border: 3px solid black; margin-top: 30px;width: 98%;margin-left: 1%;" class="matrix index">
                                        <tr>
                                            <th style="text-align: left; color: black; height: 20px !important; padding-left: 10px;"><b>RECERTIFICATION BILLING</b></th>
                                            <th style="height: 20px !important;"></th>
                                        </tr>
                                        <tr>
                                            <td class="alignleft">Total Recertification Billed	</td>
                                            <td class="aligncenter" width="150px">85,566</td>
                                        </tr>
                                        <tr>
                                            <td class="alignleft">Total Recertification Paid</td>
                                            <td class="aligncenter" width="150px">65,059</td>
                                        </tr>
                                        <tr>
                                            <td class="alignleft">Total Recertification Expired</td>
                                            <td class="aligncenter" width="150px">17,566</td>
                                        </tr>
                                        <tr>
                                            <td class="alignleft">Total Recertification Unpaid</td>
                                            <td class="aligncenter" width="150px">2,861</td>
                                        </tr>
                                    </table>
                                    <table style="border: 3px solid black; margin-top: 30px;width: 98%; margin-bottom:15px; margin-left: 1%;" class="matrix index">
                                        <tr>
                                            <td class="aligncenter">Average # of days to approve applications with no background or education issues<br />
                                                (From date file is complete)</td>
                                            <td class="aligncenter" width="150px">3.5</td>
                                        </tr>
                                        <tr>
                                            <td class="aligncenter">Average # of days to approve applications with background or education issues<br />
                                                (From date file is complete)</td>
                                            <td class="aligncenter" width="150px">14.7</td>
                                        </tr>
                                    </table>
                                    <div class="divBulletin">
                                        <asp:Literal ID="ltrBulletin" runat="server"></asp:Literal>
                                    </div>
                                        </div>
                                        </asp:Panel>
                                        </div>
                                </div>
                            </div>
                        </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>


