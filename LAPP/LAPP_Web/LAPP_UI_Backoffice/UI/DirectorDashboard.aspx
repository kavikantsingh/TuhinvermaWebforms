<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="DirectorDashboard.aspx.cs" Inherits="LAPP_UI_Backoffice_UI_DirectorDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                                                <div style="width: 99.8%" class="clear brdr" id="SCLAppli">
                                                    <table class="index">
                                                        <tbody>
                                                            <tr>
                                                                <th colspan="2" style="text-align: left !important;" class="hedding">School Applications Submitted this Period
                                                                </th>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" class="pdgnone">
                                                                    <table class="matrix index" style="width: 100%;" border="1">
                                                                        <tr>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;"></th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; line-height: 15px !important;">Total Applications<br /> Submitted
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Approved
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Denied 
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Applications Pending 
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Closed/Not Eligible</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <b>Massage Schools</b>
                                                                            </td>
                                                                            <td><a href="../ESD/SchoolApplication.aspx" target="_blank" id="ScholOverflowLink">232</a>
                                                                            </td>
                                                                            <td>112
                                                                            </td>
                                                                            <td>69
                                                                            </td>
                                                                            <td>34
                                                                            </td>
                                                                            <td>17</td>
                                                                        </tr>
                                                                        
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            </tbody>
                                                            </table>
                                                    <table class="index" style="margin-top: 20px;">
                                                                <tbody>
                                                            <tr>
                                                                <th colspan="2" style="text-align: left !important; background-color:#bf8e01;" class="hedding">Number of Requested Changes
                                                                </th>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" class="pdgnone">
                                                                    <table class="matrix index" style="width: 100%;" border="1">
                                                                        <tr>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;"></th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; line-height: 15px !important;">Total Change <br /> Requests 
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Change Owner
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Change  Administrator<br />/Instructor 
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Change Transcript
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Change Program </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Change Name </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Change Address </th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <b>Massage Schools</b>
                                                                            </td>
                                                                            <td>123
                                                                            </td>
                                                                            <td>3
                                                                            </td>
                                                                            <td>77
                                                                            </td>
                                                                            <td>1
                                                                            </td>
                                                                            <td>17</td>
                                                                            <td>21</td>
                                                                            <td>4</td>
                                                                        </tr>
                                                                        
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                                      </tbody>
                                                                </table>
                                                    <table class="index" style="margin-top: 20px; display:none;">
                                                        <tbody>
                                                            <tr>
                                                                <th style="text-align: left !important; background-color:#00cc01;" colspan="2" class="hedding">School Reapproval Applications Submitted this Period
                                                                </th>
                                                            </tr>
                                                                  
                                                            <tr>
                                                                <td colspan="2" class="pdgnone">
                                                                    <table class="matrix index" style="width: 100%;" border="1">
                                                                       
                                                                        <tr>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;"></th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; line-height: 15px !important;">Total Reapproval <br /> Applications Submitted 
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Application Review 
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Application Incomplete
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Schedule Site Visit
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Site Visit Incomplete</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Ready for Decision</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <b>Massage Schools</b>
                                                                            </td>
                                                                            <td>93
                                                                            </td>
                                                                            <td>17
                                                                            </td>
                                                                            <td>3
                                                                            </td>
                                                                            <td>11
                                                                            </td>
                                                                            <td>2</td>
                                                                            <td>4</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><br />
                                                                            </td>
                                                                            <td>
                                                                            </td>
                                                                            <td>
                                                                            </td>
                                                                            <td>
                                                                            </td>
                                                                            <td>
                                                                            </td>
                                                                            <td></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                            </td>
                                                                            <td>
                                                                            </td>
                                                                            <td><b> Request for Corrective Action Letter</b>
                                                                            </td>
                                                                            <td><b>Corrective Action Incomplete</b>
                                                                            </td>
                                                                            <td><b>Proposed for Denial Letter</b>
                                                                            </td>
                                                                            <td><b>Pdl Response</b></td>
                                                                            <td><b>Denial Hearing</b></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                            </td>
                                                                            <td>
                                                                            </td>
                                                                            <td>3
                                                                            </td>
                                                                            <td>1
                                                                            </td>
                                                                            <td>15
                                                                            </td>
                                                                            <td>4</td>
                                                                            <td>6</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><br />
                                                                            </td>
                                                                            <td>
                                                                            </td>
                                                                            <td>
                                                                            </td>
                                                                            <td>
                                                                            </td>
                                                                            <td>
                                                                            </td>
                                                                            <td></td>
                                                                            <td></td>
                                                                        </tr>
                                                                         <tr>
                                                                            <td>
                                                                            </td>
                                                                            <td>
                                                                            </td>
                                                                            <td><b>Denial Decision</b>
                                                                            </td>
                                                                            <td><b>Hearing Decision Letter</b>
                                                                            </td>
                                                                            <td><b>HDL Response</b>
                                                                            </td>
                                                                            <td><b>Board Appeal</b></td>
                                                                            <td><b>Final Decision Letter</b></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                            </td>
                                                                            <td>
                                                                            </td>
                                                                            <td>1
                                                                            </td>
                                                                            <td>4
                                                                            </td>
                                                                            <td>2
                                                                            </td>
                                                                            <td>13</td>
                                                                            <td>7</td>
                                                                        </tr>
                                                                        
                                                                    </table>
                                                                </td>
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

