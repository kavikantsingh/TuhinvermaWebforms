<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucStatus_Code.ascx.cs"
    Inherits="ucStatus_Code" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<style type="text/css">
    .DropdownList
    {
        margin-left: 0px;
    }
    .style2
    {
        width: 175px;
    }
</style>
<asp:UpdatePanel ID="upPanel" runat="server">
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="gvApplicationStatusType" />
    </Triggers>
    <ContentTemplate>
        <div class="main boardinfo">
            <br />
            <!--- pop up codes ---->
            <div class="clearb">
            </div>
            <div class="span-180 span-13 home-sidebar">
                <div class="rounded-container peel-shadows">
                    <div class="content clearfix">
                        <div class="clear">
                            <h4 style="margin: 0px 0px; float: left">
                                Application Status Color
                            </h4>
                        </div>
                        <dl id="recent-activity" class="activity-list clear">
                            <div id="Div1" class="activity-list">
                                <div id="list" class="sample_data_container">
                                    <div>
                                        <asp:GridView ID="gvApplicationStatusType" runat="server" ClientIDMode="Static" AutoGenerateColumns="False"
                                            CssClass="index" Width="100%" CellPadding="4" PagerStyle-CssClass="pager_style"
                                            OnPageIndexChanging="gvApplicationStatusType_PageIndexChanging" AllowPaging="true"
                                            ForeColor="#333333" GridLines="None">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                    <HeaderTemplate>
                                                        Name
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <%# Eval("Name")%>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField>
                                                    <HeaderStyle HorizontalAlign="Center" />
                                                    <HeaderTemplate>
                                                    </HeaderTemplate>
                                                    <ItemStyle CssClass="col-action" />
                                                    <ItemTemplate>
                                                        <asp:HiddenField ID="hfID" Value='<%# Eval("Status_Type_Id") %>' runat="server" />
                                                        <asp:Button ID="lnkSelect" CssClass="btn btn-xs btn-primary" Text="Select" runat="server"
                                                            OnClick="lnkSelect_Click" RowIndex='<%# Container.DisplayIndex %>'></asp:Button>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <HeaderStyle BackColor="#0D83DD" ForeColor="White" BorderStyle="None" Font-Bold="True" />
                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                        </asp:GridView>
                                    </div>
                                    <br />
                                </div>
                            </div>
                        </dl>
                    </div>
                </div>
            </div>
            <div class="primary-column span-24" style="width: 730px !important;">
                <div class="gridBg">
                    <div class="primary-column ">
                        <div id="dashboard-panels ">
                            <div class="relative-box ">
                                <div class="dynamic-panels ui-sortable" style="">
                                    <div id="Cashflow" class="dashboard-panel clearfix rounded">
                                        <div class="">
                                            <div class="clear">
                                                <div class="clear width95p">
                                                    <div id="DivAlertMessage_Second" style="display: none">
                                                        <div style="display: none">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="brdr radius pdng5">
                                                    <asp:UpdatePanel ID="upPanel11" runat="server">
                                                        <Triggers>
                                                            <asp:AsyncPostBackTrigger ControlID="gvColor_Code" />
                                                        </Triggers>
                                                        <ContentTemplate>
                                                            <asp:GridView ID="gvColor_Code" runat="server" ClientIDMode="Static" AutoGenerateColumns="False"
                                                                CssClass="index grid" AllowPaging="true" PagerSettings-PageButtonCount="6" GridLines="None"
                                                                AllowSorting="true" PagerStyle-CssClass="pager_style" RowStyle-CssClass="bordrbtm"
                                                                PageSize="15" CellPadding="5" Width="100%" ForeColor="#333333" OnPageIndexChanging="gvColor_Code_PageIndexChanging">
                                                                <AlternatingRowStyle BackColor="White" />
                                                                <Columns>
                                                                    <asp:TemplateField HeaderText="Status">
                                                                        <ItemTemplate>
                                                                            <%#Eval("Name")%>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                   <%-- <asp:TemplateField HeaderText="Status Name">
                                                                        <ItemTemplate>
                                                                            <%#Eval("Status")%>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>--%>
                                                                    <asp:TemplateField HeaderText="Color Code">
                                                                        <ItemTemplate>
                                                                            <asp:TextBox ID="txtColorCode" ClientIDMode="Static" CssClass="Multiple" runat="server"
                                                                                Text=' <%#Eval("Color_Code")%>'></asp:TextBox>
                                                                            <asp:HiddenField ID="hfID" runat="server" Value='<%#Eval("status_id")%>' />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                </Columns>
                                                                <EmptyDataTemplate>
                                                                    <div style="width: 100%; height: 200px; border: 0px; padding: 3px">
                                                                        No Status Type Selected.
                                                                    </div>
                                                                </EmptyDataTemplate>
                                                            </asp:GridView>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ribbon" style="width: 100%; padding-top: 7px;">
                                    <%--  <div style="float: left;">
                                <span id="item-msg">You are saving Codes </span>
                            </div>--%>
                                    <div style="float: right;" class="buttons iefix-5 inline">
                                        <asp:Button ID="btnUpdate" ValidationGroup="VGAppStatus" runat="server" CssClass="buttonGreen medium"
                                            Text="Update" CausesValidation="true" OnClick="btnUpdate_Click" />
                                        <asp:Button ID="btnCancel" runat="server" CssClass="secondary medium" Text="Cancel"
                                            OnClick="btnCancel_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearb">
                </div>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
<%--<table style="width: 40%; margin: 19px auto;">
    <tr>
        <td class="style2">
            <asp:Label ID="lblStatus" runat="server" Text="Please Select Status Type:"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlStatus" CssClass="DropdownList" runat="server" AutoPostBack="true"
                OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="revStatus" ValidationGroup="VGAppStatus" ControlToValidate="ddlStatus"
                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                InitialValue="-1" ErrorMessage="Please Select Status."></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="vceStatus" runat="server" TargetControlID="revStatus"
                PopupPosition="BottomLeft" HighlightCssClass="error">
            </asp:ValidatorCalloutExtender>
        </td>
    </tr>
</table>
<div class="gv">
</div>--%>
<script type="text/javascript">
    $(document).ready(
    function () {
        $('.Multiple').jPicker();
    });
</script>
