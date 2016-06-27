<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucEligibility.ascx.cs"
    Inherits="NVBMT_WebProject.Modules.IndiVidual.ucAdvRoster" %>
<style>
    .link-edit {
        text-decoration: none;
        padding: 2.5px 10px;
    }
</style>
<div class="clear textBoxAlign">
    <div class="clear textBoxAlign" style="padding-bottom: 40px;">
        <div style="padding-bottom: 30px;" class="divLicenseInfon divaddnew" id="pnlAddNewButton"
        runat="server">
        <span style="float: right; margin-right: 0px;">
            <asp:Button ID="btnAddNew" CssClass="buttonGreen medium" runat="server" Text="Add New"
                CausesValidation="true" OnClick="btnAddNew_Click" />
        </span>
    </div>
        <div id="AddLicenseIfo" runat="server" visible="false">
            <table style="width: 100%; margin-top: 21px;"><tr>
            <td colspan="8">
                                <div>
                                    <table style="width: 100%;">
                                        <tr>
                                            <td align="right" style="width: 126px;">
                                                <label class="input-label">Work Status :</label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList3" Style="width: 143px;" runat="server">
                                                    <asp:ListItem Value="1">Independent Contracter</asp:ListItem>
                                                    <asp:ListItem Value="2">Government Contacts</asp:ListItem>
                                                    <asp:ListItem Value="3">Ex-Self-Employed</asp:ListItem>
                                                    <asp:ListItem Value="4">Ex-Paying for Space</asp:ListItem>
                                                    <asp:ListItem Value="5">Ex-Owner</asp:ListItem>
                                                    <asp:ListItem Value="6">Ex-Other Employments</asp:ListItem>
                                                    <asp:ListItem Value="7">Ex-Employer</asp:ListItem>
                                                    <asp:ListItem Value="8">Ex-Employee</asp:ListItem>
                                                    <asp:ListItem Value="7">Employer</asp:ListItem>
                                                    <asp:ListItem Value="8">Employee</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td></td>
                                            <td></td>
                                            <td align="right" style="width: 132px;">
                                                <label class="input-label">Member ID :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox7" Text="16899" runat="server"></asp:TextBox>

                                            </td>
                                            
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">Company Name :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox8" Text="SPA Luxe" runat="server"></asp:TextBox>

                                            </td>
                                            <td></td>
                                            <td></td>
                                            <td align="right">
                                                <label class="input-label">Contact :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox9" Text="Spring, Roger" runat="server"></asp:TextBox>

                                            </td>
                                            
                                        </tr>
                                        <tr>
                                            <td colspan="6">
                                                <table class=" tblApplReqForm5" style="width: 100%; margin: 0px auto;">
                        <tr>
                            <td style="vertical-align: middle; width: 122px;" align="right">
                                <label class="input-label required">
                                    Street :
                                </label>
                            </td>
                            <td colspan="5">
                                <asp:TextBox ID="TextBox15" runat="server" Width="500px" CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                               
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td colspan="5">
                                <asp:TextBox ID="TextBox16" runat="server" Width="500px" CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label required">
                                    City :
                                </label>
                            </td>
                            <td style="width: 151px;">
                                <asp:TextBox ID="TextBox17" Text="Redwood City" runat="server" CssClass="calWidth OnlyAlphabet" Width="135px"
                                    MaxLength="500"></asp:TextBox>
                                
                            </td>
                            <td align="right" style="width: 52px;">
                                <label class="input-label required">
                                    State :
                                </label>
                            </td>
                            <td style="width: 106px;">
                               
                                <asp:DropDownList ID="ddlState" runat="server" Width="98px" CssClass="inputTextbox"
                                                                        title="Select your state">
                                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                        <asp:ListItem Value="-1">------ STATES OF USA --------</asp:ListItem>
                                                                        <asp:ListItem Value="AK">ALASKA</asp:ListItem>
                                                                        <asp:ListItem Value="AL">ALABAMA</asp:ListItem>
                                                                        <asp:ListItem Value="AR">ARKANSAS</asp:ListItem>
                                                                        <asp:ListItem Value="AZ">ARIZONA</asp:ListItem>
                                                                        <asp:ListItem Selected="True" Value="CA">CALIFORNIA</asp:ListItem>
                                                                        <asp:ListItem Value="CO">COLORADO</asp:ListItem>
                                                                        <asp:ListItem Value="CT">CONNECTICUT</asp:ListItem>
                                                                        <asp:ListItem Value="DC">DISTRICT OF COLUMBIA</asp:ListItem>
                                                                        <asp:ListItem Value="DE">DELAWARE</asp:ListItem>
                                                                        <asp:ListItem Value="FL">FLORIDA</asp:ListItem>
                                                                        <asp:ListItem Value="GA">GEORGIA</asp:ListItem>
                                                                        <asp:ListItem Value="HI">HAWAII</asp:ListItem>
                                                                        <asp:ListItem Value="IA">IOWA</asp:ListItem>
                                                                        <asp:ListItem Value="ID">IDAHO</asp:ListItem>
                                                                        <asp:ListItem Value="IL">ILLINOIS</asp:ListItem>
                                                                        <asp:ListItem Value="IN">INDIANA</asp:ListItem>
                                                                        <asp:ListItem Value="KS">KANSAS</asp:ListItem>
                                                                        <asp:ListItem Value="KY">KENTUCKY</asp:ListItem>
                                                                        <asp:ListItem Value="LA">LOUISIANA</asp:ListItem>
                                                                        <asp:ListItem Value="MA">MASSACHUSETTS</asp:ListItem>
                                                                        <asp:ListItem Value="MD">MARYLAND</asp:ListItem>
                                                                        <asp:ListItem Value="ME">MAINE</asp:ListItem>
                                                                        <asp:ListItem Value="MI">MICHIGAN</asp:ListItem>
                                                                        <asp:ListItem Value="MN">MINNESOTA</asp:ListItem>
                                                                        <asp:ListItem Value="MO">MISSOURI</asp:ListItem>
                                                                        <asp:ListItem Value="MS">MISSISSIPPI</asp:ListItem>
                                                                        <asp:ListItem Value="MT">MONTANA</asp:ListItem>
                                                                        <asp:ListItem Value="NE">NEBRASKA</asp:ListItem>
                                                                        <asp:ListItem Value="NC">NORTH CAROLINA</asp:ListItem>
                                                                        <asp:ListItem Value="ND">NORTH DAKOTA</asp:ListItem>
                                                                        <asp:ListItem Value="NH">NEW HAMPSHIRE</asp:ListItem>
                                                                        <asp:ListItem Value="NJ">NEW JERSEY</asp:ListItem>
                                                                        <asp:ListItem Value="NM">NEW MEXICO</asp:ListItem>
                                                                        <asp:ListItem Value="NY">NEW YORK</asp:ListItem>
                                                                        <asp:ListItem Value="NV">NEVADA</asp:ListItem>
                                                                        <asp:ListItem Value="OH">OHIO</asp:ListItem>
                                                                        <asp:ListItem Value="OK">OKLAHOMA</asp:ListItem>
                                                                        <asp:ListItem Value="OR">OREGON</asp:ListItem>
                                                                        <asp:ListItem Value="PA">PENNSYLVANIA</asp:ListItem>
                                                                        <asp:ListItem Value="RI">RHODE ISLAND</asp:ListItem>
                                                                        <asp:ListItem Value="SC">SOUTH CAROLINA</asp:ListItem>
                                                                        <asp:ListItem Value="SD">SOUTH DAKOTA</asp:ListItem>
                                                                        <asp:ListItem Value="TN">TENNESSEE</asp:ListItem>
                                                                        <asp:ListItem Value="TX">TEXAS</asp:ListItem>
                                                                        <asp:ListItem Value="UT">UTAH</asp:ListItem>
                                                                        <asp:ListItem Value="VA">VIRGINIA</asp:ListItem>
                                                                        <asp:ListItem Value="VT">VERMONT</asp:ListItem>
                                                                        <asp:ListItem Value="WA">WASHINGTON</asp:ListItem>
                                                                        <asp:ListItem Value="WI">WISCONSIN</asp:ListItem>
                                                                        <asp:ListItem Value="WV">WEST VIRGINIA</asp:ListItem>
                                                                        <asp:ListItem Value="WY">WYOMING</asp:ListItem>
                                                                        <asp:ListItem Value="-1">------ STATES OF CANADA -------</asp:ListItem>
                                                                        <asp:ListItem Value="AB">Alberta</asp:ListItem>
                                                                        <asp:ListItem Value="BC">British Columbia </asp:ListItem>
                                                                        <asp:ListItem Value="MB">Manitoba </asp:ListItem>
                                                                        <asp:ListItem Value="NB">New Brunswick </asp:ListItem>
                                                                        <asp:ListItem Value="NL">Newfoundland and Labrador </asp:ListItem>
                                                                        <asp:ListItem Value="NT">Northwest Territories </asp:ListItem>
                                                                        <asp:ListItem Value="NS">Nova Scotia </asp:ListItem>
                                                                        <asp:ListItem Value="NU">Nunavut </asp:ListItem>
                                                                        <asp:ListItem Value="ON">Ontario </asp:ListItem>
                                                                        <asp:ListItem Value="PE">Prince Edward Island </asp:ListItem>
                                                                        <asp:ListItem Value="QC">Quebec </asp:ListItem>
                                                                        <asp:ListItem Value="SK">Saskatchewan </asp:ListItem>
                                                                        <asp:ListItem Value="YT">Yukon </asp:ListItem>
                                                                        <asp:ListItem Value="00">------- Other States -------</asp:ListItem>
                                                                    </asp:DropDownList>
                                
                               
                            </td>
                            <td align="right" style="width: 47px;">
                                <label class="input-label required">
                                    Zip :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox18" MaxLength="12" Width="101px" Placeholder="xxxxx-xxxx or xxxxx"
                                    title="zip code is required" runat="server" CssClass="calWidth zip_us"></asp:TextBox>
                                
                            </td>
                        </tr>
                    </table>
                                            </td>
                                        </tr>
                                        <tr>
                                          <td colspan="6">
                                              <div id="divVerifyAddressBtn" runat="server" style="padding: 10px;">
                        <span class="fltrt" style="margin-right: 66px;">
                            <asp:Button ID="Button2" OnClick="btnVerifyHomeAddressEdit_Click" CssClass="btn-success btn-xs" runat="server"
                                 Text="Verify Address" />
                        </span>
                    </div>
                                          </td>  
                                        </tr>
                                        <tr>
                                            <td colspan="6">
                                                <div id="divVerifyAddressPnl" runat="server" visible="false" class="address-box">
                        <div>
                            <span class="fltrt">
                                <asp:ImageButton ID="ImageButton1" ImageUrl="~/App_Themes/Theme1/images/close-icon.png"
                                    runat="server" OnClick="btnVerifyAddressYes_Click" />
                            </span>
                        </div>
                        <div>
                            <table style="width: 100%;">
                                <tr>
                                    <td style="width: 50%;">
                                        <p style="font-size: 14px; font-weight: bold; padding-left: 58px;">
                                            User Address</p>
                                    </td>
                                    <td style="width: 50%;">
                                        <p style="font-size: 14px; font-weight: bold; padding-left: 55px;">
                                            Verified Address</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table style="width: 100%">
                                            <tr>
                                                <td align="right" style="width: 110px;">
                                                    <label class="input-label">
                                                        <b>Street :</b>
                                                    </label>
                                                </td>
                                                <td style="width: 220px;">
                                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label2" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        <b>City :</b>
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label3" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        <b>State :</b>
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label4" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        <b>Zip :</b>
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label5" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="vertical-align: baseline;">
                                        <div id="div3" runat="server">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td align="right" style="width: 107px;">
                                                        <label class="input-label">
                                                            <b>Street :</b>
                                                        </label>
                                                    </td>
                                                    <td style="width: 220px;">
                                                        <asp:Label ID="Label6" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label7" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label">
                                                            <b>City :</b>
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label8" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label">
                                                            <b>State :</b>
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label9" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label">
                                                            <b>Zip :</b>
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label10" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <p style="color: Red; text-align: center;">
                                            <asp:Label ID="Label11" runat="server" Style="display: block; position: relative;
                                                top: 21px;"></asp:Label></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="padding-top: 13px !important;">
                                        <asp:Button ID="Button3" CssClass="btn-warning btn-xs" runat="server"
                                            OnClick="btnVerifyAddressYes_Click" Text="Use User Address" />
                                    </td>
                                    <td align="center">
                                        <asp:Button ID="Button4" CssClass="btn-success btn-xs" runat="server"
                                            OnClick="btnVerifyAddressYes_Click" Text="Use Verified Address" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6">
                                                <div class="clear">
                    </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">Start Date :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox11" CssClass="calender" Text="01/02/2013" runat="server"></asp:TextBox>

                                            </td>
                                            
                                            <td></td>
                                            <td></td>
                                            <td align="right">
                                                <label class="input-label">End Date :</label>
                                            </td>
                                            <td >
                                                <asp:TextBox ID="TextBox12" CssClass="calender" Text="01/02/2015" runat="server"></asp:TextBox>

                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">Source :</label>
                                            </td>
                                            <td colspan="6">
                                                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="toolBar" style="padding: 10px;">
                                    <span class="fltrt">
                                        <asp:Button ID="Button1" CssClass="buttonGreen medium"
                                            runat="server" Text="Save" OnClick="LicenseIfobtnSave_Click" />
                                        <asp:LinkButton ID="LinkButton1" CssClass="secondary medium bottom" runat="server"
                                            OnClick="LicenseIfobtnSave_Click">Cancel</asp:LinkButton></span>
                                </div>
                            </td></tr></table>
        </div>
        <div style="width: 100%; float: right;  margin-top:10px;">
            <div style="min-height: 170px; border: 1px solid rgb(231, 231, 231);">
                <table class="index grid" cellspacing="0" cellpadding="5" style="color: #333333; border: 1px solid #ddd; width: 100%; border-collapse: collapse;">
                    <tbody>
                        <tr>
                            <th scope="col">Work Status
                            </th>
                            <th scope="col">Member ID
                            </th>
                            <th scope="col">Company Name
                            </th>
                            <th scope="col">Contact
                            </th>
                            <th scope="col">Address
                            </th>
                            <th scope="col">Start Date
                            </th>
                            <th scope="col">End Date
                            </th>
                            <th scope="col">Source</th>
                            <th scope="col">Action
                            </th>
                        </tr>
                        <tr id="rowEditMode" runat="server" visible="false">
                            <td colspan="12">
                                <div>
                                    <table style="width: 100%;">
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">Work Status :</label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList2" Style="width: 143px;" runat="server">
                                                    <asp:ListItem Value="1">Independent Contracter</asp:ListItem>
                                                    <asp:ListItem Value="2">Government Contacts</asp:ListItem>
                                                    <asp:ListItem Value="3">Ex-Self-Employed</asp:ListItem>
                                                    <asp:ListItem Value="4">Ex-Paying for Space</asp:ListItem>
                                                    <asp:ListItem Value="5">Ex-Owner</asp:ListItem>
                                                    <asp:ListItem Value="6">Ex-Other Employments</asp:ListItem>
                                                    <asp:ListItem Value="7">Ex-Employer</asp:ListItem>
                                                    <asp:ListItem Value="8">Ex-Employee</asp:ListItem>
                                                    <asp:ListItem Value="7">Employer</asp:ListItem>
                                                    <asp:ListItem Value="8">Employee</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td align="right">
                                                <label class="input-label">Member ID :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox1" Text="16899" runat="server"></asp:TextBox></td>
                                            <td>

                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">Company Name :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox2" Text="SPA Luxe" runat="server"></asp:TextBox></td>
                                            <td align="right">
                                                <label class="input-label">Contact :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox3" Text="Spring, Roger" runat="server"></asp:TextBox></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                            <td style="vertical-align: middle; width: 122px;" align="right">
                                <label class="input-label required">
                                    Street :
                                </label>
                            </td>
                            <td colspan="5">
                                <asp:TextBox ID="txtStreet" runat="server" Width="556px" CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="revStreet" ValidationGroup="VGAddress" ControlToValidate="txtStreet"
                                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                    ErrorMessage="Please enter street."></asp:RequiredFieldValidator>
                               <%-- <asp:ValidatorCalloutExtender ID="vceStreet" runat="server" TargetControlID="revStreet"
                                    PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                </asp:ValidatorCalloutExtender>--%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td colspan="5">
                                <asp:TextBox ID="txtStreet2" runat="server" Width="556px" CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label required">
                                    City :
                                </label>
                            </td>
                            <td style="width: 151px;">
                                <asp:TextBox ID="txtCity" runat="server" CssClass="calWidth OnlyAlphabet" Width="135px"
                                    MaxLength="500"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="revCity" ValidationGroup="VGAddress" ControlToValidate="txtCity"
                                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                    ErrorMessage="Please enter city."></asp:RequiredFieldValidator>
                                <%--<asp:ValidatorCalloutExtender ID="VCEtxtCity" runat="server" TargetControlID="revCity"
                                    PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                </asp:ValidatorCalloutExtender>--%>
                            </td>
                            <td align="right" style="width: 52px;">
                                <label class="input-label required">
                                    State :
                                </label>
                            </td>
                            <td style="width: 106px;">
                             <%--   <asp:DropDownList ID="ddlState12" title="State is required" runat="server" Width="145px !important"
                                    CssClass="inputTextbox">
                                </asp:DropDownList>--%>
                                <asp:RequiredFieldValidator ID="revState" ValidationGroup="VGAddress" ControlToValidate="ddlState"
                                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                    InitialValue="-1" ErrorMessage="Please select state."></asp:RequiredFieldValidator>
                               <%-- <asp:ValidatorCalloutExtender ID="vceddlState" runat="server" TargetControlID="revState"
                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                </asp:ValidatorCalloutExtender>--%>
                            </td>
                            <td align="right" style="width: 47px;">
                                <label class="input-label required">
                                    Zip :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtZip" MaxLength="12" Width="101px" Placeholder="xxxxx-xxxx or xxxxx"
                                    title="zip code is required" runat="server" CssClass="calWidth zip_us"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="REVtxtZIP1" runat="server" Text="*" ErrorMessage="Please enter valid zip code eg: xxxxx-xxxx or xxxxx or T2X 1V4 or T2X1V4."
                                    ControlToValidate="txtZip" Display="None" ForeColor="#FFCCFF" SetFocusOnError="True"
                                    ValidationGroup="VGAddress" ValidationExpression="(^\d{5}(-\d{4})?$)|(^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$)"></asp:RegularExpressionValidator>
                                <%--<asp:ValidatorCalloutExtender ID="VCEzip" runat="server" TargetControlID="REVtxtZIP1"
                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                </asp:ValidatorCalloutExtender>--%>
                                <asp:RequiredFieldValidator ID="RFVtxtZip" runat="server" ErrorMessage="Please enter zip code eg: xxxxx-xxxx or xxxxx."
                                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtZip"
                                    ValidationGroup="VGAddress"></asp:RequiredFieldValidator>
                                <%--<asp:ValidatorCalloutExtender ID="VCEtxtZip" runat="server" TargetControlID="RFVtxtZip"
                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                </asp:ValidatorCalloutExtender>--%>
                            </td>
                        </tr>
                                        <tr>
                                            <td colspan="12">
                                                <div class="clear">
                    </div>
                    <div id="divVerifyHomeAddressBtn" runat="server" style="padding: 10px;">
                        <span class="fltrt" style="margin-right: 66px;">
                            <asp:Button ID="btnVerifyHomeAddress" CssClass="btn-success btn-xs" runat="server"
                                OnClick="btnVerifyHomeAddress_Click" Text="Verify Address" />
                        </span>
                    </div>
                    <div id="divVerifyHomeAddressPnl" runat="server" visible="false" class="address-box">
                        <div>
                            <span class="fltrt">
                                <asp:ImageButton ID="imgbtnCloseVerifyMailingAddress" ImageUrl="~/App_Themes/Theme1/images/close-icon.png"
                                    runat="server" OnClick="btnVerifyHomeAddressYes_Click" />
                            </span>
                        </div>
                        <div>
                            <table style="width: 100%;">
                                <tr>
                                    <td style="width: 50%;">
                                        <p style="font-size: 14px; font-weight: bold; padding-left: 58px;">
                                            User Address</p>
                                    </td>
                                    <td style="width: 50%;">
                                        <p style="font-size: 14px; font-weight: bold; padding-left: 55px;">
                                            Verified Address</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table style="width: 100%">
                                            <tr>
                                                <td align="right" style="width: 110px;">
                                                    <label class="input-label">
                                                        <b>Street :</b>
                                                    </label>
                                                </td>
                                                <td style="width: 220px;">
                                                    <asp:Label ID="lblUHomeStreet1" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblUHomeStreet2" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        <b>City :</b>
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblUHomeCity" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        <b>State :</b>
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblUHomeState" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        <b>Zip :</b>
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblUHomeZip" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="vertical-align: baseline;">
                                        <div id="divNotVerifiedAdd" runat="server">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td align="right" style="width: 107px;">
                                                        <label class="input-label">
                                                            <b>Street :</b>
                                                        </label>
                                                    </td>
                                                    <td style="width: 220px;">
                                                        <asp:Label ID="lblVHomeStreet1" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblVHomeStreet2" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label">
                                                            <b>City :</b>
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblVHomeCity" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label">
                                                            <b>State :</b>
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblVHomeState" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label">
                                                            <b>Zip :</b>
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblVHomeZip" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <p style="color: Red; text-align: center;">
                                            <asp:Label ID="lblUnverifiedAdd" runat="server" Style="display: block; position: relative;
                                                top: 21px;"></asp:Label></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="padding-top: 13px !important;">
                                        <asp:Button ID="btnVerifyHomeAddressYes" CssClass="btn-warning btn-xs" runat="server"
                                            OnClick="btnVerifyHomeAddressYes_Click" Text="Use User Address" />
                                    </td>
                                    <td align="center">
                                        <asp:Button ID="btnVerifyHomeAddressNo" CssClass="btn-success btn-xs" runat="server"
                                            OnClick="btnVerifyHomeAddressNo_Click" Text="Use Verified Address" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="clear">
                    </div>
                                            </td>
                                        </tr>


                                        <tr>
                                            <td align="right">
                                                <label class="input-label">Address :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox4" Text="271 Redwood Shores Pkwy Redwood City, CA 94056-1176"
                                                    runat="server"></asp:TextBox></td>
                                            <td align="right">
                                                <label class="input-label">Start Date :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox5" CssClass="calender" Text="01/02/2013" runat="server"></asp:TextBox></td>
                                        </tr>
                                        
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">End Date :</label>
                                            </td>
                                            <td colspan="3">
                                                <asp:TextBox ID="TextBox6" CssClass="calender" Text="01/02/2015" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 98px;">
                                                <label class="input-label">Source :</label>
                                            </td>
                                            <td colspan="3">
                                                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </div>


                                <div class="toolBar" style="padding: 10px;">
                                    <span class="fltrt">
                                        <asp:Button ID="btnSave" CssClass="buttonGreen medium"
                                            runat="server" Text="Save" OnClick="btnSave_Click" />
                                        <asp:LinkButton ID="lnkIndividualCancel" CssClass="secondary medium bottom" runat="server"
                                            OnClick="btnSave_Click">Cancel</asp:LinkButton></span>
                                </div>
                            </td>
                        </tr>
                        <tr id="rowGrid" runat="server">
                            <td style="width: 80px;">
                               Government Contacts
                            </td>
                            <td style="width: 80px;">16899
                            </td>
                            <td style="width: 100px;">SPA Luxe
                            </td>
                            <td>Spring, Roger
                            </td>
                            <td>271 Redwood
                                <br />
                                Shores Pkwy
                                <br />
                                Redwood City, CA 94056-1176
                            </td>
                            <td>01/02/2013
                            </td>
                            <td>01/02/2015
                            </td>
                            <td>A</td>
                            <td><span>
                                <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete"
                                    runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" OnClick="btnEdit_Click" />
                                <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                    ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                    OnClientClick="javascript:return confirm('Are you sure you want to delete?');" />
                            </span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<div class="buttons iefix-5 inline" runat="server" id="DivbtnHistory">
    <div class="toolBar" style="padding: 4px; display:none;">
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
