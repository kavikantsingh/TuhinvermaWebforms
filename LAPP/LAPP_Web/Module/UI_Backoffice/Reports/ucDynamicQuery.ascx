<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDynamicQuery.ascx.cs"
    Inherits="ucDynamicQuery" %>
<style>
    fieldset {
        border: 1px solid rgb(209, 221, 228);
        box-shadow: inset 0px 0px 3px #DBDBDB;
        margin: 10px;
        padding: 10px;
    }

    .lbl {
        width: 150px;
        float: right;
    }

    .tab1 {
        line-height: 20px;
        margin-top: 20px;
    }

    .tab2 {
        margin-left: 20px;
        float: none;
    }

    .querytab {
        margin: 0 auto;
    }

    .clear.brdr.radius.pdng2 {
        padding: 10px;
    }

    .lineHeight36 {
        line-height: 36px;
    }
</style>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:UpdatePanel ID="upPanel" runat="server">
    <ContentTemplate>
        <div style="padding: 20px">
            <asp:Panel ID="pnlStep1" runat="server">
                <fieldset>
                    <h4>1. Select Tables
                    </h4>
                    <asp:GridView ID="gvSelectTables" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                        CssClass="index brdr radius mrgnTp4 pdng2 grid" RowStyle-CssClass="bordrbtm gridrow"
                        GridLines="None" AllowSorting="true" PagerStyle-CssClass="pager_style" Width="100%"
                        CellPadding="2" ForeColor="#333333">
                        <Columns>
                            <asp:TemplateField>
                                <ItemStyle Width="50px" HorizontalAlign="Center" />
                                <HeaderStyle Width="50px" HorizontalAlign="Center" />
                                <HeaderTemplate>
                                    <div style="text-align: center !important">
                                        <input type="checkbox" id="chkMain" onchange='javascript:SelectheaderCheckboxes(this,"gvSelectTables");'
                                            runat="server" />
                                    </div>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkSelect" runat="server" />
                                    <asp:HiddenField ID="hfID" runat="server" Value=' <%# Eval("Table_ID") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemStyle />
                                <HeaderTemplate>
                                    Table Name
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <%# Eval("Table_Name") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <%--<asp:TemplateField>
                            <ItemStyle />
                            <HeaderTemplate>
                                Key
                            </HeaderTemplate>
                            <ItemTemplate>
                                <%# Eval("Table_Pk_Name")%>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                        </Columns>
                    </asp:GridView>
                    <br />
                    <span class="fltrt">
                        <asp:Button ID="btnNextStep1" CssClass="buttonGreen medium" Text="Go to Step 2" runat="server" OnClick="btnNextStep1_Click" /></span>
                </fieldset>
            </asp:Panel>
            <asp:Panel ID="pnlStep2" Visible="false" runat="server">
                <fieldset>
                    <h4>2. Select Columns
                    </h4>
                    <div style="height: 400px; overflow: scroll;">
                        <asp:GridView ID="gvSelectColumns" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                            CssClass="index brdr radius mrgnTp4 pdng2 grid" RowStyle-CssClass="bordrbtm gridrow"
                            GridLines="None" AllowSorting="true" PagerStyle-CssClass="pager_style" Width="100%"
                            CellPadding="2" ForeColor="#333333">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemStyle Width="50px" HorizontalAlign="Center" />
                                    <HeaderStyle Width="50px" HorizontalAlign="Center" />
                                    <HeaderTemplate>
                                        <div style="text-align: center !important">
                                            <input type="checkbox" id="chkMain" onchange='javascript:SelectheaderCheckboxes(this,"gvSelectColumns");'
                                                runat="server" />
                                        </div>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkSelect" runat="server" />
                                        <asp:HiddenField ID="hfID" runat="server" Value=' <%# Eval("ColumnName") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemStyle />
                                    <HeaderTemplate>
                                        Column Name
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <%# Eval("ColumnName") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemStyle />
                                    <HeaderTemplate>
                                        Column Label
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtReportLabel" runat="server" Text='<%# Eval("ReportLabel")%>'></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemStyle />
                                    <HeaderTemplate>
                                        Order By
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:RadioButtonList ID="rblOrderBy" RepeatDirection="Horizontal" runat="server">
                                            <asp:ListItem Value="ASC" Text="Ascending"></asp:ListItem>
                                            <asp:ListItem Value="DESC" Text="Descending"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                    <br />
                    <div>
                        <span class="fltlft">
                            <asp:Button ID="btnNextStep1_Back" CssClass="buttonGreen medium" Text="Back to Step 1" runat="server" OnClick="btnNextStep1_Back_Click" /></span>
                        <span class="fltrt">
                            <asp:Button ID="btnNextStep2" CssClass="buttonGreen medium" Text="Go to Step 3" runat="server" OnClick="btnNextStep2_Click" /></span>
                    </div>
                </fieldset>

            </asp:Panel>

            <asp:Panel ID="pnlStep3" Visible="false" runat="server">
                <fieldset>
                    <h4>3. Filter Options
                    </h4>
                    <table width="100%">
                        <tr>
                            <td width="50%">
                                <table>
                                    <tr>
                                        <td align="right">Field :
                                        </td>
                                        <td colspan="3">
                                            <asp:DropDownList Width="300px" ID="ddlColumnName" runat="server">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">Filters :
                                        </td>
                                        <td colspan="3">
                                            <asp:DropDownList Width="300px" ID="ddlFilterOptions" runat="server">
                                                <asp:ListItem Text="Equal" Value="Equal"></asp:ListItem>
                                                <asp:ListItem Text="Like" Value="Like"></asp:ListItem>
                                                <asp:ListItem Text="Greater than" Value="Greater than"></asp:ListItem>
                                                <asp:ListItem Text="Not equal to" Value="Not equal to"></asp:ListItem>
                                                <asp:ListItem Text="Less than" Value="Less than"></asp:ListItem>
                                                <asp:ListItem Text="Greater than or equal to" Value="Greater than or equal to"></asp:ListItem>
                                                <asp:ListItem Text="Less than or equal to" Value="Less than or equal to"></asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">Filter Value :
                                        </td>
                                        <td colspan="3">
                                            <asp:TextBox ID="txtFilterValue" Width="294px" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td colspan="3" align="right">
                                            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="buttonGreen small" OnClick="btnAdd_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="50%">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:ListBox ID="lbFilterQuery" Width="400px" SelectionMode="Multiple" runat="server"></asp:ListBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Button ID="btnRemove" runat="server" Text="Remove" CssClass="buttonGreen small"
                                                OnClick="btnRemove_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <div>
                        <span class="fltlft">
                            <asp:Button ID="btnNextStep2_Back" CssClass="buttonGreen medium" Text="Back to Step 2" runat="server" OnClick="btnNextStep2_Back_Click" /></span>
                        <span class="fltrt">
                            <asp:Button ID="btnNextStep3" CssClass="buttonGreen medium" Text="View Report" runat="server" OnClick="btnNextStep3_Click" /></span>
                    </div>
                </fieldset>
                <asp:Panel ID="pnlStep4" Visible="false" runat="server">
                    <fieldset>
                        <h4>4. Query
                        </h4>
                        <asp:TextBox ID="txtQuery" runat="server" Width="100%" Rows="4" TextMode="MultiLine">
                
                        </asp:TextBox>
                    </fieldset>
                </asp:Panel>
            </asp:Panel>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
