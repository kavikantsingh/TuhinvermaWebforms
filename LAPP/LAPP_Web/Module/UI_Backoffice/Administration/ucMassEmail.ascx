<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucMassEmail.ascx.cs" Inherits="Module_Administration_ucMassEmail" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<div class="clearb">
    <br />
</div>
<div class="container primary-content ">
    <div class="primary-column ">
        <div id="dashboard-panels ">
            <div class="relative-box peel-shadows">
                <div id="Cashflow" class="dashboard-panel clearfix rounded">
                    <div class="get-started-content" style="padding-bottom: 40px;">
                        <div style="padding: 10px 0px 25px;" class="divDocumentType divaddnew" id="divAddNewbutton"
                            runat="server">
                            <h4 style="float: left;">Contacts
                            </h4>
                            <span style="float: right; margin-right: 0px;">
                                <asp:Button ID="btnAddNew" CssClass="buttonGreen small" runat="server" Text="Add New"
                                    OnClick="btnAddNew_Click" />
                            </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="brdr radius" id="divAddAppReqPanel" runat="server" visible="false">
                            <div style="padding: 25px 0px 12px 0px;">
                                <table style="width: 65%; margin: 0px auto;">
                                    <tr>
                                        <td align="right">
                                            <label class="input-label required">
                                                Name :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtName" runat="server" CssClass="inputTextbox OnlyAplhabet" Style="width: 200px;"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label class="input-label required">
                                                Email :
                                            </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtEmail" CssClass="inputTextbox" placeholder="joe@example.com"
                                                Style="width: 200px;" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label required">
                                                Type :</label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlType" Style="width: 208px;" CssClass="DropdownList" runat="server">
                                                <asp:ListItem>City</asp:ListItem>
                                                <asp:ListItem>County</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="toolBar" style="padding: 4px; margin: 6px;">
                                <span class="fltrt">
                                    <asp:Button ID="btnSaveEmail" CssClass="buttonGreen medium" runat="server" Text="Save"
                                        OnClick="btnSaveEmail_Click" />
                                    <asp:Button ID="btnCancelSave" CssClass="secondary medium" runat="server" Text="Cancel"
                                        OnClick="btnCancelSave_Click" /></span>
                            </div>
                        </div>
                        <div class="clear">
                        </div>
                        <div runat="server" id="divGridView" visible="true" class="">
                            <div style="margin-top: 3px;">
                                <asp:GridView ID="gvDocumentType" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                    CssClass="index brdr radius pdng2 grid" RowStyle-CssClass="bordrbtm gridrow"
                                    GridLines="None" AllowSorting="true" PagerStyle-CssClass="pager_style" PageSize="20"
                                    Width="100%" CellPadding="5" ForeColor="#333333">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField>
                                            <HeaderTemplate>
                                                <input type="checkbox" id="chkApplicant" runat="server" onchange='javascript:SelectheaderCheckboxes(this,"gvDocumentType");' />
                                            </HeaderTemplate>
                                            <HeaderStyle CssClass="column_checkbox" />
                                            <ItemStyle CssClass="" HorizontalAlign="Center" Width="30px" />
                                            <EditItemTemplate>
                                                <div class="divGridEdit">
                                                    <table style="margin: 5px auto; width: 88%;" class="tblParentNewApplReqForm tblLicensureInformation wthtop20">
                                                        <tr>
                                                            <td align="right">
                                                                <label class="input-label required">
                                                                    Name :</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtNameEdit" Text='<%# Eval("Name") %>' runat="server" CssClass="inputTextbox OnlyAplhabet"
                                                                    Style="width: 200px;"></asp:TextBox>
                                                            </td>
                                                            <td align="right">
                                                                <label class="input-label required">
                                                                    Email :</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtEmailEdit" CssClass="inputTextbox" Text='<%# Eval("Email") %>'
                                                                    placeholder="joe@example.com" Style="width: 200px;" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                                <label class="input-label required">
                                                                    Type :</label>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="ddlTypeEdit" Style="width: 208px;" CssClass="DropdownList"
                                                                    runat="server">
                                                                    <asp:ListItem>City</asp:ListItem>
                                                                    <asp:ListItem>County</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div class="toolBar" style="padding: 4px; margin: 6px;">
                                                        <span class="fltrt">
                                                            <asp:Button ID="btnDocumentsUpdate" CssClass="buttonGreen small" runat="server" Text="Update"
                                                                OnClick="btnDocumentsUpdate_Click" />
                                                            <asp:Button ID="btnDocumentsCancelUpdate" CssClass="secondary small" runat="server"
                                                                Text="Cancel" OnClick="btnDocumentsCancelUpdate_Click" /></span>
                                                    </div>
                                                </div>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkApplicant1" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name">
                                            <ItemTemplate>
                                                <%# Eval("Name") %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Email">
                                            <ItemTemplate>
                                                <%# Eval("Email")%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Type">
                                            <ItemTemplate>
                                                <%# Eval("Type")%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                                            <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" Width="100px" />
                                            <ItemTemplate>
                                                <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" CommandArgument="1" runat="server"
                                                    RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                    OnClick="imgbtnEdit_Click" />
                                                <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                    CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?');"
                                                    OnClick="imgBtnDelete_Click" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <PagerSettings PageButtonCount="6"></PagerSettings>
                                    <PagerStyle CssClass="pager_style"></PagerStyle>
                                    <RowStyle CssClass="bordrbtm gridrow"></RowStyle>
                                </asp:GridView>
                                <br />
                                <br />
                                <div>
                                    <div>
                                        <table width="100%">
                                            <tr>
                                                <td align="right" class="algn wthclm">
                                                    <b>Group Type :</b>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlGroupType" CssClass="group" runat="server" Width="300px">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">Member </asp:ListItem>
                                                        <asp:ListItem Value="2">Establishment</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" class="algn wthclm">
                                                    <b>Select Template :</b>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlTemplate" runat="server" CssClass="templateID" AutoPostBack="true"
                                                        Width="300px">
                                                        <asp:ListItem Text="Notification"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" class="algn wthclm">
                                                    <b>From :</b>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtFrom" Width="293px" runat="server" Text="nvmassagebd@state.nv.us"
                                                        CssClass="inputtype txtFromAddress"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" class="algn wthclm">
                                                    <b>Template Subject :</b>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtTemplate_Subject" Width="293px" runat="server" TextMode="MultiLine"
                                                        CssClass="inputtype"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" class="algn wthclm">
                                                    <b>Upload Attachment :</b>
                                                </td>
                                                <td>
                                                    <asp:FileUpload ID="fu" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <br />
                                                    <CKEditor:CKEditorControl Style="margin: 0 auto" ID="ckDisplayContent" runat="server"
                                                        Height="400px">
                                                    </CKEditor:CKEditorControl>
                                                </td>
                                            </tr>
                                        </table>
                                        <div class="toolBar">
                                            <span style="margin: 4px" class="fltrt">
                                                <asp:Button ID="btnSendBulkEmail" runat="server" CausesValidation="true" ValidationGroup="vgBulkEmail"
                                                    CssClass="buttonGreen medium" Text="Send Email" />
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
