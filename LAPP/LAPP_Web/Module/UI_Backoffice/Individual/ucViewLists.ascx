<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucViewLists.ascx.cs"
    Inherits="NVBMT_WebProject_Modules_IndiVidual_ucViewLists" %>
<style>
    .link-edit {
        text-decoration: none;
        padding: 2.5px 10px;
    }
</style>
<div class="clear textBoxAlign">
    <div>
        <div style="float: left; width: 21%; min-height: 170px;">
            <table class="index grid" cellspacing="0" cellpadding="5" style="color: #333333; border: 1px solid #ddd; width: 100%; border-collapse: collapse;">
                <tbody>
                    <tr class="selected">
                        <td>Adv. Dues Status
                        </td>
                    </tr>
                    <tr style="background-color: White;">
                        <td>Certificates
                        </td>
                    </tr>
                    <tr>
                        <td>Change Log
                        </td>
                    </tr>
                    <tr style="background-color: White;">
                        <td>Committee Membership
                        </td>
                    </tr>
                    <tr>
                        <td>Contact Mgmt.
                        </td>
                    </tr>
                    <tr style="background-color: White;">
                        <td>Credit Memos
                        </td>
                    </tr>
                    <tr>
                        <td>History
                        </td>
                    </tr>
                    <tr style="background-color: White;">
                        <td>Invoices
                        </td>
                    </tr>
                    <tr>
                        <td>Knowledge Base
                        </td>
                    </tr>
                    <tr style="background-color: White;">
                        <td>Licenses
                        </td>
                    </tr>
                    <tr>
                        <td>Mailing Lists
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="width: 78%; float: right; min-height: 170px;">
            <div style="color: #333333; height: 243px; overflow-y: scroll; border: 1px solid #ddd; width: 100%; border-collapse: collapse;">
                <table class="index grid" cellspacing="0" cellpadding="5" style="color: #333333; border: 1px solid #ddd; width: 100%; border-collapse: collapse;">
                    <tbody>
                        <tr>
                            <th scope="col">Changed By
                            </th>
                            <th scope="col">Change Date
                            </th>
                            <th scope="col">Field Name
                            </th>
                            <th scope="col">Old Value
                            </th>
                            <th>New Value
                            </th>
                        </tr>
                        <tr class="selected">
                            <td>Sheryl
                            </td>
                            <td>09/23/2015 12:30:00 PM
                            </td>
                            <td>Address 1
                            </td>
                            <td>1518 Prospect Ave Apt 30
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Sheryl
                            </td>
                            <td>09/23/2015 12:30:00 PM
                            </td>
                            <td>Alt_Address 2
                            </td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Sheryl
                            </td>
                            <td>09/23/2015 12:30:00 PM
                            </td>
                            <td>Alt_City
                            </td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Sheryl
                            </td>
                            <td>09/23/2015 12:30:00 PM
                            </td>
                            <td>Alt_Phone
                            </td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Sheryl
                            </td>
                            <td>09/23/2015 12:30:00 PM
                            </td>
                            <td>Alt_State
                            </td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Sheryl
                            </td>
                            <td>09/23/2015 12:30:00 PM
                            </td>
                            <td>Alt_Zip
                            </td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Sheryl
                            </td>
                            <td>09/23/2015 12:30:00 PM
                            </td>
                            <td>City
                            </td>
                            <td>San Gabriel
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Sheryl
                            </td>
                            <td>09/23/2015 12:30:00 PM
                            </td>
                            <td>City
                            </td>
                            <td>San Gabriel
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Sheryl
                            </td>
                            <td>09/23/2015 12:30:00 PM
                            </td>
                            <td>State
                            </td>
                            <td>CA
                            </td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <%--<div style="padding-top: 10px; display:none;">
                <span>
                    <asp:Button ID="btnAdd" CssClass="buttonGreen small" runat="server" Text="Add" />
                    <asp:LinkButton runat="server" ToolTip="Next" CssClass="btn-info small"
                        ID="lnkVeiw">Vew</asp:LinkButton>
                    <asp:LinkButton runat="server" ToolTip="Previous" CssClass="btn-info small"
                        ID="lnkEdit">Edit</asp:LinkButton>
                    <asp:Button ID="btnPrint" CssClass="buttonGreen small" runat="server" Text="Print" />
                </span>
                <span class="fltrt">
                    <p>
                        Compelling Evidence
                        <asp:CheckBox ID="chkCompellingEvidence" runat="server" />
                    </p>
                </span>
            </div>--%>
        </div>
    </div>
</div>
<div class="buttons iefix-5 inline" runat="server" id="DivbtnHistory">
    <div class="toolBar" style="padding: 4px;">
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
