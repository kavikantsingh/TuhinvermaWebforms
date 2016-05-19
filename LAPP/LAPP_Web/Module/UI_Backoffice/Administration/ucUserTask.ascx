<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucUserTask.ascx.cs"
    Inherits="ucUserTask" %>
<asp:UpdatePanel runat="server" ID="upPnlCertificateApp">
    <ContentTemplate>
        <div class="clear">
            <br />
            <span class="fltrt">
                <asp:Button ID="Button3" CssClass="buttonGreen small" runat="server" Text="Add New"
                    CausesValidation="true" OnClick="btnAddNew_Click" /></span></span>
        </div>
        <br />
        <div id="divAddNew" runat="server" visible="false">
            <table class="form-table" style="margin: 0 auto; width: 600px; border: 1px solid #ddd">
                <tr>
                    <td align="right" style="padding-top: 15px">
                        <label class="input-label">
                            Task :</label>
                    </td>
                    <td style="padding-top: 15px">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label">
                            User Name :</label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" Style="width: 144px;" runat="server">
                            <asp:ListItem Value="-1">Select</asp:ListItem>
                            <asp:ListItem Value="1">Chris Menally</asp:ListItem>
                            <asp:ListItem Value="2">Beverly Nas</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
            </table>
            <div class="toolBar" style="padding: 4px; margin: 0 auto; width: 590px;" runat="server"
                id="Div2">
                <span class="fltrt"><span class="AfterApproved">
                    <asp:Button ID="Button2" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                        runat="server" Text="Save" CausesValidation="true" OnClick="btnPsdStatus1Update_Click" /></span>
                    <asp:LinkButton ID="LinkButton2" Style="top: 0px;" CssClass="secondary medium bottom buttonalignment"
                        runat="server" OnClick="lnkCancelStatus1Update_Click">Cancel</asp:LinkButton></span>
            </div>
            <div class="clear">
                <br />
            </div>
        </div>
        <div class="gvDivUpr">
            <table class="index  grid" cellspacing="0" cellpadding="5" id="gvNewApplication"
                style="color: #333333; width: 100%; border-collapse: collapse;">
                <tbody>
                    <tr>
                        <th>ID #
                        </th>
                        <th scope="col">Task
                        </th>
                        <th scope="col">User Name
                        </th>
                        <th scope="col" width="100px">Action
                        </th>
                    </tr>
                    <tr id="trStatic1" runat="server">
                        <td>1
                        </td>
                        <td>Allison to obtain
                        </td>
                        <td>Chris Menally
                        </td>
                        <td>
                            <asp:ImageButton ID="imgbtnStatus1Edit" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                OnClick="imgbtnStatus1Edit_Click" />
                            <asp:ImageButton ID="ImageButton2" runat="server" ToolTip="Delete" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                OnClientClick="javascript:return confirm('Are you sure you want to delete?')" />
                        </td>
                    </tr>
                    <tr id="trEdit" runat="server" visible="false">
                        <td colspan="4">
                            <div class="toolBar" style="padding: 7px 0px 4px 2px;">
                                <table style="margin: 0px auto; width: 100%;">
                                    <tbody>
                                        <tr id="ContentPlaceHolder1_MidContent_ucPSDMinuteMeeting1_tr1">
                                            <td style="width: 124px;">
                                                <asp:Literal ID="ltrId" runat="server"> </asp:Literal>
                                            </td>
                                            <td style="width: 400px;">
                                                <asp:Literal ID="ltrTask" runat="server"> </asp:Literal>
                                            </td>
                                            <td style="width: 400px;">
                                                <asp:Literal ID="ltrUserName" runat="server"> </asp:Literal>
                                            </td>
                                            <td style="text-align: center; width: 100px;">
                                                <asp:LinkButton ID="LinkButton3" CssClass="secondary small bottom buttonalignment"
                                                    runat="server" OnClick="lnkCancelStatus1Update_Click">Close</asp:LinkButton>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <table class="form-table" style="margin: 10px auto; width: 600px; border: 1px solid #ddd">
                                <tr>
                                    <td align="right" style="padding-top: 15px">
                                        <label class="input-label">
                                            Task :</label>
                                    </td>
                                    <td style="padding-top: 15px">
                                        <asp:TextBox ID="txtEdit" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label">
                                            User Name :</label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlEdit" Style="width: 144px;" runat="server">
                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                            <asp:ListItem Value="1">Chris Menally</asp:ListItem>
                                            <asp:ListItem Value="2">Beverly Nas</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2"></td>
                                </tr>
                            </table>
                            <div class="toolBar" style="padding: 4px; margin: -10px auto; width: 590px;" runat="server"
                                id="PnalApprovebtn">
                                <span class="fltrt"><span class="AfterApproved">
                                    <asp:Button ID="btnPsdStatus1Update" ValidationGroup="vgAffidavit" CssClass="buttonGreen small"
                                        runat="server" Text="Save" CausesValidation="true" OnClick="btnPsdStatus1Update_Click" /></span>
                                    <asp:LinkButton ID="lnkCancelUpdate" CssClass="secondary small bottom buttonalignment"
                                        runat="server" OnClick="lnkCancelStatus1Update_Click">Cancel</asp:LinkButton></span>
                            </div>
                        </td>
                    </tr>
                    <tr id="trStatic2" runat="server">
                        <td>2
                        </td>
                        <td>Beverly to Review
                        </td>
                        <td>Beverly Nas
                        </td>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                OnClick="imgbtnStatus2Edit_Click" />
                            <asp:ImageButton ID="ImageButton3" runat="server" ToolTip="Delete" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                OnClientClick="javascript:return confirm('Are you sure you want to delete?')" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
