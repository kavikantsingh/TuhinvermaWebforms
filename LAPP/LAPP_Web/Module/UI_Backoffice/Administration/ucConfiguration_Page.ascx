<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucConfiguration_Page.ascx.cs"
    Inherits="ucConfiguration_Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<style>
    .selected
    {
        background-color: #A4D2EE !important;
    }
    .horalin
    {
        text-align: center;
    }
</style>
<div class="clearb">
</div>
<asp:UpdatePanel ID="upPanel" runat="server">
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="gvConfiguration" />
        <asp:AsyncPostBackTrigger ControlID="btnSearchCancel" />
    </Triggers>
    <ContentTemplate>
        <div class="userHide2 searchBoxhidden">
            <div class="clear">
                <div class="close" onclick="javascript:hideDivSlide('.userHide2'); showDivSlide('.searchBbutton');">
                </div>
            </div>
            <div class="clearb">
            </div>
            <fieldset class="PermitSearch" style="position: relative">
                <legend></legend>
                <table class="SearchTable" align="center" style="margin: 0 auto;">
                    <tbody>
                        <tr>
                            <td>
                                <p>
                                    <label>
                                        Setting Name :</label>
                                </p>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="inputTextbox"></asp:TextBox>
                            </td>
                            <%-- <td width="100px">
                                <label>
                                    Is_Editable
                                    <input type="checkbox" /></label>
                            </td>
                            <td>
                            </td>--%>
                        </tr>
                    </tbody>
                </table>
                <div class="clear">
                </div>
                <span class="fltrt">
                    <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search"
                        OnClick="btnSearch_Click" />
                    <asp:LinkButton ID="btnSearchCancel" CssClass="secondary small" runat="server" Text="Cancel"
                        OnClick="btnSearchCancel_Click"></asp:LinkButton></span>
            </fieldset>
            <div class="clearb">
            </div>
        </div>
        <div class="clear">
        </div>
        <div class="gridUpperDiv">
            <a class="down_arrow"></a><span class="fltlt">
                <asp:LinkButton ID="LinkButton1" CssClass="" runat="server">Show All</asp:LinkButton>
            </span>
            <div class="fltrt rightIcon">
                <a title="find" href="javascript:void()" onclick="javascript:showDivSlide('.userHide2');hideDivSlide('.searchBbutton');">
                    <img src="../../App_Themes/Theme1/images/search_icon.png" /></a>
            </div>
        </div>
        <div class="clear">
        </div>
        <div class="brdr" style="margin-top: 3px;">
            <div>
                <asp:GridView ID="gvConfiguration" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                    CssClass="index grid" ShowHeader="true" Width="100%" CellPadding="4" AllowPaging="true"
                    ForeColor="#333333" PagerSettings-PageButtonCount="6" GridLines="None" PagerStyle-CssClass="pager_style"
                    PageSize="15" OnPageIndexChanging="gvConfiguration_PageIndexChanging">
                    <Columns>
                        <asp:TemplateField>
                            <EditItemTemplate>
                                <asp:Literal ID="ltrConfig" runat="server"></asp:Literal>
                                <div class="brdr radius pdng5" style="padding: 15px 0px 15px 0px;">
                                    <table style="margin: 0 auto; width: 63%;">
                                        <tr>
                                            <td align="right">
                                                <label class="input-label ">
                                                    Setting Name :
                                                </label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtSettingName" Enabled="false" runat="server" Style="width: 200px;"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">
                                                    Data Type :</label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtDataTy" Enabled="false" runat="server" Style="width: 200px;"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">
                                                    ValidationRegEx :</label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtValidationRegEx" Enabled="false" runat="server" Style="width: 200px;"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label required">
                                                    Value :</label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtValue" autocomplete="off" runat="server" Style="width: 200px;"
                                                    MaxLength="1000"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">
                                                    Description :</label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" Enabled="false" Style="width: 455px;
                                                    height: 40px;"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="toolBar clear" style="">
                                    <span class="fltrt">
                                        <asp:Button ID="btnSaveContentGrid" CssClass="buttonGreen medium" runat="server"
                                            Text="Save" OnClick="btnSaveContentGrid_Click" />
                                        <asp:Button ID="btnCancelContentGrid" runat="server" CssClass="secondary medium "
                                            Text="Cancel" OnClick="btnCancelContentGrid_Click" />
                                    </span>
                                </div>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Setting Name">
                            <ItemStyle />
                            <ItemTemplate>
                                <%# Eval("Setting")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Value">
                            <ItemStyle />
                            <ItemTemplate>
                                <%# Eval("Value")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Action" HeaderStyle-CssClass="horalin">
                            <ItemStyle HorizontalAlign="Center" CssClass="col-action" />
                            <ItemTemplate>
                                <asp:ImageButton ID="imgBtnEdit" Visible='<%# Eval("Is_Editable") %>' CssClass="imgDelete"
                                    RowIndex='<%# Container.DisplayIndex %>' CommandArgument='<%# Eval("Configuration_Id") %>'
                                    runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                    OnClick="imgBtnEdit_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="#0D83DD" ForeColor="White" BorderStyle="None" Font-Bold="True" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    <EmptyDataTemplate>
                        <div style="width: 100%; height: 200px; border: 0px; padding: 3px">
                            No record found.
                        </div>
                    </EmptyDataTemplate>
                </asp:GridView>
                <%--  <uc4:PagerControl ID="PagerControl2" runat="server" />--%>
                <div class="bookcase  form-stacked shelf" style="display: none">
                    <div class="clear">
                    </div>
                </div>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
