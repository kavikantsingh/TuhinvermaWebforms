<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucCorrespondence.ascx.cs" Inherits="Module_UI_Backoffice_Individual_ucCorrespondence" %>
<div class="" style="padding-top: 20px; padding-top: 20px">
        <div class="blockheader" style="margin-top: 0px;">
            <p style="padding-top: 7px;">
                <span>Correspondence : </span>
            </p>
        </div>
        <div style="padding: 10px 10px 28px 10px;" class="divLicenseInfon divaddnew" id="divAddbuttonCorrespodence"
            runat="server">
            <span style="float: right; margin-right: 0px;">
                
                <asp:ImageButton ID="ImageButton3" runat="server" Width="22px" OnClick="btnCorrespodenceAddNew_Click"
                                    ImageUrl="~/App_Themes/Theme1/images/1443263723_mail-icon.png" />
            </span>
        </div>
        <div id="divAddPanelCorrespodence" visible="false" runat="server" class="brdr radius mrgnTp4 pdng2">
            
                                <table class="tblAssign form-table" style="margin: 20px auto 20px 80px;width: 89%;">
                                    <tr>
                                        <td align="right" style="width: 85px;">
                                            <label class="input-label required">
                                                From :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox7" runat="server" CssClass="inputTextbox  calendarMask" Style="width: 140px !important;"
                                                Text="camtc@camtc.org" MaxLength="150"></asp:TextBox>
                                        </td>
                                        <td align="left" colspan="2">
                                            <input type="checkbox" checked="checked" />
                                            Email a Copy to sender?
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label required">
                                                To :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="inputTextbox  calendarMask" Style="width: 140px !important;"
                                                Text="joe@inlumon.com" MaxLength="150"></asp:TextBox>
                                        </td>
                                        <td align="left" colspan="2">
                                            <select class="inputTextbox">
                                                <option>Select</option>
                                                <option>Application Processing</option>
                                                <option>Recertification Received</option>
                                                <option>City Contact with Password</option>
                                                <option>Select</option>
                                                <option>Select</option>
                                                <option>Select</option>
                                                <option>Select</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label required">
                                                Subject :</label>
                                        </td>
                                        <td colspan="3">
                                            <asp:TextBox ID="TextBox4" runat="server" CssClass="inputTextbox  calendarMask" Style="width: 406px !important;"
                                                Text="California Massage Therapy Council - Application" MaxLength="150"></asp:TextBox>
                                        </td>
                                    </tr>

                                    <%--<tr>
                                        <td align="right" style="width:106px;">
                                            <label class="input-label required">
                                                Internal Subject :</label>
                                        </td>
                                        <td colspan="3">
                                            <asp:TextBox ID="TextBox24" runat="server" CssClass="inputTextbox  calendarMask" Style="width: 406px !important;"
                                                 MaxLength="150"></asp:TextBox>
                                        </td>
                                    </tr>--%>

                                    <tr>
                                        <td align="right">
                                            <label class="input-label required">
                                                Attachment :</label>
                                        </td>
                                        <td colspan="3">
                                            <input type="file" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <div class="posRelative" style="width: 90% !important">
                                                <h4>Email  :</h4>
                                                
                                            </div>
                                        </td>
                                    </tr>
                                </table>
            <div class="toolBar" style="padding: 4px; margin: 6px;">
                <span class="fltrt">
                    <asp:Button ID="btnCoresspodenceSave" ValidationGroup="VGTask" CssClass="buttonGreen medium"
                        runat="server" Text="Send" CausesValidation="true" OnClick="lnkCoresspodenceSave_Click" />
                    <asp:LinkButton ID="lnkCoresspodenceCancel" CssClass="secondary medium bottom" runat="server"
                        OnClick="lnkCoresspodenceCancel_Click">Cancel</asp:LinkButton></span>
            </div>
        </div>
        <div runat="server" id="divGridView" visible="true" class="">
            <div class="divLicenseInfo">
                <asp:GridView ID="gvCorrespodence" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                    AllowPaging="true" PagerSettings-PageButtonCount="6" GridLines="None" AllowSorting="true"
                    PagerStyle-CssClass="pager_style" PageSize="5" RowStyle-CssClass="bordrbtm gridrow"
                    CssClass="index brdr radius mrgnTp4 pdng2 grid" Width="100%" CellPadding="5"
                    ForeColor="#333333">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Date Sent">
                            <ItemStyle CssClass="InEditModetd" />
                            <EditItemTemplate>
                                <div class="divGridEdit">
                                    <table style="margin: 0 auto; width: 75%" class="tblParentNewApplReqForm tblLicensureInformation wthtop20">
                                        <tr>
                                            <td align="right">
                                                <label class="input-label required">
                                                    Date Sent :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                                                    ID="txtDateSentEdit" runat="server"></asp:TextBox>
                                            </td>
                                            <td style="width: 112px;" align="right">
                                                <label class="input-label required">
                                                    Subject :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtSubjectEdit" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 90px;">
                                                <label class="input-label required">
                                                    Type :</label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlTaskTypeEdit" CssClass="DropdownList" runat="server">
                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                    <asp:ListItem Value="Type1" Selected="True">Email</asp:ListItem>
                                                    <asp:ListItem Value="Type2">Letter</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td align="right">
                                                <label class="input-label required">
                                                    File :</label>
                                            </td>
                                            <td>
                                                <asp:FileUpload ID="fuFileEdit" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                    <div class="toolBar" style="padding: 4px; margin: 6px; width: 97%;">
                                        <span class="fltrt">
                                            <asp:Button ID="btnCoresspodenceUpdate" ValidationGroup="VGTask" CssClass="buttonGreen medium"
                                                runat="server" Text="Update" CausesValidation="true" OnClick="btnCoresspodenceUpdate_Click" />
                                            <asp:LinkButton ID="lnkCoresspodenceCancelUpdate" CssClass="secondary medium bottom"
                                                runat="server" OnClick="lnkCoresspodenceCancelUpdate_Click">Cancel</asp:LinkButton></span>
                                    </div>
                                </div>
                            </EditItemTemplate>
                            <ItemTemplate>
                                03/10/2015
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Subject">
                            <ItemStyle />
                            <ItemTemplate>
                                Application request form sent.
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Type">
                            <ItemStyle />
                            <ItemTemplate>
                                Email
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--<asp:TemplateField HeaderText="View">
                            <ItemStyle />
                            <ItemTemplate>
                                <a href="">Link</a>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                        <asp:TemplateField ItemStyle-Width="60px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                            <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                            <ItemTemplate>
                                <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" CommandArgument='1' runat="server"
                                    RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                    OnClick="imgbtnEdit_Click" />
                                <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                    CommandArgument='1' ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?');"
                                    OnClick="imgBtnDelete_Click" />
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
        </div>
    </div>