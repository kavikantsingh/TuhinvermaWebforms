<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucFinancial.ascx.cs"
    Inherits="NVBMT_WebProject.Modules.IndiVidual.ucFinancial" %>
<div id="divAddPanelAddress" runat="server" class="brdr radius pdng2">
    <div class="clear textBoxAlign">


        
        <div id="ContentPlaceHolder1_TabContainer1_tbpnlFinancial_ucFinancial1_pnlUnpaidInvoiceGridSection">
            <div class="clear textBoxAlign" style="">
                <div>
                   <%-- <table style="width: 55%;">
                        <tr>
                            <td align="right">
                                <label class="input-label">Name on Check if different :</label></td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                        </tr>
                    </table>--%>
                    <div class="blockheader" style="margin: 0px 0px -3px auto;">
                        <p style="padding-top: 7px;">
                            <span>Unpaid </span>
                        </p>
                    </div>
                </div>
                <div id="ContentPlaceHolder1_TabContainer1_tbpnlFinancial_ucFinancial1_pnlUnpaidHeader">

                    <table class="index grid" style="line-height: 25px; table-layout: fixed;">
                        <tbody>
                            <tr>
                                <th class="aligncenter" style="width: 200px;">Fee Type
                                </th>
                                <th class="aligncenter">Amount
                                </th>
                                <th class="aligncenter" style="width: 115px;">Amount Updated
                                </th>
                                <th class="aligncenter">Paid
                                </th>
                                <th style="width: 130px;">Action
                                </th>
                            </tr>
                        </tbody>
                    </table>

                </div>
            </div>
            <div style="height: 150px; overflow-x: hidden; overflow-y: scroll;">
                <div>
                    <table class="index brdr radius mrgnTp4 pdng2 grid" cellspacing="0" cellpadding="5" id="gvUnpaidFinancial" style="color: #333333; width: 100%; border-collapse: collapse;">
                        <tbody>
                            <tr class="bordrbtm gridrow">
                                <td class="aligncenter">License Certification Fee
                        <div>
                        </div>
                                </td>
                                <td align="center">$150.00
                                </td>
                                <td align="center">
                                    <input type="text" value="150.00" maxlength="6" id="txtAmount" disabled="disabled" class="aspNetDisabled" style="width: 80px;" autocomplete="off">
                                </td>
                                <td align="center">
                                    <span class="aspNetDisabled">
                                        <input id="chkPaid" type="checkbox" disabled="disabled"></span>
                                </td>
                                <td align="center" valign="middle" style="width: 150px;"></td>
                            </tr>
                            <tr class="bordrbtm gridrow" style="background-color: White;">
                                <td class="aligncenter">License Certification Fee
                        <div>
                        </div>
                                </td>
                                <td align="center">$150.00
                                </td>
                                <td align="center">
                                    <input type="text" value="150.00" maxlength="6" id="txtAmount" disabled="disabled" class="aspNetDisabled" style="width: 80px;" autocomplete="off">
                                </td>
                                <td align="center">
                                    <span class="aspNetDisabled">
                                        <input id="chkPaid" type="checkbox" disabled="disabled"></span>
                                </td>
                                <td align="center" valign="middle" style="width: 150px;"></td>
                            </tr>
                            <tr class="bordrbtm gridrow">
                                <td class="aligncenter">License Certification Fee
                        <div>
                        </div>
                                </td>
                                <td align="center">$150.00
                                </td>
                                <td align="center">
                                    <input type="text" value="150.00" maxlength="6" id="txtAmount" disabled="disabled" class="aspNetDisabled" style="width: 80px;" autocomplete="off">
                                </td>
                                <td align="center">
                                    <span class="aspNetDisabled">
                                        <input id="chkPaid" type="checkbox" disabled="disabled"></span>
                                </td>
                                <td align="center" valign="middle" style="width: 150px;"></td>
                            </tr>
                            <tr class="bordrbtm gridrow" style="background-color: White;">
                                <td class="aligncenter">License Certification Fee
                        <div>
                        </div>
                                </td>
                                <td align="center">$150.00
                                </td>
                                <td align="center">
                                    <input type="text" value="150.00" maxlength="6" id="txtAmount" disabled="disabled" class="aspNetDisabled" style="width: 80px;" autocomplete="off">
                                </td>
                                <td align="center">
                                    <span class="aspNetDisabled">
                                        <input id="chkPaid" type="checkbox" disabled="disabled"></span>
                                </td>
                                <td align="center" valign="middle" style="width: 150px;"></td>
                            </tr>
                            <tr class="bordrbtm gridrow">
                                <td class="aligncenter">License Certification Fee
                        <div>
                        </div>
                                </td>
                                <td align="center">$150.00
                                </td>
                                <td align="center">
                                    <input type="text" value="150.00" maxlength="6" id="txtAmount" disabled="disabled" class="aspNetDisabled" style="width: 80px;" autocomplete="off">
                                </td>
                                <td align="center">
                                    <span class="aspNetDisabled">
                                        <input id="chkPaid" type="checkbox" disabled="disabled"></span>
                                </td>
                                <td align="center" valign="middle" style="width: 150px;"></td>
                            </tr>
                            <tr class="bordrbtm gridrow" style="background-color: White;">
                                <td class="aligncenter">Late Certification Fee
                        <div>
                            (December
                            2011)
                        </div>
                                </td>
                                <td align="center">$25.00
                                </td>
                                <td align="center">
                                    <input type="text" value="25.00" maxlength="6" id="txtAmount" style="width: 80px;" autocomplete="off">
                                </td>
                                <td align="center">
                                    <span class="aspNetDisabled">
                                        <input id="chkPaid" type="checkbox" disabled="disabled"></span>
                                </td>
                                <td align="center" valign="middle" style="width: 150px;">
                                    <a id="lnkUpdatebtn" class="buttonGreen small bottom" invoiceno="" rowindex="5" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$TabContainer1$tbpnlFinancial$ucFinancial1$gvUnpaidFinancial$ctl07$lnkUpdatebtn','')">Update</a>
                                </td>
                            </tr>
                            <tr class="bordrbtm gridrow">
                                <td class="aligncenter">Late Certification Fee
                        <div>
                            (January
                            2012)
                        </div>
                                </td>
                                <td align="center">$25.00
                                </td>
                                <td align="center">
                                    <input type="text" value="25.00" maxlength="6" id="txtAmount" style="width: 80px;" autocomplete="off">
                                </td>
                                <td align="center">
                                    <span class="aspNetDisabled">
                                        <input id="chkPaid" type="checkbox" disabled="disabled"></span>
                                </td>
                                <td align="center" valign="middle" style="width: 150px;">
                                    <a id="lnkUpdatebtn" class="buttonGreen small bottom" invoiceno="" rowindex="6" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$TabContainer1$tbpnlFinancial$ucFinancial1$gvUnpaidFinancial$ctl08$lnkUpdatebtn','')">Update</a>
                                </td>
                            </tr>
                            <tr class="bordrbtm gridrow" style="background-color: White;">
                                <td class="aligncenter">Late Certification Fee
                        <div>
                            (February
                            2012)
                        </div>
                                </td>
                                <td align="center">$25.00
                                </td>
                                <td align="center">
                                    <input type="text" value="25.00" maxlength="6" id="txtAmount" style="width: 80px;" autocomplete="off">
                                </td>
                                <td align="center">
                                    <span class="aspNetDisabled">
                                        <input id="chkPaid" type="checkbox" disabled="disabled"></span>
                                </td>
                                <td align="center" valign="middle" style="width: 150px;">
                                    <a id="lnkUpdatebtn" class="buttonGreen small bottom" invoiceno="" rowindex="7" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$TabContainer1$tbpnlFinancial$ucFinancial1$gvUnpaidFinancial$ctl09$lnkUpdatebtn','')">Update</a>
                                </td>
                            </tr>
                            <tr class="bordrbtm gridrow">
                                <td class="aligncenter">Late Certification Fee
                        <div>
                            (March
                            2012)
                        </div>
                                </td>
                                <td align="center">$25.00
                                </td>
                                <td align="center">
                                    <input type="text" value="25.00" maxlength="6" id="txtAmount" style="width: 80px;" autocomplete="off">
                                </td>
                                <td align="center">
                                    <span class="aspNetDisabled">
                                        <input id="chkPaid" type="checkbox" disabled="disabled"></span>
                                </td>
                                <td align="center" valign="middle" style="width: 150px;">
                                    <a id="lnkUpdatebtn" class="buttonGreen small bottom" invoiceno="" rowindex="8" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$TabContainer1$tbpnlFinancial$ucFinancial1$gvUnpaidFinancial$ctl10$lnkUpdatebtn','')">Update</a>
                                </td>
                            </tr>
                            <tr class="bordrbtm gridrow" style="background-color: White;">
                                <td class="aligncenter">Late Certification Fee
                        <div>
                            (April
                            2012)
                        </div>
                                </td>
                                <td align="center">$25.00
                                </td>
                                <td align="center">
                                    <input type="text" value="25.00" maxlength="6" id="txtAmount" style="width: 80px;" autocomplete="off">
                                </td>
                                <td align="center">
                                    <span class="aspNetDisabled">
                                        <input id="chkPaid" type="checkbox" disabled="disabled"></span>
                                </td>
                                <td align="center" valign="middle" style="width: 150px;">
                                    <a id="lnkUpdatebtn" class="buttonGreen small bottom" invoiceno="" rowindex="9" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$TabContainer1$tbpnlFinancial$ucFinancial1$gvUnpaidFinancial$ctl11$lnkUpdatebtn','')">Update</a>
                                </td>
                            </tr>
                            <tr class="bordrbtm gridrow">
                                <td class="aligncenter">Late Certification Fee
                        <div>
                            (May
                            2012)
                        </div>
                                </td>
                                <td align="center">$25.00
                                </td>
                                <td align="center">
                                    <input type="text" value="25.00" maxlength="6" id="txtAmount" style="width: 80px;" autocomplete="off">
                                </td>
                                <td align="center">
                                    <span class="aspNetDisabled">
                                        <input id="chkPaid" type="checkbox" disabled="disabled"></span>
                                </td>
                                <td align="center" valign="middle" style="width: 150px;">
                                    <a id="lnkUpdatebtn" class="buttonGreen small bottom" invoiceno="" rowindex="10" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$TabContainer1$tbpnlFinancial$ucFinancial1$gvUnpaidFinancial$ctl12$lnkUpdatebtn','')">Update</a>
                                </td>
                            </tr>
                            <tr class="bordrbtm gridrow" style="background-color: White;">
                                <td class="aligncenter">Late Certification Fee
                        <div>
                            (June
                            2012)
                        </div>
                                </td>
                                <td align="center">$25.00
                                </td>
                                <td align="center">
                                    <input type="text" value="25.00" maxlength="6" id="txtAmount" style="width: 80px;" autocomplete="off">
                                </td>
                                <td align="center">
                                    <span class="aspNetDisabled">
                                        <input id="chkPaid" type="checkbox" disabled="disabled"></span>
                                </td>
                                <td align="center" valign="middle" style="width: 150px;">
                                    <a id="lnkUpdatebtn" class="buttonGreen small bottom" invoiceno="" rowindex="11" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$TabContainer1$tbpnlFinancial$ucFinancial1$gvUnpaidFinancial$ctl13$lnkUpdatebtn','')">Update</a>
                                </td>
                            </tr>
                            <tr class="bordrbtm gridrow">
                                <td class="aligncenter">Late Certification Fee
                        <div>
                            (July
                            2012)
                        </div>
                                </td>
                                <td align="center">$25.00
                                </td>
                                <td align="center">
                                    <input type="text" value="25.00" maxlength="6" id="txtAmount" style="width: 80px;" autocomplete="off">
                                </td>
                                <td align="center">
                                    <span class="aspNetDisabled">
                                        <input id="chkPaid" type="checkbox" disabled="disabled"></span>
                                </td>
                                <td align="center" valign="middle" style="width: 150px;">
                                    <a id="lnkUpdatebtn" class="buttonGreen small bottom" invoiceno="" rowindex="12" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$TabContainer1$tbpnlFinancial$ucFinancial1$gvUnpaidFinancial$ctl14$lnkUpdatebtn','')">Update</a>
                                </td>
                            </tr>
                            <tr class="bordrbtm gridrow" style="background-color: White;">
                                <td class="aligncenter">Late Certification Fee
                        <div>
                            (August
                            2012)
                        </div>
                                </td>
                                <td align="center">$25.00
                                </td>
                                <td align="center">
                                    <input type="text" value="25.00" maxlength="6" id="txtAmount" style="width: 80px;" autocomplete="off">
                                </td>
                                <td align="center">
                                    <span class="aspNetDisabled">
                                        <input id="chkPaid" type="checkbox" disabled="disabled"></span>
                                </td>
                                <td align="center" valign="middle" style="width: 150px;">
                                    <a id="lnkUpdatebtn" class="buttonGreen small bottom" invoiceno="" rowindex="13" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$TabContainer1$tbpnlFinancial$ucFinancial1$gvUnpaidFinancial$ctl15$lnkUpdatebtn','')">Update</a>
                                </td>
                            </tr>
                            <tr class="bordrbtm gridrow">
                                <td class="aligncenter">Late Certification Fee
                        <div>
                            (September
                            2012)
                        </div>
                                </td>
                                <td align="center">$25.00
                                </td>
                                <td align="center">
                                    <input type="text" value="25.00" maxlength="6" id="txtAmount" style="width: 80px;" autocomplete="off">
                                </td>
                                <td align="center">
                                    <span class="aspNetDisabled">
                                        <input id="chkPaid" type="checkbox" disabled="disabled"></span>
                                </td>
                                <td align="center" valign="middle" style="width: 150px;">
                                    <a id="lnkUpdatebtn" class="buttonGreen small bottom" invoiceno="" rowindex="14" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$TabContainer1$tbpnlFinancial$ucFinancial1$gvUnpaidFinancial$ctl16$lnkUpdatebtn','')">Update</a>
                                </td>
                            </tr>
                            <tr class="bordrbtm gridrow" style="background-color: White;">
                                <td class="aligncenter">Late Certification Fee
                        <div>
                            (October
                            2012)
                        </div>
                                </td>
                                <td align="center">$25.00
                                </td>
                                <td align="center">
                                    <input type="text" value="25.00" maxlength="6" id="txtAmount" style="width: 80px;" autocomplete="off">
                                </td>
                                <td align="center">
                                    <span class="aspNetDisabled">
                                        <input id="chkPaid" type="checkbox" disabled="disabled"></span>
                                </td>
                                <td align="center" valign="middle" style="width: 150px;">
                                    <a id="lnkUpdatebtn" class="buttonGreen small bottom" invoiceno="" rowindex="15" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$TabContainer1$tbpnlFinancial$ucFinancial1$gvUnpaidFinancial$ctl17$lnkUpdatebtn','')">Update</a>
                                </td>
                            </tr>
                            <tr class="bordrbtm gridrow">
                                <td class="aligncenter">Late Certification Fee
                        <div>
                            (November
                            2012)
                        </div>
                                </td>
                                <td align="center">$25.00
                                </td>
                                <td align="center">
                                    <input type="text" value="25.00" maxlength="6" id="txtAmount" style="width: 80px;" autocomplete="off">
                                </td>
                                <td align="center">
                                    <span class="aspNetDisabled">
                                        <input id="chkPaid" type="checkbox" disabled="disabled"></span>
                                </td>
                                <td align="center" valign="middle" style="width: 150px;">
                                    <a id="lnkUpdatebtn" class="buttonGreen small bottom" invoiceno="" rowindex="16" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$TabContainer1$tbpnlFinancial$ucFinancial1$gvUnpaidFinancial$ctl18$lnkUpdatebtn','')">Update</a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="blockheader" style="margin-top: 0px;">
                <table id="ContentPlaceHolder1_TabContainer1_tbpnlFinancial_ucFinancial1_tblTotal" style="width: 100%;">
                    <tbody>
                        <tr>
                            <th style="width: 222px; text-align: center;">Total
                            </th>
                            <th style="width: 80px; text-align: right;">$1,050.00
                            </th>
                            <th></th>
                            <th></th>
                            <th style="text-align: right; padding-right: 43px;">
                                <asp:Button ID="makepaymentbtn" onclick="makepaymentbtn_Click" runat="server" CssClass="buttonGreen small" Text="Make Payment" /></th>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>
        <div id="pnlPaymentSection" runat="server" visible="false">
            <div style="border: 1px solid #d4d8db; margin-top: 10px;">
        <div class="blockheader" style="margin: 0px 0px -3px auto;">
            <p style="padding-top: 7px;">
                <span>Payment Section </span>
            </p>
        </div>
        <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
            <tbody><tr>
                <td align="right">
                <label class="input-label required">
                    Amount Paid :</label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="TextBox1" CssClass="OnlyNumeric" runat="server"></asp:TextBox>
            </td>

            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">
                        Payment Method :</label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlpayment"  OnSelectedIndexChanged="ddlpayment_SelectedIndexChanged" AutoPostBack="true" Width="144px" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Check</asp:ListItem>
                        <asp:ListItem>Moeny Order</asp:ListItem>
                        <asp:ListItem>Credit Card</asp:ListItem>
                    </asp:DropDownList>
                </td>

            </tr>

                <tr runat="server" id="dvchek" visible="false">
                    <td align="right">
                    <label class="input-label">
                        Name on Check if different :</label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                </tr>
           
        </tbody></table>
                <div id="ContentPlaceHolder1_TabContainer1_tbpnlVerification_ucVerification_DivbtnHistory" class="buttons iefix-5 inline">
        <div class="toolBar" style="padding: 4px;">
            <span class="fltlft" style="float:right;">
                
                <input name="ctl00$ContentPlaceHolder1$TabContainer1$tbpnlVerification$ucVerification$btnAddressUpdate" value="Save"  id="ContentPlaceHolder1_TabContainer1_tbpnlVerification_ucVerification_btnAddressUpdate" class="buttonGreen medium" type="submit">
                <asp:Button ID="pnlPaymentSectionClose" runat="server" CssClass="secondary medium bottom" onclick="pnlPaymentSectionClose_Click" Text="Cancel" />
                

            </span>
        </div>
    </div>
    </div>
        </div>
    </div>
    <div class="clear textBoxAlign">
        <div>
            <div class="blockheader" style="margin: 15px 0px -3px auto;">
                <p style="padding-top: 7px;">
                    <span>Paid </span>
                </p>
            </div>
        </div>
    </div>
    <div>
        <div>
            <table class="index brdr radius mrgnTp4 pdng2 grid" cellspacing="0" cellpadding="5" id="gvFinancial" style="color: #333333; width: 100%; border-collapse: collapse;">
                <tbody>
                    <tr>
                        <th scope="col">Date</th>
                        <th class="aligncenter pdgopx" scope="col">Invoice #</th>
                        <th class="aligncenter pdgopx" scope="col">Application</th>
                        <th class="aligncenter pdgopx" scope="col">Fee(s)</th>
                        <th class="aligncenter pdgopx" scope="col">Amount Paid</th>
                        <th class="aligncenter pdgopx" scope="col">Status</th>
                        <th class="aligncenter pdgopx" scope="col">Action</th>
                    </tr>
                    <tr id="rowInEdit" runat="server" visible="false" class="RowInEditMode">
                        <td class="InEditModetd" colspan="7">
                            <div>
                                <div class="toolBar">
                                    <table style="width: 100%; table-layout: fixed;">
                                        <tbody>
                                            <tr>
                                                <td style="width: 75px;">
                                                    <b>09/18/2015</b>
                                                </td>
                                                <td style="width: 55px;">
                                                    <b>MT54914</b>
                                                </td>
                                                <td style="width: 118px; text-align: center;">
                                                    <b>Certification Application</b>
                                                </td>
                                                <td style="width: 64px;">
                                                    <b>$650.00</b>
                                                </td>
                                                <td style="width: 37px;">
                                                    <b>$650.00</b>
                                                </td>
                                                <td style="width: 168px; text-align: center;">
                                                    <b>Paid</b>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <table class="pdng12 " style="margin: 0 auto; width: 650px; line-height: 22px; margin-top: 15px; margin-bottom: 15px;">
                                    <tbody>
                                        <tr>
                                            <td style="text-align: right; width: 155px;">Application Name :
                                            </td>
                                            <td>
                                                <b>Certification Application</b>
                                            </td>
                                            <td style="text-align: right;">Application No :
                                            </td>
                                            <td style="width: 155px;">
                                                <b>MI150810025233</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; width: 155px;">Invoice # :
                                            </td>
                                            <td colspan="3">
                                                <b>MT54914</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right;">Transaction Date :
                                            </td>
                                            <td>
                                                <b>9/18/2015</b>
                                            </td>
                                            <td style="text-align: right;">Transaction Time :
                                            </td>
                                            <td>
                                                <b>1:37 AM</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right;">Application Fees :
                                            </td>
                                            <td>
                                                <b>$650.00</b>
                                            </td>
                                            <td style="text-align: right;">Payment Mode :
                                            </td>
                                            <td style="text-align: left;">
                                                <b>Credit Card</b>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="clear">
                                </div>
                                <hr>
                                <div id="pnlFeeDetail">

                                    <div class="blockheader">
                                        <p style="padding-top: 7px;">
                                            <span>Fee Detail(s) </span>
                                        </p>
                                    </div>
                                    <div>
                                        <table width="90%" style="margin: 0 auto" id="FeeDetail">

                                            <tbody>
                                                <tr>
                                                    <th style="height: 20px; padding-left: 6px;">Description
                                                    </th>
                                                    <th style="width: 150px">Fee Type
                                                    </th>
                                                    <th style="text-align: right !important; padding-right: 6px;">Fee
                                                    </th>
                                                    <th style="text-align: center !important; display: none">Paid?
                                                    </th>
                                                    <th style="text-align: center !important; padding-right: 6px; display: none">Update
                                                    </th>
                                                </tr>

                                                <tr>
                                                    <td valign="top">Certification period from 4/1/2010 To 4/30/2011
                                                    </td>
                                                    <td colspan="2">
                                                        <table width="100%">
                                                            <input type="hidden" name="ctl00$ContentPlaceHolder1$TabContainer1$tbpnlFinancial$ucFinancial1$gvFinancial$ctl02$rptFeeDetail$ctl01$hidCertificationID" id="hidCertificationID" value="98330">
                                                            <input type="hidden" name="ctl00$ContentPlaceHolder1$TabContainer1$tbpnlFinancial$ucFinancial1$gvFinancial$ctl02$rptFeeDetail$ctl01$hidInvoiceNumber" id="hidInvoiceNumber" value="MT54914">

                                                            <input type="hidden" name="ctl00$ContentPlaceHolder1$TabContainer1$tbpnlFinancial$ucFinancial1$gvFinancial$ctl02$rptFeeDetail$ctl01$rptChild$ctl00$hidFeesId" id="hidFeesId" value="0">
                                                            <tbody>
                                                                <tr>
                                                                    <td style="width: 150px">Certification Fee
                                                                    </td>
                                                                    <td align="right" style="text-align: right !important">$150.00
                                                                    </td>
                                                                    <td align="center" style="display: none">
                                                                        <input id="chkPaid" type="checkbox" name="ctl00$ContentPlaceHolder1$TabContainer1$tbpnlFinancial$ucFinancial1$gvFinancial$ctl02$rptFeeDetail$ctl01$rptChild$ctl00$chkPaid">
                                                                    </td>
                                                                    <td align="right" style="text-align: right !important; display: none">
                                                                        <input type="text" value="150.00" id="txtAmount" feeid="0" style="width: 40px;" autocomplete="off">
                                                                    </td>
                                                                </tr>

                                                                <input type="hidden" name="ctl00$ContentPlaceHolder1$TabContainer1$tbpnlFinancial$ucFinancial1$gvFinancial$ctl02$rptFeeDetail$ctl01$rptChild$ctl01$hidFeesId" id="hidFeesId" value="0">
                                                                <tr>
                                                                    <td style="width: 150px">Late Fee
                                                                    </td>
                                                                    <td align="right" style="text-align: right !important">$500.00
                                                                    </td>
                                                                    <td align="center" style="display: none">
                                                                        <input id="chkPaid" type="checkbox" name="ctl00$ContentPlaceHolder1$TabContainer1$tbpnlFinancial$ucFinancial1$gvFinancial$ctl02$rptFeeDetail$ctl01$rptChild$ctl01$chkPaid">
                                                                    </td>
                                                                    <td align="right" style="text-align: right !important; display: none">
                                                                        <input type="text" value="500.00" id="txtAmount" feeid="0" style="width: 40px;" autocomplete="off">
                                                                    </td>
                                                                </tr>

                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>

                                                <tr style="border-top: 1px solid #ddd; font-weight: bold;">
                                                    <td></td>
                                                    <td style="padding-left: 8px;">Total
                                                    </td>
                                                    <td align="right">$650.00
                                                    </td>

                                                </tr>

                                            </tbody>
                                        </table>
                                        <table width="90%" style="margin: 0 auto" id="tbleOtherFeeDetails">
                                        </table>
                                    </div>

                                </div>
                                <div class="toolBar" style="padding: 10px; margin: 10px;">
                                    <span class="fltrt">
                                        <asp:LinkButton ID="lnkClosebtn" CssClass="secondary medium bottom" runat="server" OnClick="btnClose_Click">Close</asp:LinkButton>
                                    </span>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr id="rowGrid" runat="server" class="bordrbtm gridrow">
                        <td class="InEditModetd">9/18/2015
                        </td>
                        <td class="aligncenter">MT54914
                        </td>
                        <td class="aligncenter">Certification Application
                        </td>
                        <td align="center">$650.00
                        </td>
                        <td align="center">$650.00
                        </td>
                        <td align="center">Paid
                        </td>
                        <td align="center" valign="middle" style="width: 150px;">
                            <asp:LinkButton ID="LinkButton1" Style="padding: 3px 8px 2px;" CssClass="secondary small" runat="server" OnClick="btnView_Click">View</asp:LinkButton>
                            <a class="hyperlink" href="../../../App_Themes/Theme1/images/Chrysanthemum.jpg" target="_blank">Print </a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div>
        <div style="margin-top: 10px; margin-bottom: 10px; width: 100%;">
          
            <div>
                <table style="width:100%;">
                    <tr>
                        <td align="right">
                            <a href="javascript:void(0)" class="buttonGreen medium">Find Check or CC Number</a>
                        </td>
                    </tr>
                    
                </table>
            </div>
        </div>
    </div>
    <div class="buttons iefix-5 inline" runat="server" id="DivbtnHistory">
        <div class="toolBar" style="padding: 4px;">
            <span class="fltlft" style="float: right;">
               <%-- <asp:Button ID="btnShowHistory" CssClass="buttonGreen medium" runat="server" Text="Show History"
                    OnClick="btnShowHistory_Click" />
                <asp:LinkButton runat="server" Enabled="false" ToolTip="Previous" CssClass="link-next-prev btn-info btn-sm"
                    ID="lnkPrev"><<</asp:LinkButton>
                <asp:LinkButton runat="server" Enabled="false" ToolTip="Next" CssClass="link-next-prev btn-info btn-sm"
                    ID="lnkNext">>></asp:LinkButton>
                <asp:Button ID="btnShowCurrent" Enabled="false" CssClass="buttonGreen medium" runat="server"
                    Text="Show Current" OnClick="btnShowCurrent_Click" />
            </span><span class="fltrt">--%>
                <asp:Button ID="btnAddressUpdate" ValidationGroup="VGAddress" CssClass="buttonGreen medium"
                    runat="server" Text="Save" CausesValidation="true" />
                <asp:LinkButton ID="lnkAddressCancel" CssClass="secondary medium bottom" runat="server">Cancel</asp:LinkButton></span>
        </div>
    </div>
</div>
