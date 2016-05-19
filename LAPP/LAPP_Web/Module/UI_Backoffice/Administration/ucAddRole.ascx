<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucAddRole.ascx.cs" Inherits="Module_Administration_ucAddRole" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="ucDocumentPermission.ascx" TagName="ucDocumentPermission" TagPrefix="uc1" %>
<%--<asp:UpdatePanel ID="upPanel" runat="server">
    <ContentTemplate>--%>
<table style="margin: 0 auto">
    <tr>
        <td align="right">
            <label class="input-label required">
                Name :</label>
        </td>
        <td align="left">
            <asp:TextBox ID="txtName" Style="width: 200px" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Please enter name"
                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtName"
                ValidationGroup="VGRole"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="vceRole" runat="server" TargetControlID="rfvName"
                PopupPosition="BottomLeft" HighlightCssClass="error">
            </asp:ValidatorCalloutExtender>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label class="input-label required">
                Group Type :</label>
        </td>
        <td align="left">
            <asp:DropDownList ID="ddlGroupType" Width="210px" runat="server"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvddlGroupType" runat="server" InitialValue="-1" ErrorMessage="Please select group type"
                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="ddlGroupType"
                ValidationGroup="VGRole"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="vceRoleGroupType" runat="server" TargetControlID="rfvddlGroupType"
                PopupPosition="BottomLeft" HighlightCssClass="error">
            </asp:ValidatorCalloutExtender>
        </td>
    </tr>
    <tr>
        <td valign="top" align="right">
            <label class="input-label">
                Description :</label>
        </td>
        <td>
            <asp:TextBox ID="txtDescription" Style="width: 200px" TextMode="MultiLine" Rows="3"
                runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <div class="clear">
                <h3>Permissions</h3>
            </div>
            <fieldset style="border: 1px solid #ddd">
                <asp:TreeView ID="tvPermission" Style="margin: 0 auto; width: 500px;" ShowLines="true"
                    ShowExpandCollapse="true" runat="server">
                </asp:TreeView>
            </fieldset>
        </td>
    </tr>
</table>
<%--    </ContentTemplate>
</asp:UpdatePanel>--%>