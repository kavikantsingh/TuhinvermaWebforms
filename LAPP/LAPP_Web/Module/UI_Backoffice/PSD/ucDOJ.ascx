<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDOJ.ascx.cs" Inherits="Module_UI_Backoffice_PSD_ucDOJ" %>
<style>

    .histdiv {
    border: 1px solid #DDD;
    padding: 10px 0px !important;
    margin-top: 10px;
}
</style>
<div id="pnlBgcBlock" runat="server" style="width: 700px; margin: 0 auto;">
                                        <div id="pnlAddnewButtonBGC" runat="server" visible="true" style="height: 22px; padding: 10px; margin-top: 14px;">
                                            <span style="float: right; margin-right: -10px;">
                                                <asp:Button ID="btnAddnewBGC" runat="server" CssClass="buttonGreen small" OnClick="btnAddnewBGC_Click"
                                                    Text="Add New" /></span>
                                        </div>
                                        <div id="pnlAddnewBGC" runat="server" visible="false" style="border: 1px solid #DDD; margin-top: 14px;">
                                            <table class="tblAssign form-table" style="margin: 20px auto; width: 90%">
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label required">
                                                            DOJ Fingerprint Status :</label>
                                                    </td>
                                                    <td>
                                                        <select name="ctl00$ctl00$ContentPlaceHolder1$MidContent$ucTransferApplication1$gvTransferApplication$ctl03$ddlStatusBgc"
                                                            id="ddlStatusBgc" style="width: 142px;" autocomplete="off">
                                                            <option value="-1">Select</option>
                                                            <option value="84">Pass</option>
                                                            <option value="85">Hit</option>
                                                            <option value="86">Rejection</option>
                                                        </select>
                                                    </td>

                                                    <%-- <td align="right" style="width: 150px;">
                                                        <label class="input-label">
                                                        State Date :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtStateDate" runat="server" CssClass="inputTextbox calender calendarMask"
                                                            placeholder="MM/DD/YYYY" MaxLength="150"></asp:TextBox>
                                                    </td>--%>
                                                    <td align="right">
                                                        <label class="input-label">
                                                            DOJ Fingerprints Date :</label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TextBox1" placeholder="MM/DD/YYYY" CssClass="inputTextbox calender calendarMask"
                                                            runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label required">
                                                            FBI Fingerprint Status :</label>
                                                    </td>
                                                    <td>
                                                        <select name="ctl00$ctl00$ContentPlaceHolder1$MidContent$ucTransferApplication1$gvTransferApplication$ctl03$ddlStatusBgc"
                                                            id="ddlStatusBgc" style="width: 142px;" autocomplete="off">
                                                            <option value="-1">Select</option>
                                                            <option value="84">Pass</option>
                                                            <option value="85">Hit</option>
                                                            <option value="86">Delay</option>
                                                            <option value="87">Rejection</option>
                                                        </select>
                                                    </td>
                                                    <%--<td align="right">
                                                        <label class="input-label">
                                                            FBI Date :</label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtFBIDate" placeholder="MM/DD/YYYY" CssClass="inputTextbox calender calendarMask"
                                                            runat="server"></asp:TextBox>
                                                    </td>--%>
                                                    <td align="right">
                                                        <label class="input-label">
                                                            FBI Fingerprints Date :</label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TextBox2" placeholder="MM/DD/YYYY" CssClass="inputTextbox calender calendarMask"
                                                            runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label">
                                                           Charges :</label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCharges1" runat="server"></asp:TextBox>
                                                    </td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>

                                                <tr>
                                                </tr>
                                            </table>
                                            <div class="toolBar" style="padding: 4px; margin: 4px;">
                                                <span class="fltrt">
                                                    <asp:Button ID="btnBCGverify" runat="server" ValidationGroup="VGbgc" CssClass="buttonGreen small"
                                                        OnClick="btnBCGverify_Click" Text="Save" />
                                                    <asp:Button ID="btnBCGverifyCancel" CssClass="secondary small bottom buttonalignmentDefee"
                                                        runat="server" OnClick="btnBCGverifyCancel_Click" Text="Cancel" />
                                                </span>
                                            </div>
                                        </div>
                                        <div class="BGC" style="border: 1px solid #DDD;">
                                            <table class="index grid">
                                                <%----%>
                                                <tr>

                                                    <th>FBI Fingerprint Status
                                                    </th>
                                                    <th>FBI Fingerprints Date
                                                    </th>
                                                    <th>DOJ Fingerprint Status
                                                    </th>
                                                    <th>DOJ Fingerprints Date
                                                    </th>

                                                    <th></th>
                                                </tr>
                                                <tr>

                                                    <td>Pass
                                                    </td>
                                                    <td>09/15/2015
                                                    </td>
                                                    <td>Pass
                                                    </td>
                                                    <td>09/18/2015
                                                    </td>
                                                    <td></td>
                                                </tr>
                                            </table>
                                        </div>

                                        <div id="pnlSubsequentArrestBtn" runat="server" visible="true" style="height: 22px; padding: 10px; margin-top: 14px;">
                                            <span style="float: right; margin-right: -10px;">
                                                <asp:Button ID="Button20" runat="server" CssClass="buttonGreen small" OnClick="btnSubsequentArrest_Click"
                                                    Text="Add Subsequent Arrest" /></span>
                                        </div>
                                        <div id="pblSubsequentArrestAddNew" runat="server" visible="false" style="border: 1px solid #DDD; margin-top: 14px;">
                                            <table class="tblAssign form-table" style="margin: 20px auto;">
                                                <tr>

                                                    <td align="right" style="width: 150px;">
                                                        <label class="input-label">
                                                        Date Received :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtDateReceived" runat="server" CssClass="inputTextbox calender calendarMask"
                                                            placeholder="MM/DD/YYYY" MaxLength="150"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label">
                                                            Charges :</label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCharges" CssClass="inputTextbox"
                                                            runat="server"></asp:TextBox>
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td class="td2 algnrgt"></td>
                                                    <td class="td3">
                                                        <asp:FileUpload ID="FileUpload7" runat="server" />
                                                        <asp:Button ID="btnUploadLicensee" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                                                            Text="Upload" OnClick="btnBindGridCertificateofCompletion_Click" />
                                                    </td>
                                                </tr>
                                            </table>
                                            <div class="toolBar" style="padding: 4px; margin: 4px;">
                                                <span class="fltrt">
                                                    <asp:Button ID="btnCloseSubsequentArrestSave" runat="server" ValidationGroup="VGbgc" CssClass="buttonGreen small"
                                                        OnClick="btnCloseSubsequentArrestSave_Click" Text="Save" />
                                                    <asp:Button ID="btnCloseSubsequentArrest" CssClass="secondary small bottom buttonalignmentDefee"
                                                        runat="server" OnClick="btnCloseSubsequentArrest_Click" Text="Cancel" />
                                                </span>
                                            </div>
                                        </div>
                                        <div class="BGC" style="border: 1px solid #DDD;">
                                            <table class="index grid">
                                                <%----%>
                                                <tr>

                                                    <th>Date Received
                                                    </th>
                                                    <th>Charges
                                                    </th>
                                                    <th style="width: 110px;">Document Link
                                                    </th>

                                                </tr>
                                                <tr>

                                                    <td>09/12/2015
                                                    </td>
                                                    <td>Charge
                                                    </td>

                                                    <td style="width: 110px;">
                                                        <asp:LinkButton ID="LinkButton2" runat="server">Document Detail</asp:LinkButton>
                                                    </td>

                                                </tr>
                                            </table>
                                        </div>

                                    </div>
<div style="width:98%; margin-left:12px;">
    <div class="blockheader" style="margin: 15px 0px -3px auto;">
                        <p style="padding-top: 7px;">
                            <span>History</span>
                        </p>
                    </div>
<table class="tblApplReqForm5" style="margin: 0px auto; width: 100%; margin-top: 15px;">
                                                        <tr>

                                                            <td style="width: 550px; padding-left: 0px; line-height: 20px; text-align: justify;">Have you ever received an administrative or civil citation related to the practice of massage therapy or a massage therapy
business, or any other profession, or been denied or refused the renewal of a license, permit, certificate, or other authorization
to practice massage therapy or related to a massage therapy or school business or any other profession in any city, county,
state, country or jurisdiction?

                                                            </td>
                                                            <td></td>
                                                            <td align="left" class="cursorpointer" style="width: 110px;">
                                                                <asp:RadioButtonList ID="rblADQ1" OnSelectedIndexChanged="rblADQ1_SelectedIndexChanged" AutoPostBack="true"
                                                                    runat="server" RepeatDirection="Horizontal">
                                                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                                                    <asp:ListItem Value="0">No</asp:ListItem>
                                                                </asp:RadioButtonList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3">
                                                                <div id="dvADQ1" runat="server" visible="false">
                                                                    <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion27');" class="hyperlink">Please read the Instructions</a>
                                                                    <asp:TextBox ID="TextBox41" CssClass="txtQestion27" TextMode="MultiLine" Style="width: 690px; line-height: 18px; height: 60px; margin-top:10px;"
                                                                        runat="server"></asp:TextBox>
                                                                    <div class="histdiv">
                                                                        <table class="tblApplReqForm5" style="width: 100%;">
                                                                            <tr>
                                                                                <td align="right">
                                                                                    <label class="input-label">Document Name :</label></td>
                                                                                <td>
                                                                                    <asp:TextBox ID="TextBox42" runat="server"></asp:TextBox></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="txtalgnrgt" style="text-align:right;">
                                                                                    <label class="input-label required">
                                                                                        Document :
                                                                                    </label>
                                                                                </td>
                                                                                <td>
                                                                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                                                                </td>
                                                                                <td></td>
                                                                                <td align="center">
                                                                                    <span class="fltlft">
                                                                                        <asp:Button ID="Button14" CssClass="buttonGreen small" runat="server" Text="Upload Document" /></span>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                        <div id="div4" runat="server">
                                                                            <table class="index pdgnone brdr  grid" id="Table1" style="color: #333333; width: 90%; margin: 10px auto; border-collapse: collapse;"
                                                                                cellpadding="5" cellspacing="0">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <th scope="col">Document Name
                                                                                        </th>

                                                                                        <th scope="col">Date
                                                                                        </th>
                                                                                        <th scope="col">Link
                                                                                        </th>
                                                                                        <th scope="col">Action</th>
                                                                                    </tr>
                                                                                    <tr class="bordrbtm gridrow">
                                                                                        <td class="InEditModetd">Driver's License
                                                                                        </td>

                                                                                        <td>01/01/2015
                                                                                        </td>
                                                                                        <td>
                                                                                            <a class="hyperlink" target="_blank" href="../../App_Themes/Public/images/Chrysanthemum.jpg">Document Details </a>
                                                                                        </td>
                                                                                        <td>
                                                                                            <span>
                                                                                                <input id="Image1" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"
                                                                                                    type="image"></span>
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
<table class="tblApplReqForm5" style="margin-top: 15px; width: 100%">
                                                        <tr>

                                                            <td style="padding-left: 0px; line-height: 20px; text-align: justify; width: 550px;">Have you ever had a license, certificate, certification of registration, permit, or other authorization for a massage therapy
business or to practice massage therapy, or for any other profession, revoked, suspended, or otherwise acted against
(including administrative citation, civil citation, municipal code violation, probation, fine, reprimand, settlement, or surrender of a
license, permit, certificate, or other authorization)?

                                                            </td>
                                                            <td></td>
                                                            <td align="left" class="cursorpointer" style="width: 110px;">
                                                                <asp:RadioButtonList ID="rblADQ2" OnSelectedIndexChanged="rblADQ2_SelectedIndexChanged" AutoPostBack="true"
                                                                    runat="server" RepeatDirection="Horizontal">
                                                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                                                    <asp:ListItem Value="0">No</asp:ListItem>
                                                                </asp:RadioButtonList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3">
                                                                <div id="dvADQ2" runat="server" visible="false">
                                                                    <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion28');" class="hyperlink">Please read the Instructions</a>
                                                                    <asp:TextBox ID="TextBox46" CssClass="txtQestion28" TextMode="MultiLine" Style="width: 690px; line-height: 18px; height: 60px; margin-top:10px;"
                                                                        runat="server"></asp:TextBox>
                                                                    <div class="histdiv">
                                                                        <table class="tblApplReqForm5" style="width: 100%;">
                                                                            <tr>
                                                                                <td align="right">
                                                                                    <label class="input-label">Document Name :</label></td>
                                                                                <td>
                                                                                    <asp:TextBox ID="TextBox47" runat="server"></asp:TextBox></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="txtalgnrgt" style="text-align:right;">
                                                                                    <label class="input-label required">
                                                                                        Document :
                                                                                    </label>
                                                                                </td>
                                                                                <td>
                                                                                    <asp:FileUpload ID="FileUpload8" runat="server" />
                                                                                </td>
                                                                                <td></td>
                                                                                <td align="center">
                                                                                    <%-- <span class="fltlft">
                                                                                            <asp:Button ID="Button15" CssClass="buttonGreen small" runat="server" Text="Upload Document"
                                                                                                OnClick="btnAddHist2_Click" />
                                                                                        </span>--%>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                        <div id="div6" runat="server">
                                                                            <table class="index pdgnone brdr  grid" id="Table2" style="color: #333333; width: 90%; margin: 10px auto; border-collapse: collapse;"
                                                                                cellpadding="5" cellspacing="0">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <th scope="col">Document Name
                                                                                        </th>

                                                                                        <th scope="col">Date
                                                                                        </th>
                                                                                        <th scope="col">Link
                                                                                        </th>
                                                                                        <th scope="col">Action</th>
                                                                                    </tr>
                                                                                    <tr class="bordrbtm gridrow">
                                                                                        <td class="InEditModetd">Driver's License
                                                                                        </td>

                                                                                        <td>01/01/2015
                                                                                        </td>
                                                                                        <td>
                                                                                            <a class="hyperlink" target="_blank" href="../../App_Themes/Public/images/Chrysanthemum.jpg">Document Details </a>
                                                                                        </td>
                                                                                        <td>
                                                                                            <span>
                                                                                                <input id="Image2" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"
                                                                                                    type="image"></span>
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
    </div>