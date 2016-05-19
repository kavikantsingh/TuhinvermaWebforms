<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucPSD.ascx.cs" Inherits="NVBMT_WebProject.Modules.IndiVidual.ucPSD" %>
<style>
    .btn-anchor a {
        display: block;
        text-align: center;
    }
</style>
<div class="clear textBoxAlign btn-anchor" style="padding-bottom: 10px;">

    <div>
        <div class="btn-anchor" style="float: left; width: 20%;">
            <table style="width: 100%; height: 260px;">
                <tr>
                    <td align="right">
                        <a href="javascript:void(0)" class="buttonGreen medium">Enter Dates for
                            <br />
                            Suspend, Deny,<br />
                            Revoke </a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="javascript:void(0)" class="buttonGreen medium">Law Enforcement<br />
                            EDATA Queries </a>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <a href="javascript:void(0)" class="buttonGreen medium">Look up 20s and 30s</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="javascript:void(0)" class="buttonGreen medium">PDL AUDIT SHEET</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="javascript:void(0)" class="buttonGreen medium">PDL list for Jill</a>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <a href="javascript:void(0)" class="buttonGreen medium">Update More
                            <br />
                            Information Field</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="javascript:void(0)" class="buttonGreen medium">CCMP Deadline Letter</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="javascript:void(0)" class="buttonGreen medium">List All Applications</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="javascript:void(0)" class="buttonGreen medium">DOJ Anomalies</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="javascript:void(0)" class="buttonGreen medium">Old Pending PDLs</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="javascript:void(0)" class="buttonGreen medium">Prepare PSD Upload
                            <br />
                            List</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="javascript:void(0)" class="buttonGreen medium">Mark Pending PDLs<br />
                            with PDL Date</a>
                    </td>
                </tr>
            </table>
        </div>
        <div style="float: right; width: 80%;">
            <table style="width: 100%">
                <tr style="position: relative; top: 14px; display:none;">
                    <td align="right" style="width: 152px;">
                        <label class="input-label">
                            Sent a SSA Investigations
                        </label>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td align="right">
                        <label class="input-label">
                            Uploaded
                        </label>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox2" Checked="true" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr style="position: relative; top: 8px;">
                    <td align="right">
                        <label class="input-label">
                            APU
                        </label>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox3" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" Text="06/30/2015" runat="server"></asp:TextBox>
                    </td>
                    <td align="right" colspan="2" style="display:none;">
                        <label class="input-label">
                            Submitted</label>
                        <br />
                        <label class="input-label">
                            Statement :
                        </label>
                    </td>
                    <td style="display:none;">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label">
                            PSD
                        </label>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox4" Checked="true" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" Text="06/30/2015" runat="server"></asp:TextBox>
                    </td>
                    <td></td>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label">
                            LG
                        </label>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox5" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td></td>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label">
                            PNOD
                        </label>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox6" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                    <td></td>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td align="right" colspan="2">
                        <label class="input-label">
                            Denial Information :
                        </label>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox8" Style="width: 388px;" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="2">
                        <label class="input-label">
                            PSD Comment :
                        </label>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox9" TextMode="MultiLine" Style="width: 388px;" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="2">
                        <label class="input-label">
                            Staff Comment :
                        </label>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox10" TextMode="MultiLine" Style="width: 388px;" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr style="display:none;">
                    <td colspan="2"></td>
                    <td colspan="4">
                        <asp:CheckBox ID="CheckBox7" Checked="true" Text="List on new PSD Report" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="right" style="width: 166px;">
                        <label class="input-label">
                            EDU PDL :
                        </label>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="right" style="width: 166px;">
                        <label class="input-label">
                            PSD Extension Date :
                        </label>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox12" CssClass="calender" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="right" style="width: 166px;">
                        <label class="input-label">
                            PNL :
                        </label>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="right" style="width: 166px;">
                        <label class="input-label">
                            PRL :
                        </label>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="right" style="width: 166px;">
                        <label class="input-label">
                            GD PDL :
                        </label>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="right" style="width: 166px;">
                        <label class="input-label">
                            GD PDL EDU :
                        </label>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>
<div class="clear">
</div>
<div class="buttons iefix-5 inline" runat="server" id="DivbtnHistory">
    <div class="toolBar" style="padding: 4px; display:none;">
        <span class="fltlft">
           <%-- <asp:Button ID="btnShowHistory" CssClass="buttonGreen medium" runat="server" Text="Show History"
                OnClick="btnShowHistory_Click" />
            <asp:LinkButton runat="server" Enabled="false" ToolTip="Previous" CssClass="link-next-prev btn-info btn-sm"
                ID="lnkPrev"><<</asp:LinkButton>
            <asp:LinkButton runat="server" Enabled="false" ToolTip="Next" CssClass="link-next-prev btn-info btn-sm"
                ID="lnkNext">>></asp:LinkButton>
            <asp:Button ID="btnShowCurrent" Enabled="false" CssClass="buttonGreen medium" runat="server"
                Text="Show Current" OnClick="btnShowCurrent_Click" />--%>
        </span>
    </div>
</div>
