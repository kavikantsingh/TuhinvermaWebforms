<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PagerControl.ascx.cs" Inherits="Module_PagerControl" %>
<style>
    .disablePager {
        color: #fff !important;
        background: #6370CC !important;
        text-decoration: none;
    }
</style>
<table>
    <tr class="pager_style">
        <td colspan="4">
            <table>
                <tbody>
                    <tr>
                        <td>
                            <asp:Button ID="lnkPagerFirst" runat="server" CommandArgument="1" Text="<<" OnClick="lnkPager_Click" />
                        </td>
                        <asp:Repeater ID="rptPager" runat="server" OnItemDataBound="pager_ItemBound">
                            <ItemTemplate>
                                <td>
                                    <asp:Button ID="lnkPager" runat="server" CommandArgument='<%# Eval("PageForPagination") %>'
                                        Text='<%# Eval("Page_Number") %>' OnClick="lnkPager_Click" />
                                </td>
                            </ItemTemplate>
                        </asp:Repeater>
                        <td>
                            <asp:Button ID="lnkPagerLast" runat="server" CommandArgument="" Text=">>" OnClick="lnkPager_Click" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
    </tr>
</table>
