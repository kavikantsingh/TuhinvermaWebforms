<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucPayment.ascx.cs" Inherits="ucPayment" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%--<asp:UpdatePanel ID="upPanel" runat="server">
    <ContentTemplate>--%>
<script>
    function RemoveElement(e) {
        $(e).remove();
    }
</script>
<style>
    .divDotnet {
        text-align: center;
        margin: 0;
        padding: 0;
        width: 106px;
        font: normal 9px arial,helvetica,san-serif;
        line-height: 10px;
    }

    .watermarktext {
        color: #ddd;
    }

    .chkColr {
        color: rgb(58, 85, 228);
    }

    .cancelLinkButton {
        color: #565E67;
        border: 1px solid #A3A6A8;
        background-color: #D4D8DB;
        background-image: -webkit-gradient(linear, left top, left bottom, from(#E7EBEE), to(#D4D8DB));
        background-image: -webkit-linear-gradient(top, #E7EBEE, #D4D8DB);
        background-image: -moz-linear-gradient(top, #E7EBEE, #D4D8DB);
        background-image: -ms-linear-gradient(top, #E7EBEE, #D4D8DB);
        background-image: -o-linear-gradient(top, #E7EBEE, #D4D8DB);
        background-image: linear-gradient(top, #E7EBEE, #D4D8DB);
        text-shadow: 0px 1px 0px white;
        display: inline-block;
        padding: 8px 15px;
        margin: 0;
        font: normal normal bold 14px/14px Arial, sans-serif;
        -moz-border-radius: 6px;
        -webkit-border-radius: 6px;
        border-radius: 6px;
        -moz-background-clip: padding;
        -webkit-background-clip: padding-box;
        background-clip: padding-box;
        text-decoration: none;
        -webkit-user-select: none;
        -khtml-user-select: none;
        -o-user-select: none;
        user-select: none;
        -webkit-box-shadow: inset 0px 1px 0px rgba(255, 255, 255, 0.3), inset 0px 0px 0px 1px rgba(255, 255, 255, 0.1), 0px 1px 0px rgba(255, 255, 255, .7);
        box-shadow: inset 0px 1px 0px rgba(255, 255, 255, 0.3), inset 0px 0px 0px 1px rgba(255, 255, 255, 0.1), 0px 1px 0px rgba(255, 255, 255, .7);
        box-shadow: inset 0px 1px 0px rgba(255, 255, 255, 0.3), inset 0px 0px 0px 1px rgba(255, 255, 255, 0.1), 0px 1px 0px rgba(255, 255, 255, .7);
        cursor: pointer;
    }
</style>
<div id="divPage" class="Page" runat="server">
    <div id="divShippingInformation">
    </div>
    <!-- divShippingInformation -->
    <asp:UpdatePanel ID="Uppanel" runat="server" UpdateMode="Conditional">
        <%--<Triggers>
                <asp:PostBackTrigger ControlID="btnSubmit" />
        </Triggers>--%>
        <ContentTemplate>
            <input type="password" style="display: none" />
            <table style="width: 100%">
                <tr>
                    <td colspan="2">
                        <asp:LinkButton ID="lnkBackToForm" Style="float: left; font-size: 16px;" runat="server"
                            OnClick="lnkBackToForm_Click">&larr; Back to application</asp:LinkButton>
                        <div id="div1" class="HeaderFooter1">
                            <h3 style="text-align: center; margin-top: 2px">SECURE PAYMENT PORTAL
                            </h3>
                        </div>
                </tr>
            </table>
            <table style="width: 100%">
                <tr>
                    <td colspan="2">
                        <table class="SectionHeadingBorder" id="tableOrderInformation">
                            <tbody>
                                <tr style="display: none;">
                                    <td align="right" style="width: 170px;">
                                        <label class="Label">
                                            Application Name :</label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblApplicationName" runat="server" Text="Certification Application"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="Label">
                                            Application Number :</label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblApplicationNumber" runat="server" Text="OL150222882821"></asp:Label>
                                    </td>
                                    <td align="right">
                                        <label class="Label">
                                            Invoice Number :</label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblInvoiceNo" runat="server" Text="ORD3065"></asp:Label>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </table>
            <br />
            <div class="Label cursorpointer" style="text-align: center">
                Select Payment Method
                <br />
                <asp:RadioButton ID="rblAuthorizeNet" Checked="true" runat="server" Text="Credit/Debit Card"
                    GroupName="PaymentMethod" />
                <asp:RadioButton ID="rblPaypal" runat="server" Text="PayPal" GroupName="PaymentMethod" />
            </div>
            <br />
            <asp:Panel ID="pnlAuthorizeNet" runat="server">
                <table>
                    <tr>
                        <td colspan="2">
                            <div id="divOrderDetailsBottomSpacer">
                                <div id="message-box-slot" style="width: 100%; margin: 0 auto;">
                                    <asp:Literal ID="ltrMsg" runat="server"></asp:Literal>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" style="width: 46%">
                            <table class="SectionHeadingBorder" id="table1">
                                <tbody>
                                    <tr>
                                        <td class="Label">Order Information
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div id="divOrderDetailsBottom">
                                <table id="" style="float: right; margin-right: 73px;">
                                    <tbody>
                                        <tr>
                                            <td class="LabelColTotal">Application Fee :
                                            </td>
                                            <td class="DescrColTotal">&nbsp;
                                            </td>
                                            <td class="DataColTotal">
                                                <!--x_amount.val-->
                                                <!--end-->
                                                <asp:Label ID="lblApplicationFee" runat="server" Text="US $5.00"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="LabelColTotal">Convenience Fee :
                                            </td>
                                            <td class="DescrColTotal">&nbsp;
                                            </td>
                                            <td class="DataColTotal">
                                                <!--x_amount.val-->
                                                <!--end-->
                                                <asp:Label ID="lblConvenienceFee" runat="server" Text="US $0.00"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="LabelColTotal">Late Fee :
                                            </td>
                                            <td class="DescrColTotal">&nbsp;
                                            </td>
                                            <td class="DataColTotal">
                                                <!--x_amount.val-->
                                                <!--end-->
                                                <asp:Label ID="lblLateFee" runat="server" Text="US $0.00"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="LabelColTotal" style="border-top: 1px solid #eee;">Total :
                                            </td>
                                            <td class="DescrColTotal" style="border-top: 1px solid #eee;">&nbsp;
                                            </td>
                                            <td class="DataColTotal" style="border-top: 1px solid #eee;">
                                                <!--x_amount.val-->
                                                <!--end-->
                                                <asp:Label ID="lblTotal" runat="server" Text="US $5.00"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" align="right">
                                                <div style="color: Red; font-size: 14px;">
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <!-- tableOrderDetailsBottom -->
                            </div>
                            <div>
                            </div>
                            <table class="SectionHeadingBorder" id="tablePaymentMethodHeading">
                                <tbody>
                                    <tr>
                                        <td class="Label">Payment Information
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div id="divCreditCardInformation">
                                <table id="tableCreditCardInformation">
                                    <tbody>
                                        <tr>
                                            <td class="SpacerRow2" colspan="2">
                                                <asp:Literal ID="ltrErrorResponse" runat="server"></asp:Literal>
                                            </td>
                                        </tr>
                                        <tr id="trCCInfoBold" style="display: none;">
                                            <td class="LabelColCC">&nbsp;
                                            </td>
                                            <td class="DataColCC" style="font-weight: bold;">Credit Card Information
                                            </td>
                                        </tr>
                                        <tr id="trAcceptedCardImgs">
                                            <td class="LabelColCC">&nbsp;
                                            </td>
                                            <td class="DataColCC">
                                                <img id="Img1" runat="server" src="../../App_Themes/Theme1/images/V.gif" height="23"
                                                    title="Visa" alt="Visa" />
                                                <img id="Img2" runat="server" src="../../App_Themes/Theme1/images/MC.gif" height="23"
                                                    title="MasterCard" alt="MasterCard" />
                                                <img id="Img3" runat="server" src="../../App_Themes/Theme1/images/Amex.gif" height="23"
                                                    title="American Express" alt="American Express" />
                                                <img id="Img4" runat="server" src="../../App_Themes/Theme1/images/Disc.gif" height="23"
                                                    title="Discover" alt="Discover">
                                                <%--<img id="Img5" runat="server" src="../../App_Themes/Theme1/images/DC.gif" height="23"
                                                    title="Diners Club" alt="Diners Club" />
                                                <img id="Img6" runat="server" src="../../App_Themes/Theme1/images/JCB.gif" height="23"
                                                    title="JCB" alt="JCB" />--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="LabelColCC">
                                                <label class="input-label required">
                                                    Card Number :</label>
                                            </td>
                                            <td class="DataColCC">
                                                <asp:TextBox ID="x_card_num" runat="server" AutoPostBack="true" CssClass="OnlyNumeric"
                                                    autoComplete="off" name="x_card_num" MaxLength="17" Width="150px" OnTextChanged="x_card_num_TextChanged"></asp:TextBox><br />
                                                <span style="font-size: 12px;">(no dash or space accepted)</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="LabelColCC">
                                                <label class="input-label required">
                                                    CVV :</label>
                                            </td>
                                            <td class="DataColCC">
                                                <asp:TextBox ID="x_cvv_num" runat="server" TextMode="Password" CssClass="OnlyNumeric"
                                                    autoComplete="off" name="x_cvv_num" MaxLength="4" Width="150px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="LabelColCC">
                                                <label class="input-label required">
                                                    Expiration Date :</label>
                                            </td>
                                            <td class="DataColCC">
                                                <asp:DropDownList ID="ddlExpirationMonths" runat="server">
                                                    <asp:ListItem Value="-1">Month</asp:ListItem>
                                                    <asp:ListItem Value="01">Jan</asp:ListItem>
                                                    <asp:ListItem Value="02">Feb</asp:ListItem>
                                                    <asp:ListItem Value="03">Mar</asp:ListItem>
                                                    <asp:ListItem Value="04">Apr</asp:ListItem>
                                                    <asp:ListItem Value="05">May</asp:ListItem>
                                                    <asp:ListItem Value="06">Jun</asp:ListItem>
                                                    <asp:ListItem Value="07">Jul</asp:ListItem>
                                                    <asp:ListItem Value="08">Aug</asp:ListItem>
                                                    <asp:ListItem Value="09">Sep</asp:ListItem>
                                                    <asp:ListItem Value="10">Oct</asp:ListItem>
                                                    <asp:ListItem Value="11">Nov</asp:ListItem>
                                                    <asp:ListItem Value="12">Dec</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:DropDownList ID="ddlExpirationYears" runat="server">
                                                    <asp:ListItem Value="-1">Year</asp:ListItem>
                                                    <asp:ListItem Value="13">2016</asp:ListItem>
                                                    <asp:ListItem Value="01">2017</asp:ListItem>
                                                    <asp:ListItem Value="02">2018</asp:ListItem>
                                                    <asp:ListItem Value="03">2019</asp:ListItem>
                                                    <asp:ListItem Value="04">2020</asp:ListItem>
                                                    <asp:ListItem Value="05">2021</asp:ListItem>
                                                    <asp:ListItem Value="06">2022</asp:ListItem>
                                                    <asp:ListItem Value="07">2023</asp:ListItem>
                                                    <asp:ListItem Value="08">2024</asp:ListItem>
                                                    <asp:ListItem Value="09">2025</asp:ListItem>
                                                    <asp:ListItem Value="10">2026</asp:ListItem>
                                                    <asp:ListItem Value="11">2027</asp:ListItem>
                                                    <asp:ListItem Value="12">2028</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <!-- tableCreditCardInformation -->
                            </div>
                        </td>
                        <td valign="top" style="width: 54%">
                            <table class="SectionHeadingBorder" id="table2">
                                <tbody>
                                    <tr>
                                        <td class="Label">Billing Information
                                        </td>
                                        <td id="tdRequiredFields">
                                            <label class="input-label required">
                                            </label>
                                            Required Fields
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div id="divBillingInformation">
                                <table id="tableCustomerBillingInformation">
                                    <tbody>
                                        <tr style="display: none;">
                                            <td></td>
                                            <td class="cursorpointer">
                                                <label class="input-label">
                                                    <asp:CheckBox ID="chkCopyAddress" runat="server" AutoPostBack="true" OnCheckedChanged="chkCopyAddress_CheckedChanged"
                                                        Text="Copy details from application" />
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="LabelColBill">
                                                <label class="input-label required">
                                                    First Name :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="x_first_name" runat="server" CssClass="OnlyAlphabet" MaxLength="20"
                                                    autoComplete="off"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label required">
                                                    Last Name :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="x_last_name" runat="server" CssClass="OnlyAlphabet" MaxLength="20"
                                                    autoComplete="off"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="LabelColBill">
                                                <label class="input-label required">
                                                    Street :</label>
                                            </td>
                                            <td class="DataColBill">
                                                <asp:TextBox ID="x_address" runat="server" autoComplete="off"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="LabelColBill">
                                                <label class="input-label required">
                                                    City :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="x_city" runat="server" CssClass="OnlyAlphabet" Width="80" MaxLength="20"
                                                    autoComplete="off"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 100px;">
                                                <label class="input-label required">
                                                    State/Province :</label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlState" runat="server" Style="width: 212px !important; height: 28px;">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="LabelColBill">
                                                <label class="input-label required">
                                                    Zip/Postal Code :
                                                </label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="x_zip" runat="server" MaxLength="12" CssClass="zip_us" autoComplete="off"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 100px;">
                                                <label class="input-label required">
                                                    Country :</label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlCountry" runat="server" Style="width: 212px !important; height: 28px;">
                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                    <asp:ListItem Value="USA">USA</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <!-- tableCustomerBilling -->
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <hr id="hrFooterBefore" />
                            <div id="divMerchantFooter" class="HeaderFooter1" style="color: Red; font-weight: bold">
                                Your credit/debit card will be charged by The CALIFORNIA MASSAGE THERAPY COUNCIL.
                                The CALIFORNIA MASSAGE THERAPY COUNCIL fees are NOT REFUNDABLE, PLEASE ENSURE THE
                                ACCURACY OF YOUR INFORMATION.
                            </div>
                            <hr id="hrButtonsBefore" />
                            <table id="tableButtons">
                                <tbody>
                                    <tr>
                                        <td class="SpacerRow1" colspan="3">&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <!-- (c) 2005, 2013. Authorize.Net is a registered trademark of CyberSource Corporation -->
                                        <td style="width: 15%;">
                                            <div class="divDotnet">
                                                <script type="text/javascript" language="javascript">
                                                    var ANS_customer_id = "dc3685d6-a4f0-42be-9d23-a2727ae4fa28";
                                                </script>
                                                <script type="text/javascript" language="javascript" src="//verify.authorize.net/anetseal/seal.js">
                                                </script>
                                                <a href="http://www.authorize.net/" id="AuthorizeNetText" target="_blank">Credit Card
                                                    Processing</a>
                                            </div>
                                        </td>
                                        <td style="width: 15%;">
                                            <%--<div class="SealSecurity" style="float: right; display: inline-block; margin-right: 102px;
                                    margin-top: 4px;">
                                    <script type="text/javascript" src="https://sealserver.trustwave.com/seal.js?code=37ea7b3d12b34c1cb101618053bd41c9"></script>
                                </div>--%>
                                        </td>
                                        <td id="tdButtonsAfter"></td>
                                        <td id="tdButtons">
                                            <table id="tableButtonsInner">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <asp:Button ID="btnSubmit" runat="server" Text="Pay Now" CssClass="btn-primary btn-sm"
                                                                OnClick="btnSubmit_Click" ValidationGroup="VGEPay" OnClientClick="this.disabled=true;"
                                                                UseSubmitBehavior="false" />
                                                        </td>
                                                        <td id="tdCancelOrder">
                                                            <asp:LinkButton ID="lnkCancle" runat="server" Style="height: 22px !important; line-height: 24px !important; display: block;"
                                                                CssClass="btn-default btn-sm" ToolTip="Cancel" OnClick="btnCancelOrder_Click">Cancel Payment</asp:LinkButton>
                                                        </td>
                                                        <td></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="PnlPaypal" runat="server">
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
</div>
