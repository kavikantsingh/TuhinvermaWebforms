<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDeficiency.ascx.cs"
    Inherits="NVBMT_WebProject.Modules.IndiVidual.ucDeficiency" %>
<div class="clear textBoxAlign" style="padding-bottom: 40px;">
    <div>
        <div class="blockheader" style="margin: 15px 0px -3px auto;">
            <p style="padding-top: 7px;">
                <span>Deficiency : </span>
            </p>
        </div>
        <div class="deficiency-checklist">
            <div class="deficiency-checklist-item" style="padding-top: 10px;">
                <div>
                    <table class="index brdr radius mrgnTp4 pdng2 grid" cellspacing="0" cellpadding="5"
                        id="gvTask" style="color: #333333; width: 100%; border-collapse: collapse;">
                        <tbody>
                            <tr>
                                <th scope="col">
                                    Deficiency Name
                                </th>
                                <th scope="col">
                                    Date Deficient
                                </th>
                                <th scope="col">
                                    Date Resolved
                                </th>
                            </tr>
                            <tr class="bordrbtm gridrow">
                                <td>
                                    Recertification - Place of Business Information Incomplete
                                </td>
                                <td style="width: 150px;">
                                    9/18/2015 1:33:16 AM
                                </td>
                                <td style="width: 150px;">
                                    9/18/2015 1:41:11 AM
                                </td>
                            </tr>
                            <tr class="bordrbtm gridrow" style="background-color: White;">
                                <td>
                                    Recertification - Other: David
                                </td>
                                <td style="width: 150px;">
                                    9/18/2015 1:33:17 AM
                                </td>
                                <td style="width: 150px;">
                                    9/18/2015 1:41:11 AM
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
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
