<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucEducation.ascx.cs"
    Inherits="NVBMT_WebProject.Modules.IndiVidual.ucEducation" %>
<div>

    <div class="divLicenseInfon divaddnew" id="divEducationt2" runat="server" style="height: 30px;">
        <span style="float: right;">
            <asp:Button ID="btnEducation2AddNew" ValidationGroup="vgAffidavit" CssClass="buttonGreen small"
                runat="server" Text="Add Education" CausesValidation="true" OnClick="btnEducation2AddNew_Click" />
        </span>
    </div>
    <div id="divAddPanelEducation2" runat="server" visible="false" class="brdr radius">
        <table class="tblApplReqForm5" style="width: 93%;">
            <tr>
                <td colspan="4" align="left" style="padding-left: 150px;">
                    <label class="input-label required">
                        Full name of Massage Therapy School you attended :
                    </label>
                </td>
            </tr>
            <tr>

                <td colspan="4" style="padding: 0px !important;" align="right">
                    <asp:TextBox ID="txtEdu1SchoolName" Style="width: 500px !important; margin-right: 22px;" runat="server"
                        CssClass="tooltip OnlyAlphabet inputTextbox calWidth" MaxLength="150" title="Only A-Z characters are allowed."></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="txtalgnrgt" style="width: 145px; text-align: right;">
                    <label class="input-label required">
                        Country :
                    </label>
                </td>
                <td colspan="3">
                    <asp:DropDownList ID="ddlEduCountryName" runat="server" CssClass="inputTextbox">
                        <asp:ListItem Value="US">USA</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <table style="margin-top: -3px;">
                        <tr>
                            <td style="vertical-align: middle; width: 142px;text-align: right;" class="txtalgnrgt">
                                <label class="input-label required">
                                    Street :
                                </label>
                            </td>
                            <td colspan="5">
                                <asp:TextBox ID="txtEdu1Street" runat="server" Style="width: 500px !important;" CssClass="calWidth"
                                    MaxLength="500"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td colspan="5">
                                <asp:TextBox ID="txtEdu1Street2" runat="server" Style="width: 500px !important;"
                                    CssClass="calWidth" MaxLength="500"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="txtalgnrgt" style="text-align: right;">
                                <label class="input-label required">
                                    City :
                                </label>
                            </td>
                            <td style="width: 135px;">
                                <asp:TextBox ID="txtEdu1City" runat="server" CssClass="tooltip calWidth" Width="124px"
                                    MaxLength="500"></asp:TextBox>
                            </td>
                            <td class="txtalgnrgt" style="width: 52px;text-align: right;">
                                <label class="input-label required">
                                    State :
                                </label>
                            </td>
                            <td style="width: 122px;">
                                <asp:DropDownList ID="ddlEdu1State" runat="server" Style="width: 122px !important;"
                                    CssClass="inputTextbox">
                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                    <asp:ListItem Value="-1">------ STATES OF USA --------</asp:ListItem>
                                    <asp:ListItem Value="AK">ALASKA</asp:ListItem>
                                    <asp:ListItem Value="AL">ALABAMA</asp:ListItem>
                                    <asp:ListItem Value="AR">ARKANSAS</asp:ListItem>
                                    <asp:ListItem Value="AZ">ARIZONA</asp:ListItem>
                                    <asp:ListItem Value="CA" Selected="True">CALIFORNIA</asp:ListItem>
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
                            <td class="txtalgnrgt" style="width: 47px;text-align: right;">
                                <label class="input-label required">
                                    Zip :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtEdu1Zip" runat="server" CssClass="zip_us" placeholder="xxxxx-xxxx or xxxxx" Width="127px"
                                    MaxLength="500"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="txtalgnrgt" style="text-align: right;">
                    <label class="input-label required">
                        School Phone :
                    </label>
                </td>
                <td>
                    <asp:TextBox ID="txtEdu1SchoolPhone" runat="server" CssClass="inputTextbox calWidth phone_us"></asp:TextBox>
                </td>
                <td class="txtalgnrgt" style="width: 197px;text-align: right;">
                    <label class="input-label">
                        School Email :
                    </label>
                </td>
                <td>
                    <asp:TextBox ID="txtEdu1SchoolEmail" style="width: 123px ! important;" runat="server" CssClass="inputTextbox calWidth"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="txtalgnrgt" style="text-align: right;">
                    <label class="input-label required">
                        School Website :
                    </label>
                </td>
                <td>
                    <asp:TextBox ID="txtEdu1SchoolWebsite" runat="server" CssClass="inputTextbox calWidth"></asp:TextBox>
                </td>
                <td class="txtalgnrgt" style="text-align: right;">
                    <label class="input-label">
                        Compelling Evidence :
                    </label>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox2" runat="server" /></td>
            </tr>
            <tr>
                <td class="txtalgnrgt" style="text-align: right;">
                    <label class="input-label required">
                        Contact Person Name :
                    </label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="inputTextbox calWidth"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="txtalgnrgt" style="text-align: right;">
                    <label class="input-label required">
                        CEUs Received :
                    </label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="inputTextbox calWidth"></asp:TextBox>
                </td>

            </tr>
        </table>
        <table class=" tblApplReqForm5 wthtop20" style="width: 93%;">

            <tr>
                <td class="txtalgnrgt" style="text-align: right;">
                    <label class="input-label required">
                        Date Started Program :
                    </label>
                </td>
                <td style="width: 143px;">
                    <asp:TextBox ID="txtEducationStartDate" placeholder="MM/DD/YYYY" CssClass="inputTextbox calender"
                        runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="txtalgnrgt" style="text-align: right;">
                    <label class="input-label required">
                        Date Completed Program (Graduation Date) :
                    </label>
                </td>
                <td>
                    <asp:TextBox ID="txtEducationEndDate" placeholder="MM/DD/YYYY" CssClass="inputTextbox calender"
                        runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="txtalgnrgt" style="text-align: right;">
                    <label class="input-label required">
                        Total number of documented hours of education completed at this school :
                    </label>
                </td>
                <td>
                    <asp:TextBox ID="txtEducationHRS" CssClass="inputTextbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="left" style="padding-left: 38px;text-align: right;">
                    <label class="input-label">
                        If you did not graduate, please type in your own brief explanation for non-graduation.
                    </label>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="left" style="padding-left: 38px;text-align: right;">
                    <label class="input-label">
                        My Own Explanation :
                    </label>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="right">
                    <asp:TextBox ID="txtExplainNoneGraduate" Style="width: 617px !important;" CssClass="inputTextbox"
                        TextMode="MultiLine" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
            <span class="fltrt">
                <asp:Button ID="btnEducation2Save" ValidationGroup="VGSchool" CssClass="buttonGreen medium"
                    runat="server" Text="Save" CausesValidation="true" OnClick="btnEducation2Save_Click" />
                <asp:LinkButton ID="lnkEducation2Cancel" CssClass="secondary medium bottom buttonalignment"
                    runat="server" OnClick="lnkEducation2Cancel_Click">Cancel</asp:LinkButton></span>
        </div>
    </div>
    <div class="divLicenseInfo">
        <asp:GridView ID="gvEducation2" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
            CssClass="index brdr radius mrgnTp4 pdng2 grid" Width="100%" CellPadding="5"
            ForeColor="#333333" GridLines="None" OnRowDataBound="gvEducation2_RowDataBound">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="School Name">
                    <ItemStyle />
                    <EditItemTemplate>
                        <asp:UpdatePanel runat="server" ID="MassageTrainingandEducationUp2">
                            <ContentTemplate>
                                <div class="divGridEdit">
                                    <p class="addNewDiv">
                                        <span>Education</span>
                                    </p>
                                    <table class=" tblApplReqForm5 wthtop20" style="width: 99%;">
                                        <tr>
                                            <td colspan="4" align="left" style="padding-left: 150px;">
                                                <label class="input-label required">
                                                    Full name of Massage Therapy School you attended :
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="4" style="padding: 0px !important;" align="right">
                                                <asp:TextBox ID="txtEdu1SchoolNameEdit" Style="width: 519px !important; margin-right: 21px;" runat="server"
                                                    CssClass="tooltip OnlyAlphabet inputTextbox calWidth" Text="NATIONAL HOLISTIC INSTITUTE"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="txtalgnrgt" style="width: 145px;">
                                                <label class="input-label required">
                                                    Country :
                                                </label>
                                            </td>
                                            <td colspan="3">
                                                <asp:DropDownList ID="ddlEduCountryNameEdit" Style="width: 151px;" runat="server"
                                                    CssClass="inputTextbox">
                                                    <asp:ListItem Value="US">USA</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="4">
                                                <table style="margin-top: -3px;">
                                                    <tr>
                                                        <td style="vertical-align: middle; width: 142px;" class="txtalgnrgt">
                                                            <label class="input-label required">
                                                                Street :
                                                            </label>
                                                        </td>
                                                        <td colspan="5">
                                                            <asp:TextBox ID="txtEdu1StreetEdit" Text="3675 Lakeside Dr" runat="server" Style="width: 520px !important;"
                                                                CssClass="calWidth" MaxLength="500"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td colspan="5">
                                                            <asp:TextBox ID="txtEdu1Street2Edit" runat="server" Style="width: 520px !important;"
                                                                CssClass="calWidth" MaxLength="500"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="txtalgnrgt">
                                                            <label class="input-label required">
                                                                City :
                                                            </label>
                                                        </td>
                                                        <td style="width: 135px;">
                                                            <asp:TextBox ID="txtEdu1CityEdit" runat="server" Text="EMERYVILLE" CssClass="tooltip calWidth"
                                                                Width="124px" MaxLength="500"></asp:TextBox>
                                                        </td>
                                                        <td class="txtalgnrgt" style="width: 52px;">
                                                            <label class="input-label required">
                                                                State :
                                                            </label>
                                                        </td>
                                                        <td style="width: 122px;">
                                                            <asp:DropDownList ID="ddlEdu1StateEdit" runat="server" Style="width: 122px !important;"
                                                                CssClass="inputTextbox">
                                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                <asp:ListItem Value="-1">------ STATES OF USA --------</asp:ListItem>
                                                                <asp:ListItem Value="AK">ALASKA</asp:ListItem>
                                                                <asp:ListItem Value="AL">ALABAMA</asp:ListItem>
                                                                <asp:ListItem Value="AR">ARKANSAS</asp:ListItem>
                                                                <asp:ListItem Value="AZ">ARIZONA</asp:ListItem>
                                                                <asp:ListItem Value="CA" Selected="True">CALIFORNIA</asp:ListItem>
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
                                                        <td class="txtalgnrgt" style="width: 47px;">
                                                            <label class="input-label required">
                                                                Zip :
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtEdu1ZipEdit" Text="96151" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                Width="148px" CssClass="zip_us" MaxLength="500"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="txtalgnrgt">
                                                <label class="input-label required">
                                                    School Phone :
                                                </label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtEdu1SchoolPhoneEdit" runat="server" Text="(530) 542-0604" CssClass="inputTextbox calWidth phone_us"></asp:TextBox>
                                            </td>
                                            <td class="txtalgnrgt" style="width: 206px;">
                                                <label class="input-label">
                                                    School Email :
                                                </label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtEdu1SchoolEmailEdit" Style="width: 148px ! important;" runat="server" CssClass="inputTextbox calWidth"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="txtalgnrgt">
                                                <label class="input-label">
                                                    School Website :
                                                </label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtEdu1SchoolWebsiteEdit" runat="server" CssClass="inputTextbox calWidth"></asp:TextBox>
                                            </td>
                                            <td class="txtalgnrgt">
                                                <label class="input-label">
                                                    Compelling Evidence :
                                                </label>
                                            </td>
                                            <td>
                                                <asp:CheckBox ID="CheckBox3" runat="server" /></td>
                                        </tr>
                                        <tr>
                                            <td class="txtalgnrgt">
                                                <label class="input-label required">
                                                    CEUs Received :
                                                </label>
                                            </td>
                                            <td colspan="3">
                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="inputTextbox calWidth"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class=" tblApplReqForm5 wthtop20" style="margin: 0 auto; width: 93%;">
                                        <tr>
                                            <td class="txtalgnrgt">
                                                <label class="input-label required">
                                                    Date Started Program :
                                                </label>
                                            </td>
                                            <td style="width: 143px;">
                                                <asp:TextBox ID="txtEducationStartDateEdit" Text="01/02/2012" placeholder="MM/DD/YYYY"
                                                    CssClass="inputTextbox calender" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="txtalgnrgt">
                                                <label class="input-label required">
                                                    Date Completed Program (Graduation Date) :
                                                </label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtEducationEndDateEdit" Text="02/04/2014" placeholder="MM/DD/YYYY"
                                                    CssClass="inputTextbox calender" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="txtalgnrgt">
                                                <label class="input-label required">
                                                    Total number of documented hours of education completed at this school :
                                                </label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtEducationHRSEdit" Text="201" CssClass="inputTextbox" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" align="left">
                                                <label class="input-label">
                                                    If you did not graduate, please type in your own brief explanation for non-graduation.
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" align="left">
                                                <label class="input-label">
                                                    My Own Explanation :
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" align="right">
                                                <asp:TextBox ID="txtExplainNoneGraduateEdit" Style="width: 647px !important; line-height: 20px;"
                                                    Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                                                    CssClass="inputTextbox" TextMode="MultiLine" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                    <div class="clear">
                                    </div>
                                    <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                        <span class="fltrt">
                                            <asp:Button ID="btnEducation2Update" ValidationGroup="VGSchoolEdit" CssClass="buttonGreen medium"
                                                runat="server" Text="Update" CausesValidation="true" OnClick="btnEducation2Update_Click" />
                                            <asp:LinkButton ID="lnkEducation2CancelUpdate" CssClass="secondary medium bottom buttonalignment"
                                                runat="server" OnClick="lnkEducation2CancelUpdate_Click">Cancel</asp:LinkButton></span>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblBusinessName2" runat="server" Text="Label"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date Started">
                    <ItemStyle />
                    <ItemTemplate>
                        <asp:Label ID="lblDateStart" runat="server" Text="Label"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date Completed">
                    <ItemStyle />
                    <ItemTemplate>
                        <asp:Label ID="lblDateComplete" runat="server" Text="Label"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Total Hrs">
                    <ItemStyle />
                    <ItemTemplate>
                        <asp:Label ID="lblTotalHRS" runat="server" Text="Label"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Closed">
                    <ItemStyle />
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Explanation">
                    <ItemTemplate>
                        <span>
                            <asp:ImageButton ID="imgbtnNotepad" Enabled="false" Width="20px" ToolTip="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                runat="server" ImageUrl="~/App_Themes/Theme1/images/notepad.png" />
                        </span>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ItemStyle-Width="60px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                    <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                    <ItemTemplate>
                        <span class="fltrt AfterApproved">
                            <asp:ImageButton ID="imgbtnEducation2Edit" CssClass="imgDelete" CommandArgument="1"
                                runat="server" RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                OnClick="lnkEducation2Edit_Click" />
                            <asp:ImageButton ID="imgBtnEducation2Delete" CssClass="imgDelete" runat="server"
                                ToolTip="Delete" CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                OnClientClick="javascript:return confirm('Are you sure you want to delete?')"
                                OnClick="lnkEducation2Delete_Click" /></span>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <div style="width: 100%; height: 50px; border: 0px; padding: 3px">
                    No record found.
                </div>
            </EmptyDataTemplate>
        </asp:GridView>
    </div>
    <div class="clear">
    </div>
    <div id="divAddButtonQ22" runat="server" class="divLicenseInfon divaddnew" style="height: 30px;">
        <span style="float: right;" class="AfterApproved">
            <asp:Button ID="btnAddNewQ22" CssClass="buttonGreen small" OnClick="btnAddNewQ22_Click" runat="server" Text="Add New" />
        </span>
    </div>
    <table id="tbpAddNewQ22" runat="server" visible="false" style="width: 100%; margin-top: 10px;">
        <tr>

            <td class="txtalgnrgt">
                <label class="input-label require">Exam Name : </label>
            </td>
            <td>
                <asp:DropDownList ID="ddlExamList" runat="server" CssClass="inputTextbox ">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>MBLEX</asp:ListItem>
                    <asp:ListItem>BCTMB</asp:ListItem>
                    <asp:ListItem>NCETM taken on before February 1, 2015</asp:ListItem>
                    <asp:ListItem>NCETMB taken on or before February 1, 2015</asp:ListItem>
                    <asp:ListItem>New York State Massage Therapy Examination</asp:ListItem>
                </asp:DropDownList></td>
            <td class="txtalgnrgt">
                <label class="input-label require">Pass Date : </label>
            </td>
            <td>
                <asp:TextBox ID="txtPassedDate" runat="server" CssClass="inputTextbox  calender"></asp:TextBox></td>
        </tr>

        <tr>

            <td colspan="4">
                <div class="toolBar">
                    <span class="fltrt">
                        <asp:Button ID="btnSave" CssClass="buttonGreen medium" OnClick="btnSaveNewQ22_Click" runat="server" Text="Save" />
                        <asp:Button ID="Button16" CssClass="secondary medium" runat="server" OnClick="btnCancelNewQ22_Click" Text="Cancel" />


                    </span>
                </div>
            </td>
        </tr>


    </table>
    <div class="divLicenseInfo" style="margin-top: 5px">
        <asp:GridView ID="gvExams" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
            CssClass="index grid" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Exam Name">
                    <ItemStyle />
                    <ItemTemplate><span>&nbsp;MBLEX</span></ItemTemplate>
                    <EditItemTemplate>
                        <div class="divGridEdit">
                            <table id="tbpAddNewQ22" runat="server" style="width: 100%">
                                <tr>

                                    <td class="txtalgnrgt">
                                        <label class="input-label require">Exam Name : </label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlExamList" runat="server" CssClass="inputTextbox">
                                            <asp:ListItem>Select</asp:ListItem>
                                            <asp:ListItem Selected="True">MBLEX</asp:ListItem>
                                            <asp:ListItem>BCTMB</asp:ListItem>
                                            <asp:ListItem>NCETM taken on before February 1, 2015</asp:ListItem>
                                            <asp:ListItem>NCETMB taken on or before February 1, 2015</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td class="txtalgnrgt">
                                        <label class="input-label require">Pass Date : </label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtPassedDate" Text="09/16/2014" runat="server" CssClass="inputTextbox calender"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="4">
                                        <div class="toolBar">
                                            <span class="fltrt">
                                                <asp:Button ID="btnSave" CssClass="buttonGreen small" runat="server" OnClick="btnSaveNewQ22Edit_Click" Text="Update" />
                                                <asp:Button ID="Button8" CssClass="secondary small" runat="server" OnClick="btnCancelNewQ22Edit_Click" Text="Cancel" />

                                            </span>
                                        </div>
                                    </td>

                                </tr>
                            </table>
                        </div>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Pass Date">
                    <ItemStyle />
                    <ItemTemplate><span>09/16/2014</span></ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ItemStyle-Width="60px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                    <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                    <ItemTemplate>
                        <span class="fltrt AfterApproved">
                            <asp:ImageButton ID="imgbtnEducation1Edit" CssClass="imgDelete" CommandArgument="1"
                                runat="server" RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                OnClick="lnkExam1Edit_Click" />
                            <asp:ImageButton ID="imgBtnEducation1Delete" CssClass="imgDelete" runat="server"
                                ToolTip="Delete" CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                OnClientClick="javascript:return confirm('Are you sure you want to delete?')"
                                OnClick="lnkExam1Delete_Click" /></span>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <div class="buttons iefix-5 inline" runat="server" id="DivbtnHistory">
        <div class="toolBar" style="padding: 4px;">
            <span class="fltlft" style="float:right;">
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
