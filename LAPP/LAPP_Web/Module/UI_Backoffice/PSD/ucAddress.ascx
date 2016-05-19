<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucAddress.ascx.cs" Inherits="NVBMT_WebProject.Modules.IndiVidual.ucAddress" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<style>
    .grid .tblgridName tr
    {
        border: 0px !important;
    }
    .index tbody .InEditModetd, .index tfoot .InEditModetd
    {
        border: 0px;
    }
    .mrgnto16
    {
        margin-top: -14px;
    }
    .address-box
    {
        position: relative;
        margin-top: -125px;
        min-height: 100px;
        box-shadow: 0px 2px 6px 3px #CECECE;
        background-color: rgb(239, 255, 247);
        z-index: 100;
        padding: 0px 0px 13px 0px;
        width: 100%;
        border-radius: 4px;
    }
    .address-box-Edit
    {
        position: relative;
        margin-top: -110px;
        min-height: 100px;
        box-shadow: 0px 2px 6px 3px #CECECE;
        background-color: rgb(239, 255, 247);
        z-index: 100;
        padding: 0px 0px 13px 0px;
        width: 100%;
        border-radius: 4px;
    }
    .address-box table tr td
    {
        padding: 0px !important;
    }
</style>
<div class="clear textBoxAlign" style="padding-bottom: 40px;">
    <div style="padding-bottom: 30px;" class="divLicenseInfon divaddnew" id="divAddbuttonAddress"
        runat="server">
        <span style="float: right; margin-right: 0px;">
            <asp:Button ID="btnAddressAddNew" CssClass="buttonGreen medium" runat="server" Text="Add New"
                CausesValidation="true" OnClick="btnAddressAddNew_Click" />
        </span>
    </div>
    <div>
        <asp:Literal ID="ltrAddress" runat="server"></asp:Literal>
    </div>
    <div id="divAddPanelAddress" visible="false" runat="server" class="brdr radius mrgnTp4 pdng2">
        <table style="width: 100%;">
            <tr>
                <td align="right">
                    <label class="input-label required">
                        Type :</label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlStatus" CssClass="DropdownList" runat="server">
                        <asp:ListItem Value="-1">Select</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="revStatus" ValidationGroup="VGAddress" ControlToValidate="ddlStatus"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                        InitialValue="-1" ErrorMessage="Please select status."></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="vceStatus" runat="server" TargetControlID="revStatus"
                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                    </asp:ValidatorCalloutExtender>
                </td>
                <td align="right">
                    <asp:CheckBox ID="chkMilitryAddress" ClientIDMode="Static" runat="server" />
                </td>
                <td class="cursorpointer">
                    <label for="chkMilitryAddress">
                        Military Address</label>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <table class=" tblApplReqForm5" style="width: 100%; margin: 0px auto;">
                        <tr>
                            <td style="vertical-align: middle; width: 122px;" align="right">
                                <label class="input-label required">
                                    Street :
                                </label>
                            </td>
                            <td colspan="5">
                                <asp:TextBox ID="txtStreet" runat="server" Width="500px" CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="revStreet" ValidationGroup="VGAddress" ControlToValidate="txtStreet"
                                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                    ErrorMessage="Please enter street."></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="vceStreet" runat="server" TargetControlID="revStreet"
                                    PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td colspan="5">
                                <asp:TextBox ID="txtStreet2" runat="server" Width="500px" CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label required">
                                    City :
                                </label>
                            </td>
                            <td style="width: 151px;">
                                <asp:TextBox ID="txtCity" runat="server" CssClass="calWidth OnlyAlphabet" Width="135px"
                                    MaxLength="500"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="revCity" ValidationGroup="VGAddress" ControlToValidate="txtCity"
                                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                    ErrorMessage="Please enter city."></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="VCEtxtCity" runat="server" TargetControlID="revCity"
                                    PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                </asp:ValidatorCalloutExtender>
                            </td>
                            <td align="right" style="width: 52px;">
                                <label class="input-label required">
                                    State :
                                </label>
                            </td>
                            <td style="width: 106px;">
                                <asp:DropDownList ID="ddlState" title="State is required" runat="server" Width="98px"
                                    CssClass="inputTextbox">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="revState" ValidationGroup="VGAddress" ControlToValidate="ddlState"
                                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                    InitialValue="-1" ErrorMessage="Please select state."></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="vceddlState" runat="server" TargetControlID="revState"
                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                </asp:ValidatorCalloutExtender>
                            </td>
                            <td align="right" style="width: 47px;">
                                <label class="input-label required">
                                    Zip :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtZip" MaxLength="12" Width="101px" Placeholder="xxxxx-xxxx or xxxxx"
                                    title="zip code is required" runat="server" CssClass="calWidth zip_us"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="REVtxtZIP1" runat="server" Text="*" ErrorMessage="Please enter valid zip code eg: xxxxx-xxxx or xxxxx or T2X 1V4 or T2X1V4."
                                    ControlToValidate="txtZip" Display="None" ForeColor="#FFCCFF" SetFocusOnError="True"
                                    ValidationGroup="VGAddress" ValidationExpression="(^\d{5}(-\d{4})?$)|(^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$)"></asp:RegularExpressionValidator>
                                <asp:ValidatorCalloutExtender ID="VCEzip" runat="server" TargetControlID="REVtxtZIP1"
                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                </asp:ValidatorCalloutExtender>
                                <asp:RequiredFieldValidator ID="RFVtxtZip" runat="server" ErrorMessage="Please enter zip code eg: xxxxx-xxxx or xxxxx."
                                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtZip"
                                    ValidationGroup="VGAddress"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="VCEtxtZip" runat="server" TargetControlID="RFVtxtZip"
                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                    </table>
                    <div class="clear">
                    </div>
                    <div id="divVerifyHomeAddressBtn" runat="server" style="padding: 10px;">
                        <span class="fltrt" style="margin-right: 66px;">
                            <asp:Button ID="btnVerifyHomeAddress" CssClass="btn-success btn-xs" runat="server"
                                OnClick="btnVerifyHomeAddress_Click" Text="Verify Address" />
                        </span>
                    </div>
                    <div id="divVerifyHomeAddressPnl" runat="server" visible="false" class="address-box">
                        <div>
                            <span class="fltrt">
                                <asp:ImageButton ID="imgbtnCloseVerifyMailingAddress" ImageUrl="~/App_Themes/Theme1/images/close-icon.png"
                                    runat="server" OnClick="btnVerifyHomeAddressYes_Click" />
                            </span>
                        </div>
                        <div>
                            <table style="width: 100%;">
                                <tr>
                                    <td style="width: 50%;">
                                        <p style="font-size: 14px; font-weight: bold; padding-left: 58px;">
                                            User Address</p>
                                    </td>
                                    <td style="width: 50%;">
                                        <p style="font-size: 14px; font-weight: bold; padding-left: 55px;">
                                            Verified Address</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table style="width: 100%">
                                            <tr>
                                                <td align="right" style="width: 110px;">
                                                    <label class="input-label">
                                                        <b>Street :</b>
                                                    </label>
                                                </td>
                                                <td style="width: 220px;">
                                                    <asp:Label ID="lblUHomeStreet1" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblUHomeStreet2" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        <b>City :</b>
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblUHomeCity" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        <b>State :</b>
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblUHomeState" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        <b>Zip :</b>
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblUHomeZip" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="vertical-align: baseline;">
                                        <div id="divNotVerifiedAdd" runat="server">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td align="right" style="width: 107px;">
                                                        <label class="input-label">
                                                            <b>Street :</b>
                                                        </label>
                                                    </td>
                                                    <td style="width: 220px;">
                                                        <asp:Label ID="lblVHomeStreet1" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblVHomeStreet2" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label">
                                                            <b>City :</b>
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblVHomeCity" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label">
                                                            <b>State :</b>
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblVHomeState" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label">
                                                            <b>Zip :</b>
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblVHomeZip" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <p style="color: Red; text-align: center;">
                                            <asp:Label ID="lblUnverifiedAdd" runat="server" Style="display: block; position: relative;
                                                top: 21px;"></asp:Label></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="padding-top: 13px !important;">
                                        <asp:Button ID="btnVerifyHomeAddressYes" CssClass="btn-warning btn-xs" runat="server"
                                            OnClick="btnVerifyHomeAddressYes_Click" Text="Use User Address" />
                                    </td>
                                    <td align="center">
                                        <asp:Button ID="btnVerifyHomeAddressNo" CssClass="btn-success btn-xs" runat="server"
                                            OnClick="btnVerifyHomeAddressNo_Click" Text="Use Verified Address" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="clear">
                    </div>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 125px;">
                    <label class="input-label required">
                        Country :</label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlCountry" CssClass="DropdownList" runat="server">
                        <asp:ListItem Value="-1">Select</asp:ListItem>
                        <asp:ListItem Value="US">United States</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="revCountry" ValidationGroup="VGAddress" ControlToValidate="ddlCountry"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                        InitialValue="-1" ErrorMessage="Please select country."></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="vceCountry" runat="server" TargetControlID="revCountry"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
                <%--<td align="right" style="width: 140px;">
                    <label class="input-label ">
                        Phone :</label>
                </td>
               <td>
                    <asp:TextBox CssClass="inputTextbox phone_us" placeholder="(XXX) XXX-XXXX" MaxLength="15"
                        autocomplete="off" ID="txtPhone" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator Enable="false" ID="revtxtPhone" runat="server" Text="*"
                        ErrorMessage="Please enter valid phone." ControlToValidate="txtPhone" Display="None"
                        ForeColor="#FFCCFF" SetFocusOnError="True" ValidationGroup="VGAddress" ValidationExpression="(((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4})"></asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="vcetxtPhone" runat="server" TargetControlID="revtxtPhone"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>--%>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label required">
                        Begin Date :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                        ID="txtBeginning" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revBeganDate" runat="server" ErrorMessage="Please enter valid date of beginning. Eg:MM/DD/YYYY"
                        ValidationGroup="VGAddress" ControlToValidate="txtBeginning" ForeColor="#FF3300"
                        Text="*" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                        Display="None"></asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="vceBeganDate" runat="server" TargetControlID="revBeganDate"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                    <asp:RequiredFieldValidator ID="rfvtxtDateOfBeginning" ValidationGroup="VGAddress"
                        ControlToValidate="txtBeginning" Text="*" ForeColor="Red" Display="None" SetFocusOnError="True"
                        runat="server" ErrorMessage="Please enter date of beginning."></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="VrfvtxtDateOfBeginning" runat="server" TargetControlID="rfvtxtDateOfBeginning"
                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                    </asp:ValidatorCalloutExtender>
                </td>
                <td align="right">
                    <label class="input-label required">
                        End Date :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                        ID="txtEnding" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtDateOEnding" ValidationGroup="VGAddress" ControlToValidate="txtEnding"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                        ErrorMessage="Please enter date of ending."></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="vceDateOEnding" runat="server" TargetControlID="rfvtxtDateOEnding"
                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                    </asp:ValidatorCalloutExtender>
                    <asp:RegularExpressionValidator ID="revEndDate" runat="server" ErrorMessage="Please enter valid date of ending. Eg:MM/DD/YYYY"
                        ValidationGroup="VGAddress" ControlToValidate="txtEnding" ForeColor="#FF3300"
                        Text="*" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                        Display="None"></asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="vceEndDate" runat="server" TargetControlID="revEndDate"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                    <asp:CompareValidator ID="cvDateofEnding" runat="server" Operator="GreaterThan" Type="Date"
                        ControlToCompare="txtBeginning" ControlToValidate="txtEnding" Text="*" ErrorMessage="Date must be greater than date of ending"
                        Display="None" ForeColor="#FFCCFF" SetFocusOnError="True" ValidationGroup="VGAddress">
                    </asp:CompareValidator>
                    <asp:ValidatorCalloutExtender ID="vcecvEnding" runat="server" TargetControlID="cvDateofEnding"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">
                        Comments :</label>
                </td>
                <td colspan="3">
                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtComments" Width="135px"
                        TextMode="MultiLine" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <div class="toolBar" style="padding: 4px; margin: 6px; width: 97%;">
            <span class="fltrt">
                <asp:Button ID="btnAddressUpdate" ValidationGroup="VGAddress" CssClass="buttonGreen medium"
                    runat="server" Text="Save" CausesValidation="true" OnClick="btnAddressSave_Click" />
                <asp:LinkButton ID="lnkAddressCancel" CssClass="secondary medium bottom" runat="server"
                    OnClick="lnkAddressCancel_Click">Cancel</asp:LinkButton></span>
        </div>
    </div>
    <div runat="server" id="divGridView" visible="true" class="">
        <div class="divLicenseInfo">
            <asp:GridView ID="gvAddress" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                CssClass="index brdr radius mrgnTp4 pdng2 grid" AllowPaging="true" PagerSettings-PageButtonCount="6"
                GridLines="None" AllowSorting="true" PagerStyle-CssClass="pager_style" PageSize="5"
                OnPageIndexChanging="gvAddress_PageIndexChanging" RowStyle-CssClass="bordrbtm gridrow"
                Width="100%" CellPadding="5" ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Address Detail">
                        <ItemStyle CssClass="InEditModetd" />
                        <EditItemTemplate>
                            <div class="divGridEdit">
                                <table style="margin: 0 auto; width: 94%" class="tblParentNewApplReqForm tblLicensureInformation wthtop20">
                                    <tr>
                                        <td align="right" style="width: 90px;">
                                            <label class="input-label required">
                                                Type :</label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlStatusEdit" CssClass="DropdownList" runat="server">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rfvddlStatusEdit" runat="server" ErrorMessage="Please select status."
                                                InitialValue="-1" Text="*" ForeColor="Red" Display="None" SetFocusOnError="True"
                                                ControlToValidate="ddlStatusEdit" ValidationGroup="VGAddressEdit"></asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender ID="vceddlStatusEdit" runat="server" TargetControlID="rfvddlStatusEdit"
                                                PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                            </asp:ValidatorCalloutExtender>
                                        </td>
                                        <td align="right">
                                            <asp:CheckBox ID="chkMilitaryAddressEdit" ClientIDMode="Static" runat="server" />
                                        </td>
                                        <td class="cursorpointer">
                                            <label for="chkMilitaryAddressEdit">
                                                Military Address</label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <table class=" tblApplReqForm5" style="width: 100%;">
                                                <tr>
                                                    <td style="vertical-align: middle; width: 88px;" class="advancedcssforIe" align="right">
                                                        <label class="input-label required">
                                                            Street :
                                                        </label>
                                                    </td>
                                                    <td colspan="5">
                                                        <asp:TextBox ID="txtStreetEdit" runat="server" Width="463px" CssClass="calWidth us_street"
                                                            MaxLength="500"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="revStreetEdit" ValidationGroup="VGAddressEdit" ControlToValidate="txtStreetEdit"
                                                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                                            ErrorMessage="Please enter street."></asp:RequiredFieldValidator>
                                                        <asp:ValidatorCalloutExtender ID="vceStreetEdit" runat="server" TargetControlID="revStreetEdit"
                                                            PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                                        </asp:ValidatorCalloutExtender>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td colspan="5">
                                                        <asp:TextBox ID="txtStreet2Edit" runat="server" Width="463px" CssClass="calWidth"
                                                            MaxLength="500"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label required">
                                                            City :
                                                        </label>
                                                    </td>
                                                    <td style="width: 151px;">
                                                        <asp:TextBox ID="txtCityEdit" runat="server" CssClass="calWidth OnlyAlphabet" Width="135px"
                                                            MaxLength="500"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="revCityEdit" ValidationGroup="VGAddressEdit" ControlToValidate="txtCityEdit"
                                                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                                            ErrorMessage="Please enter city."></asp:RequiredFieldValidator>
                                                        <asp:ValidatorCalloutExtender ID="VCEtxtCityEdit" runat="server" TargetControlID="revCityEdit"
                                                            PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                                        </asp:ValidatorCalloutExtender>
                                                    </td>
                                                    <td align="right" style="width: 50px;">
                                                        <label class="input-label required">
                                                            State :
                                                        </label>
                                                    </td>
                                                    <td style="width: 98px;">
                                                        <asp:DropDownList ID="ddlStateEdit" runat="server" Width="98px" CssClass="">
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="rfvddlStateEdit" runat="server" ErrorMessage="Please select state."
                                                            InitialValue="-1" Text="*" ForeColor="Red" Display="None" SetFocusOnError="True"
                                                            ControlToValidate="ddlStateEdit" ValidationGroup="VGAddressEdit"></asp:RequiredFieldValidator>
                                                        <asp:ValidatorCalloutExtender ID="vceddlStateEdit" runat="server" TargetControlID="rfvddlStateEdit"
                                                            PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                                        </asp:ValidatorCalloutExtender>
                                                    </td>
                                                    <td align="right" style="width: 35px;">
                                                        <label class="input-label required">
                                                            Zip :
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtZipEdit" runat="server" placeholder="xxxxx-xxxx or xxxxx" CssClass="calWidth zip_us"
                                                            Width="114px" MaxLength="500"></asp:TextBox>
                                                        <asp:RegularExpressionValidator ID="REVtxtZIP1Edit" runat="server" Text="*" ErrorMessage="Please enter valid zip code eg: xxxxx-xxxx or xxxxx."
                                                            ControlToValidate="txtZipEdit" Display="None" ForeColor="#FFCCFF" SetFocusOnError="True"
                                                            ValidationGroup="VGAddressEdit" ValidationExpression="(^\d{5}(-\d{4})?$)|(^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$)"></asp:RegularExpressionValidator>
                                                        <asp:ValidatorCalloutExtender ID="VCEzipEdit" runat="server" TargetControlID="REVtxtZIP1Edit"
                                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                                        </asp:ValidatorCalloutExtender>
                                                        <asp:RequiredFieldValidator ID="RFVtxtZipEdit" runat="server" ErrorMessage="Please enter zip code."
                                                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtZipEdit"
                                                            ValidationGroup="VGAddressEdit"></asp:RequiredFieldValidator>
                                                        <asp:ValidatorCalloutExtender ID="VCEtxtZip" runat="server" TargetControlID="RFVtxtZipEdit"
                                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                                        </asp:ValidatorCalloutExtender>
                                                    </td>
                                                </tr>
                                            </table>
                                            <div class="clear">
                                            </div>
                                            <div id="divVerifyHomeAddressBtnEdit" runat="server" style="padding: 10px;">
                                                <span class="fltrt" style="margin-right: 90px;">
                                                    <asp:Button ID="btnVerifyHomeAddressEdit" CssClass="btn-success btn-xs" runat="server"
                                                        OnClick="btnVerifyHomeAddressEdit_Click" Text="Verify Address" />
                                                </span>
                                            </div>
                                            <div id="divVerifyHomeAddressPnlEdit" runat="server" visible="false" class="address-box-Edit">
                                                <div>
                                                    <span class="fltrt">
                                                        <asp:ImageButton ID="imgbtnCloseVerifyMailingAddressEdit" ImageUrl="~/App_Themes/Theme1/images/close-icon.png"
                                                            runat="server" OnClick="btnVerifyHomeAddressYesEdit_Click" />
                                                    </span>
                                                </div>
                                                <div>
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 50%;">
                                                                <p style="font-size: 14px; font-weight: bold; padding-left: 58px;">
                                                                    User Address</p>
                                                            </td>
                                                            <td style="width: 50%;">
                                                                <p style="font-size: 14px; font-weight: bold; padding-left: 55px;">
                                                                    Verified Address</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <hr />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table style="width: 100%">
                                                                    <tr>
                                                                        <td align="right" style="width: 110px;">
                                                                            <label class="input-label">
                                                                                <b>Street :</b>
                                                                            </label>
                                                                        </td>
                                                                        <td style="width: 220px;">
                                                                            <asp:Label ID="lblUHomeStreet1Edit" runat="server"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                        </td>
                                                                        <td>
                                                                            <asp:Label ID="lblUHomeStreet2Edit" runat="server"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right">
                                                                            <label class="input-label">
                                                                                <b>City :</b>
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:Label ID="lblUHomeCityEdit" runat="server"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right">
                                                                            <label class="input-label">
                                                                                <b>State :</b>
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:Label ID="lblUHomeStateEdit" runat="server"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right">
                                                                            <label class="input-label">
                                                                                <b>Zip :</b>
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:Label ID="lblUHomeZipEdit" runat="server"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                            <td style="vertical-align: baseline;">
                                                                <div id="divNotVerifiedAddEdit" runat="server">
                                                                    <table style="width: 100%">
                                                                        <tr>
                                                                            <td align="right" style="width: 107px;">
                                                                                <label class="input-label">
                                                                                    <b>Street :</b>
                                                                                </label>
                                                                            </td>
                                                                            <td style="width: 220px;">
                                                                                <asp:Label ID="lblVHomeStreet1Edit" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="lblVHomeStreet2Edit" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right">
                                                                                <label class="input-label">
                                                                                    <b>City :</b>
                                                                                </label>
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="lblVHomeCityEdit" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right">
                                                                                <label class="input-label">
                                                                                    <b>State :</b>
                                                                                </label>
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="lblVHomeStateEdit" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right">
                                                                                <label class="input-label">
                                                                                    <b>Zip :</b>
                                                                                </label>
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="lblVHomeZipEdit" runat="server"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                                <p style="color: Red; text-align: center;">
                                                                    <asp:Label ID="lblUnverifiedAddEdit" runat="server" Style="display: block; position: relative;
                                                                        top: 21px;"></asp:Label></p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" style="padding-top: 13px !important;">
                                                                <asp:Button ID="btnVerifyHomeAddressYesEdit" CssClass="btn-warning btn-xs" runat="server"
                                                                    OnClick="btnVerifyHomeAddressYesEdit_Click" Text="Use User Address" />
                                                            </td>
                                                            <td align="center">
                                                                <asp:Button ID="btnVerifyHomeAddressNoEdit" CssClass="btn-success btn-xs" runat="server"
                                                                    OnClick="btnVerifyHomeAddressNoEdit_Click" Text="Use Verified Address" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                            <div class="clear">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label required">
                                                Country :</label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlCountryEdit" CssClass="DropdownList" runat="server">
                                                <asp:ListItem Value="US">United State</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="revCountryEdit" ValidationGroup="VGAddressEdit" ControlToValidate="ddlCountryEdit"
                                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                                ErrorMessage="Please select country.">
                                            </asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender ID="vceCountryEdit" runat="server" TargetControlID="revCountryEdit"
                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                            </asp:ValidatorCalloutExtender>
                                        </td>
                                        <%--<td align="right">
                                            <label class="input-label">
                                                Phone :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="inputTextbox phone_us" placeholder="(XXX) XXX-XXXX" MaxLength="15"
                                                autocomplete="off" ID="txtPhoneEdit" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator Enable="false" ID="revtxtPhoneEdit" runat="server"
                                                Text="*" ErrorMessage="Please enter valid phone." ControlToValidate="txtPhoneEdit"
                                                Display="None" ForeColor="#FFCCFF" SetFocusOnError="True" ValidationGroup="VGAddressEdit"
                                                ValidationExpression="(((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4})"></asp:RegularExpressionValidator>
                                            <asp:ValidatorCalloutExtender ID="vcetxtPhoneEdit" runat="server" TargetControlID="revtxtPhoneEdit"
                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                            </asp:ValidatorCalloutExtender>
                                        </td>--%>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label required">
                                                Begin Date :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                                                ID="txtBeginningEdit" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvtxtDateOfBeginningEdit" ValidationGroup="VGAddressEdit"
                                                ControlToValidate="txtBeginningEdit" Text="*" ForeColor="Red" Display="None"
                                                SetFocusOnError="True" runat="server" ErrorMessage="Please enter Date of Beginning."></asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender ID="VrfvtxtDateOfBeginningEdit" runat="server" TargetControlID="rfvtxtDateOfBeginningEdit"
                                                PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                            </asp:ValidatorCalloutExtender>
                                            <asp:RegularExpressionValidator ID="revBeganDateEdit" runat="server" ErrorMessage="Please enter valid Date. Eg:MM/DD/YYYY"
                                                ValidationGroup="VGAddressEdit" ControlToValidate="txtBeginningEdit" ForeColor="#FF3300"
                                                Text="*" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                                                Display="None"></asp:RegularExpressionValidator>
                                            <asp:ValidatorCalloutExtender ID="vceBeganDate" runat="server" TargetControlID="revBeganDateEdit"
                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                            </asp:ValidatorCalloutExtender>
                                        </td>
                                        <td align="right">
                                            <label class="input-label required">
                                                End Date :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                                                ID="txtEndingEdit" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvtxtDateOEndingEdit" ValidationGroup="VGAddressEdit"
                                                ControlToValidate="txtEndingEdit" Text="*" ForeColor="Red" Display="None" SetFocusOnError="True"
                                                runat="server" ErrorMessage="Please enter Date of Ending."></asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender ID="vceDateOEndingEdit" runat="server" TargetControlID="rfvtxtDateOEndingEdit"
                                                PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                            </asp:ValidatorCalloutExtender>
                                            <asp:RegularExpressionValidator ID="revEndDateEdit" runat="server" ErrorMessage="Please enter valid Date. Eg:MM/DD/YYYY"
                                                ValidationGroup="VGAddressEdit" ControlToValidate="txtEndingEdit" ForeColor="#FF3300"
                                                Text="*" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                                                Display="None"></asp:RegularExpressionValidator>
                                            <asp:ValidatorCalloutExtender ID="vceEndDate" runat="server" TargetControlID="revEndDateEdit"
                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                            </asp:ValidatorCalloutExtender>
                                            <asp:CompareValidator ID="cvDateofEndingEdit" runat="server" Operator="GreaterThan"
                                                Type="Date" ControlToCompare="txtBeginningEdit" ControlToValidate="txtEndingEdit"
                                                Text="*" ErrorMessage="Date must be greater than date of ending" Display="None"
                                                ForeColor="#FFCCFF" SetFocusOnError="True" ValidationGroup="VGAddressEdit">
                                            </asp:CompareValidator>
                                            <asp:ValidatorCalloutExtender ID="vcecvEndingEdit" runat="server" TargetControlID="cvDateofEndingEdit"
                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                            </asp:ValidatorCalloutExtender>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label">
                                                Comments :</label>
                                        </td>
                                        <td colspan="3">
                                            <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtCommentsEdit" Width="135px"
                                                TextMode="MultiLine" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <hr style="border: 1px solid rgb(242, 242, 242);" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 68px;" align="right">
                                            <label class="input-label">
                                                Created :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="inputTextbox cursordisable" autocomplete="off" ID="txtCreatedEdit"
                                                runat="server"></asp:TextBox>
                                        </td>
                                        <td style="width: 84px;" align="right">
                                            <label class="input-label">
                                                Created By :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="inputTextbox cursordisable" autocomplete="off" ID="txtCreatedByEdit"
                                                runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label">
                                                Modified :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="inputTextbox cursordisable" autocomplete="off" ID="txtModifiedEdit"
                                                runat="server"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label class="input-label">
                                                Modified By :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="inputTextbox cursordisable" autocomplete="off" ID="txtModifiedByEdit"
                                                runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                                <div class="toolBar" style="padding: 4px; margin: 4px;">
                                    <span class="fltrt">
                                        <asp:Button ID="btnAddressUpdate" ValidationGroup="VGAddressEdit" CssClass="buttonGreen medium"
                                            runat="server" Text="Update" CausesValidation="true" OnClick="btnAddressUpdate_Click" />
                                        <asp:LinkButton ID="lnkAddressCancelUpdate" CssClass="secondary medium bottom" runat="server"
                                            OnClick="lnkAddressCancelUpdate_Click">Cancel</asp:LinkButton></span>
                                </div>
                            </div>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <table style="margin: 0 auto; width: 100%;">
                                <tr>
                                    <td align="right" style="width: 150px;">
                                        <b>Type :</b>
                                    </td>
                                    <td style="width: 440px;">
                                        <%# Eval("Status") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top;" align="right">
                                        <b>
                                            <label>
                                                Address :
                                            </label>
                                        </b>
                                    </td>
                                    <td>
                                        <div>
                                            <label>
                                                <%# Eval("Street") %>
                                            </label>
                                        </div>
                                        <div>
                                            <label>
                                                <%# Eval ("City") %>
                                            </label>
                                            ,
                                            <label>
                                                <%# Eval("State") %>
                                            </label>
                                            ,
                                            <label>
                                                <%# Eval("Zip") %>
                                            </label>
                                            ,
                                            <label>
                                                <%# Eval("Country") %>
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <%-- <tr>
                                    <td align="right">
                                        <b>Phone :</b>
                                    </td>
                                    <td>
                                        <%# Eval("Phone") %>
                                    </td>
                                </tr>
                               <tr>
                                    <td align="right">
                                        <b>Cell :</b>
                                    </td>
                                    <td>
                                        <%# Eval("Cell")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <b>Email :</b>
                                    </td>
                                    <td>
                                        <%# Eval("Email")%>
                                    </td>
                                </tr>--%>
                                <tr>
                                    <td align="right">
                                        <b>Period :</b>
                                    </td>
                                    <td>
                                        <%# Eval("Date_of_Beginning")%>&nbsp;To&nbsp;
                                        <%# Eval("Date_of_Ending")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="vertical-align: top;">
                                        <b>Comments :</b>
                                    </td>
                                    <td>
                                        <%#Eval("Comments") %>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="100px">
                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                        <ItemTemplate>
                            <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" CommandArgument='<%# Eval("Address_Id") %>'
                                runat="server" RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                OnClick="imgbtnEdit_Click" />
                            <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                CommandArgument='<%# Eval("Address_Id") %>' ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                OnClientClick="javascript:return confirm('Are you sure you want to delete?');"
                                OnClick="imgBtnDelete_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div style="width: 100%; height: 200px; border: 0px; padding: 3px">
                        No record found.
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
    </div>
    <div class="clear">
    </div>
    <div class="contactpnl">
        <div class="blockheader">
            <p style="padding-top: 7px;">
                <span style="font-size: 16px; font-weight: bold;">Contact : </span>
            </p>
        </div>
        <div style="padding: 10px 10px 28px 10px;" class="divLicenseInfon divaddnew" id="divAddbuttonContact"
            runat="server">
            <span style="float: right; margin-right: 0px;">
                <asp:Button ID="btnContactAddNew" ValidationGroup="vgAffidavit" CssClass="buttonGreen small"
                    runat="server" Text="Add New" CausesValidation="true" OnClick="btnContactAddNew_Click" />
            </span>
        </div>
        <div>
            <asp:Literal ID="ltrContact" runat="server"></asp:Literal>
        </div>
        <div id="divAddPanelContact" visible="false" runat="server" class="brdr radius mrgnTp4 pdng2">
            <table style="width: 100%;">
                <tr>
                    <td align="right" style="width: 60px;">
                        <label class="input-label required">
                            Type :</label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlContactType" runat="server">
                            <asp:ListItem Value="-1">Select</asp:ListItem>
                            <asp:ListItem Value="0">Email</asp:ListItem>
                            <asp:ListItem Value="1">Fax</asp:ListItem>
                            <asp:ListItem Value="2">Cell Phone</asp:ListItem>
                            <asp:ListItem Value="3">Home Phone</asp:ListItem>
                            <asp:ListItem Value="4">Work Phone</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox CssClass="" Style="width: 210px;" autocomplete="off" ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td class="cursorpointer">
                        <asp:CheckBox ID="chkPrefrences" Text="Preferred Contact" runat="server" />
                    </td>
                    <td>
                        <span>
                            <asp:Button ID="btnSaveContact" ValidationGroup="VGContact" CssClass="buttonGreen small"
                                runat="server" Text="Save" CausesValidation="true" OnClick="btnSaveContact_Click" />
                            <asp:Button ID="btnCancelContact" ValidationGroup="VGContact" CssClass="secondary small"
                                runat="server" Text="Cancel" CausesValidation="true" OnClick="btnCancelContact_Click" /></span>
                    </td>
                </tr>
            </table>
        </div>
        <div class="divLicenseInfo">
            <asp:GridView ID="gvContact" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                AllowPaging="true" PagerSettings-PageButtonCount="6" GridLines="None" AllowSorting="true"
                PagerStyle-CssClass="pager_style" PageSize="5" RowStyle-CssClass="bordrbtm gridrow"
                CssClass="index brdr radius mrgnTp4 pdng2 grid" Width="100%" CellPadding="5"
                ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Type">
                        <ItemStyle CssClass="InEditModetd" />
                        <EditItemTemplate>
                            <div class="divGridEdit">
                                <table style="margin: 0 auto; width: 100%" class="tblParentNewApplReqForm tblLicensureInformation wthtop20">
                                    <tr>
                                        <td align="right" style="width: 58px;">
                                            <label class="input-label required">
                                                Type :</label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlContactTypeEdit" runat="server">
                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                <asp:ListItem Value="0">Email</asp:ListItem>
                                                <asp:ListItem Value="1">Fax</asp:ListItem>
                                                <asp:ListItem Value="2">Cell Phone</asp:ListItem>
                                                <asp:ListItem Value="3">Home Phone</asp:ListItem>
                                                <asp:ListItem Value="4">Work Phone</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="" Style="width: 210px;" autocomplete="off" ID="txtEmailEdit"
                                                runat="server"></asp:TextBox>
                                        </td>
                                        <td class="cursorpointer">
                                            <asp:CheckBox ID="chkPrefrencesEdit" Text="Preferred Contact" Checked="true" runat="server" />
                                        </td>
                                        <td>
                                            <span>
                                                <asp:Button ID="btnCoresspodenceUpdate" ValidationGroup="VGTask" CssClass="buttonGreen small"
                                                    runat="server" Text="Update" CausesValidation="true" OnClick="btnCoresspodenceUpdate_Click" />
                                                <asp:LinkButton ID="lnkCoresspodenceCancelUpdate" CssClass="secondary small bottom"
                                                    runat="server" OnClick="lnkCoresspodenceCancelUpdate_Click">Cancel</asp:LinkButton></span>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </EditItemTemplate>
                        <ItemTemplate>
                            Email
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Value">
                        <ItemStyle />
                        <ItemTemplate>
                            Joe@example.com
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Preferred" HeaderStyle-CssClass="aligncenter">
                        <ItemStyle CssClass="aligncenter" />
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" Checked="true" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="100px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                        <ItemTemplate>
                            <asp:ImageButton ID="imgbtnContactEdit" CssClass="imgDelete" CommandArgument='1'
                                runat="server" RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                OnClick="imgbtnContactEdit_Click" />
                            <asp:ImageButton ID="imgBtnContactDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                CommandArgument='1' ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?');"
                                OnClick="imgBtnContactDelete_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div style="width: 100%; height: 50px; border: 0px; padding: 3px">
                        No record found.
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
    </div>
</div>
<div class="buttons iefix-5 inline" visible="false" runat="server" id="DivbtnSaveCancel">
    <div class="toolBar" style="padding: 4px; display: none;">
        <span class="fltrt">
            <asp:Button ID="btnSavePersonal" ValidationGroup="VGName" CausesValidation="true"
                CssClass="buttonGreen medium" runat="server" Text="Save" />
            <asp:LinkButton CssClass="secondary medium bottom" ID="lnkCancelPersonal" runat="server">Cancel</asp:LinkButton>
        </span>
    </div>
</div>
<div class="buttons iefix-5 inline" runat="server" id="DivbtnHistory">
    <div class="toolBar" style="padding: 4px;">
        <span class="fltlft">
            <asp:Button ID="btnShowHistory" CssClass="buttonGreen medium" runat="server" Text="Show History"
                OnClick="btnShowHistory_Click" />
            <asp:LinkButton runat="server" Enabled="false" ToolTip="Previous" CssClass="link-next-prev btn-info btn-sm"
                ID="lnkPrev"><<</asp:LinkButton>
            <asp:LinkButton runat="server" Enabled="false" ToolTip="Next" CssClass="link-next-prev btn-info btn-sm"
                ID="lnkNext">>></asp:LinkButton>
            <asp:Button ID="btnShowCurrent" Enabled="false" CssClass="buttonGreen medium" runat="server"
                Text="Show Current" OnClick="btnShowCurrent_Click" />
        </span>
    </div>
</div>
