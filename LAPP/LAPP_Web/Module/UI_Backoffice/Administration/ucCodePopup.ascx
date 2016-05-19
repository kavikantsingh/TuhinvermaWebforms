<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucCodePopup.ascx.cs" Inherits="Module_Administration_ucCodePopup" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<div style="overflow: hidden;">

    <fieldset>
        <table style="margin: 0 auto">
            <tr>
                <td style="text-align: right">
                    <label class="input-label required">
                        Code Name :</label>
                </td>
                <td>
                    <asp:TextBox ID="txtCodeName" runat="server" MaxLength="255"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCodeName" ValidationGroup="VGCode" ControlToValidate="txtCodeName"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                        ErrorMessage="Please enter code name"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="vceCodeName" runat="server" TargetControlID="rfvCodeName"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
                <td style="text-align: right">
                    <label class="input-label required">
                        Code Type :</label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlCdeTy" runat="server" Style="width: 143px;" class="fltrt DropdownList">
                    </asp:DropDownList>
                    <%--<asp:TextBox ID="txtCodetype" runat="server" class="fltrt" Width="200px"></asp:TextBox>--%>
                    <asp:RequiredFieldValidator ID="rfvCodeTy" InitialValue="-1" ValidationGroup="VGCode"
                        ControlToValidate="ddlCdeTy" Text="*" ForeColor="Red" Display="None" SetFocusOnError="True"
                        runat="server" ErrorMessage="Please select code type"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="vceCodeTy" runat="server" TargetControlID="rfvCodeTy"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <label class="input-label">
                        Description :</label>
                </td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" class="fltrt"
                        MaxLength="500"></asp:TextBox>
                </td>
                <td style="text-align: right">
                    <label class="input-label">
                        Display Order :</label>
                </td>
                <td>
                    <asp:TextBox ID="txtDisplayOrder" runat="server" class="fltrt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <label class="input-label">
                        Default Display :</label>
                </td>
                <td style="text-align: left">
                    <asp:CheckBox ID="chkDefaultDisplay" runat="server" />
                </td>
            </tr>
        </table>
    </fieldset>
</div>
