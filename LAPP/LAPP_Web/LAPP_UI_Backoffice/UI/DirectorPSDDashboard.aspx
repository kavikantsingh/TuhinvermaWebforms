<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="DirectorPSDDashboard.aspx.cs" Inherits="LAPP_UI_Backoffice_UI_DirectorPSDDashboard" %>

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
        .matrix tr td a{ color:blue;}
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
                                                
                                                <div style="width: 99.8%" class="clear brdr" id="SCLAppli">
                                                    <table class="index">
                                                        <tbody>
                                                            <tr>
                                                                <th colspan="2" style="text-align: left !important; background-color: #93d28f; color: black;"
                                                                    class="hedding">Certification (Applicants)
                                                                </th>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" class="pdgnone">
                                                                    <div style="float: left; width: 10%; text-align: right; padding-top: 60px;"><b>Average Days in Queue</b></div>
                                                                    <table class="matrix index" style="width: 88%; float: right; margin-right: 10px; margin-top: 10px; line-height: 25px;" border="1">
                                                                        <tr>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Complaints</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; line-height: 15px !important;">In House Clearance
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Psd Waiting Room
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Call Sheet 
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">At PSD
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">PSD Meeting Notes</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">PSD Tracking</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Memo to Counsel</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><a href="">23</a>
                                                                            </td>
                                                                            <td><a href="../ESD/SchoolApplication.aspx" target="_blank" id="ScholOverflowLink">14</a>
                                                                            </td>
                                                                            <td><a href="">55</a>
                                                                            </td>
                                                                            <td><a href="">11</a>
                                                                            </td>
                                                                            <td><a href="">31</a>
                                                                            </td>
                                                                            <td><a href="">4</a></td>
                                                                            <td><a href="">2</a></td>
                                                                            <td><a href="">6</a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>3
                                                                            </td>
                                                                            <td>7
                                                                            </td>
                                                                            <td>11
                                                                            </td>
                                                                            <td>13
                                                                            </td>
                                                                            <td>22
                                                                            </td>
                                                                            <td>1</td>
                                                                            <td>2</td>
                                                                            <td>6</td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table class="index" style="margin-top: 20px;">
                                                        <tbody>
                                                            <tr>
                                                                <th colspan="2" style="text-align: left !important; background-color: rgb(189, 215, 238); color: black;"
                                                                    class="hedding">Recertification (CMT Certificate Holders)
                                                                </th>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" class="pdgnone">
                                                                    <div style="float: left; width: 10%; text-align: right; padding-top: 60px;"><b>Average Days in Queue</b></div>
                                                                    <table class="matrix index" style="width: 88%; float: right; margin-right: 10px; margin-top: 10px; line-height: 25px;" border="1">
                                                                        <tr>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Complaints</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; line-height: 15px !important;">In House Clearance
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Psd Waiting Room
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Call Sheet 
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">At PSD
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">PSD Meeting Notes</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">PSD Tracking</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Memo to Counsel</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><a href="">7</a>
                                                                            </td>
                                                                            <td><a href="../ESD/SchoolApplication.aspx" target="_blank" id="ScholOverflowLink">3</a>
                                                                            </td>
                                                                            <td><a href="">5</a>
                                                                            </td>
                                                                            <td><a href="">14</a>
                                                                            </td>
                                                                            <td><a href="">2</a>
                                                                            </td>
                                                                            <td><a href="">1</a></td>
                                                                            <td><a href="">1</a></td>
                                                                            <td><a href="">2</a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>4
                                                                            </td>
                                                                            <td>3
                                                                            </td>
                                                                            <td>7
                                                                            </td>
                                                                            <td>13
                                                                            </td>
                                                                            <td>15
                                                                            </td>
                                                                            <td>1</td>
                                                                            <td>2</td>
                                                                            <td>12</td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table class="index" style="margin-top: 20px;">
                                                        <tbody>
                                                            <tr>
                                                                <th style="text-align: left !important; background-color: #FDE698; color: black;" colspan="2" class="hedding">Upgrade (CMP Certificate Holders)
                                                                </th>
                                                            </tr>

                                                            <tr>
                                                                <td colspan="2" class="pdgnone">
                                                                    <div style="float: left; width: 10%; text-align: right; padding-top: 60px;"><b>Average Days in Queue</b></div>
                                                                    <table class="matrix index" style="width: 88%; float: right; margin-right: 10px; margin-top: 10px; line-height: 25px;" border="1">
                                                                        <tr>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Complaints</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; line-height: 15px !important;">In House Clearance
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Psd Waiting Room
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Call Sheet 
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">At PSD
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">PSD Meeting Notes</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">PSD Tracking</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Memo to Counsel</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><a href="">1</a>
                                                                            </td>
                                                                            <td><a href="">0</a>
                                                                            </td>
                                                                            <td><a href="">2</a>
                                                                            </td>
                                                                            <td><a href="">0</a>
                                                                            </td>
                                                                            <td><a href="">1</a>
                                                                            </td>
                                                                            <td><a href="">0</a></td>
                                                                            <td><a href="">0</a></td>
                                                                            <td><a href="">2</a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>2
                                                                            </td>
                                                                            <td>0
                                                                            </td>
                                                                            <td>7
                                                                            </td>
                                                                            <td>0
                                                                            </td>
                                                                            <td>13
                                                                            </td>
                                                                            <td>0</td>
                                                                            <td>0</td>
                                                                            <td>7</td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>

                                                        </tbody>
                                                    </table>
                                                    <table class="index" style="margin-top: 20px;">
                                                        <tbody>
                                                            <tr>
                                                                <th style="text-align: left !important; background-color: #FE9ACC; color: black;" colspan="2" class="hedding">Certificate Holders
                                                                </th>
                                                            </tr>

                                                            <tr>
                                                                <td colspan="2" class="pdgnone">
                                                                    <div style="float: left; width: 10%; text-align: right; padding-top: 60px;"><b>Average Days in Queue</b></div>
                                                                    <table class="matrix index" style="width: 88%; float: right; margin-right: 10px; margin-bottom:15px; margin-top: 10px; line-height: 25px;" border="1">
                                                                        <tr>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Complaints</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; line-height: 15px !important;">In House Clearance
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Psd Waiting Room
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Call Sheet 
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">At PSD
                                                                            </th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">PSD Meeting Notes</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">PSD Tracking</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Memo to Counsel</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><a href="">69</a>
                                                                            </td>
                                                                            <td><a href="">123</a>
                                                                            </td>
                                                                            <td><a href="">17</a>
                                                                            </td>
                                                                            <td><a href="">22</a>
                                                                            </td>
                                                                            <td><a href="">33</a>
                                                                            </td>
                                                                            <td><a href="">44</a></td>
                                                                            <td><a href="">17</a></td>
                                                                            <td><a href="">14</a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>21
                                                                            </td>
                                                                            <td>7
                                                                            </td>
                                                                            <td>7
                                                                            </td>
                                                                            <td>5
                                                                            </td>
                                                                            <td>11
                                                                            </td>
                                                                            <td>1</td>
                                                                            <td>2</td>
                                                                            <td>13</td>
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

