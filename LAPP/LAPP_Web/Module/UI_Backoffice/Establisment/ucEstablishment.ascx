<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucEstablishment.ascx.cs"
    Inherits="ucEstablishment" %>
<div class="clear textBoxAlign" style="padding-bottom: 40px;">
    <div id="divFirmMain" style="display: block" class="textBoxAlign clear brdr radius pdng2 mrgnTp4">
        <table class="form-table" style="height: 100px;">
            <tr>
                <td align="right" style="width: 200px;">
                    <label class="input-label required">
                        School :</label>
                </td>
                <td>
                    <asp:TextBox ID="txtEstablishment" runat="server" Style="width: 464px;" MaxLength="200"></asp:TextBox>
                    <%-- <asp:RequiredFieldValidator ID="rfvEstablishment" ValidationGroup="VGBusnisess" ControlToValidate="txtEstablishment"
                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                    ErrorMessage="Please enter Establishment."></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="VCEEstablishment" runat="server" TargetControlID="rfvEstablishment"
                    PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                </asp:ValidatorCalloutExtender>--%>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">
                        School ID :</label>
                    <span class="BoldText"></span>
                </td>
                <%--  <div class="width50p fltrt">
                <p>
                    <label class="required">
                        Establishment Type :</label>
                    <asp:DropDownList ID="ddlEstablishmentType" runat="server" Style="float: left; width: 141px;">
                        <asp:ListItem Text="Please Select" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="Corporation" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Partnership" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Firm" Value="3"></asp:ListItem>
                        <asp:ListItem Text="Sole Proprietorship" Value="4"></asp:ListItem>
                        <asp:ListItem Text="Utility Company" Value="5"></asp:ListItem>
                        <asp:ListItem Text="Government" Value="6"></asp:ListItem>
                    </asp:DropDownList>
                                 <asp:RequiredFieldValidator ID="rfvDDlBusinessTyype" InitialValue="-1" runat="server"
                        ErrorMessage="Please select business type" Text="*" ForeColor="Red" Display="None"
                        SetFocusOnError="True" ControlToValidate="ddlBusinessType" ValidationGroup="VGBusnisess"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="VCEBusinessType" runat="server" TargetControlID="rfvDDlBusinessTyype"
                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                    </asp:ValidatorCalloutExtender>
                </p>
            </div>--%>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">
                        State Business License Number :
                    </label>
                </td>
                <td>
                    <asp:Literal ID="ltrStatebusinessLicenseNumber" runat="server"></asp:Literal>
                </td>
            </tr>
        </table>
    </div>
    <div class="clear">
        <div class="clear textBoxAlign">
            <!----step ----->
            <div class="clear brdr radius pdng2 mrgnTp4">
                <!----step ----->
                <!----step ----->
                <table class="form-table" style="margin: 0 auto;" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="vertical-align: middle; width: 117px;" class="txtalgnrgt">
                            <label class="input-label required">
                                Street :
                            </label>
                        </td>
                        <td colspan="5">
                            <asp:TextBox ID="txtAddress1" runat="server" Width="499px" CssClass="calWidth" MaxLength="500"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="txtalgnrgt">
                            <label class="input-label required">
                                City :
                            </label>
                        </td>
                        <td style="width: 151px;">
                            <asp:TextBox ID="txtCity" runat="server" CssClass="calWidth" Width="124px" MaxLength="500"></asp:TextBox>
                        </td>
                        <td class="txtalgnrgt" style="width: 52px;">
                            <label class="input-label required">
                                State :
                            </label>
                        </td>
                        <td style="width: 106px;">
                            <asp:DropDownList ID="ddlState" runat="server" Width="98px" CssClass="inputTextbox">
                                <asp:ListItem>Nevada</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="txtalgnrgt" style="width: 47px;">
                            <label class="input-label required">
                                Zip :
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtZip" placeholder="xxxxx-xxxx or xxxxx" runat="server" CssClass="calWidth zip_us" Width="114px" MaxLength="500"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align: middle;" class="txtalgnrgt tdwidth1">
                            <label class="input-label required">
                                Mailing Street :
                            </label>
                        </td>
                        <td colspan="5">
                            <asp:TextBox ID="txtMailingStreet" runat="server" Width="499px" CssClass="calWidth"
                                MaxLength="500"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="txtalgnrgt">
                            <label class="input-label required">
                                City :
                            </label>
                        </td>
                        <td style="width: 151px;">
                            <asp:TextBox ID="txtMailingCity" runat="server" Width="133px" CssClass="calWidth"
                                MaxLength="500"></asp:TextBox>
                        </td>
                        <td class="txtalgnrgt" style="width: 52px;">
                            <label class="input-label required">
                                State :
                            </label>
                        </td>
                        <td style="width: 106px;">
                            <asp:DropDownList ID="ddlMailingState" runat="server" Width="98px" CssClass="inputTextbox">
                                <asp:ListItem>Nevada</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="txtalgnrgt" style="width: 47px;">
                            <label class="input-label required">
                                Zip :
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtMailingZip" placeholder="xxxxx-xxxx or xxxxx" runat="server" Width="114px" CssClass="calWidth zip_us" MaxLength="500"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="clear brdr radius pdng2 mrgnTp4 form-div">
                <div class="clear">
                    <div class="width50p fltlft">
                        <p>
                            <label class="required">
                                Last Name :</label>
                            <asp:TextBox ID="txtLastname" class="firmTextBox" runat="server" MaxLength="200"></asp:TextBox>
                            <%--                            <asp:RequiredFieldValidator ID="rfvLName" ValidationGroup="VGBusnisess" ControlToValidate="txtLastname"
                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                ErrorMessage="Please enter last name"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="vceLName" runat="server" TargetControlID="rfvLName"
                                PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                            </asp:ValidatorCalloutExtender>--%>
                        </p>
                    </div>
                    <div class="width50p fltrt">
                        <p>
                            <label class="required">
                                First Name :</label>
                            <asp:TextBox ID="txtFirstName" class="firmTextBox" runat="server" MaxLength="200"></asp:TextBox>
                            <%--                            <asp:RequiredFieldValidator ID="rfvFName" ValidationGroup="VGBusnisess" ControlToValidate="txtFirstName"
                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                ErrorMessage="Please enter first name"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="vceFName" runat="server" TargetControlID="rfvFName"
                                PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                            </asp:ValidatorCalloutExtender>--%>
                        </p>
                    </div>
                </div>
                <div class="clear">
                    <div class="width50p fltlft">
                        <p>
                            <label class="required">
                                Phone :</label>
                            <asp:TextBox ID="txtPhone" MaxLength="15" class="firmTextBox phone_us" placeholder="(XXX) XXX-XXXX" runat="server"></asp:TextBox>
                            <%--                            <asp:RegularExpressionValidator ID="revPhone" runat="server" ErrorMessage="please enter valid phone number. Eg:XXX-XXX-XXXX or XXXXXXXXXX.."
                                ControlToValidate="txtPhone" Display="None" ForeColor="#FFCCFF" SetFocusOnError="True"
                                ValidationGroup="VGBusnisess" ValidationExpression="^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$">*</asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ErrorMessage="please enter valid phone number. Eg:XXX-XXX-XXXX or XXXXXXXXXX."
                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtPhone"
                                ValidationGroup="VGBusnisess"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="VCEtxtPhone" runat="server" TargetControlID="rfvPhone"
                                PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                            </asp:ValidatorCalloutExtender>
                            <asp:ValidatorCalloutExtender ID="VCEphone" runat="server" TargetControlID="revPhone"
                                PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                            </asp:ValidatorCalloutExtender>--%>
                        </p>
                    </div>
                    <div class="width50p fltrt">
                        <p>
                            <label>
                                Fax :</label>
                            <asp:TextBox ID="txtFax" class="firmTextBox phone_us" placeholder="(XXX) XXX-XXXX" runat="server" MaxLength="15"></asp:TextBox>
                            <%--                            <asp:RegularExpressionValidator ID="revFax" runat="server" ErrorMessage="please enter valid Fax number. Eg:XXX-XXX-XXXX or XXXXXXXXXX."
                                ControlToValidate="txtFax" Display="None" ForeColor="#FFCCFF" SetFocusOnError="True"
                                ValidationGroup="VGBusnisess" ValidationExpression="^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$">*</asp:RegularExpressionValidator>
                            <asp:ValidatorCalloutExtender ID="VCEfax" runat="server" TargetControlID="revFax"
                                PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                            </asp:ValidatorCalloutExtender>--%>
                        </p>
                    </div>
                </div>
                <!----step ----->
                <div class="clear">
                    <div class="width50p fltlft">
                        <p>
                            <label class="">
                                Extension :</label>
                            <asp:TextBox ID="txtExtension" MaxLength="10" runat="server"></asp:TextBox>
                        </p>
                    </div>
                </div>
                <!----step ----->
                <div class="clear formemrgtntp4">
                    <div>
                        <p>
                            <label class="required">
                                Email :</label>
                            <asp:TextBox ID="txtEmail" runat="server" Style="width: 69.4%" MaxLength="200"></asp:TextBox>
                            <%--         <asp:RegularExpressionValidator ID="REVEmail" runat="server" ErrorMessage="Please enter valid email address.eg john@example.com."
                                ValidationGroup="VGBusnisess" ControlToValidate="txtEmail" ForeColor="#FF3300"
                                Text="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                Display="None"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RFVtxtEmail" runat="server" ErrorMessage="Please enter valid email address.eg john@example.com."
                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtEmail"
                                ValidationGroup="VGBusnisess"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="vceEma" runat="server" TargetControlID="RFVtxtEmail"
                                PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                            </asp:ValidatorCalloutExtender>
                            <asp:ValidatorCalloutExtender ID="VCEEmail" runat="server" TargetControlID="REVEmail"
                                PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                            </asp:ValidatorCalloutExtender>--%>
                        </p>
                    </div>
                </div>
            </div>
            <!----end ----->
            <div class="clear">
                <div class="clear width95p">
                    <div id="DivAlertMessage_Second" style="display: none">
                        <div style="display: none">
                        </div>
                    </div>
                </div>
                <%--<uc1:ucfirmprincipal id="ucFirmPrincipal1" runat="server" />--%>
            </div>
            <div class="clear" style="display: none">
                <div class="clear width95p">
                    <div id="DivAlertMessage_Third" style="display: none">
                        <div style="display: none">
                        </div>
                    </div>
                </div>
                <%--<uc2:ucfirmresponsiblecharges id="ucFirmResponsibleCharges1" runat="server" />--%>
            </div>
            <div class="clear" style="display: none">
                <div class="clear mrgnTp4">
                    <%--<uc4:ucfirmprofessionalservices id="ucFirmProfessionalServices1" runat="server" />--%>
                </div>
            </div>
            <div class="clear brdr radius pdng2" style="overflow: hidden; display: none;">
                <div class="float_left" style="">
                </div>
                <div class="fltlft" style="width: 120px; margin-left: 20px; margin-top: 20px;">
                    <b>Applicants :</b>
                    <div class="clear">
                        <br />
                    </div>
                    <asp:DropDownList ID="ddName" runat="server" Width="150px">
                        <asp:ListItem>Name</asp:ListItem>
                    </asp:DropDownList>
                    <div class="clear">
                        <br>
                    </div>
                    <input type="button" style="padding: 0px 8px; margin-left: 0px" class="button medium brown fltrt inline pdng10"
                        value="Modify">
                </div>
            </div>
            <div class="clear mrgnTp4">
                <div class="clear">
                    <b>Remark :</b>
                    <div class="clear">
                    </div>
                    <asp:TextBox ID="txtComments" runat="server" Style="width: 98%; height: 70px;" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>
            <!----end ----->
        </div>
        <div class="ribbon" style="width: 100%;">
            <div class="holder peel-shadows" style="width: 97.9%; padding: 20px 7px; margin-top: 0px; margin-left: -9px;">
                <span class="fltlft"></span>
                <div class="buttons iefix-5 inline">
                    <asp:Button ID="btnSave" CssClass="buttonGreen medium" runat="server" Text="Save"
                        ValidationGroup="VGBusnisess" OnClick="btnSave_Click" />
                    <asp:Button ID="btnBranch" Visible="False" CssClass="buttonGreen medium" runat="server"
                        Text="Make This Establishment As Branch" ValidationGroup="VGPersonal" OnClick="btnBranch_Click" />
                    <asp:LinkButton ID="lnkbtnCancel" CssClass="secondary medium bottom" runat="server"
                        OnClick="lnkbtnCancel_Click">Cancel</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
</div>
