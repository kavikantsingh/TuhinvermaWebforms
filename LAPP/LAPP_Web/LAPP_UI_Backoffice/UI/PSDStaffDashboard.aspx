<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="PSDStaffDashboard.aspx.cs" Inherits="LAPP_UI_Backoffice_UI_PSDStaffDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="../App_Themes/Theme1/css/Codes.css?" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Theme1/css/searchPanel.css" rel="stylesheet" />
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
    <link href="../../App_Themes/Theme1/css/NewButton.css" rel="stylesheet" />
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
                                                <br />
                                                
                                                <div style="width: 99.8%"  id="SCLAppli">
                                                    <asp:Panel ID="defaultbtn" runat="server" CssClass="searchBoxhidden" DefaultButton="btnSearch">
                            <div id="divAdvanceSearch" runat="server" visible="false">
                                <table style="height:245px;">
                                    <tr>
                                        <td align="right " style="width:100px;">
                                            <label>
                                                Search By Name :</label>
                                        </td>
                                        <td colspan="5">
                                            <asp:TextBox ID="txtSearchByName" ClientIDMode="Static" runat="server" Style="width: 337px  !important;" CssClass="inputTextbox" MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" >
                                            <label>
                                                ID # :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtIDNo" Width="115px" runat="server" CssClass="inputTextbox"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label>
                                                Certificate # :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtCertificateNo" Width="115px" runat="server" CssClass="inputTextbox"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="right" >
                                            <label>
                                                Cert Type :</label>
                                        </td>
                                        <td>
                                            <asp:DropDownList Width="123px" ID="DropDownList1"
                                                runat="server">
                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label>
                                                Last Name :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" Width="115px" runat="server" CssClass="inputTextbox capitalize-text"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label>
                                                First Name :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" Width="115px" runat="server" CssClass="inputTextbox capitalize-text"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label>
                                                Middle Name :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" Width="115px" runat="server" CssClass="inputTextbox"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label>
                                                AKAs :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" Width="115px" runat="server" CssClass="inputTextbox"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label>
                                                CDL # (or CID) :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox5" Width="115px" runat="server" CssClass="inputTextbox"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label>
                                                Date of Birth :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox6" Width="115px" runat="server" CssClass="inputTextbox calenderDOB"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label>
                                                Address :</label>
                                        </td>
                                        <td colspan="3">
                                            <asp:TextBox ID="TextBox7" runat="server" Style="width: 337px  !important;" CssClass="inputTextbox"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        
                                        <td align="right">
                                            <label>
                                                SS # (Last 4) :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox9" Width="115px" runat="server" CssClass="inputTextbox"
                                                MaxLength="4"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label>
                                                Certificate Status :</label>
                                        </td>
                                        <td colspan="2">
                                            <asp:DropDownList Width="123px" ID="ddlRecordStatus"
                                                runat="server">
                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                <asp:ListItem Value="2">Active</asp:ListItem>
                                                <asp:ListItem Value="0">Archive</asp:ListItem>
                                                <asp:ListItem Value="1">Delete</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td align="right" colspan="2">
                                            <label>
                                                Date Applied (or re-Applied) :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox11" Width="115px" runat="server" CssClass="inputTextbox"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label>
                                                Work Location :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox12" Width="115px" runat="server" CssClass="inputTextbox"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label>
                                                Business Name :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox13" Width="115px" runat="server" CssClass="inputTextbox"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label>
                                                Work Status :</label>
                                        </td>
                                        <td>
                                            <asp:DropDownList Style="width: 123px !important;" ID="DropDownList2"
                                                runat="server">
                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label>
                                                School Attended :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox14" Width="115px" runat="server" CssClass="inputTextbox"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label>
                                                Date Attended :</label>
                                        </td>
                                        <td colspan="3">
                                            <asp:TextBox ID="TextBox15" Width="115px" runat="server" CssClass="inputTextbox calender"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>



                                </table>
                            </div>
                            <div id="divBasicSearch" runat="server">
                                <table style="height: 200px; margin: 0 auto;">
                                    <tr>
                                        <td align="right">
                                            <label>
                                                Search By Name :</label>
                                        </td>
                                        <td colspan="5">
                                            <asp:TextBox ID="txtSearchByName2" ClientIDMode="Static" runat="server" Style="width: 446px  !important;" CssClass="inputTextbox" MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label>
                                                ID # :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtIDNo2" runat="server" CssClass="inputTextbox"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label>
                                                Certificate # :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtCertificateNo2" runat="server" CssClass="inputTextbox"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label>
                                                Last Name :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtLastName" runat="server" CssClass="inputTextbox capitalize-text"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label>
                                                First Name :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="inputTextbox capitalize-text"
                                                MaxLength="50"></asp:TextBox>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label>
                                                Phone Number :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox16" runat="server" CssClass="inputTextbox phone_us"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label>
                                                Email Address :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox17" runat="server" CssClass="inputTextbox "
                                                MaxLength="50"></asp:TextBox>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label>
                                                Date of Birth :</label>
                                        </td>
                                        <td colspan="3">
                                            <asp:TextBox ID="TextBox18" runat="server" placeholder="MM/DD/YYYY" CssClass="inputTextbox calenderDOB"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label>
                                                Address :</label>
                                        </td>
                                        <td colspan="3">
                                            <asp:TextBox ID="txtMiddleName" runat="server" Style="width: 446px  !important;" CssClass="inputTextbox"
                                                MaxLength="50"></asp:TextBox>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label>
                                                Business Name :</label>
                                        </td>
                                        <td colspan="3">
                                            <asp:TextBox ID="TextBox19" runat="server" CssClass="inputTextbox"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div style="width: 90%; margin: 0 auto;">
                                <span class="fltrt">
                                    <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search"
                                        OnClick="btnSearch_Click" />
                                    <asp:Button ID="btnAdvanceSearch" CssClass="btn-info small" runat="server" Text="Advance Search"
                                        OnClick="btnAdvanceSearch_Click" />
                                    <asp:LinkButton ID="btnSearchCancel" CssClass="secondary small" runat="server" Text="Cancel"
                                        OnClick="btnSearchCancel_Click"></asp:LinkButton>
                                </span>
                            </div>
                        </asp:Panel>
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

