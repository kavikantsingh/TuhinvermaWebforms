<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucCodeType.ascx.cs" Inherits="Module_Administration_ucCodeType" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<div style="overflow: hidden;">
    <fieldset>
        <table style="width: 100%" class="tblTextAlignRight">
            <tr>
                <td class="alignRight" valign="top">
                    <label class="input-label required">
                        Code Types :
                    </label>
                </td>
                <td class="alignLeft" valign="top">

                    <asp:TextBox ID="txtCodeTy" runat="server" CssClass="inputTextBox" MaxLength="255"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCodeTy" runat="server" ErrorMessage="Please enter code type"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtCodeTy"
                        ValidationGroup="VGCodesTy"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="vceCode" runat="server" TargetControlID="rfvCodeTy"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td class="alignRight" valign="top">
                    <label class="input-label ">
                        Descriptions :</label>
                </td>
                <td class="alignLeft" valign="top">
                    <div style="text-align: left">
                        <asp:TextBox ID="txtDescriptions" TextMode="MultiLine" Rows="4" runat="server" Style="width: 80%"
                            MaxLength="500"></asp:TextBox>
                    </div>
                </td>
            </tr>
        </table>
    </fieldset>
</div>
