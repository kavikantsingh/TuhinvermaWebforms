<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucEnrollmentAgreement.ascx.cs"
    Inherits="NVBMT_WebProject.Modules.IndiVidual.ucCityReportSearches" %>
<style>
    .btn-anchor a
    {
        display: block;
        text-align: center;
    }
</style>
<div class="clear textBoxAlign btn-anchor" style="padding-bottom: 10px;">
    <div class="clear">
    </div>
    <div>
        <div style="float: left; width: 48%;">
            <table style="width: 100%; height: 260px;">
                <tr>
                    <td align="right">
                        <a href="javascript:void(0)" class="buttonGreen medium">Find All of a Name</a>
                    </td>
                    <td>
                        <a href="javascript:void(0)" class="buttonGreen medium">90 Days Later</a>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <a href="javascript:void(0)" class="buttonGreen medium">Edit City PW</a>
                    </td>
                    <td>
                        <a href="javascript:void(0)" class="buttonGreen medium">City Password Check </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <a href="javascript:void(0)" class="buttonGreen medium">Update City Requirements</a>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <a href="javascript:void(0)" class="buttonGreen medium">Certification
                            <br />
                            Analysis for one City</a>
                    </td>
                    <td>
                        <a href="javascript:void(0)" class="buttonGreen medium">Authorized<br />
                            Secure Users </a>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <a href="javascript:void(0)" class="buttonGreen medium">List All Applications</a>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <a href="javascript:void(0)" class="buttonGreen medium">School Updates</a>
                    </td>
                </tr>
            </table>
        </div>
        <div style="float: right; width: 50%;">
            <table style="width: 100%">
                <tr>
                    <td>
                        <a href="javascript:void(0)" class="buttonGreen medium">New Employers for Entry
                        </a>
                    </td>
                    <td>
                        <a href="javascript:void(0)" class="buttonGreen medium">Count and Files Ready to Pull</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="javascript:void(0)" class="buttonGreen medium">Attach MTs to Cities</a>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div>
                            <table style="width: 100%; border: 1px solid rgb(143, 143, 143);">
                                <tr>
                                    <td colspan="2">
                                        <h3 style="background: rgb(221, 221, 221) none repeat scroll 0% 0%; padding: 10px;">
                                            Final Approval Queries</h3>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="javascript:void(0)" class="buttonGreen medium">Prepare Certificate for
                                            <br />
                                            Printing</a>
                                    </td>
                                    <td>
                                        <a href="javascript:void(0)" class="buttonGreen medium">PDLs Certified for
                                            <br />
                                            CAMTC Review</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="javascript:void(0)" class="buttonGreen medium">Check Certificates</a>
                                    </td>
                                    <td>
                                        <a href="javascript:void(0)" class="buttonGreen medium">Photos for Approvals</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div style="padding-top: 6px;">
                            <a href="javascript:void(0)" class="buttonGreen medium">Certificates sent by Day</a>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div class="clear">
    </div>
    <div>
        <hr />
    </div>
    <div>
        <div style="float: left; width: 48%;">
            <h3>
                Searches
            </h3>
            <div>
                <table>
                    <tr>
                        <td align="right">
                            <a href="javascript:void(0)" class="buttonGreen medium">Find Check or CC Number</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p style="text-align: center; color: Blue;">
                                The missing Searches / Find By Buttons have all been added to the Find Member Search
                                Form
                            </p>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div style="float: right; width: 50%">
            <table>
                <tr>
                    <td align="right">
                        <a href="javascript:void(0)" class="buttonGreen medium">List of those certified who<br />
                            also got PDL</a>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <a href="javascript:void(0)" class="buttonGreen medium">Old Incomplete<br />
                            Applications</a>
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
