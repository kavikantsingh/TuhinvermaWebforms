<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucIndividual.ascx.cs"
    Inherits="NVBMT_WebProject.Modules.IndiVidual.ucIndividual" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:UpdatePanel runat="server" ID="upPanelSection1">
    <Triggers>
        <asp:PostBackTrigger ControlID="btnIndividualSave" />
    </Triggers>
    <ContentTemplate>
        <div class="clear textBoxAlign">
            <div>
                <asp:Literal ID="ltrIndividual" runat="server"></asp:Literal>
            </div>
            <div class="container primary-content ">
                <div style="width: 67%; margin-top: 18px;">
                    <div style="width: 75%; float: left; border: 1px solid rgb(231, 231, 231); min-height: 170px;">
                        <table style="width: 99%; margin: 0px auto;">
                            <tr>

                                <td colspan="4">
                                    <asp:Button ID="btnSacramento" runat="server" CssClass="buttonGreen small" Text="Sacramento" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label class="input-label required">
                                        Last Name :</label>
                                </td>
                                <td>
                                    <asp:TextBox CssClass="inputTextbox capitalize-text OnlyAlphabet" autocomplete="off"
                                        ID="txtLastName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="revLastName" ValidationGroup="VGIndividual" ControlToValidate="txtLastName"
                                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                        ErrorMessage="Please enter last name."></asp:RequiredFieldValidator>
                                    <asp:ValidatorCalloutExtender ID="vceLastName" runat="server" TargetControlID="revLastName"
                                        PopupPosition="BottomLeft" HighlightCssClass="error">
                                    </asp:ValidatorCalloutExtender>
                                </td>
                                <td align="right">
                                    <label class="input-label required">
                                        First Name  :</label>
                                </td>
                                <td>
                                    <asp:TextBox CssClass="inputTextbox capitalize-text OnlyAlphabet" autocomplete="off"
                                        ID="txtFirstName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="revFirstName" ValidationGroup="VGIndividual" ControlToValidate="txtFirstName"
                                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                        ErrorMessage="Please enter first name."></asp:RequiredFieldValidator>
                                    <asp:ValidatorCalloutExtender ID="vceFirstName" runat="server" TargetControlID="revFirstName"
                                        PopupPosition="BottomLeft" HighlightCssClass="error">
                                    </asp:ValidatorCalloutExtender>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label class="input-label">
                                        Middle Name  :</label>
                                </td>
                                <td>
                                    <asp:TextBox CssClass="inputTextbox OnlyAlphabet" autocomplete="off" ID="txtMiddleName"
                                        runat="server"></asp:TextBox>
                                </td>
                                <td align="right">
                                    <label class="input-label">
                                        Suffix  :</label>
                                </td>
                                <td>
                                    <asp:TextBox CssClass="inputTextbox OnlyAlphabet" autocomplete="off" ID="txtSuffix"
                                        runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 130px">
                                    <label class="input-label required">
                                        SS #  :</label>
                                </td>
                                <td>
                                    <asp:TextBox CssClass="inputTextbox ssn" placeholder="XXX-XX-XXXX" autocomplete="off"
                                        ID="txtSsn" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvSSN" ValidationGroup="VGIndividual" ControlToValidate="txtSsn"
                                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                        ErrorMessage="SS# must be NNN-NN-NNNN format."></asp:RequiredFieldValidator>
                                    <asp:ValidatorCalloutExtender ID="vceSSN" runat="server" TargetControlID="rfvSSN"
                                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                    </asp:ValidatorCalloutExtender>
                                    <asp:RegularExpressionValidator ID="rebSSN" runat="server" ErrorMessage="SS# must be NNN-NN-NNNN format."
                                        ControlToValidate="txtSsn" Display="None" ForeColor="#FFCCFF" SetFocusOnError="True"
                                        Text="*" ValidationGroup="VGIndividual" ValidationExpression="^[^-]{3}-?[^-]{2}-?[^-]{4}$"></asp:RegularExpressionValidator>
                                    <asp:ValidatorCalloutExtender ID="vceSSn1" runat="server" TargetControlID="rebSSN"
                                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                    </asp:ValidatorCalloutExtender>
                                </td>
                                <td align="right" style="width: 125px;">
                                    <label class="input-label required">
                                        Status  :</label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlStatus" CssClass="DropdownList" runat="server">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvStatus" ValidationGroup="VGIndividual" InitialValue="-1"
                                        ControlToValidate="ddlStatus" Text="*" ForeColor="Red" Display="None" SetFocusOnError="True"
                                        runat="server" ErrorMessage="Please select status."></asp:RequiredFieldValidator>
                                    <asp:ValidatorCalloutExtender ID="vceStatus" runat="server" TargetControlID="rfvStatus"
                                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                    </asp:ValidatorCalloutExtender>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label class="input-label required">
                                        DOB  :</label>
                                </td>
                                <td>
                                    <asp:TextBox CssClass="inputTextbox calenderDOB" placeholder="MM/DD/YYYY" autocomplete="off"
                                        ID="txtDOB" runat="server"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="REVCalender" runat="server" ErrorMessage="Please enter valid date. Eg :MM/DD/YYYY"
                                        ValidationGroup="VGIndividual" ControlToValidate="txtDOB" ForeColor="#FF3300"
                                        Text="*" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                                        Display="None"></asp:RegularExpressionValidator>
                                    <asp:ValidatorCalloutExtender ID="vceDOB" runat="server" TargetControlID="REVCalender"
                                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                    </asp:ValidatorCalloutExtender>
                                    <asp:RequiredFieldValidator ID="rfvDOB" ValidationGroup="VGIndividual" ControlToValidate="txtDOB"
                                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                        ErrorMessage="DOB is required."></asp:RequiredFieldValidator>
                                    <asp:ValidatorCalloutExtender ID="vcetxtDOB" runat="server" TargetControlID="rfvDOB"
                                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                    </asp:ValidatorCalloutExtender>
                                </td>

                                <td align="right">
                                    <label class="input-label">
                                       Age  :</label>
                                </td>
                                <td>
                                    <asp:TextBox CssClass="inputTextbox mrgntop16" autocomplete="off" ID="txtAge"
                                        runat="server"></asp:TextBox>
                                </td>


                            </tr>
                            <tr><td align="right">
                                    <label class="input-label">
                                        Place of Birth  :</label>
                                </td>
                                <td>
                                    <asp:TextBox CssClass="inputTextbox mrgntop16" autocomplete="off" ID="txtPlaceOfBirth"
                                        runat="server"></asp:TextBox>
                                </td>
                                <td></td>
                                <td></td>
                            </tr>

                            <tr>
                                <td align="right">
                                    <label class="input-label required">
                                        Birth City :</label>
                                </td>
                                <td>
                                    <asp:TextBox CssClass="inputTextbox OnlyAlphabet" Text="Sacramento" autocomplete="off"
                                        ID="txtBirthCity" runat="server"></asp:TextBox>
                                </td>
                                <td align="right">
                                    <label class="input-label required">
                                        State :</label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" CssClass="DropdownList" runat="server">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                        <asp:ListItem Value="1" Selected="CA">CALIFORNIA</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label class="input-label">
                                        Country :</label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlCountry" CssClass="DropdownList" runat="server">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                        <asp:ListItem Value="1" Selected="USA">USA</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td align="right">
                                    <label class="input-label">
                                        Gender :</label>
                                </td>
                                <td style="vertical-align: bottom;">
                                    <asp:RadioButtonList ID="rblGenderEdit" CssClass="mrgnto16" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="M">Male</asp:ListItem>
                                        <asp:ListItem Selected="True" Value="F">Female</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 130px">
                                    <label class="input-label">
                                        Height :</label>
                                </td>
                                <td>
                                    <asp:TextBox CssClass="inputTextbox" Text="6-1" autocomplete="off" ID="txtHeight"
                                        runat="server"></asp:TextBox>
                                </td>
                                <td align="right" style="width: 125px;">
                                    <label class="input-label">
                                        Weight Pounds :</label>
                                </td>
                                <td>
                                    <asp:TextBox CssClass="inputTextbox" Text="205" autocomplete="off" ID="txtWeight"
                                        runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label class="input-label">
                                        Eye Color :</label>
                                </td>
                                <td>
                                    <asp:TextBox CssClass="inputTextbox" Text="Black" autocomplete="off" ID="txtEyeColor"
                                        runat="server"></asp:TextBox>
                                </td>
                                <td align="right">
                                    <label class="input-label">
                                        Hair Color :</label>
                                </td>
                                <td>
                                    <asp:TextBox CssClass="inputTextbox" Text="Black" autocomplete="off" ID="txtHairColor"
                                        runat="server"></asp:TextBox>
                                </td>
                            </tr>
                                <td colspan="4">
                                    <div class="brdr radius mrgnTp4 pdng2">
                                        <table style="width: 100%;">
                                            <tr>
                                                <td align="right" style="width: 175px;">
                                                    <label class="input-label">
                                                        <b>Driver License or Govt. ID :</b></label>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label required">
                                                        D/L or Govt. ID NO :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtDLGovtIDNo" CssClass="inputTextbox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label required">
                                                        Issued by State :</label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlState" runat="server" Style="width: 142px;">
                                                        <asp:ListItem Text="Checkbox" Selected="True" Value="1">CALIFORNIA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                            <%--<tr>
                                <td colspan="4">
                                    <div class="brdr radius mrgnTp4 pdng2">
                                        <table style="width: 100%;">
                                            <tr>
                                                <td align="right" style="width: 175px;">
                                                    <label class="input-label">
                                                        <b>Website :</b>
                                                    </label>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <p style="color: Red;">
                                                        After changing the UserName or Password, you must run the Synchronize Passwords
                                                        Routine in Tradewinds / Password Management.
                                                    </p>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                            </tr>--%>
                            <tr>
                                <td colspan="4">
                                    <hr />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label class="input-label required">
                                        Web User Name  :</label>
                                </td>
                                <td colspan="2">
                                    <asp:TextBox CssClass="mrgntop16" autocomplete="off" ID="txtWebUserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvusername" ValidationGroup="VGIndividual" ControlToValidate="txtWebUserName"
                                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                        ErrorMessage="Please enter web user name."></asp:RequiredFieldValidator>
                                    <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="rfvusername"
                                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                    </asp:ValidatorCalloutExtender>
                                </td>
                                <%--<td align="right" style="display :none">
                                    <label class="input-label required">
                                        Web Password  :</label>
                                </td>--%>
                                <td>
                                    <asp:Button ID="btnResetPassword" CssClass="buttonGreen small" runat="server" Text="Reset Password" />
                                    <asp:TextBox CssClass="inputTextbox mrgntop16" Style="display: none;" autocomplete="off"
                                        ID="txtWebPassword" TextMode="Password" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvPassword" ValidationGroup="VGIndividual" ControlToValidate="txtWebPassword"
                                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                        ErrorMessage="Please enter password."></asp:RequiredFieldValidator>
                                    <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="rfvPassword"
                                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                    </asp:ValidatorCalloutExtender>
                                </td>
                            </tr>

                            
                        </table>
                    </div>
                    <div style="float: right; width: 24%; min-height: 170px;">
                        <%--   <div style="width : 56%; height : 118px; padding-top : 10px;">
                            <asp:Image runat="server" ID="IndvidualimgProfile" ClientIDMode="Static" ImageUrl="../App_Themes/Theme1/images/no_img.jpg"
                                alt="Image" Width="100px" Height="100px" />
                        </div>
                        <asp:Panel ID="pnlProfileUpload" runat="server" Visible="false">
                            <asp:FileUpload ID="fpImageUpload" accept="image/*" CssClass="MyUpload fu" Style="font-size : 12px;"
                                onchange="javascript :UploadImage(this);" runat="server" />
                        </asp:Panel>
                        <asp:Button ID="btnPhotoUpload" Style="margin-left : 5px; display : none;" CssClass="buttonGreen small"
                            runat="server" Text="Upload" CausesValidation="true" ClientIDMode="Static" OnClick="btnPhotoUpload_Click" />
                        <asp:HiddenField ID="hidApplicationNumber" runat="server" ClientIDMode="Static" />
                        <asp:HiddenField ID="hidIndividualId" Value="0" runat="server" ClientIDMode="Static" />
                        <asp:HiddenField ID="hidPermanentUrl" runat="server" Value="" ClientIDMode="Static" />
                        <iframe id="frmProfileUpload" runat="server" src="../Modules/WorkFlow/ProfileUpload.aspx"
                            frameborder="0" width="100%" scrolling="no" height="85px"></iframe>
                        <br />--%>
                        <%--<div>
                            <table>
                                <tr>
                                    <td>
                                        <label class="input-label">
                                            Employees :</label>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="input-label">
                                            Students :</label>
                                    </td>
                                    <td></td>
                                </tr>
                            </table>
                        </div>--%>
                        <div>
                            <div>
                                <h4>Record Hits</h4>
                            </div>
                            <table>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="chkDOJ" runat="server" Text="DOJ" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="chkFBI" runat="server" Text="FBI" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:CheckBox ID="chkCityNotiFication" runat="server" Text="Outside Agencies" />
                                    </td>
                                </tr>
                                <tr>
<td colspan="2">
                                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Complaint" />
                                    </td>
                                </tr>
                                <tr>
<td colspan="2">
                                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Self Report" />
                                    </td>
                                </tr>
                                <tr>
<td colspan="2">
                                        <asp:CheckBox ID="CheckBox3" runat="server" Text="SAN" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                  
                      <div class="clear textBoxAlign" style="padding-bottom: 12px;">
    <div style="padding-bottom: 30px;" class="divLicenseInfon divaddnew" id="pnlAddNewButton"
        runat="server" >
        <span style="float: right; margin-right: 0px;">
            <asp:Button ID="btnAddNew" CssClass="buttonGreen medium" runat="server" Text="Add New"
                CausesValidation="true" OnClick="btnAddNew_Click"/>
        </span>
    </div>
    <div>
        <asp:Literal ID="ltrName" runat="server"></asp:Literal>
    </div>
    <div id="pnlAddNew" visible="false" runat="server" class="brdr radius mrgnTp4 pdng2">
        <table style="width: 100%;">
            <tr>
                <td align="right">
                    <label class="input-label required">
                        Last Name :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox capitalize-text OnlyAlphabet" autocomplete="off"
                        ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="VGName" ControlToValidate="txtLastName"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                        ErrorMessage="Please enter last name."></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" TargetControlID="revLastName"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
                <td align="right">
                    <label class="input-label required">
                        First Name :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox capitalize-text OnlyAlphabet" autocomplete="off"
                        ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="VGName" ControlToValidate="txtFirstName"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                        ErrorMessage="Please enter first name."></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender4" runat="server" TargetControlID="revFirstName"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">
                        Middle Name :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox OnlyAlphabet" autocomplete="off" ID="TextBox3"
                        runat="server"></asp:TextBox>
                </td>
                <td align="right">
                    <label class="input-label">
                        Suffix :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox OnlyAlphabet" autocomplete="off" ID="TextBox4"
                        runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">
                        Previous/Maiden Name :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox OnlyAlphabet" autocomplete="off" ID="txtPreviousName"
                        runat="server"></asp:TextBox>
                </td>
                <td align="right">
                    <label class="input-label required">
                        Status :</label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" CssClass="DropdownList" runat="server">
                        <asp:ListItem Value="-1">Select</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="revStatus" ValidationGroup="VGName" ControlToValidate="ddlStatus"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                        InitialValue="-1" ErrorMessage="Please select status."></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender5" runat="server" TargetControlID="revStatus"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label required">
                        Begin Date :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                        ID="txtDateOfBegan" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDateOfBegan" ValidationGroup="VGName" ControlToValidate="txtDateOfBegan"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                        ErrorMessage="Please enter date of beginning."></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="vcetxtDateOfBegan" runat="server" TargetControlID="rfvDateOfBegan"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                    <asp:RegularExpressionValidator ID="revBeganDate" runat="server" ErrorMessage="Please enter valid date of beginning. Eg:MM/DD/YYYY"
                        ValidationGroup="VGName" ControlToValidate="txtDateOfBegan" ForeColor="#FF3300"
                        Text="*" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                        Display="None"></asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="vceBeganDate" runat="server" TargetControlID="revBeganDate"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
                <td align="right">
                    <label class="input-label required">
                        End Date :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                        ID="txtDateOfEnded" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDateOfEnded" ValidationGroup="VGName" ControlToValidate="txtDateOfEnded"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                        ErrorMessage="Please enter date of ending."></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="vcetxtDateOfEnded" runat="server" TargetControlID="rfvDateOfEnded"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                    <asp:RegularExpressionValidator ID="revEndDate" runat="server" ErrorMessage="Please enter valid date of ending. Eg:MM/DD/YYYY"
                        ValidationGroup="VGName" ControlToValidate="txtDateOfEnded" ForeColor="#FF3300"
                        Text="*" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                        Display="None"></asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="vceEndDate" runat="server" TargetControlID="revEndDate"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                    <asp:CompareValidator ID="cvDateofEnding" runat="server" Operator="GreaterThan" Type="Date"
                        ControlToCompare="txtDateOfBegan" ControlToValidate="txtDateOfEnded" Text="*"
                        ErrorMessage="Date must be greater than date of ending" Display="None" ForeColor="#FFCCFF"
                        SetFocusOnError="True" ValidationGroup="VGName">
                    </asp:CompareValidator>
                    <asp:ValidatorCalloutExtender ID="vcecvEnding" runat="server" TargetControlID="cvDateofEnding"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">
                        Comments :</label>
                </td>
                <td colspan="3">
                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtComments" Width="135px"
                        TextMode="MultiLine" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <div class="toolBar" style="padding: 4px; margin: 4px; width: 703px;">
            <span class="fltrt">
                <asp:Button ID="btnSave" ValidationGroup="VGName" CssClass="buttonGreen medium" runat="server"
                    Text="Save" CausesValidation="true" OnClick="btnSave_Click" />
                <asp:LinkButton ID="lnkCancel" CssClass="secondary medium bottom" runat="server"
                    OnClick="lnkCancel_Click1">Cancel</asp:LinkButton></span>
        </div>
    </div>
                        <!--new Name Grid------->
<div>
        <table class="index brdr radius mrgnTp4 pdng2 grid" id="gvLicense" style="color: #333333; width: 100%; border-collapse: collapse;" cellpadding="5" cellspacing="0">
            <tbody>
                <tr>
                    <th class="aligncenter" scope="col">First Name</th>
                    <th class="aligncenter" scope="col">Last Name</th>
                    <th class="aligncenter" scope="col">Status</th>
                    <th class="aligncenter" scope="col">Begin Date</th>
                    <th class="aligncenter" scope="col">End Date</th>
                    <th class="aligncenter" scope="col">Action</th>
                </tr>
                <tr class="bordrbtm gridrow">
                    <td class="aligncenter" style="padding: 5px !important;">David</td>
                    <td class="aligncenter">Hook
                    </td>
                    <td class="aligncenter">Current </td>
                    <td class="aligncenter">01/02/2015</td>
                    <td class="aligncenter">01/04/2015</td>
                    <td class="aligncenter"><asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" 
                                runat="server"  ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                OnClick="imgbtnEdit_Click" />
                            <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                OnClientClick="javascript:return confirm('Are you sure you want to delete?');"
                                OnClick="imgBtnDelete_Click" /></td>
                </tr>
            </tbody>
        </table>
    </div>


<!--new name grid off ----->
    <div runat="server" id="divGridView" visible="true" class="" style=" display:none;">
        <asp:GridView ID="gvName" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
            CssClass="index brdr grid mrgnTp4 " AllowPaging="true" PagerSettings-PageButtonCount="6"
            GridLines="None" AllowSorting="true" PagerStyle-CssClass="pager_style" RowStyle-CssClass="bordrbtm gridrow"
            PageSize="5" CellPadding="5" Width="100%" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Name" HeaderStyle-HorizontalAlign="Center">
                    <ItemStyle CssClass="InEditModetd" />
                    <EditItemTemplate>
                        <div class="divGridEdit">
                            <table style="width: 90%; margin: 13px auto;">
                                <tr>
                                    <td align="right" style="width: 145px;">
                                        <label class="input-label required">
                                            Last Name :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox capitalize-text OnlyAlphabet" autocomplete="off"
                                            ID="txtLastNameEdit" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="revLastNameEdit" ValidationGroup="VGNameEdit" ControlToValidate="txtLastNameEdit"
                                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                            ErrorMessage="Please enter last name."></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="vceLastName" runat="server" TargetControlID="revLastNameEdit"
                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                    <td align="right" style="width: 98px;">
                                        <label class="input-label required">
                                            First Name :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox capitalize-text OnlyAlphabet" autocomplete="off"
                                            ID="txtFirstNameEdit" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="revFirstNameEdit" ValidationGroup="VGNameEdit" ControlToValidate="txtFirstNameEdit"
                                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                            ErrorMessage="Please enter first name."></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="vceFirstName" runat="server" TargetControlID="revFirstNameEdit"
                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label">
                                            Middle Name :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox OnlyAlphabet" autocomplete="off" ID="txtMiddleNameEdit"
                                            runat="server"></asp:TextBox>
                                    </td>
                                    <td align="right">
                                        <label class="input-label">
                                            Suffix :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox OnlyAlphabet" autocomplete="off" ID="txtSuffixEdit"
                                            runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label">
                                            Previous/Maiden Name :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox OnlyAlphabet" autocomplete="off" ID="txtPreviousNameEdit"
                                            runat="server"></asp:TextBox>
                                    </td>
                                    <td align="right">
                                        <label class="input-label required">
                                            Status :</label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlStatusEdit" CssClass="DropdownList" runat="server">
                                            <asp:ListItem>Current</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="revStatusEdit" ValidationGroup="VGNameEdit" ControlToValidate="ddlStatusEdit"
                                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                            ErrorMessage="Please select status."></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="vceStatus" runat="server" TargetControlID="revStatusEdit"
                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label required">
                                            Begin Date :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                                            ID="txtDateOfBeganEdit" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvDateOfBeganEdit" ValidationGroup="VGNameEdit"
                                            ControlToValidate="txtDateOfBeganEdit" Text="*" ForeColor="Red" Display="None"
                                            SetFocusOnError="True" runat="server" ErrorMessage="Please enter date of beginning."></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="vcetxtDateOfBeganEdit" runat="server" TargetControlID="rfvDateOfBeganEdit"
                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                        </asp:ValidatorCalloutExtender>
                                        <asp:RegularExpressionValidator ID="revBeganDateEdit" runat="server" ErrorMessage="Please enter valid date of beginning. Eg:MM/DD/YYYY"
                                            ValidationGroup="VGNameEdit" ControlToValidate="txtDateOfBeganEdit" ForeColor="#FF3300"
                                            Text="*" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                                            Display="None"></asp:RegularExpressionValidator>
                                        <asp:ValidatorCalloutExtender ID="vceBeganDate" runat="server" TargetControlID="revBeganDateEdit"
                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                    <td align="right">
                                        <label class="input-label required">
                                            End Date :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                                            ID="txtDateOfEndedEdit" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvDateOfEndedEdit" ValidationGroup="VGNameEdit"
                                            ControlToValidate="txtDateOfEndedEdit" Text="*" ForeColor="Red" Display="None"
                                            SetFocusOnError="True" runat="server" ErrorMessage="Please enter date of ending."></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="vcetxtDateOfEndedEdit" runat="server" TargetControlID="rfvDateOfEndedEdit"
                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                        </asp:ValidatorCalloutExtender>
                                        <asp:RegularExpressionValidator ID="revEndDateEdit" runat="server" ErrorMessage="Please enter valid date of ending. Eg:MM/DD/YYYY"
                                            ValidationGroup="VGNameEdit" ControlToValidate="txtDateOfEndedEdit" ForeColor="#FF3300"
                                            Text="*" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                                            Display="None"></asp:RegularExpressionValidator>
                                        <asp:ValidatorCalloutExtender ID="vceEndDate" runat="server" TargetControlID="revEndDateEdit"
                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                        </asp:ValidatorCalloutExtender>
                                        <asp:CompareValidator ID="cvDateofEndingEdit" runat="server" Operator="GreaterThan"
                                            Type="Date" ControlToCompare="txtDateOfBeganEdit" ControlToValidate="txtDateOfEndedEdit"
                                            Text="*" ErrorMessage="Date must be greater than date of ending" Display="None"
                                            ForeColor="#FFCCFF" SetFocusOnError="True" ValidationGroup="VGNameEdit">
                                        </asp:CompareValidator>
                                        <asp:ValidatorCalloutExtender ID="vcecvEndingEdit" runat="server" TargetControlID="cvDateofEndingEdit"
                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label">
                                            Comments :</label>
                                    </td>
                                    <td colspan="3">
                                        <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtCommentsEdit" Width="135px"
                                            TextMode="MultiLine" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4">
                                        <hr style="border: 1px solid rgb(242, 242, 242);" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 68px;" align="right">
                                        <label class="input-label">
                                            Created :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox cursordisable" autocomplete="off" ID="txtCreatedEdit"
                                            runat="server"></asp:TextBox>
                                    </td>
                                    <td style="width: 84px;" align="right">
                                        <label class="input-label">
                                            Created By :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox cursordisable" autocomplete="off" ID="txtCreatedByEdit"
                                            runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label">
                                            Modified :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox cursordisable" autocomplete="off" ID="txtModifiedEdit"
                                            runat="server"></asp:TextBox>
                                    </td>
                                    <td align="right">
                                        <label class="input-label">
                                            Modified By :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox cursordisable" autocomplete="off" ID="txtModifiedByEdit"
                                            runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <div class="toolBar" style="padding: 4px; margin: 4px;">
                                <span class="fltrt">
                                    <asp:Button ID="btnUpdate" ValidationGroup="VGNameEdit" CssClass="buttonGreen medium"
                                        runat="server" Text="Update" CausesValidation="true" OnClick="btnUpdate_Click" />
                                    <asp:LinkButton ID="lnkCancelUpdate" CssClass="secondary medium bottom" runat="server"
                                        OnClick="lnkCancelUpdate_Click">Cancel</asp:LinkButton></span>
                            </div>
                        </div>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <table style="margin: 0 auto; width: 608px;">
                            <tr>
                                <td class="txtalnrgt" style="width: 150px;">
                                    <label class="head">
                                        Last Name :
                                    </label>
                                </td>
                                <td style="width: 150px;">
                                    <span>
                                        <%#Eval("Last_Name")%>
                                    </span>
                                </td>
                                <td class="txtalnrgt">
                                    <label class="head">
                                        First Name :
                                    </label>
                                </td>
                                <td>
                                    <span>
                                        <%#Eval("First_Name")%>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td class="txtalnrgt">
                                    <label class="head">
                                        Middle Name :
                                    </label>
                                </td>
                                <td>
                                    <span>
                                        <%#Eval("Middle_Name")%>
                                    </span>
                                </td>
                                <td class="txtalnrgt">
                                    <label class="head">
                                        Suffix :
                                    </label>
                                </td>
                                <td>
                                    <span>
                                        <%#Eval("Suffix")%>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td class="txtalnrgt">
                                    <label class="head">
                                        Previous/Maiden Name :
                                    </label>
                                </td>
                                <td>
                                    <span>
                                        <%#Eval("Maiden_Name")%>
                                    </span>
                                </td>
                                <td class="txtalnrgt">
                                    <label class="head">
                                        Status :
                                    </label>
                                </td>
                                <td>
                                    <span>
                                        <%#Eval("Status")%>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td class="txtalnrgt">
                                    <label class="head">
                                        Begin Date :
                                    </label>
                                </td>
                                <td>
                                    <span>
                                        <%#Eval("Date_Of_Beginning")%>
                                    </span>
                                </td>
                                <td class="txtalnrgt">
                                    <label class="head">
                                        End Date :
                                    </label>
                                </td>
                                <td>
                                    <span>
                                        <%#Eval("Date_Of_Ending")%>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td class="txtalnrgt">
                                    <label class="head">
                                        Comments :
                                    </label>
                                </td>
                                <td>
                                    <span>
                                        <%#Eval("Comments")%>
                                    </span>
                                </td>
                                <td colspan="3">
                                    <div style="overflow: auto;">
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="10%">
                    <ItemStyle />
                    <ItemTemplate>
                        <span class="fltrt">
                            <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" CommandArgument='<%#Eval("Name_id")%>'
                                runat="server" RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                OnClick="imgbtnEdit_Click" />
                            <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                CommandArgument='<%#Eval("Name_id")%>' ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                OnClientClick="javascript:return confirm('Are you sure you want to delete?');"
                                OnClick="imgBtnDelete_Click" />
                        </span>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <div style="width: 100%; height: 200px; border: 0px; padding: 3px">
                    No record found.
                </div>
            </EmptyDataTemplate>
        </asp:GridView>
    </div>
</div>
                                 
                                  <div style="border: 1px solid rgb(221, 221, 221) ! important; padding-top:10px; padding-bottom: 14px ! important;">
    <table class=" tblApplReqForm5" style="width: 50%; margin-left: 102px;">
        <tbody>
            <tr>
                <td style="width:70px;">First Name : </td>
                <td>
                    <asp:TextBox ID="TextBox5" Width="97%" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Last Name : </td>
                <td><asp:TextBox ID="TextBox6" Width="97%" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td><input value="Add" id="btnSaveOtname" style="float:right;" class="buttonGreen small" type="submit"></td>
            </tr>
           <%-- <tr>
                <td class="txtalgnrgt tdwidth1" style="width: 100px !important; padding-bottom: 10px;">
                    <label class="input-label">
                        Other Name :
                    </label>
                </td>
                <td>

                    <input autocomplete="off" maxlength="150" id="txtOtherNameEdit" class="OnlyAlphabet" style="width: 295px !important;" type="text">
                    <span class="AfterApproved">
                        </span>
                </td>
            </tr>--%>
        </tbody>
    </table>
    <table class=" tblApplReqForm5" style="width: 100%;">
        <tbody>
            <tr>
                <td>
                    <div>
                    </div>
                    <table class="index  grid" id="Table1" style="width: 50%; margin-left: 100px; border: 1px solid #ddd;" border="1" cellpadding="5" cellspacing="0">
                        <tbody>
                            <tr>
                                <th style="border-right: 1px solid #ddd; padding-left: 5px !important;">First Name
                                </th>
                                <th>Last Name</th>
                                <th style="padding-left: 0px; text-align: center;">Action
                                </th>
                            </tr>
                            <tr>
                                <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important;">Michael
                                </td>
                                <td class="vlignbtm" style="border-right: 1px solid #ddd;">Clarcke</td>
                                <td style="width: 60px;" align="center" valign="middle">
                                    <span>
                                        <input id="ImageButton4" title="Edit" src="../../App_Themes/Theme1/images/edit.png" type="image">
                                        <input id="imgBtnOTherNameDelete" title="Delete" class="imgDelete" src="../../App_Themes/Theme1/images/delete.png" type="image"></span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
</div>
                    
                </div>
            </div>
            <div class="clear">
            </div>
            <div class="brdr radius mrgnTp4 pdng2" style="background: #ddd; display:none;">
                <table style="width: 74.1%;">
                    <asp:Repeater ID="rptCustomField" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td align="right">
                                    <%# Eval("Label") %>
                                     :
                                </td>
                                <td>
                                    <%# Eval("CustomField") %>
                                </td>
                                <td>
                                    <asp:Button ID="btnDelete" Visible="false" runat="server" Text="Remove" CommandArgument='<%# Eval("ID") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                    <tr>
                        <td height="30px"></td>
                    </tr>
                    <asp:Panel ID="pnlField" runat="server" Visible="false">
                        <tr>
                            <td align="right">Field Name :
                            </td>
                            <td>
                                <asp:TextBox ID="txtLabel" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">Type :
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlInputType" runat="server" Style="width: 142px;">
                                    <asp:ListItem Text="Checkbox" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Dropdown" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="RadioButton" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="Textarea" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="Textbox" Value="5"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Button ID="btnAddField" CssClass="buttonGreen small" Text="Add Field" runat="server"
                                    OnClick="btnAddField_Click" />
                                <asp:Button ID="btnCancelField" CssClass="secondary small" Text="Cancel" runat="server"
                                    OnClick="btnCancelField_Click" />
                            </td>
                        </tr>
                    </asp:Panel>
                    <tr id="trCustomFieldButton" runat="server" style="display:none;">
                        <td></td>
                        <td>
                            <asp:Button ID="btnOpenCustomField" CssClass="buttonGreen medium" Text="Add Custom Fields"
                                runat="server" OnClick="btnOpenCustomField_Click" />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="clear" style="display:none;">
            </div>
            <div class="brdr radius mrgnTp4 pdng2" style="display:none;" >
                <table style="width: 74.1%;">
                    <tr>
                        <td style="width: 126px;" align="right">
                            <label class="input-label">
                                Created  :</label>
                        </td>
                        <td>
                            <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                                ID="txtCreated" Enabled="false" runat="server"></asp:TextBox>
                        </td>
                        <td style="width: 112px;" align="right">
                            <label class="input-label">
                                Created By  :</label>
                        </td>
                        <td>
                            <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtCreatedBy" runat="server"
                                Enabled="false"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label">
                                Modified  :</label>
                        </td>
                        <td>
                            <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                                ID="txtModified" Enabled="false" runat="server"></asp:TextBox>
                        </td>
                        <td align="right">
                            <label class="input-label">
                                Modified By  :</label>
                        </td>
                        <td>
                            <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtModifiedBy" Enabled="false"
                                runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="toolBar" style="padding: 4px;">
            <span class="fltlft">
                <%--<asp:Button ID="btnShowHistory" CssClass="buttonGreen medium" runat="server" Text="Show History"
                    OnClick="btnShowHistory_Click" />--%>
               <%-- <asp:LinkButton runat="server" Enabled="false" ToolTip="Previous" CssClass="link-next-prev btn-info btn-sm"
                    ID="lnkPrev"><<</asp:LinkButton>
                <asp:LinkButton runat="server" Enabled="false" ToolTip="Next" CssClass="link-next-prev btn-info btn-sm"
                    ID="lnkNext">>></asp:LinkButton>
                <asp:Button ID="btnShowCurrent" Enabled="false" CssClass="buttonGreen medium" runat="server"
                    Text="Show Current" OnClick="btnShowCurrent_Click" />--%>
            </span><span class="fltrt">
                <asp:Button ID="btnIndividualSave" ValidationGroup="VGIndividual" CssClass="buttonGreen medium"
                    runat="server" Text="Save" CausesValidation="true" OnClick="btnIndividualSave_Click" />
                <asp:LinkButton ID="lnkIndividualCancel" CssClass="secondary medium bottom" runat="server">Cancel</asp:LinkButton></span><%--  OnClick="lnkIndividualCancel_Click"--%>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
