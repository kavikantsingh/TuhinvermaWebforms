<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucApplicationFee.ascx.cs" Inherits="Module_Administration_ucApplicationFee" %>
<style>
    .alnrt {
        text-align: right;
    }
</style>
<asp:UpdatePanel ID="uppanel" runat="server">
    <%--<Triggers>
        <asp:PostBackTrigger ControlID="btnUpdate" />
    </Triggers>--%>
    <ContentTemplate>
        <div class="get-started-content">
            <div class="clear textBoxAlign">
                <h4>Application Fee
                    <hr style="border: none; border-bottom: 1px solid #ddd" />
                    <h3>
                </h4>
                </script>
                <div class="  pdng2 mrgn4">
                    <div id="tblTextAlignRight">
                        <asp:GridView ID="gvAppFee" runat="server" AllowPaging="true" AllowSorting="true"
                            AutoGenerateColumns="False" CellPadding="5" ClientIDMode="Static" CssClass="index brdr grid"
                            ForeColor="#333333" GridLines="None" PagerSettings-PageButtonCount="6" PagerStyle-CssClass="pager_style"
                            PageSize="20" RowStyle-CssClass="bordrbtm" Width="100%" OnPageIndexChanging="gvAppFee_PageIndexChanging">
                            <Columns>
                                <asp:TemplateField HeaderText="Name">
                                    <EditItemTemplate>
                                        <div>
                                            <asp:Literal ID="ltrErrorMessage" runat="server"></asp:Literal>
                                            <div runat="server" id="divAddNewButton" style="margin-top: 20px; display: none;">
                                                <span style="float: right; margin-right: 5px;">
                                                    <asp:Button ID="brnAddNew" runat="server" CssClass="buttonGreen small" Text="Add New"
                                                        OnClick="brnAddNew_Click" />
                                                </span>
                                            </div>
                                            <div class="clear">
                                            </div>
                                            <div runat="server" visible="false" id="divAddNew">
                                                <table style="width: 60%; margin: 20px auto; border: 1px solid rgb(244, 244, 244) !important; line-height: 30px;">
                                                    <tr>
                                                        <td class="alnrt">Name :
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtName" runat="server" ClientIDMode="Static" CssClass="Multiple"
                                                                Text=""></asp:TextBox>
                                                        </td>
                                                        <td class="alnrt">Sort Order :
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtSO" runat="server" ClientIDMode="Static" CssClass="Multiple"
                                                                Text=""></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="alnrt">Fee :
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtFee" runat="server" ClientIDMode="Static" CssClass="Multiple"
                                                                Text=""></asp:TextBox>
                                                        </td>
                                                        <td class="alnrt">Late Fee :
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtLateFee" runat="server" ClientIDMode="Static" CssClass="Multiple"
                                                                Text=""></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <div class="ribbon" style="width: 80%">
                                                    <span style="float: right;">
                                                        <asp:Button ID="btnSaveDetail" runat="server" CssClass="buttonGreen medium" Text="Save"
                                                            OnClick="btnSaveDetail_Click" />
                                                        <asp:Button ID="btnAddNewCancel" runat="server" CssClass="secondary medium" Text="Cancel"
                                                            OnClick="btnAddNewCancel_Click" />
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="clear">
                                            </div>
                                            <div style="margin-top: 10px;">
                                                <asp:GridView ID="gvAppFeeDetail" runat="server" AllowPaging="true" AllowSorting="true"
                                                    AutoGenerateColumns="False" CellPadding="5" ClientIDMode="Static" CssClass="index brdr grid"
                                                    ForeColor="#333333" GridLines="None" PagerSettings-PageButtonCount="6" PagerStyle-CssClass="pager_style"
                                                    PageSize="20" RowStyle-CssClass="bordrbtm" Width="100%" OnPageIndexChanging="gvAppFeeDetail_PageIndexChanging">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Name">
                                                            <EditItemTemplate>
                                                                <div>
                                                                    <table style="width: 60%; margin: 20px auto; border: 1px solid rgb(244, 244, 244) !important; line-height: 30px;">
                                                                        <tr>
                                                                            <td class="alnrt">Name :
                                                                            </td>
                                                                            <td>
                                                                                <asp:TextBox ID="txtNameEdit" runat="server" ClientIDMode="Static" CssClass="Multiple"
                                                                                    Text=""></asp:TextBox>
                                                                            </td>
                                                                            <td class="alnrt">Sort Order :
                                                                            </td>
                                                                            <td>
                                                                                <asp:TextBox ID="txtSOEdit" runat="server" ClientIDMode="Static" CssClass="Multiple"
                                                                                    Text=""></asp:TextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="alnrt">Fee :
                                                                            </td>
                                                                            <td>
                                                                                <asp:TextBox ID="txtFeeEdit" runat="server" ClientIDMode="Static" CssClass="Multiple"
                                                                                    Text=""></asp:TextBox>
                                                                            </td>
                                                                            <td class="alnrt">Late Fee :
                                                                            </td>
                                                                            <td>
                                                                                <asp:TextBox ID="txtLateFeeEdit" runat="server" ClientIDMode="Static" CssClass="Multiple"
                                                                                    Text=""></asp:TextBox>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                    <div class="ribbon" style="width: 80%">
                                                                        <span style="float: right;">
                                                                            <asp:Button ID="btnUpdateDetail" runat="server" CssClass="buttonGreen medium" Text="Update"
                                                                                OnClick="btnUpdateDetail_Click" />
                                                                            <asp:Button ID="btnUpdateDetailCancel" runat="server" CssClass="secondary medium"
                                                                                Text="Cancel" OnClick="btnUpdateDetailCancel_Click" />
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <%#Eval("Application_Name")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Fees">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblSign" runat="server" Text="$"></asp:Label>
                                                                <%#Eval("Fee","{0:n}")%>
                                                                <asp:HiddenField ID="hfID" runat="server" Value='<%#Eval("Application_ID") %>' />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Late Fees">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblSign1" runat="server" Text="$"></asp:Label>
                                                                <%#Eval("Late_Fee","{0:n}")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Action">
                                                            <ItemTemplate>
                                                                <span class="fltrt">
                                                                    <%--<asp:LinkButton ID="lnkDetailEdit" CommandArgument='<%#Eval("Fee_Detail_Id") %>'
                                                                       RowIndex='<%# Container.DisplayIndex %>'
                                                                        runat="server" OnClick="lnkDetailEdit_Click">Edit</asp:LinkButton>--%>
                                                                    <asp:ImageButton ID="imgbtnFeeDetailEdit" CssClass="imgDelete" CommandName='<%#Eval("Application_Name") %>'
                                                                        CommandArgument='<%# Eval("Fee_Detail_Id") %>' runat="server" RowIndex='<%# Container.DisplayIndex %>'
                                                                        ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" OnClick="imgbtnFeeDetailEdit_Click" />
                                                                    <asp:ImageButton ID="imgBtnFeeDetailDelete" CssClass="imgDelete" Visible="false"
                                                                        runat="server" ToolTip="Delete" CommandArgument='<%# Eval("Fee_Detail_Id") %>'
                                                                        ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?')"
                                                                        OnClick="imgBtnFeeDetailDelete_Click" />
                                                                </span>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <PagerSettings PageButtonCount="6" />
                                                    <PagerStyle CssClass="pager_style" />
                                                    <RowStyle CssClass="bordrbtm" />
                                                </asp:GridView>
                                            </div>
                                            <div class="clear">
                                            </div>
                                            <div style="margin-top: 20px;">
                                                <span style="float: right; margin-right: 5px;">
                                                    <asp:Button ID="btnClose" runat="server" CssClass="secondary small" Text="Close"
                                                        OnClick="btnClose_Click" />
                                                </span>
                                            </div>
                                        </div>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <%#Eval("Name")%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Description">
                                    <ItemTemplate>
                                        <%#Eval("Description")%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Fees">
                                    <ItemTemplate>
                                        <asp:Label ID="lblSign" runat="server" Text="$"></asp:Label><%#Eval("Fee","{0:n}")%>
                                        <%--  <asp:TextBox ID="txtFee" runat="server" ClientIDMode="Static" CssClass="Multiple"
                                            Text='<%#Eval("Fee","{0:n}")%>'></asp:TextBox>--%>
                                        <asp:HiddenField ID="hfID" runat="server" Value='<%#Eval("Application_ID") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Late Fees">
                                    <ItemTemplate>
                                        <asp:Label ID="lblSign1" runat="server" Text="$"></asp:Label>
                                        <%#Eval("Late_Fee","{0:n}")%>
                                        <%--      <asp:TextBox ID="txtLateFee" runat="server" ClientIDMode="Static" CssClass="Multiple"
                                            Text='<%#Eval("Late_Fee","{0:n}")%>'></asp:TextBox>--%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkDetail" CommandArgument='<%#Eval("Application_ID") %>' CommandName='<%#Eval("Name") %>'
                                            RowIndex='<%# Container.DisplayIndex %>' runat="server" OnClick="lnkDetail_Click">Detail</asp:LinkButton>
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
                <span style="text-align: left!important; margin-left: 53px; float: left;"><span id="item-msg">You are saving Application Fee </span></span><span style="float: right;">
                    <asp:Button ID="btnUpdate" runat="server" ValidationGroup="VGFees" CausesValidation="true"
                        CssClass="buttonGreen medium" Text="Update Application Fee" OnClick="btnUpdate_Click" />
                </span>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>

