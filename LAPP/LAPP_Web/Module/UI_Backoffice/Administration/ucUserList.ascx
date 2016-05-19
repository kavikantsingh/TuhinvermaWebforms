<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucUserList.ascx.cs" Inherits="Module_Administration_ucUserList" %>

<asp:GridView ID="gvUserInfo" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
    CssClass="index" ShowHeader="true" Width="100%" CellPadding="4" AllowPaging="true"
    ForeColor="#333333" GridLines="None" PageSize="10" OnRowDataBound="gvUserInfo_RowDataBound"
    OnPageIndexChanging="gvUserInfo_PageIndexChanging">
    <%-- <AlternatingRowStyle BackColor="White" />--%>
    <Columns>
        <asp:TemplateField HeaderText="Last Name">
            <ItemStyle />
            <ItemTemplate>
                <%# Eval("last_name")%>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="First Name">
            <ItemStyle />
            <ItemTemplate>
                <%# Eval("first_name")%>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="">
            <ItemStyle HorizontalAlign="Center" />
            <ItemTemplate>
                <a id="BOE_Member_Info_Edit" runat="server">
                    <img src="../App_Themes/Theme1/images/edit.png" /></a><%--<asp:Button ID="btnMemberInfoDelete" runat="server" Text="Delete" CommandArgument='<%#Eval("Member_Info_Id") %>'
                            OnCommand="btnMemberInfoDelete_Click" /><asp:LinkButton ID="btnMemberInfoDelete"
                                runat="server" Text="Delete" CommandArgument='<%#Eval("Member_Info_Id") %>' OnCommand="btnMemberInfoDelete_Click" />--%>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <EmptyDataTemplate>
        <div style="width: 100%; height: 200px; border: 0px; padding: 3px">
            No record found.
        </div>
    </EmptyDataTemplate>
</asp:GridView>
<asp:HiddenField ID="hidEditIndex" runat="server" />
