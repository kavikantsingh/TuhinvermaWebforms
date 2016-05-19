<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucCouncilInfo.ascx.cs" Inherits="Module_Administration_ucBoardInfo" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="ucBaordInfoRenewalFees.ascx" TagName="ucBaordInfoRenewalFees" TagPrefix="uc3" %>
<div class="clearb">
</div>
<div class="main boardinfo">
    <br />
    <br />
    <div class="clearb">
    </div>
    <div class="container primary-content ">
        <div class="clearb">
        </div>
        <div class="userHide searchBoxhidden">
            <div class="clear">
                <div class="close" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
                </div>
            </div>
            <fieldset class="PermitSearch" style="position: relative">
                <legend></legend>
                <table class="SearchTable" align="center">
                    <tbody>
                        <tr>
                            <td>

                                <label class="input-label">
                                    Agency Name :</label>

                            </td>
                            <td>

                                <asp:TextBox ID="txtAgencyName" Style="width: 170px !important;" runat="server"></asp:TextBox>

                            </td>
                            <td>

                                <label class="input-label">
                                    City :</label>

                            </td>
                            <td>

                                <asp:TextBox ID="txtCity2" Style="width: 170px !important;" runat="server"></asp:TextBox>
                            </td>
                        </tr>

                    </tbody>
                </table>
                <div style="width: 90%; margin: 0 auto;">
                    <span class="fltrt">
                        <asp:Button ID="Button1" CssClass="buttonGreen small" runat="server" Text="Search" />
                        <a id="A1" class="secondary small " style="padding: 0px 10px; height: 20px !important; line-height: 20px !important;"
                            href="javascript:void()" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">Cancel</a></span>
                </div>
            </fieldset>
        </div>
        <div class="clearb">
        </div>
        <!----------Search panel end--------------->
        <!---grid upper---->
        <%--    <div class="gridUpperDiv"><br />  <a class="down_arrow"></a><span class="fltlt">
                <asp:LinkButton ID="lnkArchive" CssClass="button small gray narrow pill-left" PostBackUrl="javascript:void(0)"
                    runat="server">Archive</asp:LinkButton>
                <asp:LinkButton ID="lnkDelete" runat="server" CssClass="button small gray narrow pill-right"
                    PostBackUrl="javascript:void(0)">Delete</asp:LinkButton>
            </span><div class="fltrt rightIcon">
                <a title="find" href="javascript:void()" onclick="javascript:showDivSlide('.userHide');hideDivSlide('.searchBbutton');">
                    <img src="../App_Themes/Theme1/images/search_icon.png" /></a> <a title="print" href="javascript:void()">
                        <img src="../App_Themes/Theme1/images/Printer_Blue.png" /></a> <a title="comment"
                            href="javascript:void()">
                            <img src="../App_Themes/Theme1/images/comment_icon.png" /></a></div>
        </div>--%>
        <!---grid upper end--->
        <div class="primary-column council-info">
            <div id="dashboard-panels ">
                <div class="relative-box peel-shadows">
                    <div class="dynamic-panels ui-sortable" style="">
                        <div id="Cashflow" class="dashboard-panel clearfix rounded">
                            <div class="get-started-content textBoxAlign">
                                <h3>Council Information</h3>
                                <div class="clear brdr radius pdng2 " style="margin: 4px 4px 0px 3px; padding: 10px;">
                                    <p>
                                        <span class="float_left"><b>
                                            <label class="required" style="width: 310px;">
                                                Name of Council (to appear on Headings) :</label>
                                        </b></span>
                                        <asp:TextBox ID="txtNameOfAgency" runat="server" autocomplete="off" Style="width: 65%;"
                                            MaxLength="200"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvNameOfAgency" runat="server" ErrorMessage="Please enter name of agency"
                                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtNameOfAgency"
                                            ValidationGroup="VGBoardInfo"></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="vcenOA" runat="server" TargetControlID="rfvNameOfAgency"
                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                        </asp:ValidatorCalloutExtender>
                                    </p>
                                </div>
                            </div>
                            <div class="clear textBoxAlign">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 60%; padding-left: 9px;" valign="top">
                                            <div class="brdr radius mrgnTp4" style="padding: 7px;">
                                                <div class="clear mrgnTp4 pdng2">
                                                    <p>
                                                        <label class="input-label required">
                                                            Address Line 1 :</label>
                                                        <asp:TextBox ID="txtAddressLine1" autocomplete="off" runat="server" Style="width: 73%"
                                                            MaxLength="200"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Please enter address"
                                                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtAddressLine1"
                                                            ValidationGroup="VGBoardInfo"></asp:RequiredFieldValidator>
                                                        <asp:ValidatorCalloutExtender ID="vceAddress" runat="server" TargetControlID="rfvAddress"
                                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                                        </asp:ValidatorCalloutExtender>
                                                    </p>
                                                </div>
                                                <div class="clear mrgnTp4 pdng2">
                                                    <p>
                                                        <label class="input-label">
                                                            Address Line 2 :</label>
                                                        <asp:TextBox ID="txtAddress2" autocomplete="off" runat="server" Style="width: 73%"
                                                            MaxLength="200"></asp:TextBox>
                                                    </p>
                                                </div>
                                                <div class="clear mrgnTp4">
                                                    <div class="width50p fltlft">
                                                        <p>
                                                            <label class="input-label required">
                                                                City :</label>
                                                            <asp:TextBox ID="txtCity1" Style="width: 300px;" autocomplete="off" runat="server"
                                                                MaxLength="20"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="Please enter city"
                                                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtCity1"
                                                                ValidationGroup="VGBoardInfo"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="vceCity" runat="server" TargetControlID="rfvCity"
                                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                                            </asp:ValidatorCalloutExtender>
                                                        </p>
                                                    </div>
                                                    <div class="width50p fltrt">
                                                        <p>
                                                            <label class="input-label required">
                                                                State :</label>
                                                            <asp:DropDownList ID="ddlState" Style="width: 239px; float: none;" runat="server">
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="rfvState" runat="server" InitialValue="-1" ErrorMessage="Please select state"
                                                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="ddlState"
                                                                ValidationGroup="VGBoardInfo"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="vceState" runat="server" TargetControlID="rfvState"
                                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                                            </asp:ValidatorCalloutExtender>
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="clear mrgnTp4">
                                                    <div class="width50p fltlft">
                                                        <p>
                                                            <label class="input-label required">
                                                                Zip :</label>
                                                            <asp:TextBox ID="txtZIP" autocomplete="off" Style="width: 300px;" placeholder="xxxxx-xxxx or xxxxx"
                                                                MaxLength="15" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RFVtxtZip" runat="server" ErrorMessage="Please enter valid ZIP code eg: xxxxx-xxxx or xxxxx."
                                                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtZip"
                                                                ValidationGroup="VGBoardInfo"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="VCEtxtZip" runat="server" TargetControlID="RFVtxtZip"
                                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                                            </asp:ValidatorCalloutExtender>
                                                            <asp:RegularExpressionValidator ID="REVtxtZIP1" runat="server" Text="*" ErrorMessage="Please enter valid ZIP code eg: xxxxx-xxxx or xxxxx."
                                                                ControlToValidate="txtZIP" Display="None" ForeColor="#FFCCFF" SetFocusOnError="True"
                                                                ValidationGroup="VGBoardInfo" ValidationExpression="^(?!0{5})(\d{5})(?!-?0{4})(|-\d{4})?$"></asp:RegularExpressionValidator>
                                                            <asp:ValidatorCalloutExtender ID="VCEtxtZIP1" runat="server" TargetControlID="REVtxtZIP1"
                                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                                            </asp:ValidatorCalloutExtender>
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="clear">
                                                </div>
                                                <div class="clear mrgnTp4">
                                                    <div class="width50p fltlft">
                                                        <p>
                                                            <label class="input-label">
                                                                Telephone :</label>
                                                            <asp:TextBox ID="txtTelephone" MaxLength="15" Style="width: 300px;" autocomplete="off"
                                                                runat="server"></asp:TextBox>
                                                            <asp:RegularExpressionValidator ID="REVPhone" runat="server" ErrorMessage="please enter valid phone number. Eg:XXX-XXX-XXXX or XXXXXXXXXX."
                                                                ControlToValidate="txtTelephone" Display="None" ForeColor="#FFCCFF" SetFocusOnError="True"
                                                                ValidationGroup="VGBoardInfo" ValidationExpression="^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$">*</asp:RegularExpressionValidator>
                                                            <asp:ValidatorCalloutExtender ID="REVPhone1" runat="server" TargetControlID="REVPhone"
                                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                                            </asp:ValidatorCalloutExtender>
                                                            <asp:MaskedEditExtender ID="MEETelephone" TargetControlID="txtTelephone" Mask="(999) 999-9999"
                                                                runat="server">
                                                            </asp:MaskedEditExtender>
                                                        </p>
                                                    </div>
                                                    <div class="width50p fltrt">
                                                        <p>
                                                            <label class="input-label">
                                                                Fax :</label>
                                                            <asp:TextBox ID="txtFax" autocomplete="off" Style="width: 233px;" CssClass="phone_us"
                                                                runat="server" MaxLength="15"></asp:TextBox>
                                                            <asp:RegularExpressionValidator ID="REVFAX" runat="server" ErrorMessage="please enter valid FAX number. Eg:XXX-XXX-XXXX or XXXXXXXXXX."
                                                                ControlToValidate="txtFax" Display="None" ForeColor="#FFCCFF" SetFocusOnError="True"
                                                                ValidationGroup="VGBoardInfo" ValidationExpression="^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$">*</asp:RegularExpressionValidator>
                                                            <asp:ValidatorCalloutExtender ID="REVREVFAX" runat="server" TargetControlID="REVFAX"
                                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                                            </asp:ValidatorCalloutExtender>
                                                            <%--<asp:MaskedEditExtender ID="MEEFax" TargetControlID="txtFax" Mask="(999) 999-9999"
                                                                runat="server">
                                                            </asp:MaskedEditExtender>--%>
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="clear mrgnTp4 pdng2">
                                                    <p>
                                                        <label class="input-label">
                                                            Contact :</label>
                                                        <asp:TextBox ID="txtContact" autocomplete="off" runat="server" Style="width: 73%"
                                                            MaxLength="200"></asp:TextBox>
                                                    </p>
                                                </div>
                                                <%--<div class="clear mrgnTp4 pdng2">
                                                    <p>
                                                             <label class="input-label required">
                                                            Renewal Form Text :</label>
                                                        <asp:TextBox ID="txtRenewalFormText" autocomplete="off" runat="server" Style="width: 73%"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvRFText" runat="server" ErrorMessage="Please enter renewal form text"
                                                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtRenewalFormText"
                                                            ValidationGroup="VGBoardInfo"></asp:RequiredFieldValidator>
                                                        <asp:ValidatorCalloutExtender ID="vceRFT" runat="server" TargetControlID="rfvRFText"
                                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                                        </asp:ValidatorCalloutExtender>
                                                    </p>
                                                </div>--%>
                                                <%--<div class="clear mrgnTp4 pdng2">
                                                    <p>
                                                             <label class="input-label required">
                                                            Report Data Path :</label>
                                                        <asp:TextBox ID="txtReportDatePath" autocomplete="off" runat="server" Style="width: 73%"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvRDPath" runat="server" ErrorMessage="Please enter report data path"
                                                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtReportDatePath"
                                                            ValidationGroup="VGBoardInfo"></asp:RequiredFieldValidator>
                                                        <asp:ValidatorCalloutExtender ID="vceRDP" runat="server" TargetControlID="rfvRDPath"
                                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                                        </asp:ValidatorCalloutExtender>
                                                    </p>
                                                </div>--%>
                                            </div>
                                        </td>
                                        <td style="width: 1%; display: none;" align="center" valign="top">
                                            <div class="brdr pdng2 radius width90p mrgnTp4" style="margin-right: 10px;">
                                                <h4>
                                                    <label style="margin-left: 161px;">
                                                        Renewal Dates</label></h4>
                                                <table class="">
                                                    <tr>
                                                        <td style="width: 60%; text-align: right;">A-E :
                                                        </td>
                                                        <td style="width: 40%">
                                                            <asp:TextBox ID="txtAE" runat="server" class="calender"></asp:TextBox>
                                                            <asp:RegularExpressionValidator ID="revAE" runat="server" ControlToValidate="txtAE"
                                                                ErrorMessage="Date should be in MM/DD/YYYY format" Display="None" Text="*" ValidationGroup="VGBoardInfo"
                                                                ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$">
                                                            </asp:RegularExpressionValidator>
                                                            <asp:ValidatorCalloutExtender ID="vceAE" runat="server" TargetControlID="revAE" PopupPosition="BottomLeft"
                                                                HighlightCssClass="error">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: right;">F-K :
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtFK" runat="server" placeholder="MM/DD/YYYY" class="calender"></asp:TextBox>
                                                            <asp:RegularExpressionValidator ID="revFK" runat="server" ControlToValidate="txtFK"
                                                                ErrorMessage="Date should be in MM/DD/YYYY format" Display="None" Text="*" ValidationGroup="VGBoardInfo"
                                                                ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$">
                                                            </asp:RegularExpressionValidator>
                                                            <asp:ValidatorCalloutExtender ID="vceFK" runat="server" TargetControlID="revFK" PopupPosition="BottomLeft"
                                                                HighlightCssClass="error">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: right;">L-R :
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtLR" runat="server" placeholder="MM/DD/YYYY" class="calender"></asp:TextBox>
                                                            <asp:RegularExpressionValidator ID="revLR" runat="server" ControlToValidate="txtLR"
                                                                ErrorMessage="Date should be in MM/DD/YYYY format" Display="None" Text="*" ValidationGroup="VGBoardInfo"
                                                                ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$">
                                                            </asp:RegularExpressionValidator>
                                                            <asp:ValidatorCalloutExtender ID="vceLR" runat="server" TargetControlID="revLR" PopupPosition="BottomLeft"
                                                                HighlightCssClass="error">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: right;">S-Z :
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtSZ" runat="server" placeholder="MM/DD/YYYY" class="calender"></asp:TextBox>
                                                            <asp:RegularExpressionValidator ID="revSZ" runat="server" ControlToValidate="txtSZ"
                                                                ErrorMessage="Date should be in MM/DD/YYYY format" Display="None" Text="*" ValidationGroup="VGBoardInfo"
                                                                ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$">
                                                            </asp:RegularExpressionValidator>
                                                            <asp:ValidatorCalloutExtender ID="vceSZ" runat="server" TargetControlID="revSZ" PopupPosition="BottomLeft"
                                                                HighlightCssClass="error">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table>
                                                    <tr>
                                                        <td style="width: 100%; padding-left: 29px;">No of Days Before Renewal Starts :
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtRenewalEndDate" runat="server" Style="width: 135px; margin-right: 5px;"></asp:TextBox>
                                                            <asp:RegularExpressionValidator ID="REVtxtRenewalEndDate" runat="server" ControlToValidate="txtRenewalEndDate"
                                                                ErrorMessage="Please enter valid no. of days." Display="None" Text="*" ValidationGroup="VGBoardInfo"
                                                                ValidationExpression="\b([0-9]{1,2}|[12][0-9]{2}|3[0-5][0-9]|36[0-5])\b">
                                                            </asp:RegularExpressionValidator>
                                                            <asp:ValidatorCalloutExtender ID="VCEtxtRenewalEndDate" runat="server" TargetControlID="REVtxtRenewalEndDate"
                                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <%--<div class="brdr radius width90p mrgnTp4" style="margin-right: 10px; padding-bottom: 0px !important">
                                                <%--<h4>
                                                    Renewal Fees</h4>
                                                <table style="margin-left: -35px; text-align: right">
                                                    <tr>
                                                        <td>
                                                            1<sup>st</sup> Disc :
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txt1st" autocomplete="off" runat="server" Style="width: 100px"></asp:TextBox>
                                                            <asp:RegularExpressionValidator ID="rev1st" runat="server" ValidationGroup="VGBoardInfo"
                                                                ControlToValidate="txt1st" ValidationExpression="\d+(\.\d{1,2})?" ErrorMessage="Please decimal numeric value"
                                                                Text="*" ForeColor="Red" Display="None"></asp:RegularExpressionValidator>
                                                            <asp:ValidatorCalloutExtender ID="vce1st" runat="server" TargetControlID="rev1st"
                                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            2<sup>st</sup> Disc :
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txt2nd" autocomplete="off" runat="server" Style="width: 100px"></asp:TextBox>
                                                            <asp:RegularExpressionValidator ID="rev2nd" runat="server" ControlToValidate="txt2nd"
                                                                ValidationExpression="\d+(\.\d{1,2})?" ErrorMessage="Please enter decimal value"
                                                                ValidationGroup="VGBoardInfo" Text="*" ForeColor="Red" Display="None"></asp:RegularExpressionValidator>
                                                            <asp:ValidatorCalloutExtender ID="vce2nd" runat="server" TargetControlID="rev2nd"
                                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Late Disc :
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtLate" autocomplete="off" runat="server" Style="width: 100px"></asp:TextBox>
                                                            <asp:RegularExpressionValidator ID="revLate" runat="server" ControlToValidate="txtLate"
                                                                ValidationExpression="\d+(\.\d{1,2})?" ErrorMessage="Please enter decimal value"
                                                                ValidationGroup="VGBoardInfo" Text="*" ForeColor="Red" Display="None"></asp:RegularExpressionValidator>
                                                            <asp:ValidatorCalloutExtender ID="vceLte" runat="server" TargetControlID="revLate"
                                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                </table>--%>
                                            <%--<div class="clear" style="width: 95%">
                                                    <div id="DivAlertMessage_Second" style="display: none">
                                                        <div style="display: none">
                                                        </div>
                                                    </div>
                                                </div>--%>
                                            <%-- <div id="tabsFee">

                                                    <ul class="">
                                                        <li><a href="#tabs-1"><span>Member Fees</span></a></li>
                                                        <li><a href="#tabs-2"><span>Firm Fees</span></a></li>
                                                    </ul>
                                                    <div id="tabs-1">
                                                        <uc1:ucBoardInfoRenewalFees ID="ucBoardInfoRenewalFees1" runat="server" />
                                                    </div>
                                                    <div id="tabs-2">
                                                        <uc2:ucFirmFee ID="ucFirmFee1" runat="server" />
                                                    </div>
                                                </div>--%>
                                            <%--<asp:TabContainer ID="TabContainer1" runat="server" CssClass="fancy fancy-green">
                                                    <asp:TabPanel ID="tbpnlMemberFees" runat="server">
                                                        <HeaderTemplate>
                                                            Member Fees
                                                        </HeaderTemplate>
                                                        <ContentTemplate>--%>
                                            <%--<uc3:ucBaordInfoRenewalFees ID="ucBaordInfoRenewalFees1" runat="server" />--%>
                                            <%--     </ContentTemplate>
                                                    </asp:TabPanel>
                                                   <asp:TabPanel ID="tbpnlFirmFees" runat="server">
                                                        <HeaderTemplate>
                                                            Firm Fees
                                                        </HeaderTemplate>
                                                        <ContentTemplate>
                                                            <uc2:ucFirmFee ID="ucFirmFee1" runat="server" />
                                                        </ContentTemplate>
                                                    </asp:TabPanel>
                                                </asp:TabContainer>--%>
                                            <%--  </div>--%>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="ribbon" style="width: 100%">
                    <div class="holder peel-shadows" style="width: 98.4%; padding: 20px 8px; margin-top: -3px;">
                        <div class="buttons iefix-5 inline">
                            <asp:Button ID="btnSave" runat="server" ValidationGroup="VGBoardInfo" CssClass="buttonGreen medium"
                                Text="Save" OnClick="btnSave_Click1" />
                            <asp:LinkButton ID="lnkbtnCancel" CssClass="secondary medium bottom" runat="server"
                                OnClick="lnkbtnCancel_Click">Cancel</asp:LinkButton>
                        </div>
                        <div>
                            <span id="item-msg">You are saving Council Info </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="clearb">
</div>
<style>
    .council-info .textBoxAlign p label {
        padding-right: 8px;
    }

    .ui-tabs .ui-tabs-nav {
        padding: 0px 0px 0px 15px !important;
        border-radius: 0px !important;
    }

        .ui-tabs .ui-tabs-nav li {
            margin: 0 .2em -3px 0 !important;
        }
</style>

