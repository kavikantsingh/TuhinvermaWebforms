<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDataGrid.ascx.cs" Inherits="Module_UI_Backoffice_Reports_ucDataGrid" %>
<div style="overflow: auto;">
    <asp:GridView ID="gvDataGrid" ClientIDMode="Static" runat="server" AutoGenerateColumns="true"
        CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" AllowPaging="true"
        GridLines="None" PageSize="50" PagerSettings-PageButtonCount="6" PagerStyle-CssClass="pager_style"
        OnPageIndexChanging="gvDataGrid_PageIndexChanging">
    </asp:GridView>
</div>
