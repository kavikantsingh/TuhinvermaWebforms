<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucInspection.ascx.cs"
    Inherits="ucInspection" %>
<div class="clear textBoxAlign" style="padding-bottom: 40px;">
    <div style="padding-bottom: 40px;" class="divLicenseInfon divaddnew" id="divAddbuttonCaseName"
        runat="server">
        <span style="float: left;">
            <h3>
                Inspection history grid
            </h3>
        </span><span style="float: right; margin-right: 10px;">
            <asp:Button ID="btnCaseNameAddNew" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                runat="server" Text="Add New" CausesValidation="true" OnClick="btnCaseNameAddNew_Click" />
        </span>
    </div>
    <div id="divAddPanelCaseName" visible="false" style="border: 1px solid rgb(232, 232, 232) !important;"
        runat="server" class="brdr radius mrgnTp4 pdng2">
        <div>
            <table style="width: 65%; margin: 0 auto;">
                <tr>
                    <td align="right" class="colWidh1">
                        <label class="heading input-label required">
                            Date :</label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                            ID="txtDate" runat="server"></asp:TextBox>
                    </td>
                    <td align="right" class="colWidh1">
                        <label class="heading input-label required">
                            Type :</label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtType" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="colWidh1">
                        <label class="heading input-label required">
                            Result :</label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                            ID="txtResult" runat="server"></asp:TextBox>
                    </td>
                    <td align="right" class="colWidh1">
                        <label class="heading input-label required">
                            Done By :</label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtDoneBy" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div runat="server" id="divGridView" visible="true" class="">
        <div class="divLicenseInfo">
            <asp:GridView ID="gvCaseName" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                CssClass="index brdr radius mrgnTp4 pdng2 grid" Width="100%" CellPadding="5"
                ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Date">
                        <ItemStyle />
                        <EditItemTemplate>
                            <div class="divGridEdit" style="width: 100%; margin: 0px auto;">
                                <table style="width: 75%; margin: 0 auto;">
                                    <tr>
                                        <td align="right" class="colWidh1">
                                            <label class="heading input-label required">
                                                Date :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                                                ID="txtDateEdit" runat="server"></asp:TextBox>
                                        </td>
                                        <td align="right" class="colWidh1">
                                            <label class="heading input-label required">
                                                Type :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtTypeEdit" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="colWidh1">
                                            <label class="heading input-label required">
                                                Result :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                                                ID="txtResultEdit" runat="server"></asp:TextBox>
                                        </td>
                                        <td align="right" class="colWidh1">
                                            <label class="heading input-label required">
                                                Done By :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtDoneByEdit" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </EditItemTemplate>
                        <ItemTemplate>
                            10/01/2014
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Type">
                        <ItemStyle />
                        <ItemTemplate>
                            Test
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Result">
                        <ItemStyle />
                        <ItemTemplate>
                            Test
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Done By">
                        <ItemStyle />
                        <ItemTemplate>
                            Test
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="100px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
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
                <EmptyDataTemplate>
                    <div style="width: 100%; height: 200px; border: 0px; padding: 3px">
                        No record found !!
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
        <div class="ribbon" style="width: 100%;">
            <div class="holder peel-shadows" style="width: 97.9%; padding: 20px 7px; margin-top: 0px;
                margin-left: -9px;">
                <span class="fltlft"></span>
                <div class="buttons iefix-5 inline">
                    <div id="divSavebtns" runat="server" visible="false">
                        <asp:Button ID="btnCaseNameUpdate" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                            runat="server" Text="Save" CausesValidation="true" OnClick="btnCaseNameSave_Click" />
                        <asp:LinkButton ID="lnkCaseNameCancelSave" CssClass="secondary medium bottom" runat="server"
                            OnClick="lnkCaseNameCancel_Click">Cancel</asp:LinkButton>
                    </div>
                    <div id="divUpdatebtns" runat="server" visible="false">
                        <asp:Button ID="Button1" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                            runat="server" Text="Update" CausesValidation="true" OnClick="btnCaseNameUpdate_Click" />
                        <asp:LinkButton ID="lnkCaseNameCancelUpdate" CssClass="secondary medium bottom" runat="server"
                            OnClick="lnkCaseNameCancelUpdate_Click">Cancel</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
