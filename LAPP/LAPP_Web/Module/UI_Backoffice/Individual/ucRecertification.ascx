<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucRecertification.ascx.cs"
    Inherits="NVBMT_WebProject_Modules_IndiVidual_ucRecertification" %>
<div class="clear textBoxAlign" style="padding-bottom: 10px;">
    <div style="border: 1px solid rgb(221, 221, 221); background: rgb(248, 213, 213) none repeat scroll 0% 0%; padding: 10px 10px 10px 0px;">
        <table style="width: 100%;">
            <tr>
                <td align="right" style="width: 96px;">
                    <label class="input-label">
                        Recert. Status :
                    </label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlRecertStatus" runat="server">
                        <asp:ListItem Selected="True" Value="1">Complete</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td align="right">
                    <label class="input-label">
                        Status Date :
                    </label>
                </td>
                <td>
                    <asp:TextBox ID="txtStatusDate" CssClass="inputTextbox calender" Text="7/20/2015"
                        runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <p>
                        If you change the Recent Status - Please make sure the Status Date reflects the
                        date the Status changed.
                    </p>
                </td>
            </tr>
        </table>
    </div>
    <div class="clear">
    </div>
    <div>
        <div style="float: left; width: 40%;">
            <table style="width: 100%;">
                <tr>
                    <td align="right">
                        <label class="input-label">
                            Question 1 :
                        </label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlQuestion1" runat="server">
                            <asp:ListItem Value="0">Yes</asp:ListItem>
                            <asp:ListItem Value="1" Selected="True">NO</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label">
                            Question 2 :
                        </label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlQuestion2" runat="server">
                            <asp:ListItem Value="0">Yes</asp:ListItem>
                            <asp:ListItem Value="1" Selected="True">NO</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label">
                            Question 3 :
                        </label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlQuestion3" runat="server">
                            <asp:ListItem Value="0">Yes</asp:ListItem>
                            <asp:ListItem Value="1" Selected="True">NO</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label">
                            Question 4 :
                        </label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlQuestion4" runat="server">
                            <asp:ListItem Value="0">Yes</asp:ListItem>
                            <asp:ListItem Value="1" Selected="True">NO</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label">
                            Question 5 :
                        </label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlQuestion5" runat="server">
                            <asp:ListItem Value="0">Yes</asp:ListItem>
                            <asp:ListItem Value="1" Selected="True">NO</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label">
                            Question 6 :
                        </label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlQuestion6" runat="server">
                            <asp:ListItem Value="0" Selected="True">Yes</asp:ListItem>
                            <asp:ListItem Value="1">NO</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </div>
        <div style="float: right; width: 60%;">
            <table style="width: 100%">
                <tr>
                    <td>Question Statement
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtQuesStatement" TextMode="MultiLine" Style="width: 415px; height: 100px;"
                            runat="server" Text="DUI in sacramento county 11/1/2014, fined and DIU class completed."></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div class="clear">
    </div>
    <div>
        <div style="float: left; width: 66%;">
            <h3>Signatures and Initials
            </h3>
            <hr />
            <div>
                <table>
                    <tr>
                        <td align="right">
                            <label class="input-label">
                                Certificate Holder :
                            </label>
                        </td>
                        <td colspan="3">
                            <asp:TextBox ID="txtCertificateHolder" Text="Aaron Aaronson" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label">
                                Initial 1 :
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtInitial1" Text="AA" runat="server"></asp:TextBox>
                        </td>
                        <td align="right" style="width: 60px;">
                            <label class="input-label">
                                Initial 6 :
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtInitial6" Text="AA" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label">
                                Initial 2 :
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtInitial2" Text="AA" runat="server"></asp:TextBox>
                        </td>
                        <td align="right">
                            <label class="input-label">
                                Initial 7 :
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtInitial7" Text="AA" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label">
                                Initial 3 :
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtInitial3" Text="AA" runat="server"></asp:TextBox>
                        </td>
                        <td align="right">
                            <label class="input-label">
                                Initial 8 :
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtInitial8" Text="AA" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label">
                                Initial 4 :
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtInitial4" Text="AA" runat="server"></asp:TextBox>
                        </td>
                        <td align="right">
                            <label class="input-label">
                                Initial 9 :
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtInitial9" Text="AA" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label">
                                Initial 5 :
                            </label>
                        </td>
                        <td colspan="3">
                            <asp:TextBox ID="txtInitial5" Text="AA" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label">
                                Signature :
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSignature" Text="Aaron Aaronson" runat="server"></asp:TextBox>
                        </td>
                        <td align="right">
                            <label class="input-label">
                                Date :
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtDate" Text="15/07/2015" CssClass="calender" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div style="float: right; width: 33%">
            <div style="height: 200px; margin-top: 37px; background: rgb(238, 238, 238) none repeat scroll 0% 0%;">
                <span>
                    <asp:Button ID="btnRecertificationMergeExport" Style="position: relative; top: 13px; left: 11px;"
                        CssClass="buttonGreen medium" runat="server" Text="Recertification Word Merge Export" />
                </span>
            </div>
        </div>
    </div>
    <div class="clear">
    </div>
    <div class="buttons iefix-5 inline" runat="server" id="DivbtnHistory">
        <div class="toolBar" style="padding: 4px;">
            <span class="fltlft">
                <asp:Button ID="btnShowHistory" CssClass="buttonGreen medium" runat="server" Text="Show History"
                    OnClick="btnShowHistory_Click" />
                <asp:LinkButton runat="server" Enabled="false" ToolTip="Previous" CssClass="link-next-prev btn-info btn-sm"
                    ID="lnkPrev"><<</asp:LinkButton>
                <asp:LinkButton runat="server" Enabled="false" ToolTip="Next" CssClass="link-next-prev btn-info btn-sm"
                    ID="lnkNext">>></asp:LinkButton>
                <asp:Button ID="btnShowCurrent" Enabled="false" CssClass="buttonGreen medium" runat="server"
                    Text="Show Current" OnClick="btnShowCurrent_Click" />
            </span>
        </div>
    </div>
</div>
