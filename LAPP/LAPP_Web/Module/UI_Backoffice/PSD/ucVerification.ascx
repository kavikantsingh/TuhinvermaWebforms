<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucVerification.ascx.cs" Inherits="Module_UI_Backoffice_Individual_ucVerification" %>
<div class="brdr radius mrgnTp4 pdng2">
    <table>
        <tr>
            <td align="right">
                <label class="input-label">
                    Moving To :</label>
            </td>
            <td colspan="3">
                <asp:DropDownList ID="ddlMoveTo" CssClass="DropdownList" runat="server">
                    <asp:ListItem Value="-1">Select</asp:ListItem>
                    <asp:ListItem Value="1" Selected="True">SD</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
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
            </span><span class="fltrt">
                <asp:Button ID="btnAddressUpdate" ValidationGroup="VGAddress" CssClass="buttonGreen medium"
                    runat="server" Text="Save" CausesValidation="true" />
                <asp:LinkButton ID="lnkAddressCancel" CssClass="secondary medium bottom" runat="server">Cancel</asp:LinkButton></span>
        </div>
    </div>

</div>
