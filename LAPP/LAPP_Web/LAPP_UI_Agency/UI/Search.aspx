<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Agency/MasterPages/ApplicantMaster.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="LAPP_UI_Agency_UI_Search" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../App_Themes/Agency/tabs/tabs.css" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Theme1/css/searchPanel.css" rel="stylesheet" />
    <link href="../../App_Themes/Theme1/css/NewButton.css" rel="stylesheet" />

    <style>
        html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd, q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary, time, mark, audio, video {
            padding: unset;
            border: 0;
            outline: none;
            vertical-align: middle;
            background: transparent;
        }

            label.input-label {
                padding-right: 10px;
                margin-right: -4px;
            }

        a.small {
            top: 1px;
            position: relative;
        }
    </style>
    <script type="text/javascript">
        function divAddDoc() {
            var dive = document.getElementById("tblClickHere");
            dive.style.display = (dive.style.display == "none") ? "block" : "none";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="upPanel" runat="server">
        <ContentTemplate>
            <div>
                <table style="width: 85%;">
                    <tr>
                        <td><b>Enter complete or partial information in any field you wish to search on.  The single ‘Name’ field will search all Name fields for a match. Information entered in First Name or Last Name fields will only search those fields.</b></td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                    <tr style="margin-bottom: 20px; float: left; margin-top: 15px;">
                        <td><b>To refine a search, use multiple fields.  If results are too few, try removing a field (or partial field).  To clear all search fields, press the Cancel button.</b></td>
                    </tr>
                </table>
            </div>
            <div id="divAdvanceSearch" runat="server" >
                <div class="searchBoxhidden">
                    <fieldset class="PermitSearch" style="position: relative">
                        <legend></legend>
                        <table class="SearchTable boardinfo" align="center" style="line-height: 35px; width: auto; height: 300px;">
                            <tr>
                                <td align="right">
                                    <label>
                                        Search By Name :</label>
                                </td>
                                <td colspan="5">
                                    <asp:TextBox ID="txtSearchByName" ClientIDMode="Static" runat="server" Style="width: 478px  !important;" CssClass="inputTextbox" MaxLength="50"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 110px;">
                                    <label>
                                        ID # :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtIDNo" runat="server" CssClass="inputTextbox"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                                <td align="right" style="width: 130px;">
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
                                    <asp:DropDownList Style="width: 178px !important;" ID="DropDownList1"
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
                                    <asp:TextBox ID="TextBox10" runat="server" CssClass="inputTextbox"
                                        MaxLength="50"></asp:TextBox>
                                </td>
                                <td align="right">
                                    <label>
                                        Website :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox16" runat="server" CssClass="inputTextbox"
                                        MaxLength="50"></asp:TextBox>
                                </td>

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
                                        Address :</label>
                                </td>
                                <td colspan="3">
                                    <asp:TextBox ID="TextBox7" runat="server" Style="width: 478px  !important;" CssClass="inputTextbox"
                                        MaxLength="50"></asp:TextBox>
                                </td>



                            </tr>
                            <tr>
                                <td align="right">
                                    <label>
                                        City :</label>
                                </td>
                                <td colspan="3">
                                    <asp:TextBox ID="TextBox8" runat="server" CssClass="inputTextbox"
                                        MaxLength="50"></asp:TextBox>
                                </td>

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
                                        Certificate Status :</label>
                                </td>
                                <td colspan="3">
                                    <asp:DropDownList Style="width: 178px !important;" ID="ddlRecordStatus"
                                        runat="server">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                        <asp:ListItem Value="2">Active</asp:ListItem>
                                        <asp:ListItem Value="0">Archive</asp:ListItem>
                                        <asp:ListItem Value="1">Delete</asp:ListItem>
                                    </asp:DropDownList>
                                </td>

                                <td align="right">
                                    <label>
                                        Work Status :</label>
                                </td>
                                <td>
                                    <asp:DropDownList Style="width: 178px !important;" ID="DropDownList2"
                                        runat="server">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                    </asp:DropDownList>
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

                        <div style="width: 90%; margin: 0 auto;">
                            <span class="fltrt">
                                <asp:Button ID="Button8" CssClass="buttonGreen small" OnClick="Search1_Click" runat="server" Text="Search" />

                                <asp:LinkButton ID="lnkAdvanceCancle" OnClick="Search1Cancel_Click" CssClass="secondary small" runat="server" Text="Cancel"></asp:LinkButton>
                            </span>
                        </div>
                    </fieldset>
                </div>
            </div>
            <div id="dvSearch" runat="server" style="display:none;">
                <div class="searchBoxhidden">
                    <fieldset class="PermitSearch" style="position: relative">
                        <legend></legend>
                        <table class="SearchTable boardinfo" align="center" style="line-height: 35px; width: 700px; height: 120px;">
                            <tbody>
                                <tr>
                                    <td align="right" style="vertical-align: middle; width: 136px;">
                                        <label class="input-label">
                                            Name :</label>
                                    </td>
                                    <td style="vertical-align: middle;">
                                        <asp:TextBox ID="txtFirstNameSearch" ClientIDMode="Static" Style="width: 178px !important;"
                                            runat="server" CssClass="inputTextBox OnlyAlphabet" MaxLength="50"></asp:TextBox>
                                        </p>
                                    </td>
                                    <td align="right" style="vertical-align: middle; width: 135px;">
                                        <label class="input-label">
                                            AKA (Other Names) :</label>
                                    </td>
                                    <td style="vertical-align: middle;">
                                        <asp:TextBox ID="txtOtherNames" Style="width: 178px !important;"
                                            runat="server" CssClass="inputTextbox" MaxLength="14"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            DOB :</label>
                                    </td>
                                    <td style="vertical-align: middle;">
                                        <asp:TextBox ID="txtDOBSaerch" ClientIDMode="Static" runat="server" Style="width: 178px !important;"
                                            CssClass="inputTextbox calender" MaxLength="50"></asp:TextBox>
                                    </td>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            SS # (Last 4 Digit) :</label>
                                    </td>
                                    <td style="vertical-align: middle;">
                                        <asp:TextBox ID="txtSSN" runat="server" Style="width: 178px !important;"
                                            CssClass="inputTextbox " MaxLength="4"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            Address :</label>
                                    </td>
                                    <td style="vertical-align: middle;">
                                        <asp:TextBox ID="txtAddressSaerch" ClientIDMode="Static" runat="server" Style="width: 178px !important;"
                                            CssClass="inputTextbox calender" MaxLength="50"></asp:TextBox>
                                    </td>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            City of Residence :</label>
                                    </td>
                                    <td style="vertical-align: middle;">
                                        <asp:TextBox ID="txtCity" runat="server" Style="width: 178px !important;"
                                            CssClass="inputTextbox " MaxLength="50"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            Certificate # :</label>
                                    </td>
                                    <td style="vertical-align: middle;">
                                        <asp:TextBox ID="txtCertificateSearch" runat="server" Style="width: 178px !important;"
                                            CssClass="inputTextbox" MaxLength="50"></asp:TextBox>
                                    </td>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            Driver's License # :</label>
                                    </td>
                                    <td style="vertical-align: middle;">
                                        <asp:TextBox ID="txtDriverLicense" runat="server" Style="width: 178px !important;"
                                            CssClass="inputTextbox" MaxLength="50"></asp:TextBox>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div style="width: 657px; margin: 0 auto;">
                            <span class="fltrt">
                                <%--<asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search"
                                    ValidationGroup="vgSerch" OnClick="Search1_Click" />
                                <asp:LinkButton ID="btnSearchCancel" CssClass="secondary small" runat="server" Text="Cancel"
                                    OnClick="Search1Cancel_Click"></asp:LinkButton>--%>
                            </span>
                        </div>
                    </fieldset>
                    <fieldset class="PermitSearch" style="position: relative">
                        <legend></legend>
                        <table class="SearchTable boardinfo" align="center" style="line-height: 35px; width: 673px; margin: 20px auto;">
                            <tbody>
                                <tr>
                                    <td align="right" style="vertical-align: middle;">
                                        <label class="input-label">
                                            City of Employment :</label>
                                    </td>
                                    <td style="vertical-align: middle;">
                                        <asp:TextBox ID="txtCityOfEmployment" runat="server" Style="width: 178px !important;"
                                            CssClass="inputTextbox " MaxLength="50"></asp:TextBox>
                                    </td>

                                    <td align="right" style="vertical-align: middle; width: 150px;">
                                        <label class="input-label">
                                            Name :</label>
                                    </td>
                                    <td style="vertical-align: middle;">
                                        <asp:TextBox ID="txtNameEmp" ClientIDMode="Static" Style="width: 178px !important;"
                                            runat="server" CssClass="inputTextBox OnlyAlphabet" MaxLength="50"></asp:TextBox>
                                        </p>
                                    </td>
                                    <%-- <td align="right" style="vertical-align: middle;">
                                            <label class="input-label">
                                                Last Name :</label>
                                        </td>
                                        <td style="vertical-align: middle;">
                                            <asp:TextBox ID="txtLastNameEmp" ClientIDMode="Static" runat="server" Style="width: 178px !important;
                                               " CssClass="inputTextbox OnlyAlphabet" MaxLength="50"></asp:TextBox>
                                        </td>--%>
                                </tr>
                            </tbody>
                        </table>
                        <div style="width: 657px; margin: 0 auto;">
                            <span class="fltrt">
                                <asp:Button ID="btnSearchEmp" OnClick="Search1_Click" CssClass="buttonGreen small"
                                    runat="server" Text="Search" ValidationGroup="vgSearchEmp" />
                                <asp:Button ID="btnAdvanceSearch" OnClick="btnAdvanceSearch_Click" CssClass="btn-info small" runat="server" Text="Advance Search" />
                                <asp:LinkButton ID="lnkSearchCompanyEmp" CssClass="secondary small" runat="server"
                                    OnClick="Search1Cancel_Click" Text="Cancel"></asp:LinkButton>
                            </span>
                        </div>
                    </fieldset>
                </div>
            </div>
            <asp:Panel ID="pnlSearch1" runat="server" Visible="False">
                <p>
                    <b style="color: Red">Click on the name of the massage provider to see details.</b>
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
                        <td>03/17/1990
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
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle;">
                                                        <label class="input-label">
                                                            FBI :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;">FBI Report Received
                                                    </td>
                                                    <td align="right" style="vertical-align: middle;">
                                                        <label class="input-label">
                                                            DOJ :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;">DOJ Report Received <b>Approved</b>
                                                    </td>
                                                </tr>
                                                <tr>
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
                                If you have any information regarding this individual which might affect the status
                                            of his or her certification, please send email with any applicable information to
                                            <a href="mailto:camtc@amgroup.us">camtc@amgroup.us</a>
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
                        <td>06/19/1993
                        </td>
                        <td>00002
                        </td>
                        <td>2 &nbsp;&nbsp;&nbsp;<b>Pending</b>
                        </td>
                        <td>CAMTC 002</td>
                    </tr>
                </table>
            </asp:Panel>
            <div class="clearb">
            </div>

            <asp:TabContainer ID="TabContainer1" Style="display: none;" runat="server" CssClass="fancy fancy-green"
                ActiveTabIndex="0">
                <asp:TabPanel ID="tbpnlApplicantSearch" Enabled="true" runat="server">
                    <HeaderTemplate>
                        Applicant Search
                    </HeaderTemplate>
                    <ContentTemplate>
                    </ContentTemplate>
                </asp:TabPanel>
                <asp:TabPanel ID="TabPanel1" Enabled="true" runat="server">
                    <HeaderTemplate>
                        Search By School
                    </HeaderTemplate>
                    <ContentTemplate>
                        <h4 style="margin-top: 10px;">Search By School</h4>
                        <fieldset class="PermitSearch" style="position: relative">
                            <legend></legend>
                            <table class="SearchTable boardinfo" align="center" style="line-height: 35px; width: 700px">
                                <tbody>
                                    <tr>
                                        <td align="right" style="vertical-align: middle;">
                                            <label class="input-label">
                                                Establishment Name :</label>
                                        </td>
                                        <td style="vertical-align: middle;">
                                            <asp:TextBox ID="txtEstablishment" runat="server" Style="width: 178px !important;"
                                                CssClass="inputTextbox " MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="right" style="vertical-align: middle;">
                                            <label class="input-label">
                                                Last Name of Applicant :</label>
                                        </td>
                                        <td style="vertical-align: middle;">
                                            <asp:TextBox ID="txtLastNameOfApplicant" ClientIDMode="Static" Style="width: 178px !important;"
                                                runat="server" CssClass="inputTextBox OnlyAlphabet" MaxLength="50"></asp:TextBox>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="vertical-align: middle; width: 135px;">
                                            <label class="input-label">
                                                City of Establishment :</label>
                                        </td>
                                        <td style="vertical-align: middle;">
                                            <asp:TextBox ID="txtCityOfEstablishment" ClientIDMode="Static" runat="server" Style="width: 178px !important;"
                                                CssClass="inputTextbox OnlyAlphabet" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="right" style="vertical-align: middle;">
                                            <label class="input-label">
                                                Address of Establishment :</label>
                                        </td>
                                        <td style="vertical-align: middle;">
                                            <asp:TextBox ID="txtAddressOfEstablishment" ClientIDMode="Static" runat="server"
                                                Style="width: 178px !important;" CssClass="inputTextbox OnlyAlphabet"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div style="width: 680px; margin: 0 auto;">
                                <span class="fltrt">
                                    <asp:Button ID="Button2" CssClass="buttonGreen small" runat="server" Text="Search"
                                        ValidationGroup="vgSearchEmp" CausesValidation="true" OnClick="btnEmpSearch_Click" />
                                    <asp:LinkButton ID="LinkButton2" CssClass="secondary small" OnClick="btnEmpSearchCancel_Click"
                                        runat="server" Text="Cancel"></asp:LinkButton>
                                </span>
                            </div>
                        </fieldset>
                        <asp:Panel ID="pnlSearch3" runat="server" Visible="False">
                            <p>
                                <b style="color: Red">Please click on the applicant's name for more information on the
                                    applicant and employer.</b>
                            </p>
                            <table class="index grid" style="margin-top: 20px">
                                <tr>
                                    <th>Certificate #</th>
                                    <th>Contact
                                    </th>
                                    <th>Establishment
                                    </th>
                                    <th>Address</th>
                                </tr>
                                <tr>
                                    <td>
                                        <b>CMT</b>
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton4" CssClass="link" runat="server" OnClick="lnkOpenRowEMP_Click">Lynne Pinauin</asp:LinkButton>
                                    </td>
                                    <td>The Knot Stop
                                    </td>
                                    <td>San Diego Employee
                                    </td>
                                </tr>
                                <tr id="trEditEmp" runat="server" visible="False">
                                    <td id="Td1" colspan="4" runat="server">
                                        <div class="toolBar">
                                            <span class="fltrt">
                                                <asp:Button ID="Button4" CssClass="secondary small" runat="server" Text="Close" OnClick="btnCloseEmp_Click" /></span>
                                        </div>
                                        <table class="SearchTable boardinfo" align="center" style="line-height: 35px; width: 700px">
                                            <tbody>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle;">
                                                        <label class="input-label">
                                                            Applicant Name :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;">Lynne Pinauin
                                                    </td>
                                                    <td colspan="2" rowspan="2" align="center" valign="top">
                                                        <img src="../../App_Themes/Agency/images/no_img.jpg" width="100px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: top;">
                                                        <label class="input-label">
                                                            Birth Date :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;">8/6/1951
                                                        <br />
                                                        29, Parkway Unit A
                                                        <br />
                                                        Cuvler 92020
                                                        <br />
                                                        Employee
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: top;">
                                                        <label class="input-label">
                                                            Establishment :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;">The Knot Stop
                                                        <br />
                                                        1080, Unversity Avenue
                                                        <br />
                                                        San Diego
                                                        <br />
                                                        <b>CMT</b>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle;">
                                                        <label class="input-label">
                                                            Certificate Number :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;" colspan="3">921
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle;">
                                                        <label class="input-label">
                                                        </label>
                                                    </td>
                                                    <td style="vertical-align: middle;" colspan="3">
                                                        <a class="link">Secure Communications Portal</a><%--onclick="javascript:toggleDiv('.userHide');"--%>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <asp:Panel ID="Panel2" runat="server">
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
                                                        <td>Lynne Pinauin
                                                        </td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td>del Mar
                                                        </td>
                                                        <td>City of Employment
                                                        </td>
                                                        <td>Lynne Pinauin
                                                        </td>
                                                        <td>9621 Ridgehaven Ct<br />
                                                            San Diego, CA
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Imperial Beach
                                                        </td>
                                                        <td>City of Employment
                                                        </td>
                                                        <td>John Carry
                                                        </td>
                                                        <td>9621 Ridgehaven Ct<br />
                                                            San Diego, CA
                                                        </td>
                                                    </tr>
                                                </table>
                                                <div class="toolBar" style="padding: 5px">
                                                    <span class="fltrt"><a class="secondary small" onclick="javascript:toggleDiv('.userHide');">Close</a> </span>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <hr />
                                        <%--<p>
                                            If you have any information regarding this individual which might affect the status
                                            of his or her certification, please send email with any applicable information to
                                            <a href="mailto:camtc@amgroup.us">camtc@amgroup.us</a></p>--%>
                                        <div class="toolBar">
                                            <span class="fltrt">
                                                <asp:Button ID="Button5" CssClass="secondary small" runat="server" Text="Close" OnClick="btnCloseEmp_Click" /></span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>CMT</b>
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton5" CssClass="link" runat="server" OnClick="lnkOpenRowEMP_Click">Michele Miller</asp:LinkButton>
                                    </td>
                                    <td>The Knot Stop
                                    </td>
                                    <td>San Diego Prospective Employer
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </ContentTemplate>
                </asp:TabPanel>
                <asp:TabPanel ID="TabPanel2" Enabled="true" runat="server">
                    <HeaderTemplate>
                        Search Denials, Suspensions and Revocations
                    </HeaderTemplate>
                    <ContentTemplate>
                        <h4 style="margin-top: 10px;">Search Denials, Suspensions and Revocations</h4>
                        <p>
                            You may select by typing in the first letters of the applicant's last name, residence
                            city, or status
                        </p>
                        <fieldset class="PermitSearch" style="position: relative">
                            <legend></legend>
                            <table class="SearchTable boardinfo" align="center" style="line-height: 35px; width: 700px">
                                <tbody>
                                    <tr>
                                        <td align="right" style="vertical-align: middle; width: 135px;">
                                            <label class="input-label">
                                                Last Name :</label>
                                        </td>
                                        <td style="vertical-align: middle;">
                                            <asp:TextBox ID="txtlastNameSaerchDSR" ClientIDMode="Static" runat="server" Style="width: 178px !important;"
                                                CssClass="inputTextbox OnlyAlphabet" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="right" style="vertical-align: middle;">
                                            <label class="input-label">
                                                City of Residence :</label>
                                        </td>
                                        <td style="vertical-align: middle;">
                                            <asp:TextBox ID="txtCityDSR" runat="server" Style="width: 178px !important;"
                                                CssClass="inputTextbox " MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="vertical-align: middle;">
                                            <label class="input-label">
                                                Applicant Status :</label>
                                        </td>
                                        <td style="vertical-align: middle;">
                                            <asp:DropDownList ID="ddlStatus" Style="width: 188px !important;" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Expired</asp:ListItem>
                                                <asp:ListItem>Denied</asp:ListItem>
                                                <asp:ListItem>Suspended</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div style="width: 654px; margin: 0 auto;">
                                <span class="fltrt">
                                    <asp:Button ID="Button1" CssClass="buttonGreen small" runat="server" Text="Search"
                                        ValidationGroup="vgSearchEmp" CausesValidation="true" OnClick="btnDSRSearch_Click" />
                                    <asp:LinkButton ID="LinkButton1" CssClass="secondary small" runat="server" Text="Cancel"
                                        OnClick="btnDSRSearchCancel_Click"></asp:LinkButton>
                                </span>
                            </div>
                        </fieldset>
                        <fieldset class="PermitSearch" style="position: relative">
                            <legend></legend>
                            <table class="SearchTable boardinfo" align="center" style="line-height: 35px; width: 673px; margin: 20px auto;">
                                <tbody>
                                    <tr>
                                        <td align="right" style="vertical-align: middle;">
                                            <label class="input-label">
                                                City of Employment :</label>
                                        </td>
                                        <td style="vertical-align: middle;">
                                            <asp:TextBox ID="txtCityOfEmploymentDSR" runat="server" Style="width: 178px !important;"
                                                CssClass="inputTextbox " MaxLength="50"></asp:TextBox>
                                        </td>

                                        <td align="right" style="vertical-align: middle; width: 150px;">
                                            <label class="input-label">
                                                Name :</label>
                                        </td>
                                        <td style="vertical-align: middle;">
                                            <asp:TextBox ID="txtNameEmpDSR" ClientIDMode="Static" Style="width: 178px !important;"
                                                runat="server" CssClass="inputTextBox OnlyAlphabet" MaxLength="50"></asp:TextBox>
                                            </p>
                                        </td>
                                        <%--<td align="right" style="vertical-align: middle; width: 135px;">
                                            <label class="input-label">
                                                Last Name :</label>
                                        </td>
                                        <td style="vertical-align: middle;">
                                            <asp:TextBox ID="txtLastNameEmpDSR" ClientIDMode="Static" runat="server" Style="width: 178px !important;
                                               " CssClass="inputTextbox OnlyAlphabet" MaxLength="50"></asp:TextBox>
                                        </td>--%>
                                    </tr>
                                </tbody>
                            </table>
                            <div style="width: 657px; margin: 0 auto;">
                                <span class="fltrt">
                                    <asp:Button ID="btnSearchEmpDSR" CssClass="buttonGreen small" runat="server" Text="Search"
                                        OnClick="btnDSRSearch_Click" CausesValidation="true" />
                                    <asp:LinkButton ID="lnkSearchCompanyEmpDSR" CssClass="secondary small" runat="server"
                                        OnClick="btnDSRSearchCancel_Click" Text="Cancel"></asp:LinkButton>
                                </span>
                            </div>
                        </fieldset>
                        <asp:Panel ID="pnlSaerch4" runat="server" Visible="False">
                            <table class="index grid" style="margin-top: 20px">
                                <tr>
                                    <th>Applicant
                                    </th>
                                    <th>Action
                                    </th>
                                    <th>City, State, Zipcode
                                    </th>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="LinkButton6" CssClass="link" runat="server" OnClick="lnkOpenRowDSR_Click">John Carry</asp:LinkButton>
                                    </td>
                                    <td>
                                        <b>Denied 4/17/2014</b>
                                    </td>
                                    <td>Monterey Park, CA 91755-1459
                                    </td>
                                </tr>
                                <tr id="trEditDSR" runat="server" visible="False">
                                    <td id="Td2" colspan="3" runat="server">
                                        <div class="toolBar">
                                            <span class="fltrt">
                                                <asp:Button ID="Button6" CssClass="secondary small" runat="server" Text="Close" OnClick="btnCloseDSR_Click" /></span>
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
                                                            Applicant Name :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;">John Carry
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle;">
                                                        <label class="input-label">
                                                            Birth Date :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;">8/6/1951
                                                    </td>
                                                    <td align="right" style="vertical-align: middle;">
                                                        <label class="input-label">
                                                            Other Names Used :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;"></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle;">
                                                        <label class="input-label">
                                                            SS # :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;">XXX-XX-9413
                                                    </td>
                                                    <td align="right" style="vertical-align: middle;">
                                                        <label class="input-label">
                                                            Govt ID # :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;">H099373
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle;">
                                                        <label class="input-label">
                                                            Home Adress :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;" colspan="3">H099373
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle;">
                                                        <label class="input-label">
                                                            Applied :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;">6/26/2009
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle;">
                                                        <label class="input-label">
                                                            FBI :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;">FBI Report Received
                                                    </td>
                                                    <td align="right" style="vertical-align: middle;">
                                                        <label class="input-label">
                                                            DOJ :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;">DOJ Report Received <b>Approved</b>
                                                    </td>
                                                </tr>
                                                <tr>
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
                                                </tr>
                                                <tr>
                                                    <td align="right" style="vertical-align: middle;">
                                                        <label class="input-label">
                                                            Phone Numbers :</label>
                                                    </td>
                                                    <td style="vertical-align: middle;">Phone:(890-980-8393)<br />
                                                        Mobile:(800-080-2300)<br />
                                                        Fax:
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
                                                        </label>
                                                    </td>
                                                    <td style="vertical-align: middle;" colspan="3">
                                                        <a class="link">Secure Communications Portal</a><%--onclick="javascript:toggleDiv('.userHide');"--%>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <asp:Panel ID="Panel3" runat="server">
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
                                            If you have any information regarding this individual which might affect the status
                                            of his or her certification, please send email with any applicable information to
                                            <a href="mailto:camtc@amgroup.us">camtc@amgroup.us</a>
                                        </p>
                                        <div class="toolBar">
                                            <span class="fltrt">
                                                <asp:Button ID="Button7" CssClass="secondary small" runat="server" Text="Close" OnClick="btnCloseDSR_Click" /></span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="LinkButton7" CssClass="link" runat="server" OnClick="lnkOpenRowDSR_Click">Long Liang</asp:LinkButton>
                                    </td>
                                    <td>
                                        <b>Expired</b>
                                    </td>
                                    <td>Alameda, CA 94501
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </ContentTemplate>
                </asp:TabPanel>
            </asp:TabContainer>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script type="text/javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        function BeginRequestHandler(sender, args) {
            try {
                //alert('aa');
                ShowLoader();
                //alert('hi');
                onUpdate();

            }
            catch (e) {
            }
        }

        function EndRequestHandler(sender, args) {
            try {
                HideLoader();
                onUpdate();
            }
            catch (e) {
            }
        }
        function onUpdate() {

        }

        jQuery.fn.center = function () {

            this.css("position", "absolute");
            this.css("top", Math.max(0, (($(window).height() - $(this).outerHeight()) / 2) +
                                                $(window).scrollTop()) + "px");
            this.css("left", Math.max(0, (($(window).width() - $(this).outerWidth()) / 2) +
                                                $(window).scrollLeft()) + "px");
            return this;
        }
</asp:Content>
