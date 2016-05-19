<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucAutomatedNew.ascx.cs"
    Inherits="ucAutomatedNew" %>
<div class=" clearfix">
    <div class="userHide1 searchBoxhidden">
        <div class="clear">
            <div class="close" onclick="javascript:hideDivSlide('.userHide1'); showDivSlide('.searchBbutton');">
            </div>
        </div>
        <fieldset class="PermitSearch" style="position: relative">
            <legend></legend>
            <table class="SearchTable boardinfo" align="center">
                <tbody>
                    <tr>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                From Date :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtFromDate" Style="width: 178px !important;"
                                runat="server" CssClass="inputTextBox calender" placeholder="MM/DD/YYYY" MaxLength="50"></asp:TextBox>
                        </td>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                To Date :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtToDate" runat="server" Style="width: 178px !important;"
                                CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" MaxLength="50"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="vertical-align: middle; width: 137px;">
                            <label>
                                Command :</label>
                        </td>
                        <td colspan="3" style="vertical-align: middle;">
                            <asp:DropDownList Style="width: 184px !important;" ID="ddlCommands1"
                                runat="server">
                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                <asp:ListItem Value="0">Create Late Renewal Fees</asp:ListItem>
                                <asp:ListItem Value="1">Expire Non-Renewed License</asp:ListItem>
                                <asp:ListItem Value="2">Create Renewals</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div style="width: 90%; margin: 0 auto;">
                <span class="fltrt">
                    <asp:Button ID="btnSearch1" CssClass="buttonGreen small" runat="server" Text="Search"
                        ValidationGroup="vgSerch" CausesValidation="true" />
                    <asp:Button ID="btnExecute1" CssClass="secondary small" runat="server" Text="Cancel"
                        ValidationGroup="vgExecute" CausesValidation="true" />
                </span>
            </div>
        </fieldset>
    </div>
    <div class="gridUpperDiv">
        <h3 class="fltlt" style="float: left;">Automated Commands</h3>
        <div class="fltrt rightIcon">
            <a title="find" href="javascript:void()" onclick="javascript:showDivSlide('.userHide1');hideDivSlide('.searchBbutton');">
                <img src="../../App_Themes/Theme1/images/search_icon.png" />
            </a>
        </div>
    </div>
    <div class="clear brdr radius">
        <table class="index" cellspacing="0" cellpadding="4" id="Table1" style="color: #333333; width: 100%; border-collapse: collapse;">
            <tbody>
                <tr style="color: White; background-color: #0D83DD; border-style: None; font-weight: bold;">
                    <th scope="col">Command Name
                    </th>
                    <th scope="col">Status
                    </th>
                    <th scope="col">Date
                    </th>
                    <th scope="col" style="width: 150px; text-align: center">Action
                    </th>
                </tr>
                <tr>
                    <td>
                        <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">Expire Non-Renewed License</span>
                    </td>
                    <td>Scheduled
                    </td>
                    <td>12/23/2014
                    </td>
                    <td>
                        <asp:Button ID="Button1" CssClass="buttonGreen small" runat="server" Text="View" />
                        <asp:Button ID="Button2" CssClass="buttonGreen small" runat="server" Text="Execute" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">Create Late Renewal Fees</span>
                    </td>
                    <td>Processed
                    </td>
                    <td>11/24/2014
                    </td>
                    <td>
                        <asp:Button ID="Button3" CssClass="buttonGreen small" runat="server" Text="View" />
                        <%--<asp:Button ID="Button4" CssClass="buttonGreen small" runat="server" Text="Execute" />--%>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<br />
<div class="clearfix">
    <div class="userHide searchBoxhidden">
        <div class="clear">
            <div class="close" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
            </div>
        </div>
        <fieldset class="PermitSearch" style="position: relative">
            <legend></legend>
            <table class="SearchTable boardinfo" align="center">
                <tbody>
                    <tr>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                Certificate # :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtLicenseNumberSearch" Style="width: 178px !important;"
                                runat="server" CssClass="inputTextbox" MaxLength="10"></asp:TextBox>
                        </td>
                        <td align="right" style="vertical-align: middle; width: 137px;">
                            <label>
                                Application Status :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:DropDownList Style="width: 184px !important;" ID="ddlStatus"
                                runat="server">
                                <asp:ListItem Value="1">Active</asp:ListItem>
                                <asp:ListItem Value="2">Active Probation</asp:ListItem>
                                <asp:ListItem Value="3">Suspension</asp:ListItem>
                                <asp:ListItem Value="4">Expired</asp:ListItem>
                                <asp:ListItem Value="5">Inactive</asp:ListItem>
                                <asp:ListItem Value="6">Revoked</asp:ListItem>
                                <asp:ListItem Value="7">Voluntary Surrender</asp:ListItem>
                                <asp:ListItem Value="8">Pending Renewal</asp:ListItem>
                                <asp:ListItem Value="9">Pending Probation Renewal</asp:ListItem>
                                <asp:ListItem Value="10">Deficient</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                First Name :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtFirstNameSearch" Style="width: 178px !important;"
                                runat="server" CssClass="inputTextBox" MaxLength="50"></asp:TextBox>
                        </td>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                Last Name :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtlastNameSaerch" runat="server" Style="width: 178px !important;"
                                CssClass="inputTextbox" MaxLength="50"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                SS # :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtSSNSaerch" runat="server" placeholder="XXX-XX-XXXX" Style="width: 178px !important;"
                                CssClass="inputTextbox ssn" MaxLength="50"></asp:TextBox>
                        </td>
                        <td align="right" style="vertical-align: middle; width: 137px;">
                            <label>
                                Order By :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:DropDownList Style="width: 184px !important;" ID="ddlOrderBy"
                                runat="server">
                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                <asp:ListItem Value="1">Alphabetical</asp:ListItem>
                                <asp:ListItem Value="2">First Name</asp:ListItem>
                                <asp:ListItem Value="3">Last Name</asp:ListItem>
                                <asp:ListItem Value="4">License number</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div style="width: 90%; margin: 0 auto;">
                <span class="fltrt">
                    <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search"
                        ValidationGroup="vgSerch" CausesValidation="true" />
                    <asp:Button ID="btnExecute" CssClass="secondary small" runat="server" Text="Cancel"
                        ValidationGroup="vgExecute" CausesValidation="true" />

                </span>
            </div>
        </fieldset>
    </div>
    <div class="gridUpperDiv">
        <a class="down_arrow"></a><span class="fltlt">
            <asp:LinkButton ID="LinkButton1" CssClass="" runat="server">Show All</asp:LinkButton>
        </span>
        <div class="fltrt rightIcon">
            <a title="find" href="javascript:void()" onclick="javascript:showDivSlide('.userHide');hideDivSlide('.searchBbutton');">
                <img src="../../App_Themes/Theme1/images/search_icon.png" />
            </a>
        </div>
    </div>
    <div class="brdr radius">
        <div class="divquestion divCharacterReferences" style="width: 1068px;">
            <asp:GridView ID="gvAutomated" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                CssClass="index  grid" Width="100%" CellPadding="5" OnRowDataBound="gvAutomated_RowDataBound"
                ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <%--<asp:CheckBox ID="chkboxSelectAll" runat="server" onclick="CheckAllEmp(this);" />--%>
                        </HeaderTemplate>
                        <ItemStyle />
                        <EditItemTemplate>
                            <div style="width: 800px; height: 150px; margin: auto; padding-top: 18px;">
                                <asp:TextBox ID="txtnote" runat="server" Width="750px" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                <div style="width: 90%; margin: 0 auto; padding: 9px 11px 10px 10px;">
                                    <span class="fltrt">
                                        <asp:Button ID="btnSearchonAddNew" CssClass="buttonGreen small" runat="server" Text="Save"
                                            ValidationGroup="vgSerch" CausesValidation="true" OnClick="btnSearchonAddNew_Click" />
                                        <asp:Button ID="btnExecuteonAddNew" CssClass="secondary small bottom" runat="server"
                                            Text="Cancel" ValidationGroup="vgExecute" CausesValidation="true" OnClick="btnExecuteonAddNew_Click" />
                                    </span>
                                </div>
                            </div>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <%--<asp:CheckBox ID="CheckBox1" runat="server" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name">
                        <ItemStyle />
                        <ItemTemplate>
                            <asp:Label ID="lblLastName" runat="server" Text="Label"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="First Name">
                        <ItemStyle />
                        <ItemTemplate>
                            <asp:Label ID="lblFirstName" runat="server" Text="Label"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="License#">
                        <ItemStyle />
                        <ItemTemplate>
                            <asp:Label ID="lblLicenseNo" runat="server" Text="Label"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status">
                        <ItemStyle />
                        <ItemTemplate>
                            <asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="123px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                        <ItemTemplate>
                            <span class="fltrt">
                                <asp:Button ID="btnView" CssClass="buttonGreen small" runat="server" Text="View"
                                    ValidationGroup="vgSerch" OnClick="btnView_Click" />
                                <asp:Button ID="btnNote" CssClass="secondary small bottom" runat="server" CommandArgument="1"
                                    RowIndex='<%# Container.DisplayIndex %>' Text="Note" OnClick="btnNote_Click" />
                            </span>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div style="width: 100%; height: 200px; border: 0px; padding: 3px">
                        No record found !!
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
        <style>
            .disablePager {
                color: #fff !important;
                background: #6370CC !important;
                text-decoration: none;
            }
        </style>
        <table>
            <tbody>
                <tr class="pager_style">
                    <td colspan="4">
                        <table>
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td>
                                        <input type="submit" name="ctl00$ContentPlaceHolder1$ucCodes1$PagerControl2$rptPager$ctl00$lnkPager"
                                            value="1" id="ContentPlaceHolder1_ucCodes1_PagerControl2_rptPager_lnkPager_0"
                                            disabled="disabled" class="aspNetDisabled disablePager">
                                    </td>
                                    <td>
                                        <input type="submit" name="ctl00$ContentPlaceHolder1$ucCodes1$PagerControl2$rptPager$ctl01$lnkPager"
                                            value="2" id="ContentPlaceHolder1_ucCodes1_PagerControl2_rptPager_lnkPager_1">
                                    </td>
                                    <td>
                                        <input type="submit" name="ctl00$ContentPlaceHolder1$ucCodes1$PagerControl2$rptPager$ctl02$lnkPager"
                                            value="3" id="ContentPlaceHolder1_ucCodes1_PagerControl2_rptPager_lnkPager_2">
                                    </td>
                                    <td>
                                        <input type="submit" name="ctl00$ContentPlaceHolder1$ucCodes1$PagerControl2$rptPager$ctl03$lnkPager"
                                            value="4" id="ContentPlaceHolder1_ucCodes1_PagerControl2_rptPager_lnkPager_3">
                                    </td>
                                    <td>
                                        <input type="submit" name="ctl00$ContentPlaceHolder1$ucCodes1$PagerControl2$rptPager$ctl04$lnkPager"
                                            value="5" id="ContentPlaceHolder1_ucCodes1_PagerControl2_rptPager_lnkPager_4">
                                    </td>
                                    <td>
                                        <input type="submit" name="ctl00$ContentPlaceHolder1$ucCodes1$PagerControl2$rptPager$ctl05$lnkPager"
                                            value="6" id="ContentPlaceHolder1_ucCodes1_PagerControl2_rptPager_lnkPager_5">
                                    </td>
                                    <td>
                                        <input type="submit" name="ctl00$ContentPlaceHolder1$ucCodes1$PagerControl2$rptPager$ctl06$lnkPager"
                                            value="7" id="ContentPlaceHolder1_ucCodes1_PagerControl2_rptPager_lnkPager_6">
                                    </td>
                                    <td>
                                        <input type="submit" name="ctl00$ContentPlaceHolder1$ucCodes1$PagerControl2$lnkPagerLast"
                                            value=">>" id="ContentPlaceHolder1_ucCodes1_PagerControl2_lnkPagerLast">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        <div class="bookcase  form-stacked shelf" style="display: none">
            <div class="clear">
            </div>
            <table style="width: 100%" class="tblTextAlignRight">
                <tbody>
                    <tr>
                        <td class="alignRight">
                            <label class="input-label required">
                                Code Types :
                            </label>
                        </td>
                        <td class="alignLeft">
                            <select name="ctl00$ContentPlaceHolder1$ucCodes1$ddlCodeTy" id="ContentPlaceHolder1_ucCodes1_ddlCodeTy">
                                <option selected="selected" value="-1">Select</option>
                            </select>
                            <span id="ContentPlaceHolder1_ucCodes1_rfvCodeTy" style="color: Red; display: none;"></span>
                            <input type="hidden" name="ctl00$ContentPlaceHolder1$ucCodes1$vceCode_ClientState"
                                id="ContentPlaceHolder1_ucCodes1_vceCode_ClientState">
                        </td>
                        <td class="alignRight">
                            <label class="input-label required">
                                Codes :
                            </label>
                        </td>
                        <td class="alignLeft">
                            <select name="ctl00$ContentPlaceHolder1$ucCodes1$ddlCode" id="ContentPlaceHolder1_ucCodes1_ddlCode">
                                <option selected="selected" value="-1">Select</option>
                            </select>
                            <span id="ContentPlaceHolder1_ucCodes1_rfvCode" style="color: Red; display: none;"></span>
                            <input type="hidden" name="ctl00$ContentPlaceHolder1$ucCodes1$vceCode1_ClientState"
                                id="ContentPlaceHolder1_ucCodes1_vceCode1_ClientState">
                        </td>
                    </tr>
                    <tr>
                        <td class="alignRight">
                            <label class="input-label required">
                                Display Order :
                            </label>
                        </td>
                        <td class="alignLeft">
                            <input name="ctl00$ContentPlaceHolder1$ucCodes1$txtDisplayOrder" type="text" id="ContentPlaceHolder1_ucCodes1_txtDisplayOrder"
                                style="width: 137px">
                            <span id="ContentPlaceHolder1_ucCodes1_rfvDisplayOrd" style="color: Red; display: none;"></span>
                            <input type="hidden" name="ctl00$ContentPlaceHolder1$ucCodes1$vceDispOrd_ClientState"
                                id="ContentPlaceHolder1_ucCodes1_vceDispOrd_ClientState">
                        </td>
                        <td class="alignRight">
                            <label class="input-label required">
                                Reference Key to link :
                            </label>
                        </td>
                        <td class="alignLeft">
                            <select name="ctl00$ContentPlaceHolder1$ucCodes1$ddlReferenceKeytoLink" id="ContentPlaceHolder1_ucCodes1_ddlReferenceKeytoLink">
                                <option selected="selected" value="-1">Select</option>
                            </select>
                            <span id="ContentPlaceHolder1_ucCodes1_rfvRefKe" style="color: Red; display: none;"></span>
                            <input type="hidden" name="ctl00$ContentPlaceHolder1$ucCodes1$vceRef_ClientState"
                                id="ContentPlaceHolder1_ucCodes1_vceRef_ClientState">
                        </td>
                    </tr>
                    <tr>
                        <td class="alignRight">
                            <label class="input-label required">
                                Reference Id to link :
                            </label>
                        </td>
                        <td class="alignLeft">
                            <select name="ctl00$ContentPlaceHolder1$ucCodes1$ddlReferenceIDToLINK" id="ContentPlaceHolder1_ucCodes1_ddlReferenceIDToLINK">
                                <option selected="selected" value="-1">Select</option>
                            </select>
                            <span id="ContentPlaceHolder1_ucCodes1_rfvRefID" style="color: Red; display: none;"></span>
                            <input type="hidden" name="ctl00$ContentPlaceHolder1$ucCodes1$vceRefID_ClientState"
                                id="ContentPlaceHolder1_ucCodes1_vceRefID_ClientState">
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="alignRight">
                            <label style="display: inline-block;">
                                Display this as Default :
                            </label>
                        </td>
                        <td class="alignLeft">
                            <input id="ContentPlaceHolder1_ucCodes1_chkDisplay" type="checkbox" name="ctl00$ContentPlaceHolder1$ucCodes1$chkDisplay">
                        </td>
                    </tr>
                    <tr>
                        <td class="alignRight">
                            <label class="input-label">
                                Descriptions :</label>
                        </td>
                        <td colspan="2" class="alignLeft">
                            <div style="text-align: left">
                                <textarea name="ctl00$ContentPlaceHolder1$ucCodes1$txtDescriptions" rows="4" cols="20"
                                    id="ContentPlaceHolder1_ucCodes1_txtDescriptions" style="width: 80%"></textarea>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
