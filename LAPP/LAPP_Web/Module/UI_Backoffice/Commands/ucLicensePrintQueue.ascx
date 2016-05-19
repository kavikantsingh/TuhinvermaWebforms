<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucLicensePrintQueue.ascx.cs"
    Inherits="ucLicensePrintQueue" %>
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
<div>
    <h3 class="fltlft">Print Queue<span class="fltrt"><%--<asp:Button ID="btnPrintBack" CssClass="button green "
            OnClick="btnBackLabelPrint_Click" runat="server" Text="Print Back Label" />--%></span></h3>
    <div class="clear">
    </div>
    <div class="userHide searchBoxhidden">
        <div class="clear">
            <div class="close" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
            </div>
        </div>
        <fieldset class="PermitSearch" style="position: relative">
            <legend></legend>
            <asp:Panel DefaultButton="btnSearch" runat="server" ID="pnlSearch">
                <table class="SearchTable boardinfo" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <label class="input-label">
                                    Certificate # :</label>
                            </td>
                            <td align="right">

                                <asp:TextBox ID="txtLicenseNumberSearch" Style="width: 178px !important;"
                                    runat="server" CssClass="inputTextbox" MaxLength="10"></asp:TextBox>
                            </td>
                            <td style="width: 140px;">
                                <label class="input-label">
                                    SS # :</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtSSN" runat="server" Style="width: 178px !important;"
                                    CssClass="inputTextbox ssn" placeholder="xxx-xx-xxxx" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                    Last Name :</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtlastNameSaerch" runat="server" Style="width: 178px !important;"
                                    CssClass="inputTextbox OnlyAlphabet  UpperCase" MaxLength="50"></asp:TextBox>
                            </td>
                            <td align="right">
                                <label class="input-label">
                                    First Name :</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtFirstNameSearch" Style="width: 178px !important;"
                                    runat="server" CssClass="inputTextBox OnlyAlphabet  UpperCase" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                    Printed Date Start :</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDateStart" Style="width: 178px !important;"
                                    runat="server" CssClass="inputTextbox calender" MaxLength="50"></asp:TextBox>

                            </td>
                            <td align="right">
                                <label class="input-label">
                                    Printed Date End :</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDateEnd" runat="server" Style="width: 178px !important;"
                                    CssClass="inputTextbox calender" MaxLength="50"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                    Application Type :</label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlApplicationType" Style="width: 185px;"
                                    CssClass="inputTextbox" runat="server">
                                    <asp:ListItem Text="Select" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Certificate ID" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="Certificate" Value="3"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="right">
                                <label class="input-label">
                                    Printing Status :</label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlPrintingStatus" Style="width: 185px;"
                                    CssClass="inputTextbox" runat="server">
                                    <asp:ListItem Text="All" Value="-1"></asp:ListItem>
                                    <asp:ListItem Text="Not Printed" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Certificate ID Printed" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="Certificate Printed" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="Both Printed" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="Certificate Not Printed" Value="5"></asp:ListItem>
                                    <asp:ListItem Text="Certificate ID Not Printed" Value="6"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div style="width: 90%; margin: 0 auto;">
                    <span class="fltrt">
                        <asp:Button ID="btnSearch" CssClass="buttonGreen small" OnClick="btnSearch_Click"
                            runat="server" Text="Search" CausesValidation="true" ValidationGroup="VGQueueSearch" />
                        <asp:LinkButton ID="btnSearchCancel" CssClass="secondary small "
                            runat="server" Text="Cancel"
                            OnClick="btnSearchCancel_Click"></asp:LinkButton></span>
                </div>
            </asp:Panel>
        </fieldset>
    </div>
    <asp:UpdatePanel ID="upPanel" runat="server">
        <ContentTemplate>
            <div class="gridUpperDiv">
                <div class="clear">
                    <a class="down_arrow"></a><span class="fltlt">
                        <asp:LinkButton ID="lnkShowall" runat="server" OnClick="lnkShowall_Click">Show All</asp:LinkButton>
                        Total Records in Print Queue :
                        <asp:Literal ID="ltrTotalRecord" Text="20" runat="server"></asp:Literal>
                    </span>
                    <div class="fltrt rightIcon">
                        <a title="find" href="javascript:void()" onclick="javascript:showDivSlide('.userHide');hideDivSlide('.searchBbutton');">
                            <img src="../../App_Themes/Theme1/images/search_icon.png" />
                        </a>
                    </div>
                </div>
            </div>
            <div class="brdr radius">
                <asp:GridView ID="gvPrintQueue" ClientIDMode="Static" runat="server" PageSize="20"
                    AutoGenerateColumns="False" CssClass="index grid" ShowHeader="true" Width="100%"
                    CellPadding="4" ForeColor="#333333" AllowPaging="true" PagerSettings-PageButtonCount="5"
                    OnPageIndexChanging="gvGrid_PageIndexChanging" PagerSettings-Mode="NumericFirstLast"
                    PagerSettings-FirstPageText="|<<" PagerSettings-LastPageText=">>|" PagerStyle-CssClass="pager_style"
                    GridLines="None">
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <input type="checkbox" id="chkMain" onchange='javascript:SelectheaderCheckboxes(this,"gvPrintQueue");'
                                    runat="server" />
                            </HeaderTemplate>
                            <HeaderStyle CssClass="column_checkbox" />
                            <ItemStyle CssClass="column_checkbox" VerticalAlign="Middle" />
                            <ItemTemplate>
                                <asp:CheckBox ID="chkSelect" runat="server" />
                                <asp:HiddenField ID="hfID" Value='<%# Eval("Queue_Id") %>' runat="server" />
                                <asp:HiddenField ID="hfID2" Value='<%# Eval("Individual_Id") %>' runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name" SortExpression="First_Name">
                            <ItemStyle />
                            <ItemTemplate>
                                <%# Eval("First_Name")%> <%# Eval("Last_Name")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Certificate #" SortExpression="License_Number">
                            <ItemStyle />
                            <ItemTemplate>
                                <%# Eval("License_Number")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Certificate Status">
                            <ItemStyle />
                            <ItemTemplate>
                                Active
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Application #">
                            <ItemStyle />
                            <ItemTemplate>
                                <%# Eval("Application_No")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Application Type" SortExpression="Application_Type_Name">
                            <ItemStyle />
                            <ItemTemplate>
                                <%# Eval("Application_Type_Name")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Date Certificate ID Printed">
                            <ItemStyle />
                            <ItemTemplate>
                                09/23/2015
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Date Certificate Printed">
                            <ItemStyle />
                            <ItemTemplate>
                                09/23/2015
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <div style="width: 98%; height: 50px; border: 1px solid #eee; margin: 0 auto; padding: 3px">
                            No match found.
                        </div>
                    </EmptyDataTemplate>
                </asp:GridView>
            </div>
            <div class="ribbon" style="width: 100%">
                <div class="holder peel-shadows Individual" style="width: 98.4%; margin-top: 0px;">
                    <div class="buttons iefix-5 inline" runat="server" id="DivbtnSaveCancel">
                        <span class="fltrt">
                            <asp:Button ID="Button1" CssClass="buttonGreen medium" ClientIDMode="Static" Style="margin-left: 10px;"
                                runat="server" Text="Review for Processing" />
                            <asp:Button ID="btnPrint" CssClass="buttonGreen medium " ClientIDMode="Static"
                                runat="server" Text="Release for Processing" />
                        </span>
                    </div>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="gvPrintQueue" />
        </Triggers>
    </asp:UpdatePanel>
</div>
