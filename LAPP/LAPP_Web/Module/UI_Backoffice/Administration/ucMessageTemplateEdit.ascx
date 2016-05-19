<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucMessageTemplateEdit.ascx.cs" Inherits="Module_Administration_ucMessageTemplateEdit" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<div style="width: 90%; margin: 0 auto; border: 5px solid #EBECEC; padding: 6px;">
    <fieldset>
        <table class="tblTextAlignRight">
            <tr>
                <td>
                    <label class="input-label required">
                        Application Type :</label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlApplicationType" Width="258px" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvTempTy" InitialValue="-1" ValidationGroup="VGTemplate"
                        ControlToValidate="ddlApplicationType" Text="*" ForeColor="Red" Display="None" SetFocusOnError="True"
                        runat="server" ErrorMessage="Please select template type"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="VCETempTY" runat="server" TargetControlID="rfvTempTy"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <%-- <tr>
                <td>
                    <label class="input-label required">
                        Account Type :</label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlAccountTy" Width="258px" AutoPostBack="true" runat="server"
                        OnSelectedIndexChanged="ddlAccountTy_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvAccountTy" InitialValue="-1" ValidationGroup="VGTemplate"
                        ControlToValidate="ddlTempTy" Text="*" ForeColor="Red" Display="None" SetFocusOnError="True"
                        runat="server" ErrorMessage="Please select Account type"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="VCEAccountTY" runat="server" TargetControlID="rfvAccountTy"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="input-label required">
                        Template Apply To :</label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlApplyTo" Width="258px" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvddlApplyTo" InitialValue="-1" ValidationGroup="VGTemplate"
                        ControlToValidate="ddlApplyTo" Text="*" ForeColor="Red" Display="None" SetFocusOnError="True"
                        runat="server" ErrorMessage="Please select template apply to"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="VCEddlApplyTo" runat="server" TargetControlID="rfvddlApplyTo"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>--%>
            <tr>
                <td>
                    <label class="input-label required">
                        Template Name :</label>
                </td>
                <td>
                    <asp:TextBox ID="txtTempName" runat="server" autocomplete="off" CssClass="inputTextbox"
                        TextMode="MultiLine" MaxLength="300"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTempName" ValidationGroup="VGTemplate" ControlToValidate="txtTempName"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                        ErrorMessage="Please enter template name"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="vceTN" runat="server" TargetControlID="rfvTempName"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="input-label">
                        Subject :</label>
                </td>
                <td>
                    <asp:TextBox ID="txtTempSub" runat="server" autocomplete="off" CssClass="inputTextbox"
                        TextMode="MultiLine" MaxLength="200"></asp:TextBox>
                </td>
            </tr>
            <%--    <tr>
                <td>
                    <label class="input-label required">
                        Start Date :</label>
                </td>
                <td>
                    <asp:TextBox ID="txtstartDate" runat="server" placeholder="MM/DD/YYYY" autocomplete="off"
                        CssClass="inputTextbox calender"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvStartDate" ValidationGroup="VGTemplate" ControlToValidate="txtstartDate"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                        ErrorMessage="Date should be in MM/DD/YYYY format"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="vceSD" runat="server" TargetControlID="rfvStartDate"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                    <asp:RegularExpressionValidator ID="revStartD" runat="server" ControlToValidate="txtstartDate"
                        Display="None" ErrorMessage="Date should be in MM/DD/YYYY format" Text="*" ValidationGroup="VGTemplate"
                        ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$">
                    </asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="vceSDate" runat="server" TargetControlID="revStartD"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label required">
                        End Date :</label>
                </td>
                <td>
                    <asp:TextBox ID="txtEndD" runat="server" placeholder="MM/DD/YYYY" autocomplete="off"
                        CssClass="inputTextbox calender"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEndDate" ValidationGroup="VGTemplate" ControlToValidate="txtEndD"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                        ErrorMessage="Date should be in MM/DD/YYYY format"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="vceEndDate" runat="server" TargetControlID="rfvEndDate"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                    <asp:RegularExpressionValidator ID="revEndDate" runat="server" ControlToValidate="txtEndD"
                        Display="None" ErrorMessage="Date should be in MM/DD/YYYY format" Text="*" ValidationGroup="VGTemplate"
                        ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$">
                    </asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="vceEndDat" runat="server" TargetControlID="revEndDate"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                    
                </td>
             
            </tr>--%>
        </table>
        <div class="clear">
            <div class="clear">
                <table class="tblTag" id="tagMember" visible="false" runat="server">
                    <tr>
                        <td colspan="2">
                            <u>Use these tags for Member Info Template</u>
                        </td>
                    </tr>
                    <tr>
                        <td>#Member_Info_First_Name
                        </td>
                        <td>#Member_Info_Last_Name
                        </td>
                        <td>#Member_License_Number
                        </td>
                    </tr>
                    <tr>
                        <td>#Member_Info_Email
                        </td>
                        <td>#Member_Info_Registration_Date
                        </td>
                        <td>#LAPP_Reference_Number
                        </td>
                    </tr>
                    <tr>
                        <td>#License_Renewal_Url
                        </td>
                        <td>#Expiration_Date
                        </td>
                        <td>#Reference_Number
                        </td>
                    </tr>
                    <tr>
                        <td>#Transaction_Date
                        </td>
                        <td>#License_Period
                        </td>
                        <td>#Renewal_Process_Date
                        </td>
                    </tr>
                    <tr>
                        <td>#Renewal_Fee
                        </td>
                        <td>#Late_Fee
                        </td>
                        <td>#Total_Fee
                        </td>
                    </tr>
                </table>
                <table class="tblTag" id="tagFirm" visible="false" runat="server">
                    <tr>
                        <td colspan="2">
                            <u>Use these tags for Firm Info Template</u>
                        </td>
                    </tr>
                    <tr>
                        <td>#Firm_Info_Business_Comapny_Name
                        </td>
                        <td>#Firm_Info_Business_Last_name
                        </td>
                        <td>#Firm_Info_Business_First_name
                        </td>
                    </tr>
                    <tr>
                        <td>#Company_Id
                        </td>
                        <td>#Firm_Info_Business_Email
                        </td>
                        <td>#Firm_Info_Business_City
                        </td>
                    </tr>
                    <tr>
                        <td>#Corporate_Renewal_Url
                        </td>
                        <td>#Expiration_Date
                        </td>
                        <td>#Reference_Number
                        </td>
                    </tr>
                    <tr>
                        <td>#Transaction_Date
                        </td>
                        <td>#License_Period
                        </td>
                        <td>#Renewal_Process_Date
                        </td>
                    </tr>
                    <tr>
                        <td>#Renewal_Fee
                        </td>
                        <td>#Late_Fee
                        </td>
                        <td>#Total_Fee
                        </td>
                    </tr>
                    <tr>
                        <td>#Transaction_Fee
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="posRelative" style="width: 90% !important">
            <h3>Message Text :</h3>
            <CKEditor:CKEditorControl ID="txtMessage" runat="server"></CKEditor:CKEditorControl>
        </div>
    </fieldset>
    <div class="clear">
        <h3>Sample Display</h3>
        <hr />
        <div id="DivSample" runat="server">
        </div>
    </div>
    <div class="toolBar">
        <span class="fltrt">
            <asp:Button ID="btnRefresh" runat="server" CssClass="buttonGreen medium" Text="Refresh Sample Display"
                OnClick="btnRefresh_Click" />
            <asp:Button ID="btnSave" ValidationGroup="VGTemplate" runat="server" CssClass="buttonGreen medium"
                Text="Save" OnClick="btnSave_Click" />
            <asp:Button ID="btnCancel" runat="server" CssClass="secondary medium" Text="Cancel"
                OnClick="btnCancel_Click" />

        </span>
    </div>
</div>
<br />
