<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucEmailListQuery.ascx.cs"
    Inherits="ucEmailListQuery" %>
<div>
    <style>
        
    </style>
    <div class="userHide searchBoxhidden">
        <div class="clear">
            <div class="close" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
            </div>
        </div>
        <fieldset class="PermitSearch" style="position: relative">
            <legend></legend>
            <table class="SearchTable boardinfo" align="center" style="height: 100px;">
                <tbody>
                    <tr>
                        <td align="right" style="vertical-align: middle;">
                            <label class="input-label">
                                License # :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtLicenseNumberSearch" Style="width: 178px !important; margin-left: 3px;"
                                runat="server" CssClass="inputTextbox" MaxLength="10"></asp:TextBox>
                        </td>
                        <td align="right" style="vertical-align: middle; width: 137px;">
                            <label class="input-label">
                                Application Status :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:DropDownList Style="width: 184px !important; margin-left: 3px;" ID="ddlStatus"
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
                            <label class="input-label">
                                First Name :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtFirstNameSearch" Style="width: 178px !important; margin-left: 3px;"
                                runat="server" CssClass="inputTextBox" MaxLength="50"></asp:TextBox>
                        </td>
                        <td align="right" style="vertical-align: middle;">
                            <label class="input-label">
                                Last Name :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtlastNameSaerch" runat="server" Style="width: 178px !important; margin-left: 3px;"
                                CssClass="inputTextbox" MaxLength="50"></asp:TextBox>
                        </td>
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td align="right" style="vertical-align: middle;">
                            <label class="input-label">
                                SS # :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtSSNSaerch" runat="server" placeholder="XXX-XX-XXXX" Style="width: 178px !important; margin-left: 3px;"
                                CssClass="inputTextbox ssn" MaxLength="50"></asp:TextBox>
                        </td>
                        <td colspan="2"></td>
                    </tr>
                </tbody>
            </table>
            <div style="width: 90%; margin: 0 auto;">
                <span class="fltrt">
                    <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search"
                        ValidationGroup="vgSerch" CausesValidation="true" />

                    <asp:LinkButton ID="btnSearchCancel" CssClass="secondary small " runat="server" Text="Cancel"></asp:LinkButton>
                </span>
            </div>
        </fieldset>
    </div>
    <div class="clear">
    </div>
    <div class="gridUpperDiv">
        <a class="down_arrow"></a><span class="fltlt">
            <asp:LinkButton ID="LinkButton1" CssClass="" runat="server">Show All</asp:LinkButton>
        </span>
        <div class="fltrt rightIcon">
            <a title="find" href="javascript:void()" onclick="javascript:showDivSlide('.userHide');hideDivSlide('.searchBbutton');">
                <img src="../../App_Themes/Theme1/images/search_icon.png"></a> <a title="Print" href="javascript:void()"
                    onclick="javascript:toggleDiv('.divPrint');">
                    <img src="../../App_Themes/Theme1/images/PrintOption.png" /></a>
            <div id="DivPrint" runat="server" style="display: none; line-height: 30px;" class="divPrint">
                <asp:UpdatePanel ID="upPrint" runat="server">
                    <ContentTemplate>
                        <h4 class="fltlft">Print
                        </h4>
                        <div class="closePrint" id="HidePrint" onclick="javascript:hideDivSlide('.divPrint');">
                        </div>
                        <div class="clear">
                        </div>
                        <asp:Button ID="btnPrint" Width="120px" runat="server" Text="Print" CssClass="buttonGreen small" />
                        <br />
                        <asp:Button ID="btnPDF" Width="120px" runat="server" Text="PDF" CssClass="buttonGreen small" />
                        <br />
                        <asp:Button ID="btnExcel" Width="120px" runat="server" Text="Excel" CssClass="buttonGreen small" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
    <div class="brdr radius">
        <div>
            <table class="index" cellspacing="0" cellpadding="4" id="gvCode" style="color: #333333; width: 100%; border-collapse: collapse;">
                <tbody>
                    <tr style="color: White; background-color: #0D83DD; border-style: None; font-weight: bold;">

                        <th scope="col">Last Name
                        </th>
                        <th scope="col">First Name
                        </th>
                        <th scope="col">Email
                        </th>
                        <th scope="col">City
                        </th>
                        <th scope="col">State
                        </th>
                        <th scope="col">Zip
                        </th>
                    </tr>
                    <tr>

                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">ROBIN</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">WINTER</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">winter@gmail.com</span>
                        </td>
                        <td>Los Angeles
                        </td>
                        <td>Nevada
                        </td>
                        <td>12410
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">ROSIO</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">DOMINGUEZ</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">dominguez@gmail.com</span>
                        </td>
                        <td>Chicago
                        </td>
                        <td>Florida
                        </td>
                        <td>24503
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">NICHOLAS</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">TULLO</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">tullo@gmail.com</span>
                        </td>
                        <td>Phoenix
                        </td>
                        <td>Idaho
                        </td>
                        <td>24123
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">ALANA</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">MEZO</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">mezo@gmail.com</span>
                        </td>
                        <td>San Antonio
                        </td>
                        <td>Indiana
                        </td>
                        <td>24111
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">LESHAUN</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">WILLIAMS</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">williams@gmail.com</span>
                        </td>
                        <td>San Diego
                        </td>
                        <td>Louisiana
                        </td>
                        <td>20123
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">ARELYS</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">CABRERA</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">cabrera@gmail.com</span>
                        </td>
                        <td>Dallas
                        </td>
                        <td>Minnesota
                        </td>
                        <td>24003
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">TAKI</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">RHODES</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">rhodes@gmail.com</span>
                        </td>
                        <td>Columbus
                        </td>
                        <td>Missouri
                        </td>
                        <td>24623
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">MARILYN</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">BARRY</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">barry@gmail.com</span>
                        </td>
                        <td>Charlotte
                        </td>
                        <td>North Dakota
                        </td>
                        <td>10241
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">STACY</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">MORGEN</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">morgen@gmail.com</span>
                        </td>
                        <td>El Paso
                        </td>
                        <td>Oklahoma
                        </td>
                        <td>24352
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">John</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">MORGEN</span>
                        </td>
                        <td>
                            <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">johnmorgen@gmail.com</span>
                        </td>
                        <td>Boston
                        </td>
                        <td>Oregon
                        </td>
                        <td>24123
                        </td>
                    </tr>
                </tbody>
            </table>
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
