<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDocumentPermission.ascx.cs" Inherits="Module_Administration_ucDocumentPermission" %>
<asp:UpdatePanel ID="uppanel" runat="server">
    <%--<Triggers>
        <asp:PostBackTrigger ControlID="btnUpdate" />
    </Triggers>--%>
    <ContentTemplate>
        <div class="get-started-content">
            <div class="clear textBoxAlign">
                <h4>Document Permission
                    <hr style="border: none; border-bottom: 1px solid #ddd" />
                    <h3>
                </h4>
                </script>
                <div class="  pdng2 mrgn4">
                    <div>
                        <asp:Literal ID="ltrDocumentPermission" runat="server"></asp:Literal>
                    </div>
                    <div id="tblTextAlignRight">
                        <asp:GridView ID="gvPermission" runat="server" AllowPaging="true" AllowSorting="true"
                            AutoGenerateColumns="False" CellPadding="5" ClientIDMode="Static" CssClass="index brdr grid"
                            ForeColor="#333333" GridLines="None" PagerSettings-PageButtonCount="6" PagerStyle-CssClass="pager_style"
                            PageSize="20" RowStyle-CssClass="bordrbtm" Width="100%">
                            <Columns>
                                <asp:TemplateField HeaderText="Application">
                                    <EditItemTemplate>
                                        <div>
                                            <div runat="server" id="divAddNew">
                                                <table style="width: 60%; margin: 20px auto; border: 1px solid rgb(244, 244, 244) !important; line-height: 30px;">
                                                    <tr>
                                                        <td class="alnrt">Read :
                                                        </td>
                                                        <td>
                                                            <asp:CheckBox ID="chkRead" runat="server" />
                                                        </td>
                                                        <td class="alnrt">Delete :
                                                        </td>
                                                        <td>
                                                            <asp:CheckBox ID="chkDelete" runat="server" />
                                                        </td>
                                                    </tr>
                                                </table>
                                                <%--<div class="ribbon" style="width: 80%">
                                                    <span style="float: right;">
                                                        <asp:Button ID="btnSaveDetail" runat="server" CssClass="buttonGreen medium" Text="Save"
                                                            OnClick="btnSaveDetail_Click" />
                                                        <asp:Button ID="btnAddNewCancel" runat="server" CssClass="secondary medium" Text="Cancel"
                                                            OnClick="btnAddNewCancel_Click" />
                                                    </span>
                                                </div>--%>
                                            </div>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <%# Eval("Name")%>
                                        <asp:HiddenField ID="hfID" runat="server" Value='<%#Eval("Doc_ID") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Read">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkRead1" runat="server" Checked='<%#Eval("R") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkDelete1" runat="server" Checked='<%#Eval("D") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <PagerSettings PageButtonCount="6" />
                            <PagerStyle CssClass="pager_style" />
                            <RowStyle CssClass="bordrbtm" />
                        </asp:GridView>
                    </div>
                </div>
                <br />
                <br />
            </div>
            <div class="ribbon" style="width: 100%">
                <span style="float: right; position: relative; bottom: 0px; right: 82px;">
                    <asp:Button ID="btnUpdate" runat="server" ValidationGroup="VGFees" CausesValidation="true"
                        CssClass="buttonGreen medium" Text="Update" OnClick="btnUpdate_Click" />
                    <%-- <asp:Button ID="btnCancel" runat="server" ValidationGroup="VGFees" CausesValidation="true"
                        CssClass="secondary medium" Text="Cancel" OnClick="btnCancel_Click" />--%>
                </span>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
