<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucAKA.ascx.cs" Inherits="NVBMT_WebProject.Modules.IndiVidual.ucAKA" %>
<div class="divLicenseInfon divaddnew" id="divAKA" runat="server" style="height: 30px;">
    <span style="float: right;">
        <asp:Button ID="btnAKAAddNew" ValidationGroup="vgAffidavit" CssClass="buttonGreen small"
            runat="server" Text="Add New" CausesValidation="true" OnClick="btnAKAAddNew_Click" />
    </span>
</div>
<div id="divAddPanelAKA" runat="server" visible="false" class="brdr radius">
    <table class=" form-table" style="width: 90%; margin: 0px auto;">
        <tr>
            <td align="right">
                <label class="input-label required">
                    First Name :</label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" CssClass="inputTextBox" runat="server"></asp:TextBox>
            </td>
            <td align="right">
                <label class="input-label required">
                    Last Name :</label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" CssClass="inputTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">
                <label class="input-label required">
                    SS # :</label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" CssClass="inputTextBox ssn" runat="server"></asp:TextBox>
            </td>
            <td align="right">
                <label class="input-label required">
                    DOB :</label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" CssClass="inputTextBox calenderDOB" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">
                <label class="input-label required">
                    Driver License :</label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" CssClass="inputTextBox" runat="server"></asp:TextBox>
            </td>
            <td align="right">
                <label class="input-label required">
                    Passport # :</label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" CssClass="inputTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
        <span class="fltrt">
            <asp:Button ID="btnAKASave" ValidationGroup="VGSchool" CssClass="buttonGreen medium"
                runat="server" Text="Save" CausesValidation="true" OnClick="btnAKASave_Click" />
            <asp:LinkButton ID="lnkAKACancel" CssClass="secondary medium bottom buttonalignment"
                runat="server" OnClick="lnkAKACancel_Click">Cancel</asp:LinkButton></span>
    </div>
</div>
<div class="divLicenseInfo">
    <asp:GridView ID="gvAKA" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
        CssClass="index brdr radius mrgnTp4 pdng2 grid" Width="100%" CellPadding="5"
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="First Name">
                <ItemStyle />
                <EditItemTemplate>
                    <asp:UpdatePanel runat="server" ID="MassageTrainingandAKAUp2">
                        <ContentTemplate>
                            <div class="divGridEdit">
                                <table class=" form-table" style="width: 90%; margin: 0px auto;">
                                    <tr>
                                        <td align="right">
                                            <label class="input-label required">
                                                First Name :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox7Edit" Text="Nancy" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label class="input-label required">
                                                Last Name :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox1Edit" Text="Blachly" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label required">
                                                SS # :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox2Edit" Text="123-55-4684" CssClass="inputTextBox ssn" runat="server"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label class="input-label required">
                                                DOB :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox3Edit" Text="09/16/1985" CssClass="inputTextBox calenderDOB"
                                                runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label required">
                                                Driver License :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox4Edit" Text="C879789" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label class="input-label required">
                                                Passport # :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox5Edit" Text="978889" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                                <div class="clear">
                                </div>
                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                    <span class="fltrt">
                                        <asp:Button ID="btnAKAUpdate" ValidationGroup="VGSchoolEdit" CssClass="buttonGreen medium"
                                            runat="server" Text="Update" CausesValidation="true" OnClick="btnAKAUpdate_Click" />
                                        <asp:LinkButton ID="lnkAKACancelUpdate" CssClass="secondary medium bottom buttonalignment"
                                            runat="server" OnClick="lnkAKACancelUpdate_Click">Cancel</asp:LinkButton></span>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </EditItemTemplate>
                <ItemTemplate>
                    Nancy
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last Name">
                <ItemStyle />
                <ItemTemplate>
                    Blachly
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SS #">
                <ItemStyle />
                <ItemTemplate>
                    123-55-4684
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DOB">
                <ItemTemplate>
                    09/16/1985
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Driver License">
                <ItemStyle />
                <ItemTemplate>
                    C879789
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Passport #">
                <ItemStyle />
                <ItemTemplate>
                    978889
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width="60px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                <ItemTemplate>
                    <span class="fltrt AfterApproved">
                        <asp:ImageButton ID="imgbtnAKAEdit" CssClass="imgDelete" CommandArgument="1" runat="server"
                            RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                            OnClick="lnkAKAEdit_Click" />
                        <asp:ImageButton ID="imgBtnAKADelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                            CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?')"
                            OnClick="lnkAKADelete_Click" /></span>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <div style="width: 100%; height: 50px; border: 0px; padding: 3px">
                No record found.
            </div>
        </EmptyDataTemplate>
    </asp:GridView>
</div>
