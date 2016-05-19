<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucChangePassword.ascx.cs" Inherits="Module_Accounts_ucChangePassword" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<div class="password-rule" style="width: 700px; margin: 0 auto">
    <style>
        .tableFullBorder td {
            border: 1px solid #ddd;
            padding: 5px;
        }

        .tableFullBorder th {
            border: 1px solid #ddd;
            font: bold;
            border-top: 2px solid #ddd;
            padding: 5px;
        }

        .password-rule p {
            margin-bottom: 10px;
        }

        .password-rule {
            padding-bottom: 20px;
        }
    </style>
    <h4>Password Rule</h4>
    <p>
        <b>Password Length:</b> Is at least eight characters (8) in length.
    </p>

    <p>
        <b>Password Complexity: </b>Cannot contain your user name, real name, or company
                        name. Password must contain at least one character from each of the following group.
                        At least 4 characters in your passwords should be each one of the following.
    </p>
    <table width="100%" cellpadding="0" cellspacing="0" class=" tableFullBorder">
        <tr>
            <th style="text-align: left !important" width="50%">Character Category
            </th>
            <th style="text-align: left !important">Examples
            </th>
        </tr>
        <tr>
            <td>Uppercase letters
            </td>
            <td>A, B, C
            </td>
        </tr>
        <tr>
            <td>Lower case letters
            </td>
            <td>a, b, c
            </td>
        </tr>
        <tr>
            <td>Numbers
            </td>
            <td>0, 1, 2, 3, 4, 5, 6, 7, 8, 9
            </td>
        </tr>
        <tr>
            <td>Special Characters - Symbols found on the keyboard (all keyboard characters not
                                defined as letters or numerals) and spaces
            </td>
            <td>` ~ ! @ # $ % ^ & * ( ) _ - + = { } [ ] \ | : ; " ' < > , . ? /
            </td>
        </tr>
    </table>
</div>
<div>
    <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>

</div>
<div>
    <table class="table-form" style="width: 50%; margin: auto;">
        <tr>
            <td align="right">
                <label class="input-label required">
                    Old Password :</label></td>
            <td>
                <asp:TextBox ID="txtOldPassword" autocomplete="off" MaxLength="25" runat="server" CssClass="inputTextbox"
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
                    New Password :</label></td>
            <td>
                <asp:TextBox ID="txtNewPassword" runat="server" MaxLength="25" autocomplete="off" ClientIDMode="Static"
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
                    Confirm Password :</label></td>
            <td>
                <asp:TextBox ID="txtConfirmPassword" autocomplete="off" MaxLength="25" runat="server" ClientIDMode="Static"
                    CssClass="inputTextbox" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvConfirmPsw" runat="server" ErrorMessage="Confirm password is required."
                    ControlToValidate="txtConfirmPassword" Text="*" ForeColor="Red" ValidationGroup="vgChangePassword"
                    Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvPassword" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword"
                    runat="server" ErrorMessage="Password not matched" ValidationGroup="vgChangePassword"></asp:CompareValidator>
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
<div class="toolBar">
    <span class="fltft">
        <input type="button" width="80px" class="button medium brown" value="Back" style="visibility: hidden;"
            onclick="navigate();" />
    </span>
    <span class="fltrt">
        <asp:Button ID="btnChangePassword" runat="server" CssClass="buttonGreen medium" Text="Change Password"
            OnClick="btnChangePassword_Click" ValidationGroup="vgChangePassword" CausesValidation="true"
            Style="position: relative;" />
        &nbsp;&nbsp;
        <asp:Button ID="btnCancel" runat="server" CssClass="secondary medium" Text="Cancel"
            Style="float: right;" OnClick="btnCancel_Click" /></span>
</div>
<style>
    .posRelative {
        line-height: initial;
    }
</style>
