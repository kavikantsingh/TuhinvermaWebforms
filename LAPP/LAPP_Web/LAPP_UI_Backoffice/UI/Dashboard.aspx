<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="LAPP_UI_Backoffice_UI_Dashboard" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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

        thead th, tbody tr th {
            text-align: center;
        }

        .matrix tr td, th {
            text-align: center;
            border-color: #B4B4B4;
        }

        .matrix {
            text-align: center;
            border-color: #B4B4B4;
        }

        .index tr td {
            padding-left: 5px;
        }

        .index tr .pdgnone {
            padding: 0px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                    <div class="span-180 span-13 home-sidebar append-1 fltlft">
                        <div class="rounded-container peel-shadows">
                            <div class="content clearfix">
                                <h4>Recent Activity
                                </h4>
                                <dl id="recent-activity" class="activity-list">
                                    <dt>You have no recent activity.</dt>
                                </dl>
                            </div>
                        </div>
                        <div class="rounded-container peel-shadows">
                            <div class="content clearfix">
                                <div>
                                    <h4>Important Message</h4>
                                    <div class="divBulletin">
                                        <asp:Literal ID="ltrBulletin" runat="server"></asp:Literal>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="primary-column span-24 fltrt">
                        <!--form 1 task start--->
                        <div class="primary-column span-24 fltrt">
                            <div id="Div1">
                                <div class="divHomePagemessage">
                                </div>
                                <div class="relative-box peel-shadows">
                                    <div class="dynamic-panels ui-sortable" style="">
                                        <div id="Div2" class="dashboard-panel clearfix">
                                            <div class="get-started-content pdng5">
                                                <!--form 1 task start--->
                                                <script>
                                                    function SelectheaderCheckboxes(headerchk, gv) {
                                                        // alert('hi');
                                                        //debugger
                                                        var gvcheck = document.getElementById(gv);
                                                        // alert(gvcheck);
                                                        var i;
                                                        if (headerchk.checked) {
                                                            for (i = 0; i < gvcheck.rows.length; i++) {
                                                                var inputs = gvcheck.rows[i].getElementsByTagName('input');
                                                                inputs[0].checked = true;
                                                            }
                                                        }
                                                        else {
                                                            for (i = 0; i < gvcheck.rows.length; i++) {
                                                                var inputs = gvcheck.rows[i].getElementsByTagName('input');
                                                                inputs[0].checked = false;
                                                            }
                                                        }
                                                    }

                                                </script>
                                                <h4>My Task <span class="fltrt">
                                                    <input type="submit" name="ctl00$ContentPlaceHolder1$ucTask1$btnAddNew" value="New Task"
                                                        id="ContentPlaceHolder1_ucTask1_btnAddNew" class="buttonGreen medium" style="width: 87px"></span></h4>
                                                <div class="signup">
                                                    <!----doo not change under this block--->
                                                    <br>
                                                </div>
                                                <!----doo not change under this block--->
                                                <div class="action-bar">
                                                    <div class="actions button-set">
                                                        <span class="arrow"></span>
                                                        <ul>
                                                            <li><a id="ContentPlaceHolder1_ucTask1_lnkArchive" class="button small gray narrow pill-left"
                                                                href='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("ctl00$ContentPlaceHolder1$ucTask1$lnkArchive", "", false, "", "javascript:void(0)", false, true))'>Archive</a> <a id="ContentPlaceHolder1_ucTask1_lnkDelete" class="button small gray narrow pill-right"
                                                                    href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$ucTask1$lnkDelete','')">Delete</a> </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <fieldset>
                                                    <div>
                                                        <table class="index" cellspacing="0" cellpadding="4" id="gvTask" style="color: #333333; width: 100%; border-collapse: collapse;">
                                                            <tbody>
                                                                <tr style="color: White; background-color: #0D83DD; border-style: None; font-weight: bold; height: 30px;">
                                                                    <th class="column_checkbox" scope="col">
                                                                        <input name="ctl00$ContentPlaceHolder1$ucTask1$gvTask$ctl01$chkMain" type="checkbox"
                                                                            id="chkMain" onchange="javascript:SelectheaderCheckboxes(this,&quot;gvTask&quot;);">
                                                                    </th>
                                                                    <th scope="col">Task Name
                                                                    </th>
                                                                    <th scope="col">Due Date
                                                                    </th>
                                                                    <th scope="col">Severity
                                                                    </th>
                                                                    <th scope="col">Action
                                                                    </th>
                                                                </tr>
                                                                <tr>
                                                                    <td class="column_checkbox" valign="middle">
                                                                        <input id="chkSelect" type="checkbox" name="ctl00$ContentPlaceHolder1$ucTask1$gvTask$ctl02$chkSelect">
                                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$ucTask1$gvTask$ctl02$hfID" id="hfID"
                                                                            value="1">
                                                                    </td>
                                                                    <td align="center" valign="middle" style="width: 125px;">Board Meeting
                                                                    </td>
                                                                    <td align="center" valign="middle" style="width: 125px;">10-24-2013
                                                                    </td>
                                                                    <td align="center" valign="middle" style="width: 200px;">Low
                                                                    </td>
                                                                    <td class="col-action" align="center" valign="middle" style="width: 180px;">
                                                                        <input type="image" name="ctl00$ContentPlaceHolder1$ucTask1$gvTask$ctl02$ImageButton1"
                                                                            id="ImageButton1" title="Edit" class="imgDelete" rowindex="0" src="../../App_Themes/Theme1/images/edit.png">
                                                                        <input type="image" name="ctl00$ContentPlaceHolder1$ucTask1$gvTask$ctl02$imgBtnDelete"
                                                                            id="imgBtnDelete" title="Delete" class="imgDelete" src="../../App_Themes/Theme1/images/delete.png"
                                                                            onclick="javascript: return confirm('Are you sure you want to delete?');">
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </fieldset>
                                                <!---form 1 task end--->
                                                <div class="clear">
                                                </div>
                                                <style>
                                                    .hedding {
                                                        background-color: #0D83DD;
                                                        height: 20px;
                                                        font-weight: bolder;
                                                        color: #fff;
                                                        padding-left: 5px;
                                                    }
                                                </style>
                                                <h4 style="padding-top: 10px;">At a Glance</h4>
                                                <div class="action-bar">
                                                    <div class="actions button-set">
                                                        &nbsp;
                                                    </div>
                                                </div>
                                                <div style="width: 99.8%" class="clear brdr">
                                                    <table class="index">
                                                        <tbody>
                                                            <tr>
                                                                <th colspan="2" style="text-align: left !important;" class="hedding">Applications
                                                                </th>
                                                            </tr>
                                                            <tr>
                                                                <td>Number of Certificate Holder Renewals Submitted this Period
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Number of Renewal by Credit/Debit Card
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Number of Renewal by ACH
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <th colspan="2" style="text-align: left !important;" class="hedding">Number of Applications Submitted this Period
                                                                </th>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" class="pdgnone">
                                                                    <table class="matrix index" style="width: 100%;" border="1">
                                                                        <tr>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;"></th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; line-height: 15px !important;">Applications/Renewals
                                                                                <br />
                                                                                Submited
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Approved
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Under Review
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Denied
                                                                            </th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <b>Certificate Holders</b>
                                                                            </td>
                                                                            <td>62
                                                                            </td>
                                                                            <td>39
                                                                            </td>
                                                                            <td>17
                                                                            </td>
                                                                            <td>6
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <b>Applicants</b>
                                                                            </td>
                                                                            <td>276
                                                                            </td>
                                                                            <td>47
                                                                            </td>
                                                                            <td>112
                                                                            </td>
                                                                            <td>117
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <b>Total</b>
                                                                            </td>
                                                                            <td>338
                                                                            </td>
                                                                            <td>86
                                                                            </td>
                                                                            <td>129
                                                                            </td>
                                                                            <td>123
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th style="text-align: left !important;" colspan="2" class="hedding">Establishment
                                                                </th>
                                                            </tr>
                                                            <tr>
                                                                <td>Number of Approved Schools
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Number of Schools expiring in the next 60 days
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearb">
                                </div>
                            </div>
                        </div>
                        <!---form 1 task end--->
                        <div class="clear">
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

