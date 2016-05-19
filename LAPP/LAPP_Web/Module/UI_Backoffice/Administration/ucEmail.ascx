<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucEmail.ascx.cs" Inherits="Module_UI_Backoffice_Administration_ucEmail" %>
<style>
    .email {
        width: 48%;
        border-left: 1px solid #ddd;
        min-height: 100px;
    }

    .individual {
        width: 49%;
        min-height: 100px;
    }

    .overflow-wrap {
        max-width: 383px;
        word-wrap: break-word;
        overflow: hidden;
    }

    .bold {
        font-weight: bold;
    }

    .row {
        background-color: #F5FCFF;
    }

    .alternate-row {
        background-color: #E1F9F2;
    }
</style>
<asp:UpdatePanel ID="upPnlEmail" runat="server">
    <ContentTemplate>
        <div>
            <div class="gridUpperDiv" style="height: 30px; line-height: 22px;">
                <table style="width: 100%;">
                    <tr>
                        <td align="center" style="width: 50%; font-size: 16px;">
                            <b>Individual</b>
                        </td>
                        <td align="center" style="width: 50%; font-size: 16px;">
                            <b>Email</b>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="clear">
            </div>
            <div style="height: 10px;">
            </div>
            <div class="clear">
            </div>
            <div class="fltlft individual">
                <div class="clear">
                </div>
                <div class="gridUpperDiv">
                    <div class="fltlft">
                        <table class="SearchTable boardinfo" align="center">
                            <tr>
                                <td style="vertical-align: middle;">
                                    <label class="input-label required">
                                        Search By Name :</label>
                                </td>
                                <td colspan="3" style="vertical-align: middle;">
                                    <asp:TextBox ID="txtSerchByName" runat="server" Style="width: 300px  !important;"
                                        CssClass="inputTextbox" MaxLength="50"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <span class="fltrt" style="margin-top: 5px;">
                        <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search"
                            ValidationGroup="vgSerch" CausesValidation="true" />
                        <%--<asp:LinkButton ID="btnSearchCancel" CssClass="secondary small " Style="padding: 0px 10px;
                            height: 20px !important; line-height: 20px !important;" runat="server" Text="Cancel"></asp:LinkButton>--%>
                    </span>
                </div>
                <div class="clear">
                </div>
                <table class="index brdr radius mrgnTp4 pdng2 grid" cellspacing="0" cellpadding="5"
                    id="gvIndividualMainGrid" style="color: #333333; width: 100%; border-collapse: collapse; table-layout: initial; letter-spacing: normal; word-break: break-all;">
                    <tbody>
                        <tr>
                            <th scope="col">Certificate #
                            </th>
                            <th scope="col">Last Name
                            </th>
                            <th scope="col">First Name
                            </th>
                        </tr>
                        <tr>
                            <td>CAMTC.0042
                            </td>
                            <td>Blachly
                            </td>
                            <td>Nancy
                            </td>
                        </tr>
                        <tr>
                            <td>CAMTC.0043
                            </td>
                            <td>Hook
                            </td>
                            <td>David
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="fltrt email" style="border-top: 1px solid #ddd;">
                <table style="margin: 0 auto; width: 100%;">
                    <tr class="row">
                        <td>
                            <table>
                                <tr>
                                    <td align="right" style="width: 62px;">
                                        <label class="input-label bold">
                                            Date :</label>
                                    </td>
                                    <td>01/02/2015
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label bold">
                                            From :</label>
                                    </td>
                                    <td>john@example.com
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label bold">
                                            Subject :</label>
                                    </td>
                                    <td class="overflow-wrap">
                                        <div>
                                            Certificate Application Requested
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label bold">
                                            Content :</label>
                                    </td>
                                    <td class="overflow-wrap">
                                        <div>
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                            incididunt ut labore et dolore magna aliqua.
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr class="alternate-row">
                        <td>
                            <table>
                                <tr>
                                    <td align="right" style="width: 62px;">
                                        <label class="input-label bold">
                                            Date :</label>
                                    </td>
                                    <td>11/12/2014
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label bold">
                                            From :</label>
                                    </td>
                                    <td>will@example.com
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label bold">
                                            Subject :</label>
                                    </td>
                                    <td class="overflow-wrap">
                                        <div>
                                            Certificate Application Requested
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label bold">
                                            Content :</label>
                                    </td>
                                    <td class="overflow-wrap">
                                        <div>
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                            incididunt ut labore et dolore magna aliqua.
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr class="row">
                        <td>
                            <table>
                                <tr>
                                    <td align="right" style="width: 62px;">
                                        <label class="input-label bold">
                                            Date :</label>
                                    </td>
                                    <td>08/23/2015
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label bold">
                                            From :</label>
                                    </td>
                                    <td>james@example.com
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label bold">
                                            Subject :</label>
                                    </td>
                                    <td class="overflow-wrap">
                                        <div>
                                            Certificate Application Requested
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label bold">
                                            Content :</label>
                                    </td>
                                    <td class="overflow-wrap">
                                        <div>
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                            incididunt ut labore et dolore magna aliqua.
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
