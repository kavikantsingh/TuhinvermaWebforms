<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucEditWecomeMessage.ascx.cs" Inherits="Module_Administration_ucEditWecomeMessage" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%--<asp:UpdatePanel ID="upPanlWelcome" runat="server">
    <ContentTemplate>--%>
<div style="width: 90%; margin: 0 auto; border: 5px solid #EBECEC; padding: 6px;">
    <h3>Add New
        <asp:Literal ID="ltrMessageType" runat="server"></asp:Literal>
    </h3>
    <div class=" ">
        <fieldset class=" signup" style="width: 100% !important">
            <div class="posRelative">
                <label class="input-label required">
                    Effective Date :</label>
                <asp:TextBox ID="txtBeginDate" runat="server" placeholder="MM/DD/YYYY" autocomplete="off" CssClass="inputTextBox calender"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvBeginDate" runat="server" ErrorMessage="Date should be in MM/DD/YYYY format"
                    ControlToValidate="txtBeginDate" Text="*" ForeColor="Red" ValidationGroup="vgHomePageMsg"
                    Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="vceBegindate" runat="server" TargetControlID="rfvBeginDate"
                    PopupPosition="TopLeft" HighlightCssClass="error">
                </asp:ValidatorCalloutExtender>
                <asp:RegularExpressionValidator ID="revBeginD" runat="server" ControlToValidate="txtBeginDate"
                    Display="None" ErrorMessage="Date should be in MM/DD/YYYY format" Text="*" ValidationGroup="vgHomePageMsg"
                    ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$">
                </asp:RegularExpressionValidator>
                <asp:ValidatorCalloutExtender ID="vceBDate" runat="server" TargetControlID="revBeginD"
                    PopupPosition="TopLeft" HighlightCssClass="error">
                </asp:ValidatorCalloutExtender>
                <%-- <asp:MaskedEditExtender ID="MaskedEditExtender1" TargetControlID="txtBeginDate"
                    Mask="MM/DD/YYYY" runat="server">
                </asp:MaskedEditExtender>--%>
            </div>
            <div class="clear">
            </div>
            <div class="posRelative">
                <label class="input-label required">
                    End Date :</label>
                <asp:TextBox ID="txtEndDate" runat="server" placeholder="MM/DD/YYYY" autocomplete="off" CssClass="inputTextbox calender"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVEndDate" runat="server" ErrorMessage="Date should be in MM/DD/YYYY format"
                    ControlToValidate="txtEndDate" Text="*" ForeColor="Red" ValidationGroup="vgHomePageMsg"
                    Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="VCERFVEndDate" runat="server" TargetControlID="RFVEndDate"
                    PopupPosition="TopLeft" HighlightCssClass="error">
                </asp:ValidatorCalloutExtender>
                <asp:RegularExpressionValidator ID="REVEndDate" runat="server" ControlToValidate="txtEndDate"
                    Display="None" ErrorMessage="Date should be in MM/DD/YYYY format" Text="*" ValidationGroup="vgHomePageMsg"
                    ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$">
                </asp:RegularExpressionValidator>
                <asp:ValidatorCalloutExtender ID="VCEREVEndDate" runat="server" TargetControlID="REVEndDate"
                    PopupPosition="TopLeft" HighlightCssClass="error">
                </asp:ValidatorCalloutExtender>
                <asp:CompareValidator ID="CMPValidator" ControlToCompare="txtBeginDate" ControlToValidate="txtEndDate"
                    Type="Date" Operator="GreaterThanEqual" ErrorMessage="Please enter valid End Date."
                    runat="server" ValidationGroup="vgHomePageMsg" Display="None"></asp:CompareValidator>
                <asp:ValidatorCalloutExtender ID="VCECMPValidator" runat="server" TargetControlID="CMPValidator"
                    PopupPosition="BottomLeft" HighlightCssClass="error">
                </asp:ValidatorCalloutExtender>
                <%-- <asp:MaskedEditExtender ID="MaskedEditExtender" TargetControlID="txtEndDate"
                    Mask="MM/DD/YYYY" runat="server">
                </asp:MaskedEditExtender>--%>
            </div>
            <div class="clear">
            </div>
            <div class="posRelative">
                <label class="input-label required">
                    Sort Order :</label>
                <asp:TextBox ID="txtSortOrder" runat="server" autocomplete="off" CssClass="inputTextbox "
                    MaxLength="2"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVsortOrder" runat="server" ControlToValidate="txtSortOrder"
                    Display="None" ErrorMessage="Please enter intger value" ForeColor="Red" SetFocusOnError="true"
                    Text="*" ValidationGroup="vgHomePageMsg"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="VCERFVsortOrder" runat="server" HighlightCssClass="error"
                    PopupPosition="BottomLeft" TargetControlID="RFVsortOrder">
                </asp:ValidatorCalloutExtender>
                <asp:RegularExpressionValidator ID="REVsortOrder" runat="server" ControlToValidate="txtSortOrder"
                    Display="None" ErrorMessage="Please enter intger value" ForeColor="Red" SetFocusOnError="true"
                    Text="*" ValidationGroup="vgHomePageMsg" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                <asp:ValidatorCalloutExtender ID="VCEREVsortOrder" runat="server" HighlightCssClass="error"
                    PopupPosition="BottomLeft" TargetControlID="REVsortOrder">
                </asp:ValidatorCalloutExtender>
            </div>
            <div class="clear">
            </div>
            <div class="posRelative">
                <label class="input-label required">
                    Messge Type :</label>
                <asp:DropDownList ID="ddlMessageTy" Style="width: 258px;" runat="server" CssClass="inputDropDown">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvMessageTy" runat="server" InitialValue="-1" ErrorMessage="Message type is required"
                    ControlToValidate="ddlMessageTy" Text="*" ForeColor="Red" ValidationGroup="vgHomePageMsg"
                    Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="vceessageTy" runat="server" TargetControlID="rfvMessageTy"
                    PopupPosition="TopLeft" HighlightCssClass="error">
                </asp:ValidatorCalloutExtender>
            </div>
            <div class="clear">
            </div>
            <div class="posRelative">
                <label class="input-label required">
                    Status :</label>
                <asp:DropDownList ID="ddlStatus" Style="width: 258px;" runat="server" CssClass="inputDropDown">
                    <asp:ListItem Value="-1" Text="Select"></asp:ListItem>
                    <asp:ListItem Value="True" Text="Enabled"></asp:ListItem>
                    <asp:ListItem Value="False" Text="Disabled"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RFVstatus" runat="server" ControlToValidate="ddlStatus"
                    Display="None" ErrorMessage="Please select status" ForeColor="Red" SetFocusOnError="true"
                    Text="*" ValidationGroup="vgHomePageMsg" InitialValue="-1"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="VCEstatus" runat="server" HighlightCssClass="error"
                    PopupPosition="BottomLeft" TargetControlID="RFVstatus">
                </asp:ValidatorCalloutExtender>
            </div>
            <div class="posRelative">
                <h3>Message :</h3>
                <CKEditor:CKEditorControl ID="txtMessage" Width="900px" runat="server"></CKEditor:CKEditorControl>
                <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Message is required"
                    ControlToValidate="txtMessage" Text="*" ForeColor="Red" ValidationGroup="vgHomePageMsg"
                    Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="vceMessage" runat="server" TargetControlID="rfvMessageTy"
                    PopupPosition="BottomLeft" HighlightCssClass="error">
                </asp:ValidatorCalloutExtender>
            </div>
        </fieldset>
    </div>
    <div class="clear">
    </div>
    <h3>Sample Display :</h3>
    <div id="divcontent" runat="server">
    </div>
    <div class="clear">
        <hr />
    </div>
    <div class="toolBar">
        <span class="fltrt">
            <asp:Button ID="btnRefresh" Visible="false" runat="server" CssClass="buttonGreen medium"
                Text="Refresh Sample Display" OnClick="btnRefresh_Click" />
                     <asp:Button ID="btnSave" runat="server" CausesValidation="true" CssClass="buttonGreen medium"
                ValidationGroup="vgHomePageMsg" Text="Save" OnClick="btnSave_Click" />
            <asp:Button ID="btnCancel" runat="server" CssClass="secondary medium " Text="Cancel"
                OnClick="btnCancel_Click" />
   
        </span>
    </div>
</div>
<br />
<%--  </ContentTemplate>
</asp:UpdatePanel>--%>
