<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="DirectorGADashboard.aspx.cs" Inherits="LAPP_UI_Backoffice_UI_DirectorGADashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../App_Themes/Theme1/css/Codes.css?" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function linkdv1() {
            var dive = document.getElementById("SCLAppli1");
            dive.style.display = (dive.style.display == "none") ? "block" : "none";
        }
        function linkdv2() {
            var dive = document.getElementById("SCLAppli2");
            dive.style.display = (dive.style.display == "none") ? "block" : "none";
        }
        function linkdv3() {
            var dive = document.getElementById("SCLAppli3");
            dive.style.display = (dive.style.display == "none") ? "block" : "none";
        }
        function linkdv4() {
            var dive = document.getElementById("SCLAppli4");
            dive.style.display = (dive.style.display == "none") ? "block" : "none";
        }
    </script>
    <script>
        $(function () {
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liHome').addClass('active');
        });
    </script>
    <style>
        .matrix tr td a {
            color: blue;
        }

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


                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearb">
                                </div>
                                <br />
                                <br />
                                <div class="rounded-container peel-shadows">
                                    <div class="content clearfix">
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="width: 425px;">
                                                        <h4>Quick Links</h4>
                                                    </td>
                                                    <td>
                                                        <h4>Links to Directors' Pages</h4>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <table>
                                                            <tr>
                                                                <td style="width: 425px;">
                                                                    <a href="" style="width: 100%; color: blue; padding-left: 10px; font-weight: bold;">Basic Search-Individual</a>
                                                                </td>
                                                                <td>
                                                                    <a style="width: 100%; color: blue; padding-left: 10px; font-weight: bold; cursor:pointer;" onclick="linkdv1();">AMG</a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 425px;">
                                                                    <a href="" style="width: 100%; color: blue; padding-left: 10px; font-weight: bold;">Advanced Search-Individual</a>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 425px;">
                                                                    <a href="" style="width: 100%; color: blue; padding-left: 10px; font-weight: bold;">School Search</a>
                                                                    <br />
                                                                    <br />
                                                                </td>
                                                                <td>
                                                                    <a style="width: 100%; color: blue; padding-left: 10px; font-weight: bold; cursor:pointer;" onclick="linkdv2();">PSD</a>
                                                                    <br />
                                                                    <br />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 425px;">
                                                                    <a href="" style="width: 100%; color: blue; padding-left: 10px; font-weight: bold;">AMG-CMT Applications</a>
                                                                </td>
                                                                <td>
                                                                    <a style="width: 100%; color: blue; padding-left: 10px; font-weight: bold; cursor:pointer;" onclick="linkdv3();">Legal</a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 425px;">
                                                                    <a href="" style="width: 100%; color: blue; padding-left: 10px; font-weight: bold;">AMG-CMT Recertifications</a>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 425px;">
                                                                    <a href="" style="width: 100%; color: blue; padding-left: 10px; font-weight: bold;">AMG-CMP Upgrades</a>
                                                                </td>
                                                                <td>
                                                                    <a style="width: 100%; color: blue; padding-left: 10px; font-weight: bold; cursor:pointer;" onclick="linkdv4();">ESD</a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 425px;">
                                                                    <a href="" style="width: 100%; color: blue; padding-left: 10px; font-weight: bold;">ESD-School Applications</a>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 425px;">
                                                                    <a href="" style="width: 100%; color: blue; padding-left: 10px; font-weight: bold;">Legal-Queues</a>
                                                                </td>
                                                                <td>
                                                                    <a style="width: 100%; color: blue; padding-left: 10px; font-weight: bold; cursor:pointer;">CEO Reports</a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 425px;">
                                                                    <a href="" style="width: 100%; color: blue; padding-left: 10px; font-weight: bold;">CEO Reports</a>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                <div style="width: 99.8%; display:none; margin-top:15px;" class="clear brdr" id="SCLAppli1">
                                    <h4 style="padding-top: 10px; padding-left: 10px;">At a Glance - AMG</h4>
                                    <table class="index">
                                        <tbody>
                                            <tr>
                                                <th colspan="2" style="text-align: left !important; background-color: #93d28f; color: black;"
                                                    class="hedding">Certification
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2" class="pdgnone">
                                                    <div style="float: left; width: 10%; text-align: right; padding-top: 60px;"><b>Average Days in Queue</b></div>
                                                    <table class="matrix index" style="width: 88%; float: right; margin-right: 10px; margin-top: 10px; line-height: 25px;" border="1">
                                                        <tr>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Waiting on Payment</th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; line-height: 15px !important;">Submitted-Incomplete
                                                            </th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Waiting on Background Check
                                                            </th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Waiting on School Transcript 
                                                            </th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Application Deficiency
                                                            </th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Approved</th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Final QA</th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Printing</th>
                                                        </tr>
                                                        <tr>
                                                            <td><a href="">23</a>
                                                            </td>
                                                            <td><a href="../ESD/SchoolApplication.aspx" target="_blank" id="ScholOverflowLink">14</a>
                                                            </td>
                                                            <td><a href="">14</a>
                                                            </td>
                                                            <td><a href="">55</a>
                                                            </td>
                                                            <td><a href="">11</a>
                                                            </td>
                                                            <td><a href="">4</a></td>
                                                            <td><a href="">2</a></td>
                                                            <td><a href="">6</a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>17
                                                            </td>
                                                            <td>44
                                                            </td>
                                                            <td>11
                                                            </td>
                                                            <td>5
                                                            </td>
                                                            <td>33
                                                            </td>
                                                            <td>1</td>
                                                            <td>0.5</td>
                                                            <td>0.1</td>
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
                                                    class="hedding">Recertification
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2" class="pdgnone">
                                                    <div style="float: left; width: 10%; text-align: right; padding-top: 60px;"><b>Average Days in Queue</b></div>
                                                    <table class="matrix index" style="width: 535px; float: left; margin-top: 10px; line-height: 25px; margin-left: 5px;" border="1">
                                                        <tr>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; width: 76px;">Waiting on Payment</th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; width: 88px; line-height: 15px !important;">Submitted-Incomplete
                                                            </th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; width: 107px;">Application Deficiency</th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; width: 104px;">Approved</th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; width: 88px;">Final QA</th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Printing</th>
                                                        </tr>
                                                        <tr>
                                                            <td><a href="">7</a>
                                                            </td>
                                                            <td><a href="">3</a>
                                                            </td>
                                                            <td><a href="">5</a>
                                                            </td>
                                                            <td><a href="">14</a>
                                                            </td>
                                                            <td><a href="">2</a>
                                                            </td>
                                                            <td><a href="">1</a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>3
                                                            </td>
                                                            <td>12
                                                            </td>
                                                            <td>9
                                                            </td>
                                                            <td>0.5
                                                            </td>
                                                            <td>0.5
                                                            </td>
                                                            <td>0.1</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table class="index" style="margin-top: 20px;">
                                        <tbody>
                                            <tr>
                                                <th style="text-align: left !important; background-color: #FDE698; color: black;" colspan="2" class="hedding">Upgrade
                                                </th>
                                            </tr>

                                            <tr>
                                                <td colspan="2" class="pdgnone">
                                                    <div style="float: left; width: 10%; text-align: right; padding-top: 60px;"><b>Average Days in Queue</b></div>
                                                    <table class="matrix index" style="float: left; margin-top: 10px; line-height: 25px; width: 535px; margin-left: 5px;" border="1">
                                                        <tr>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; width: 76px;">Waiting on Payment</th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; width: 88px; line-height: 15px !important;">Submitted-Incomplete
                                                            </th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; width: 107px; line-height: 15px !important;">Application Deficiency
                                                            </th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; width: 104px;">Approved</th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; width: 88px;">Final QA</th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Printing</th>
                                                        </tr>
                                                        <tr>
                                                            <td><a href="">1</a>
                                                            </td>
                                                            <td><a href="" target="_blank">0</a>
                                                            </td>
                                                            <td><a href="">2</a>
                                                            </td>
                                                            <td><a href="">0</a>
                                                            </td>
                                                            <td><a href="">1</a>
                                                            </td>
                                                            <td><a href="">0</a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>4
                                                            </td>
                                                            <td>0
                                                            </td>
                                                            <td>11
                                                            </td>
                                                            <td>0
                                                            </td>
                                                            <td>0.5
                                                            </td>
                                                            <td>0</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                                <div style="width: 99.8%; display:none; margin-top:15px;" class="clear brdr" id="SCLAppli2">
                                    <h4 style="padding-top: 10px; padding-left: 10px;">At a Glance - PSD</h4>
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
                                                            <td><a href="">14</a>
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
                                                            <td><a href="">3</a>
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
                                <div style="width: 99.8%; display:none; margin-top:15px;" class="clear brdr" id="SCLAppli3">
                                    <h4 style="padding-top: 10px; padding-left: 10px;">At a Glance-Legal</h4>
                                    <table class="index">
                                        <tbody>
                                            <tr>
                                                <th colspan="2" style="text-align: left !important; background-color: #93d28f; color: black;"
                                                    class="hedding">Special Counsel
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2" class="pdgnone">

                                                    <table class="matrix index" style="width: 88%; float: right; margin-right: 10px; margin-top: 10px; line-height: 25px;" border="1">
                                                        <tr>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">ALL MTC's</th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; line-height: 15px !important;">Permanent Revocations
                                                            </th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Suspensions based on Law
                                                            </th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Suspensions based on Declaration
                                                            </th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Revocations/ Disciplines
                                                            </th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Denials/ Disciplines</th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Education Denials</th>

                                                        </tr>
                                                        <tr>
                                                            <td><a href="">33</a>
                                                            </td>
                                                            <td><a href="">3</a>
                                                            </td>
                                                            <td><a href="">12</a>
                                                            </td>
                                                            <td><a href="">4</a>
                                                            </td>
                                                            <td><a href="">8</a>
                                                            </td>
                                                            <td><a href="">4</a></td>
                                                            <td><a href="">2</a></td>
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
                                                    class="hedding">Staff Attorneys
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2" class="pdgnone">

                                                    <table class="matrix index" style="width: 88%; float: right; margin-right: 10px; margin-top: 10px; line-height: 25px;" border="1">
                                                        <tr>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Need to Schedule Hearings</th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; line-height: 15px !important;">Waiting for Hearings
                                                            </th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Hearings Today</th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Waiting for final Revocation Letters</th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Waiting for Suspension Letters</th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Waiting for final Discipline Letters</th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Waiting for Final Denial Letters</th>
                                                        </tr>
                                                        <tr>
                                                            <td><a href="">7</a>
                                                            </td>
                                                            <td><a href="">3</a>
                                                            </td>
                                                            <td><a href="">5</a>
                                                            </td>
                                                            <td><a href="">14</a>
                                                            </td>
                                                            <td><a href="">2</a>
                                                            </td>
                                                            <td><a href="">1</a></td>
                                                            <td><a href="">1</a></td>
                                                        </tr>

                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div style="width: 99.8%; display:none; margin-top:15px;" class="clear brdr" id="SCLAppli4">
                                    <h4 style="padding-top: 10px; padding-left: 10px;">At a Glance-ESD</h4>
                                    <table class="index">
                                        <tbody>
                                            <tr>
                                                <th colspan="2" style="text-align: left !important;" class="hedding">School Applications Submitted this Period
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2" class="pdgnone">
                                                    <table class="matrix index" style="width: 100%; line-height: 25px;" border="1">
                                                        <tr>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; width: 138px;"></th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; line-height: 25px !important;">Total Applications<br />
                                                                Submitted
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
                                                            <td><a href="">232</a>
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
                                                <th colspan="2" style="text-align: left !important; background-color: #bf8e01;" class="hedding">Number of Requested Changes
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2" class="pdgnone">
                                                    <table class="matrix index" style="width: 100%; line-height: 25px;" border="1">
                                                        <tr>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;"></th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black; line-height: 25px !important;">Total Change
                                                                                <br />
                                                                Requests 
                                                            </th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Change Owner
                                                            </th>
                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Change  Administrator<br />
                                                                /Instructor 
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

