<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucTransactionFeeConfig.ascx.cs" Inherits="Module_Administration_ucTransactionFeeConfig" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:UpdatePanel ID="uppanel" runat="server">
    <ContentTemplate>
        <div class="get-started-content">
            <div class="clear textBoxAlign">
                <h4>Convenience Fee
                    <hr style="border: none; border-bottom: 1px solid #ddd" />
                </h4>
                <!----step ----->
                <div class="  pdng2 mrgn4">
                    <table class="tblTextAlignRight">
                        <tr>
                            <td>
                                <label class="input-label required">
                                    Configuration Name :</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtConfigurationName" runat="server" autocomplete="off"
                                    MaxLength="200"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtConfigName" runat="server" ErrorMessage="Please enter name of configuration"
                                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtConfigurationName"
                                    ValidationGroup="VGBoardInfo"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="vcenOA" runat="server" TargetControlID="rfvtxtConfigName"
                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="input-label required">
                                    ACH Fee :</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtFee" autocomplete="off" runat="server" MaxLength="20"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvFee" runat="server" ErrorMessage="Please enter valid fee Ex: 0.00"
                                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtFee"
                                    ValidationGroup="VGBoardInfo"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="vceFee" runat="server" TargetControlID="rfvFee"
                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                </asp:ValidatorCalloutExtender>
                                <asp:RegularExpressionValidator ID="REVFEE" runat="server" ErrorMessage="Please enter valid fee Ex: 0.00."
                                    ControlToValidate="txtFee" Display="None" ForeColor="#FFCCFF" SetFocusOnError="True"
                                    ValidationExpression="^\$?([1-9]{1}[0-9]{0,2}(\,[0-9]{3})*(\.[0-9]{0,2})?|[1-9]{1}[0-9]{0,}(\.[0-9]{0,2})?|0(\.[0-9]{0,2})?|(\.[0-9]{1,2})?)$"
                                    ValidationGroup="VGBoardInfo"></asp:RegularExpressionValidator>
                                <asp:ValidatorCalloutExtender ID="VCEREVFee" runat="server" TargetControlID="REVFEE"
                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="input-label required">
                                    CreditCard Fee :</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCreditCardFee" autocomplete="off" runat="server" MaxLength="20"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVCCFee" runat="server" ErrorMessage="Please enter valid fee Ex: 0.00"
                                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtCreditCardFee"
                                    ValidationGroup="VGBoardInfo"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="VCECCFEE" runat="server" TargetControlID="RFVCCFee"
                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                </asp:ValidatorCalloutExtender>
                                <asp:RegularExpressionValidator ID="REVCCFEE" runat="server" ErrorMessage="Please enter valid fee Ex: 0.00."
                                    ControlToValidate="txtCreditCardFee" Display="None" ForeColor="#FFCCFF" SetFocusOnError="True"
                                    ValidationExpression="^\$?([1-9]{1}[0-9]{0,2}(\,[0-9]{3})*(\.[0-9]{0,2})?|[1-9]{1}[0-9]{0,}(\.[0-9]{0,2})?|0(\.[0-9]{0,2})?|(\.[0-9]{1,2})?)$"
                                    ValidationGroup="VGBoardInfo"></asp:RegularExpressionValidator>
                                <asp:ValidatorCalloutExtender ID="VCEREVCCFEE" runat="server" TargetControlID="REVCCFEE"
                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr style="display: none">
                            <td>
                                <label class="input-label">
                                    Remark :</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtRemark" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
            </div>
            <div class="ribbon" style="width: 100%; padding-bottom: 20px;">
                <div class="fltlft" style="text-align: left!important; margin-left: 53px;">
                    <span id="item-msg">You are saving Convenience Fee </span>
                </div>
                <div class="buttons iefix-5 inline fltrt">
                    <asp:Button ID="btnSave" runat="server" ValidationGroup="VGBoardInfo" CssClass="buttonGreen medium"
                        Text="Update Convenience Fee" OnClick="btnSave_Click1" />
                </div>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
