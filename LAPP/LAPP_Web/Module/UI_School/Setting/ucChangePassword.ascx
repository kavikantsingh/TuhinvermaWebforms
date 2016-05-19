<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucChangePassword.ascx.cs"
    Inherits="ucChangePassword" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:UpdatePanel ID="up" runat="server">
    <ContentTemplate>
        <div>
            <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
        </div>
        <div class="Changpsddiv">
            <div class="Changpsddivheader">
                Change Password
            </div>
            <div style="padding: 30px 0px 40px 0px;">
                <table class="changpsd">
                    <tr>
                        <td align="right" style="width: 45%;">
                            <label class="input-label required">
                                Old Password :</label>
                        </td>
                        <td style="width: 55%;">
                            <asp:TextBox ID="txtOldPassword" autocomplete="off" runat="server" CssClass="inputTextbox"
                                TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtOldPassword" runat="server" ErrorMessage="Old password is required."
                                ControlToValidate="txtOldPassword" Text="*" ForeColor="Red" ValidationGroup="vgChangePassword"
                                Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="VCEFtxtOldPassword" runat="server" TargetControlID="rfvtxtOldPassword"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label required">
                                New Password :</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtNewPassword" runat="server" autocomplete="off" ClientIDMode="Static"
                                CssClass="inputTextbox" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ErrorMessage="New password is required."
                                ControlToValidate="txtNewPassword" Text="*" ForeColor="Red" ValidationGroup="vgChangePassword"
                                Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="VCEFNewPassword" runat="server" TargetControlID="rfvNewPassword"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label required">
                                Confirm Password :</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtConfirmPassword" autocomplete="off" runat="server" ClientIDMode="Static"
                                CssClass="inputTextbox" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvConfirmPsw" runat="server" ErrorMessage="Confirm password is required."
                                ControlToValidate="txtConfirmPassword" Text="*" ForeColor="Red" ValidationGroup="vgChangePassword"
                                Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvPassword" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword"
                                runat="server" ErrorMessage="Password Not Matched" ValidationGroup="vgChangePassword"></asp:CompareValidator>
                            <asp:ValidatorCalloutExtender ID="VCEFConfirmPassword" runat="server" TargetControlID="rfvConfirmPsw"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>
                            <asp:ValidatorCalloutExtender ID="VCEFCConfirmPassword" runat="server" TargetControlID="cvPassword"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="toolBar" style="padding: 4px; border-bottom-left-radius: 3px; border-bottom-right-radius: 3px;">
                <span style="float: right;">
                    <asp:Button ID="btnChangePassword" runat="server" CssClass="buttonGreen medium" Text="Change Password"
                        OnClick="btnChangePassword_Click" ValidationGroup="vgChangePassword" CausesValidation="true" />
                    <asp:Button ID="btnCancel" runat="server" CssClass="secondary medium" Text="Cancel"
                        OnClick="btnCancel_Click" /></span>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
<style>
    .posRelative
    {
        line-height: initial;
    }
    .changpsd
    {
        width: 100%;
        line-height: 40px;
    }
    .Changpsddiv
    {
        border: 1px solid #89CAE4;
        min-height: 208px;
        border-radius: 4px;
        margin-bottom: 10px;
    }
    .Changpsddivheader
    {
        background: #35ADDB;
        padding: 5px;
        color: #fff;
        font-weight: bold;
        line-height: 20px;
    }
</style>
