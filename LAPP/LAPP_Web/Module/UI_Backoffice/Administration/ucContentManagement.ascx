<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucContentManagement.ascx.cs" Inherits="Module_Administration_ucContentManagement" %>
<script>
    function SelectheaderCheckboxes(headerchk, gv) {
        // alert('hi');
        //debugger
        var gvcheck = document.getElementById(gv);
        // alert(gvcheck);
        var i;
        if (headerchk.checked) {
            for (i = 0; i < gvcheck.rows.length; i++) {
                var inputs = gvcheck.rows[i].getElementsByTagName('input');
                inputs[0].checked = true;
            }
        }
        else {
            for (i = 0; i < gvcheck.rows.length; i++) {
                var inputs = gvcheck.rows[i].getElementsByTagName('input');
                inputs[0].checked = false;
            }
        }
    }

</script>
<style>
    .selected {
        background-color: #A4D2EE !important;
    }

    .horalin {
        text-align: center;
    }
</style>
<div class="clearb">
</div>
<asp:UpdatePanel ID="upPanel" runat="server">
    <Triggers>
        <asp:PostBackTrigger ControlID="btnSearchCancel" />
        <%-- <asp:PostBackTrigger ControlID="gvContent" />
      <asp:AsyncPostBackTrigger ControlID="btnSearchCancel" />
         <asp:AsyncPostBackTrigger ControlID="gvContent" />--%>
        <asp:AsyncPostBackTrigger ControlID="gvContent" />
    </Triggers>
    <ContentTemplate>
        <div class="userHide searchBoxhidden">
            <div class="clear">
                <div class="close" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
                </div>
            </div>
            <fieldset class="PermitSearch" style="position: relative">
                <div class="clearb">
                </div>
                <table class="SearchTable" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <label>
                                    Content Name :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtContentNameSearch" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <label>Content Text : </label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtContentTextSearch" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div style="width: 90%; margin: 0 auto;">
                    <span class="fltrt">
                        <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search"
                            OnClick="btnSearch_Click" />
                        <asp:LinkButton ID="btnSearchCancel" CssClass="secondary small" runat="server" Text="Cancel"
                            OnClick="btnSearchCancel_Click"></asp:LinkButton></span>
                </div>
                <div class="clearb">
                </div>
            </fieldset>
        </div>
        <div class="clear">
        </div>
        <div class="gridUpperDiv">
            <a class="down_arrow"></a><span class="fltlt">
                <asp:LinkButton ID="LinkButton1" CssClass="" runat="server">Show All</asp:LinkButton>
            </span>
            <div class="fltrt rightIcon">
                <a title="find" href="javascript:void()" onclick="javascript:showDivSlide('.userHide');hideDivSlide('.searchBbutton');">
                    <img src="../../App_Themes/Theme1/images/search_icon.png" /></a>
            </div>
        </div>
        <div class="brdr">
            <div class="brdr radius pdng5">
                <asp:GridView ID="gvContent" runat="server" ClientIDMode="Static" AutoGenerateColumns="False"
                    CssClass="index" Width="100%" PagerStyle-CssClass="pager_style" CellPadding="4"
                    PageSize="10" AllowPaging="true" ForeColor="#333333" GridLines="None">
                    <Columns>
                        <asp:TemplateField>
                            <EditItemTemplate>
                                <asp:Literal ID="ltrContent" runat="server"></asp:Literal>
                                <div class="pdng5" style="padding: 15px 0px 15px 0px;">
                                    <table style="margin: 0 auto; width: 60%;">
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">
                                                    Content Name :</label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtContentNameGrid" Enabled="false" runat="server" Style="width: 200px;"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label required">
                                                    Content Text :</label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txtContentTextGrid" runat="server" TextMode="MultiLine" Style="width: 455px; height: 100px; margin-top: 10px;"></asp:TextBox>
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
                        <asp:TemplateField HeaderText="Content Name" ItemStyle-Width="170px">
                            <ItemStyle />
                            <ItemTemplate>
                                <%# Eval("Name")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Content Text">
                            <ItemStyle />
                            <ItemTemplate>
                                <%# Eval("Content_Text")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Action" HeaderStyle-CssClass="horalin">
                            <ItemStyle HorizontalAlign="Center" CssClass="col-action" />
                            <ItemTemplate>
                                <asp:ImageButton ID="imgbtnEditRightGrid1" CssClass="imgDelete" runat="server" ToolTip="Edit"
                                    CommandArgument='<%# Eval("Content_ID") %>' RowIndex='<%# Container.DisplayIndex %>'
                                    ImageUrl="~/App_Themes/Theme1/images/edit.png" OnClick="imgbtnEditRightGrid1_Click" />
                                <asp:ImageButton ID="imgBtnRightGridDelete" CommandArgument='<%# Eval("Content_ID") %>'
                                    CssClass="imgDelete" Visible="false" runat="server" ToolTip="Delete" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                    OnClick="imgBtnRightGridDelete_Click" OnClientClick="javascript:return confirm('Are you sure you want to delete?');" />
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
                <%--  <uc4:PagerControl ID="PagerControl2" runat="server" />--%>
                <div class="bookcase  form-stacked shelf" style="display: none">
                    <div class="clear">
                    </div>
                </div>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
