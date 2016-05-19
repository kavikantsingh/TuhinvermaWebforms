<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDashboard.ascx.cs" Inherits="Module_UI_Agency_ucDashboard" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<link href="../../App_Themes/Theme1/css/NewButton.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/Theme1/css/searchPanel.css" rel="stylesheet" />
<link href="../../App_Themes/Theme1/css/style.css" rel="stylesheet" />
<asp:UpdatePanel ID="Upnal" runat="server">
    <ContentTemplate>
        <style>
            .box-logo {
                height: 65px;
                width: 163px;
                margin-top: 0px;
            }

            .tablecs tr td {
                vertical-align: middle;
            }

            .algn-rgt {
                text-align: right;
            }

            .PermitSearch {
                padding: 10px;
                border: 1px solid #ddd;
                border-radius: 4px;
            }

            .index tr:first-child td {
                border-top: 1px solid #bbb;
            }
        </style>
        <div class="clearb" id="divVCRO" style="display: none;" runat="server">
            <asp:LinkButton ID="lnkbt" runat="server"></asp:LinkButton>
        </div>
        <div class="userHide searchBoxhidden" style="display: block !important" id="pnlSearch" runat="server">
            <div class="clear">
            </div>
            <fieldset class="PermitSearch" style="position: relative">
                <legend></legend>
                <asp:Panel ID="defaultbtn" runat="server" DefaultButton="btnSearch">
                    <div id="divAdvanceSearch" runat="server" visible="false">
                        <table style="height: 355px;" class="tablecs">
                            <tr>
                                <td align="right">
                                    <label>
                                        Search By Name :</label>
                                </td>
                                <td colspan="5">
                                    <asp:TextBox ID="txtSearchByName" ClientIDMode="Static" runat="server" Style="width: 446px  !important;" CssClass="inputTextbox" MaxLength="50"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 160px;">
                                    <label>
                                        ID # :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtIDNo" runat="server" CssClass="inputTextbox"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                                <td align="right" style="width: 160px;">
                                    <label>
                                        Certificate # :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCertificateNo" runat="server" CssClass="inputTextbox"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                                <td align="right" style="width: 200px;">
                                    <label>
                                        Cert Type :</label>
                                </td>
                                <td>
                                    <asp:DropDownList Style="width: 143px !important;" ID="DropDownList1"
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
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="inputTextbox capitalize-text"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                                <td align="right">
                                    <label>
                                        First Name :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="inputTextbox capitalize-text"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                                <td align="right">
                                    <label>
                                        Middle Name :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="inputTextbox"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label>
                                        Authorized Representative First Name :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox8" runat="server" CssClass="inputTextbox capitalize-text"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                                <td align="right">
                                    <label>
                                        Authorized Representative Last Name :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox10" runat="server" CssClass="inputTextbox capitalize-text"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                                <td></td>
                                <td></td>
                                <tr>
                                    <td align="right">
                                        <label>
                                            AKAs :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="inputTextbox"
                                            MaxLength="50"></asp:TextBox>
                                    </td>
                                    <td align="right">
                                        <label>
                                            CDL # (or CID) :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="inputTextbox"
                                            MaxLength="50"></asp:TextBox>
                                    </td>
                                    <td align="right">
                                        <label>
                                            Date of Birth :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="inputTextbox calenderDOB"
                                            MaxLength="50"></asp:TextBox>
                                    </td>
                                </tr>
                            <tr>
                                <td align="right">
                                    <label>
                                        Phone Number :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox21" runat="server" CssClass="inputTextbox"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                                <td align="right">
                                    <label>
                                        Website :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox22" runat="server" CssClass="inputTextbox"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label>
                                        Address :</label>
                                </td>
                                <td colspan="3">
                                    <asp:TextBox ID="TextBox7" runat="server" Style="width: 446px  !important;" CssClass="inputTextbox"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                                <%--<td align="right">
                                            <label>
                                                Current Address :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox7" runat="server" CssClass="inputTextbox"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label>
                                                Mailing Address :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox8" runat="server" CssClass="inputTextbox"
                                                MaxLength="50"></asp:TextBox>
                                        </td>--%>
                                <td align="right">
                                    <label>
                                        SS # (Last 4) :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox9" runat="server" CssClass="inputTextbox"
                                        MaxLength="4"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label>
                                        City :</label>
                                </td>
                                <td colspan="5">
                                    <asp:TextBox ID="TextBox20" runat="server" CssClass="inputTextbox"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label>
                                        Certificate Status :</label>
                                </td>
                                <td colspan="3">
                                    <asp:DropDownList Style="width: 143px !important;" ID="ddlRecordStatus"
                                        runat="server">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                        <asp:ListItem Value="2">Active</asp:ListItem>
                                        <asp:ListItem Value="0">Archive</asp:ListItem>
                                        <asp:ListItem Value="1">Delete</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <%--<td align="right">
                                            <label>
                                                Date of Status :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox10" runat="server" CssClass="inputTextbox calender"
                                                MaxLength="50"></asp:TextBox>
                                        </td>--%>
                                <td align="right">
                                    <label>
                                        Date Applied (or re-Applied) :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox11" runat="server" CssClass="inputTextbox"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label>
                                        Work Location :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox12" runat="server" CssClass="inputTextbox"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                                <td align="right">
                                    <label>
                                        Business Name :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox13" runat="server" CssClass="inputTextbox"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                                <td align="right">
                                    <label>
                                        Work Status :</label>
                                </td>
                                <td>
                                    <asp:DropDownList Style="width: 143px !important;" ID="DropDownList2"
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
                                    <asp:TextBox ID="TextBox14" runat="server" CssClass="inputTextbox"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                                <td align="right">
                                    <label>
                                        Date Attended :</label>
                                </td>
                                <td colspan="3">
                                    <asp:TextBox ID="TextBox15" runat="server" CssClass="inputTextbox calender"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="divBasicSearch" runat="server">
                        <table style="height: 200px; margin: 0 auto;" class="tablecs">
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
                                <td align="right" style="width: 135px;">
                                    <label>
                                        ID # :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtIDNo2" runat="server" CssClass="inputTextbox"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                                <td align="right" style="width: 160px;">
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
            </fieldset>
        </div>
        <div class="user-dashboard" style="display: none;">
            <div class="dashbaord-container" style="line-height: 29px; font-weight: bold;">
                <asp:Button ID="lnkSearhApplicant" CssClass="buttonGreen medium" runat="server" OnClick="lnkSearhApplicant_Click"
                    Text="Search Database" />
                <%--<li>
                        <asp:LinkButton ID="LinkButton1" CssClass="link" runat="server"  PostBackUrl="~/UI/GovernmentAgencies.aspx"
                            onclick="LinkButton1_Click">Contact CAMTC's Professional Standards Division</asp:LinkButton>
                    </li>--%>
                <br />
                <br />
                <h4 style="">CAMTC's Professional Standards Division Staff</h4>
                <table style="line-height: 29px; font-weight: bold;">
                    <tr>
                        <td style="width: 150px; text-align: right; padding-right: 15px;">
                            <a href="#" class="link">Rick McElroy</a>
                        </td>
                        <td>Director
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px; text-align: right; padding-right: 15px;">
                            <a href="#" class="link">Tim Chambers</a>
                        </td>
                        <td>Chief of Investigation and Enforcement
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px; text-align: right; padding-right: 15px;">
                            <a href="#" class="link">Kellie Rodriquez</a>
                        </td>
                        <td>Senior Investigator
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px; text-align: right; padding-right: 15px;">
                            <a href="#" class="link">Justine Scott</a>
                        </td>
                        <td>Investigator
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px; text-align: right; padding-right: 15px;">
                            <a href="#" class="link">Alison Case</a>
                        </td>
                        <td>Investigator
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px; text-align: right; padding-right: 15px;">
                            <a href="#" class="link">Julien Dunn</a>
                        </td>
                        <td>Investigator
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <asp:Panel ID="pnlSearch1" runat="server" Visible="False">
            <p>
                <b style="color: Red">Click on the name of the massage provider to see details.</b>
            </p>
            <br />
            <p>
                If you wish to see detailed information about an item below that is not hyperlink, <a href="#" class="link">click here to send a Secure Communication</a> to CAMTC requesting that information.
            </p>
            <table class="index grid" style="margin-top: 20px">
                <tr>
                    <th>Name
                    </th>
                    <th>DOB
                    </th>
                    <th>Gov’t ID
                    </th>
                    <th>CAMTC Status
                    </th>
                    <th>Certificate # (if any)
                    </th>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="lnkOpenRow" CssClass="link" runat="server" OnClick="lnkOpenRow_Click">John Carry</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton1" CssClass="link" runat="server">07/01/2016</asp:LinkButton>
                    </td>
                    <td>00001
                    </td>
                    <td>1 &nbsp;&nbsp;&nbsp;<b>Approved
                    </td>
                    <td>CAMTC 001
                    </td>
                </tr>
                <tr id="trEditApplicant" runat="server" visible="False">
                    <td colspan="5" runat="server">
                        <div class="toolBar">
                            <span class="fltrt">
                                <asp:Button ID="Button3" CssClass="secondary small" runat="server" Text="Close" OnClick="btnClose_Click" /></span>
                        </div>
                        <table class="SearchTable boardinfo" align="center" style="line-height: 35px; width: 700px">
                            <tbody>
                                <tr>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            Certificate # :</label>
                                    </td>
                                    <td style="vertical-align: middle;">1
                                    </td>
                                    <td colspan="2" rowspan="3" align="center" valign="top">
                                        <img src="../../App_Themes/Agency/images/no_img.jpg" width="100px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            Certificate Type :</label>
                                    </td>
                                    <td style="vertical-align: middle;">CMT
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            CAMTC Status :</label>
                                    </td>
                                    <td style="vertical-align: middle;">Approved
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            First Name :</label>
                                    </td>
                                    <td style="vertical-align: middle;">John
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            Last Name :</label>
                                    </td>
                                    <td style="vertical-align: middle;">Carry
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            AKAs :</label>
                                    </td>
                                    <td style="vertical-align: middle;"></td>
                                </tr>
                                <tr>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            DOB :</label>
                                    </td>
                                    <td style="vertical-align: middle;">8/6/1951
                                    </td>
                                    <td align="right" style="vertical-align: middle;">
                                        <%--<label class="input-label">
                                                            Other Names Used :</label>--%>
                                    </td>
                                    <td style="vertical-align: middle;"></td>
                                </tr>
                                <tr>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            Last 4 SSN :</label>
                                    </td>
                                    <td style="vertical-align: middle;">XXX-XX-9413
                                    </td>

                                </tr>
                                <tr>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            Govt ID # :</label>
                                    </td>
                                    <td style="vertical-align: middle;">H099373
                                    </td>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            State of ID # :</label>
                                    </td>
                                    <td style="vertical-align: middle;"></td>
                                </tr>
                                <tr>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            Home Address :</label>
                                    </td>
                                    <td style="vertical-align: middle;" colspan="3">H099373
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            Mailing Address :</label>
                                    </td>
                                    <td style="vertical-align: middle;" colspan="3">APT# 73, Green Street, Cuvler, CA 89028
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            Work Address(es) :</label>
                                    </td>
                                    <td style="vertical-align: middle;" colspan="3">APT# 73, Green Street, Cuvler, CA 89028
                                    </td>
                                </tr>
                                <%--<tr>
                                                    <td align="right" style="vertical-align: middle;">
                                                        <label class="input-label">
                                                            Applied :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;">6/26/2009
                                                    </td>
                                                </tr>--%>
                                <tr>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            FBI Results
                                            <br />
                                            (Livescan Reports) :</label>
                                    </td>
                                    <td style="vertical-align: middle;">FBI Report Received
                                    </td>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label" style="width: 207px;">
                                            DOJ Results
                                            <br />
                                            (Livescan Reports) :</label>
                                    </td>
                                    <td style="vertical-align: middle;">DOJ Report Received <b>Approved</b>
                                    </td>
                                </tr>
                                <%--<tr>
                                                    <td align="right" style="vertical-align: middle;">
                                                        <label class="input-label">
                                                            Certified Effective :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;">9/14/2015
                                                    </td>
                                                    <td align="right" style="vertical-align: middle;">
                                                        <label class="input-label">
                                                            Certified Expires :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;">9/14/2017
                                                    </td>
                                                </tr>--%>

                                <tr>
                                    <td align="right" style="vertical-align: middle">
                                        <label class="input-label">
                                            Phone Number(s) :</label>
                                    </td>
                                    <td style="vertical-align: middle;">Phone:(890-980-8393)</td>
                                </tr>
                                <tr>
                                    <td align="right" style="vertical-align: middle">
                                        <label class="input-label">
                                        </label>
                                    </td>
                                    <td style="vertical-align: middle;">Mobile:(800-080-2300)</td>
                                </tr>
                                <tr>
                                    <td align="right" style="vertical-align: middle">
                                        <label class="input-label">
                                        </label>
                                    </td>
                                    <td style="vertical-align: middle;">Fax:</td>
                                </tr>

                                <tr>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                        </label>
                                    </td>
                                    <td style="vertical-align: middle;" colspan="3">
                                        <a class="link" onclick="divAddDoc();">Secure Communications Portal</a> <%--onclick="javascript:toggleDiv('.userHide');"--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table id="tblClickHere" class="SearchTable boardinfo" style="line-height: 35px; margin-right: 130px; display: none">
                                            <tbody>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle">
                                                        <label class="input-label">
                                                            Application :</label><br />
                                                    </td>
                                                    <td style="vertical-align: middle;"></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle">
                                                        <label class="input-label">
                                                            Application for Recertification :</label><br />
                                                    </td>
                                                    <td style="vertical-align: middle;"></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle">
                                                        <label class="input-label">
                                                            DOJ/FBI Results (Livescan Reports) :</label><br />
                                                    </td>
                                                    <td style="vertical-align: middle;"></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle">
                                                        <label class="input-label">
                                                            Suspension Letters :</label><br />
                                                    </td>
                                                    <td style="vertical-align: middle;"></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle">
                                                        <label class="input-label">
                                                            Reinstatement /Lifting of Suspension Letters :</label><br />
                                                    </td>
                                                    <td style="vertical-align: middle;"></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle">
                                                        <label class="input-label">
                                                            Proposed Denial Letters :</label><br />
                                                    </td>
                                                    <td style="vertical-align: middle;"></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle">
                                                        <label class="input-label">
                                                            Proposed Disciplinary Letters :</label><br />
                                                    </td>
                                                    <td style="vertical-align: middle;"></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle">
                                                        <label class="input-label">
                                                            Final Decision Letters :</label><br />
                                                    </td>
                                                    <td style="vertical-align: middle;"></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle">
                                                        <label class="input-label">
                                                            Government Issued ID :</label><br />
                                                    </td>
                                                    <td style="vertical-align: middle;"></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle">
                                                        <label class="input-label">
                                                            Transcripts :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;"></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: middle;" colspan="4">
                                        <b style="margin-top: 10px; margin-bottom: 10px; float: left; width: 100%; color: red;">The information provided by <a class="link" onclick="divAddDoc();">clicking here</a> is for official use only.  All access and activity is being monitored by CAMTC.</b>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <asp:Panel ID="pnlSearch2" runat="server">
                            <div style="margin: 0 auto; width: 700px" class="userHide">
                                <h5>Employment History</h5>
                                <p>
                                    <b>John Carry</b>
                                </p>
                                <table class="index grid" style="margin-top: 10px">
                                    <tr>
                                        <th>City</th>
                                        <th>Relationship
                                        </th>
                                        <th>Contact Name
                                        </th>
                                        <th>Address</th>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>Applicant
                                        </td>
                                        <td>John Carry
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Redwood City
                                        </td>
                                        <td>City of Employment
                                        </td>
                                        <td>John Carry
                                        </td>
                                        <td>1301 Maple St<br />
                                            Redwood City, CA
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>San Mateo
                                        </td>
                                        <td>City of Employment
                                        </td>
                                        <td>John Carry
                                        </td>
                                        <td>400 County Center, 3rd floor<br />
                                            Redwood City, CA
                                        </td>
                                    </tr>
                                </table>
                                <div class="toolBar" style="padding: 5px">
                                    <span class="fltrt"><a class="secondary small" onclick="javascript:toggleDiv('.userHide');">Close</a> </span>
                                </div>
                            </div>
                        </asp:Panel>
                        <hr />
                        <p>
                            If you have any information regarding this individual which might affect the status of his/her 
                            certification (such as a complaint, arrest, citation, administrative actions, etc.), please send an 
                            email with all applicable information to <a href="mailto:complaints@camtc.org" class="link">complaints@camtc.org.</a>
                        </p>
                        <%--<b style="margin-top: 10px; margin-bottom: 10px; float: left; width: 100%;">The information provided below is for official use only.  All access and activity is being monitored by CAMTC.</b>--%>
                        <div class="toolBar">
                            <span class="fltrt">
                                <asp:Button ID="btnClose" CssClass="secondary small" runat="server" Text="Close"
                                    OnClick="btnClose_Click" /></span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton3" CssClass="link" runat="server" OnClick="lnkOpenRow_Click">Li Gubler</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton2" CssClass="link" runat="server">07/03/2016</asp:LinkButton>
                    </td>
                    <td>00002
                    </td>
                    <td>2 &nbsp;&nbsp;&nbsp;<b>Pending</b>
                    </td>
                    <td>CAMTC 002</td>
                </tr>
            </table>
        </asp:Panel>
    </ContentTemplate>
</asp:UpdatePanel>
<style>
    .error {
        background-color: pink;
    }

    #error-container {
        width: 90%;
        margin: 0 auto;
        text-align: left;
    }

    #progressbar li.active:before, #progressbar li.active:after {
        background: #27AE60;
        color: white;
    }

    #error-container ul {
        max-width: 514px;
        margin: 0px auto 20px auto;
        border: 1px solid #F6AEAE;
        padding: 10px 30px;
        border-radius: 5px;
        background: #FFF2F2;
    }

        #error-container ul li {
            color: red;
        }

    .error {
        background: rgb(255, 241, 241) !important;
        border: 1px solid red !important;
    }
</style>
