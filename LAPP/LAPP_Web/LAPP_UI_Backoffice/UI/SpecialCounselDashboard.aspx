<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="SpecialCounselDashboard.aspx.cs" Inherits="LAPP_UI_Backoffice_UI_SpecialCounselDashboard" %>

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
    <style type="text/css">
        .desgnHering tr th:nth-child(even){background-color:#FDF5DD;}
        .desgnHering tr th:nth-child(odd){background-color:white;}
        .desgnHering tr td:nth-child(even){background-color:#FDF5DD;}


        .tablebgcolorPara tr th:nth-child(odd){background-color:#FDF5DD;}
        .tablebgcolorPara tr th:nth-child(even){background-color:white;}
        .tablebgcolorPara tr td:nth-child(odd){background-color:#FDF5DD;}


        .designstfATR tr th:nth-child(odd){background-color:#F2F7FA;}
        .designstfATR tr th:nth-child(even){background-color:white;}
        .designstfATR tr td:nth-child(odd){background-color:#F2F7FA;}

        .designstfATRSecnd tr th:nth-child(even){background-color:#F2F7FA;}
        .designstfATRSecnd tr th:nth-child(odd){background-color:white;}
        .designstfATRSecnd tr td:nth-child(even){background-color:#F2F7FA;}

        .design_tbl tr th:nth-child(odd){background-color:#E3F8E2;}
        .design_tbl tr th:nth-child(even){background-color:white;}
        .design_tbl tr td:nth-child(odd){background-color:#E3F8E2;}
        .design_tbl tr td:nth-child(even){}
        #ui-accordion-accordion-panel-0{height:auto !important; }#ui-accordion-accordion-panel-1{height:auto !important; }#ui-accordion-accordion-panel-2{height:auto !important; }#ui-accordion-accordion-panel-2{height:auto !important; }#ui-accordion-accordion-panel-3{height:auto !important; }#ui-accordion-accordion-panel-4{height:auto !important; }#ui-accordion-accordion-panel-5{height:auto !important; }#ui-accordion-accordion-panel-6{height:auto !important; }
        #ui-accordion-accordion-header-0{background-color: #93D28F !important; border: none !important; background-image: none;padding: 7px 0px;}
        #ui-accordion-accordion-header-0 a{color:black !important; font-weight:bold;}
        #ui-accordion-accordion-header-1{background-color: #BDD7EE !important; border: none !important; background-image: none;padding: 7px 0px;}
        #ui-accordion-accordion-header-1 a{color:black !important; font-weight:bold;}
        #ui-accordion-accordion-header-2{background-color: #BDD7EE !important; border: none !important; background-image: none;padding: 7px 0px;}
        #ui-accordion-accordion-header-2 a{color:black !important; font-weight:bold;}
         #ui-accordion-accordion-header-3{background-color: #FFE59C !important; border: none !important; background-image: none;padding: 7px 0px;}
        #ui-accordion-accordion-header-3 a{color:black !important; font-weight:bold;}
         #ui-accordion-accordion-header-4{background-color: #FFE59C !important; border: none !important; background-image: none;padding: 7px 0px;}
        #ui-accordion-accordion-header-4 a{color:black !important; font-weight:bold;}
        #ui-accordion-accordion-header-5{background-color: #FFE59C !important; border: none !important; background-image: none;padding: 7px 0px;}
        #ui-accordion-accordion-header-5 a{color:black !important; font-weight:bold;}
        .ui-state-active .ui-icon, .ui-state-default .ui-icon{background-image:none;}
        .ui-accordion .ui-accordion-content{padding: 0px 0px 10px !important;}
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

                                                <script type="text/javascript">
                                                    $(function () {
                                                        $("#accordion").accordion({ autoHeight: true });
                                                        $("#accordion").accordion({ collapsible: true });
                                                    });
                                                </script>
                                                

                                                <div id="accordion">

                                                    <h3><a href="#">Special Counsel</a></h3>
                                                    <div>
                                                        <table class="index">
                                                        <tbody>
                                                            
                                                            <tr>
                                                                <td colspan="2" class="pdgnone">
                                                                    <div style="float: left; width: 4%; text-align: right;font-size: 8px; padding-top: 60px;"><b>AVG. Days</b></div>
                                                                    <table class="matrix index design_tbl" style="width: 94%; float: right;font-size: 8px; margin-right: 10px; margin-top: 10px; line-height: 25px;" border="1">
                                                                        <tr>
                                                                            <th style=" color: black;">Frontend Tasks</th>
                                                                            <th style=" color: black;">High Priority</th>
                                                                            <th style=" color: black; line-height: 15px !important;">Permanent Revocations
                                                                            </th>
                                                                            <th style=" color: black;">Suspensions based on Law
                                                                            </th>
                                                                            <th style=" color: black;">Reinstatements
                                                                            </th>
                                                                            <th style=" color: black;">Suspensions based on Declaration
                                                                            </th>
                                                                            <th style=" color: black;">Proposed Revocations/ Disciplines
                                                                            </th>
                                                                            <th style=" color: black;">Proposed Denials/ Disciplines</th>
                                                                            <th style=" color: black;">Proposed Education Denials</th>
                                                                            <th style=" color: black;">Backend Tasks</th>
                                                                            <th style=" color: black;">Hold</th>

                                                                        </tr>
                                                                        <tr>
                                                                            <td><a href="../ARS/ARSLegal.aspx">33</a>
                                                                            </td>
                                                                            <td><a href="../ARS/ARSLegal.aspx">3</a></td>
                                                                            <td><a href="../ARS/ARSLegal.aspx">3</a>
                                                                            </td>
                                                                            <td><a href="../ARS/ARSLegal.aspx">12</a>
                                                                            </td>
                                                                            <td><a href="../ARS/ARSLegal.aspx">1</a>
                                                                            </td>
                                                                            <td><a href="../ARS/ARSLegal.aspx">4</a>
                                                                            </td>
                                                                            <td><a href="../ARS/ARSLegal.aspx">8</a>
                                                                            </td>
                                                                            <td><a href="../ARS/ARSLegal.aspx">4</a></td>
                                                                            <td><a href="../ARS/ARSLegal.aspx">2</a></td>
                                                                            <td><a href="../ARS/ARSLegal.aspx?act=Btask">23</a></td>
                                                                            <td><a href="../ARS/ARSLegal.aspx">213</a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>7
                                                                            </td>
                                                                            <td>1</td>
                                                                            <td>2
                                                                            </td>
                                                                            <td>11
                                                                            </td>
                                                                            <td>14
                                                                            </td>
                                                                            <td>5
                                                                            </td>
                                                                            <td>3
                                                                            </td>
                                                                            <td>11</td>
                                                                            <td>13</td>
                                                                            <td>12</td>
                                                                            <td>47</td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    </div>
                                                    <h3><a href="#">Staff Attorneys : Jane Doe</a></h3>
                                                    <div>
                                                        <table class="index" style="margin-top: 20px;">
                                                        <tbody>
                                                            
                                                            <tr>
                                                                <td colspan="2" class="pdgnone">
                                                                    <div style="float: left; width: 4%; text-align: right;font-size: 8px; padding-top: 77px;"><b>AVG. Days</b></div>
                                                                    <table class="matrix index designstfATR" style="width: 94%; float: right; margin-right: 10px; margin-top: 10px; margin-bottom: 15px; line-height: 25px; font-size: 8px;" border="1">
                                                                        <tr>
                                                                            <th style="color: black; width: 65px;">Pre-Hearing Tasks</th>
                                                                            <th style=" color: black; line-height: 15px !important;width: 55px;">High Priority
                                                                            </th>
                                                                            <th style=" color: black;">Permanent Revocations</th>
                                                                            <th style=" color: black;">Suspensions based on Law</th>
                                                                            <th style="color: black;">Reinstatements</th>
                                                                            <th style="color: black;">Suspensions based on Declaration</th>
                                                                            <th style="color: black;">Proposed Revocations/ Disciplines</th>
                                                                            <th style="color: black;">Proposed Denials/ Disciplines</th>
                                                                            <th style="color: black;">Proposed Education Denials</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><a href="../Legal/StaffAttorney.aspx">7</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx"  id="ScholOverk2">1</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx">3</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx">5</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx">0</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx">2</a></td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx">1</a></td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx">1</a></td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx">2</a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>3
                                                                            </td>
                                                                            <td>1
                                                                            </td>
                                                                            <td>22
                                                                            </td>
                                                                            <td>1
                                                                            </td>
                                                                            <td>0
                                                                            </td>
                                                                            <td>19</td>
                                                                            <td>20</td>
                                                                            <td>21</td>
                                                                            <td>13</td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                        <table class="index" style="margin-top: 20px;">
                                                            <tbody>
                                                                <tr>
                                                                    <td colspan="2" class="pdgnone">
                                                                    <div style="float: left; width: 4%; text-align: right;font-size: 8px; padding-top: 77px;"><b>AVG. Days</b></div>
                                                                    <table class="matrix index designstfATRSecnd" style="width: 61%; float: left; margin-top: 10px; margin-bottom: 15px; line-height: 25px; font-size: 8px; margin-left: 5px;" border="1">
                                                                        <tr>
                                                                            <th style="color: black; width: 65px;">Post-Hearing Tasks</th>
                                                                            <th style="color: black; line-height: 15px !important;width: 55px;">High Priority
                                                                            </th>
                                                                            <th style="color: black; width: 68px;">Revocation/ Discipline NOD</th>
                                                                            <th style="color: black; width: 72px;">Denial/ Discipline NOD</th>
                                                                            <th style="color: black; width: 75px;">Education Denial NOD</th>
                                                                            <th style="color: black;">Suspension Hearing NOD</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><a href="../Legal/StaffAttorney.aspx?act=tbHearing">7</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx?act=tbHearing" id="ScholOverf">0</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx?act=tbHearing">2</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx?act=tbHearing">1</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx?act=tbHearing">1</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx?act=tbHearing">2</a></td>
                                                                           
                                                                        </tr>
                                                                        <tr>
                                                                            <td>3
                                                                            </td>
                                                                            <td>0
                                                                            </td>
                                                                            <td>19
                                                                            </td>
                                                                            <td>20
                                                                            </td>
                                                                            <td>21
                                                                            </td>
                                                                            <td>13</td>
                                                                            
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <h3><a href="#">Staff Attorneys : Nancy Drue</a></h3>
                                                    <div>
                                                        <table class="index" style="margin-top: 20px;">
                                                        <tbody>
                                                            
                                                            <tr>
                                                                <td colspan="2" class="pdgnone">
                                                                    <div style="float: left; width: 4%; text-align: right;font-size: 8px; padding-top: 77px;"><b>AVG. Days</b></div>
                                                                    <table class="matrix index designstfATR" style="width: 94%; float: right; margin-right: 10px; margin-top: 10px; margin-bottom: 15px; line-height: 25px; font-size: 8px;" border="1">
                                                                        <tr>
                                                                            <th style="color: black; width: 65px;">Pre-Hearing Tasks</th>
                                                                            <th style=" color: black; line-height: 15px !important;width: 55px;">High Priority
                                                                            </th>
                                                                            <th style=" color: black;">Permanent Revocations</th>
                                                                            <th style=" color: black;">Suspensions based on Law</th>
                                                                            <th style="color: black;">Reinstatements</th>
                                                                            <th style="color: black;">Suspensions based on Declaration</th>
                                                                            <th style="color: black;">Proposed Revocations/ Disciplines</th>
                                                                            <th style="color: black;">Proposed Denials/ Disciplines</th>
                                                                            <th style="color: black;">Proposed Education Denials</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><a href="../Legal/StaffAttorney.aspx">7</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx"  id="ScholOverk2">1</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx">3</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx">5</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx">0</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx">2</a></td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx">1</a></td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx">1</a></td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx">2</a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>3
                                                                            </td>
                                                                            <td>1
                                                                            </td>
                                                                            <td>22
                                                                            </td>
                                                                            <td>1
                                                                            </td>
                                                                            <td>0
                                                                            </td>
                                                                            <td>19</td>
                                                                            <td>20</td>
                                                                            <td>21</td>
                                                                            <td>13</td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                        <table class="index" style="margin-top: 20px;">
                                                            <tbody>
                                                                <tr>
                                                                    <td colspan="2" class="pdgnone">
                                                                    <div style="float: left; width: 4%; text-align: right;font-size: 8px; padding-top: 77px;"><b>AVG. Days</b></div>
                                                                    <table class="matrix index designstfATRSecnd" style="width: 61%; float: left; margin-top: 10px; margin-bottom: 15px; line-height: 25px; font-size: 8px; margin-left: 5px;" border="1">
                                                                        <tr>
                                                                            <th style="color: black; width: 65px;">Post-Hearing Tasks</th>
                                                                            <th style="color: black; line-height: 15px !important;width: 55px;">High Priority
                                                                            </th>
                                                                            <th style="color: black; width: 68px;">Revocation/ Discipline NOD</th>
                                                                            <th style="color: black; width: 72px;">Denial/ Discipline NOD</th>
                                                                            <th style="color: black; width: 75px;">Education Denial NOD</th>
                                                                            <th style="color: black;">Suspension Hearing NOD</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><a href="../Legal/StaffAttorney.aspx?act=tbHearing">7</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx?act=tbHearing" id="ScholOverf">0</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx?act=tbHearing">2</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx?act=tbHearing">1</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx?act=tbHearing">1</a>
                                                                            </td>
                                                                            <td><a href="../Legal/StaffAttorney.aspx?act=tbHearing">2</a></td>
                                                                           
                                                                        </tr>
                                                                        <tr>
                                                                            <td>3
                                                                            </td>
                                                                            <td>0
                                                                            </td>
                                                                            <td>19
                                                                            </td>
                                                                            <td>20
                                                                            </td>
                                                                            <td>21
                                                                            </td>
                                                                            <td>13</td>
                                                                            
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <h3><a href="#">Paralegal : Jackie Smith</a></h3>
                                                    <div>
                                                        <table class="index" style="margin-top: 20px;">
                                                            <tbody>

                                                                <tr>
                                                                    <td colspan="2" class="pdgnone">
                                                                        <div style="float: left; width: 4%; text-align: right; font-size: 8px; padding-top: 77px;"><b>AVG. Days</b></div>
                                                                        <table class="matrix index tablebgcolorPara" style="width: 94%; font-size: 9px; float: right; margin-right: 10px; margin-top: 10px; margin-bottom: 15px; line-height: 25px;" border="1">
                                                                            <tr style="vertical-align: text-top;">
                                                                                <th style="color: black;" rowspan="2">Proposed Action Letter Tasks</th>
                                                                                <th style="color: black; width: 80px;" rowspan="2">High Priority</th>
                                                                                <th style="color: black;background-color:#FFE59C !important;" colspan="9">|------------------ (Letters waiting to be sent ) ------------------|</th>

                                                                            </tr>
                                                                            <tr>
                                                                                <th style="color: black;">Suspension 
                                                                                    <br />
                                                                                   based on Operation Of Law</th>
                                                                                <th style="color: black;">Reinstatements</th>
                                                                                <th style="color: black;">Suspension based on Operation Of Law</th>
                                                                                <th style=" color: black;">Education Only PDL's</th>
                                                                                <th style=" color: black;">Proposed Denial/ Discipline</th>
                                                                                <th style=" color: black;">Proposed Revocation/ Discipline</th>
                                                                                
                                                                            </tr>
                                                                            <tr>
                                                                                <td><a href="../Legal/Paralegal.aspx" id="ParalegalPara1">19</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx" id="ParalegalPara2">2</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx" id="ParalegalPara3">5</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx" id="ParalegalPara4">0</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx" id="ParalegalPara5">2</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx" id="ParalegalPara6">7</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx" id="ParalegalPara7">3</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx" id="ParalegalPara8">2</a></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>8.0</td>
                                                                                <td>1.0</td>
                                                                                <td>1.0</td>
                                                                                <td>0.0</td>
                                                                                <td>19.0</td>
                                                                                <td>3.0</td>
                                                                                <td>22.0</td>
                                                                                <td>3.0</td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                        <table class="index" style="margin-top: 20px;">
                                                            <tbody>
                                                                <tr>
                                                                    <td colspan="2" class="pdgnone">
                                                                        <div style="float: left; width: 4%; text-align: right; font-size: 8px; padding-top: 77px;"><b>AVG. Days</b></div>
                                                                        <table class="matrix index desgnHering" style="width: 23%; float: left; margin-top: 10px; margin-bottom: 15px; line-height: 25px; font-size: 8px; margin-left: 6px;" border="1">
                                                                            <tr>
                                                                                <th style="color: black; width: 80px;">Hearing Waiting Room</th>
                                                                                <th style="color: black; line-height: 15px !important;">Hearings Scheduled
                                                                                </th>

                                                                            </tr>
                                                                            <tr>
                                                                                <td><a href="../Legal/Paralegal.aspx?act=HWR">7</a>
                                                                                </td>
                                                                                <td><a href="../Legal/Paralegal.aspx?act=HWR">3</a>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>3.0
                                                                                </td>
                                                                                <td>22.0
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                        <table class="index" style="margin-top: 20px;">
                                                            <tbody>

                                                                <tr>
                                                                    <td colspan="2" class="pdgnone">
                                                                        <div style="float: left; width: 4%; text-align: right; font-size: 8px; padding-top: 77px;"><b>AVG. Days</b></div>
                                                                        <table class="matrix index tablebgcolorPara" style="width: 94%; font-size: 9px; float: right; margin-right: 10px; margin-top: 10px; margin-bottom: 15px; line-height: 25px;" border="1">
                                                                            <tr style="vertical-align: text-top;">
                                                                                <th style="color: black; width: 80px;" rowspan="2">Final NOD Letters</th>
                                                                                <th style="color: black; width: 78px;" rowspan="2">High Priority</th>
                                                                                <th style="color: black; background-color:#FFE59C !important;" colspan="9">|------------------ (Letters waiting to be sent ) ------------------|</th>

                                                                            </tr>
                                                                            <tr>
                                                                                <th style="color: black;">Revocation/ 
                                                                                    <br />
                                                                                    Discipline NOD</th>
                                                                                <th style="color: black;">Denial/ <br />Disciplines NOD</th>
                                                                                <th style="color: black;">Education <br />Denials NOD</th>
                                                                                <th style="color: black;">Suspension <br /> Hearing NOD</th>
                                                                               
                                                                            </tr>
                                                                            <tr>
                                                                                <td><a href="../Legal/Paralegal.aspx?act=NOD"  id="ParalegaPara11">8</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx?act=NOD"  id="ParalegalPara21">0</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx?act=NOD"  id="ParalegalPara31">1</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx?act=NOD" id="ParalegalPara41">1</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx?act=NOD" id="ParalegalPara51">4</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx?act=NOD" id="ParalegalPara61">2</a></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>18.3</td>
                                                                                <td>0.0</td>
                                                                                <td>20.0</td>
                                                                                <td>21.0</td>
                                                                                <td>13.0</td>
                                                                                <td>19.0</td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>

                                                    </div>
                                                    <h3><a href="#">Paralegal : Bobbie Jones</a></h3>
                                                    <div>
                                                        <%--<table class="index" style="margin-top: 20px;">
                                                        <tbody>
                                                           
                                                            <tr>
                                                                <td colspan="2" class="pdgnone">
                                                                    <div style="float: left; width: 4%; text-align: right;font-size: 8px; padding-top: 77px;"><b>AVG. Days</b></div>
                                                                    <table class="matrix index" style="width: 94%; font-size: 9px; float: right; margin-right: 10px; margin-top: 10px; margin-bottom:15px; line-height: 25px;" border="1">
                                                                        <tr style="vertical-align: text-top;" >
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;" rowspan="2">Hearing Requests</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;" rowspan="2">Hearings Scheduled</th>
                                                                            <th  style="background-color: rgb(255, 255, 255) ! important; color: black;"  colspan="9">|------------------ (Letters waiting to be sent ) ------------------|</th>
                                                                            
                                                                        </tr>
                                                                        <tr>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Suspensions <br /> based on Law</th>
                                                                            
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Suspensions based on Declaration</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Reinstatements</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Revocation/ Discipline NOD</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Denial/ Disciplines NOD</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Education Denials NOD</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Suspension Hearing NOD</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Hearing Notes</th>
                                                                            <th style="background-color: rgb(255, 255, 255) ! important; color: black;">Letter Templates</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><a href="../UI/StaffAttorneysDashboard.aspx" target="_blank" id="ParalegalSec1">6</a></td>
                                                                            <td><a href="../UI/StaffAttorneysDashboard.aspx" target="_blank" id="ParalegalSec2">4</a></td>
                                                                            <td><a href="../UI/StaffAttorneysDashboard.aspx" target="_blank" id="ParalegalSec3">4</a></td>
                                                                            <td><a href="../UI/StaffAttorneysDashboard.aspx" target="_blank" id="ParalegalSec4">0</a></td>
                                                                            <td><a href="../UI/StaffAttorneysDashboard.aspx" target="_blank" id="ParalegalSec5">3</a></td>
                                                                            <td><a href="../UI/StaffAttorneysDashboard.aspx" target="_blank" id="ParalegalSec6">1</a></td>
                                                                            <td><a href="../UI/StaffAttorneysDashboard.aspx" target="_blank" id="ParalegalSec7">2</a></td>
                                                                            <td><a href="../UI/StaffAttorneysDashboard.aspx" target="_blank" id="ParalegalSec8">1</a></td>
                                                                            <td><a href="../UI/StaffAttorneysDashboard.aspx" target="_blank" id="ParalegalSec9">1</a></td>
                                                                            <td><a href="../UI/StaffAttorneysDashboard.aspx" target="_blank" id="ParalegalSec10">2</a></td>
                                                                            <td><a href="../UI/StaffAttorneysDashboard.aspx" target="_blank" id="ParalegalSec11">1</a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>3</td>
                                                                            <td>14</td>
                                                                            <td>5</td>
                                                                            <td>0</td>
                                                                            <td>11</td>
                                                                            <td>22</td>
                                                                            <td>11</td>
                                                                            <td>25</td>
                                                                            <td>16</td>
                                                                            <td>14</td>
                                                                            <td>19</td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>--%>

                                                        <table class="index" style="margin-top: 20px;">
                                                            <tbody>

                                                                <tr>
                                                                    <td colspan="2" class="pdgnone">
                                                                        <div style="float: left; width: 4%; text-align: right; font-size: 8px; padding-top: 77px;"><b>AVG. Days</b></div>
                                                                        <table class="matrix index tablebgcolorPara" style="width: 94%; font-size: 9px; float: right; margin-right: 10px; margin-top: 10px; margin-bottom: 15px; line-height: 25px;" border="1">
                                                                            <tr style="vertical-align: text-top;">
                                                                                <th style="color: black;" rowspan="2">Proposed Action Letter Tasks</th>
                                                                                <th style="color: black; width: 80px;" rowspan="2">High Priority</th>
                                                                                <th style="color: black;background-color:#FFE59C !important;" colspan="9">|------------------ (Letters waiting to be sent ) ------------------|</th>

                                                                            </tr>
                                                                            <tr>
                                                                                <th style="color: black;">Suspension 
                                                                                    <br />
                                                                                   based on Operation Of Law</th>
                                                                                <th style="color: black;">Reinstatements</th>
                                                                                <th style="color: black;">Suspension based on Operation Of Law</th>
                                                                                <th style=" color: black;">Education Only PDL's</th>
                                                                                <th style=" color: black;">Proposed Denial/ Discipline</th>
                                                                                <th style=" color: black;">Proposed Revocation/ Discipline</th>
                                                                                
                                                                            </tr>
                                                                            <tr>
                                                                                <td><a href="../Legal/Paralegal.aspx" id="ParalegalPar1">19</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx" id="ParalegalPar2">2</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx" id="ParalegalPar3">5</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx" id="ParalegalPar4">0</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx" id="ParalegalPar5">2</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx" id="ParalegalPar6">7</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx" id="ParalegalPar7">3</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx" id="ParalegalPar8">2</a></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>8.0</td>
                                                                                <td>1.0</td>
                                                                                <td>1.0</td>
                                                                                <td>0.0</td>
                                                                                <td>19.0</td>
                                                                                <td>3.0</td>
                                                                                <td>22.0</td>
                                                                                <td>3.0</td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                        <table class="index" style="margin-top: 20px;">
                                                            <tbody>
                                                                <tr>
                                                                    <td colspan="2" class="pdgnone">
                                                                        <div style="float: left; width: 4%; text-align: right; font-size: 8px; padding-top: 77px;"><b>AVG. Days</b></div>
                                                                        <table class="matrix index desgnHering" style="width: 23%; float: left; margin-top: 10px; margin-bottom: 15px; line-height: 25px; font-size: 8px; margin-left: 6px;" border="1">
                                                                            <tr>
                                                                                <th style="color: black; width: 80px;">Hearing Waiting Room</th>
                                                                                <th style="color: black; line-height: 15px !important;">Hearings Scheduled
                                                                                </th>

                                                                            </tr>
                                                                            <tr>
                                                                                <td><a href="../Legal/Paralegal.aspx?act=HWR">7</a>
                                                                                </td>
                                                                                <td><a href="../Legal/Paralegal.aspx?act=HWR">3</a>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>3.0
                                                                                </td>
                                                                                <td>22.0
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                        <table class="index" style="margin-top: 20px;">
                                                            <tbody>

                                                                <tr>
                                                                    <td colspan="2" class="pdgnone">
                                                                        <div style="float: left; width: 4%; text-align: right; font-size: 8px; padding-top: 77px;"><b>AVG. Days</b></div>
                                                                        <table class="matrix index tablebgcolorPara" style="width: 94%; font-size: 9px; float: right; margin-right: 10px; margin-top: 10px; margin-bottom: 15px; line-height: 25px;" border="1">
                                                                            <tr style="vertical-align: text-top;">
                                                                                <th style="color: black; width: 80px;" rowspan="2">Final NOD Letters</th>
                                                                                <th style="color: black; width: 78px;" rowspan="2">High Priority</th>
                                                                                <th style="color: black; background-color:#FFE59C !important;" colspan="9">|------------------ (Letters waiting to be sent ) ------------------|</th>

                                                                            </tr>
                                                                            <tr>
                                                                                <th style="color: black;">Revocation/ 
                                                                                    <br />
                                                                                    Discipline NOD</th>
                                                                                <th style="color: black;">Denial/ <br />Disciplines NOD</th>
                                                                                <th style="color: black;">Education <br />Denials NOD</th>
                                                                                <th style="color: black;">Suspension <br /> Hearing NOD</th>
                                                                               
                                                                            </tr>
                                                                            <tr>
                                                                                <td><a href="../Legal/Paralegal.aspx?act=NOD"  id="Paraleg1">8</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx?act=NOD"  id="Paraleg2">0</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx?act=NOD"  id="Paraleg3">1</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx?act=NOD" id="Paraleg4">1</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx?act=NOD" id="Paraleg5">4</a></td>
                                                                                <td><a href="../Legal/Paralegal.aspx?act=NOD" id="Paraleg6">2</a></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>18.3</td>
                                                                                <td>0.0</td>
                                                                                <td>20.0</td>
                                                                                <td>21.0</td>
                                                                                <td>13.0</td>
                                                                                <td>19.0</td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>


                                                </div>

                                                <div style="width: 99.8%" class="clear brdr" id="SCLAppli">
                                                    

                                                    
                                                    
                                                    
                                                    
                                                    
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

