<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucForgetPassword.ascx.cs" Inherits="Module_Accounts_ucForgetPassword" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
<div class="forgetPassword signup">
    <fieldset class="flsForgotPassword">
        <legend></legend>
        <h4 class="fontSize17">
            1. Enter your email address</h4>
        <p style="text-align: center">
            <span class="fltlft">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="text inputTextbox" Width="300px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="REVEmail" runat="server" ErrorMessage="Email must be in Proper format Ex:abc@gmail.com"
                    ValidationGroup="VGLogin" ControlToValidate="txtEmail" ForeColor="#FF3300" Text="*"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RFVtxtEmail" runat="server" ErrorMessage="Please Enter Email"
                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtEmail"
                    ValidationGroup="VGLogin"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RFVtxtEmail"
                    PopupPosition="BottomLeft" HighlightCssClass="error">
                </asp:ValidatorCalloutExtender>
                <asp:ValidatorCalloutExtender ID="VCEEmail" runat="server" TargetControlID="REVEmail"
                    PopupPosition="BottomLeft" HighlightCssClass="error">
                </asp:ValidatorCalloutExtender>
            </span><span class="fltrt" style="margin-top: 4px;">
                <asp:Button ID="btnResetpsw" runat="server" ValidationGroup="VGLogin" Width="120px"
                    CssClass="button medium save green  pdng10" Text="Send Email" OnClick="btnResetpsw_Click" /></span></p>
        <div class="Clear">
        </div>
        <h4 class="fontSize17">
            2. Go to your email and follow the instruction</h4>
        <p>
            After clicking the button above, an email will be sent to you with your password.
            <%--If you are having trouble recovering
            your password--%></p>
    </fieldset>
    <div class="toolBar" style="text-align: center">
        <span><span class="suggestion">If you don’t see the email:</span> Check your junk mail
            / spam folder </span>
    </div>
</div>
