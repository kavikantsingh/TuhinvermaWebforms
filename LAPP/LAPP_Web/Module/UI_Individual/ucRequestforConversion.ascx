<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucRequestforConversion.ascx.cs" Inherits="Module_UI_Individual_RequestforConversion" %>
<style>
    .chlbx input {
        float: left;
    }

    .chlbx label {
        padding-left: 5px;
        padding-right: 5px;
    }

    .address-box {
        position: relative;
        margin-top: -115px;
        min-height: 100px;
        box-shadow: 0px 2px 6px 3px #CECECE;
        background-color: rgb(239, 255, 247);
        z-index: 100;
        padding: 0px 0px 13px 0px;
        width: 98%;
        border-radius: 4px;
    }

        .address-box table tr td {
            padding: 0px !important;
        }

    .blockheader {
        height: 30px;
        background-color: #E5EDF2;
        width: 99.1%;
        border: 1px solid #DDE3EC;
        border-radius: 2px;
        color: #595959;
        font-size: 15px;
        font-weight: bold;
        padding-left: 5px;
        text-align: center;
    }
</style>
<div style="float: left; padding-left: 25%;">
    <p style="text-align: center; vertical-align: middle; text-indent: 119px; margin-top: 10px; padding-bottom: 10px;">


        <span style="display: block; font-weight: bold; font-size: 16px;">Request for Conversion</span>
        <span style="display: block; font-weight: bold; font-size: 16px;">CMP to CMT</span>
        <span style="display: block; font-weight: bold; font-size: 15px;"><i>Ver. 2015</i></span>

    </p>
</div>
<div style="width: 74%; margin: auto auto auto 12%; border: 1px solid #dedede; float: left;" class="mainrightpanel">
    <p>
        <span class="HeaddingMainSpn"></span>
    </p>

    <asp:Panel ID="pnlApplicatinInstructions" runat="server">
        <asp:UpdatePanel runat="server" ID="upInstruction">
            <ContentTemplate>
                <div>
                    <fieldset class="flsLiveScanApp flsLiveScanApp1">
                        <asp:Literal ID="ltrErrorMesageInstructionEdit" runat="server"></asp:Literal>
                        <table class="tblLiveScanApp tblLiveScanApp1" width="100%">
                            <tr>

                                <td style="padding-left: 0px;">
                                    <p>
                                        In order to convert your CAMTC Certification from Certified Massage Practitioner (CMP) to Certified Massage 
                                        Therapist (CMT), you must have completed a minimum of 500 hours of education at CAMTC approved school(s) 
                                        with 100 of those 500 hours must be in core curriculum requirements (Anatomy & Physiology, Contraindications, 
                                        Health & Hygiene and Business & Ethics) AND you must have passed a CAMTC approved exam. Currently, the following 
                                        exams are CAMTC approved -: the Massage and Bodywork Licensing Exam (MBLEx); the New York State Massage Therapy 
                                        Examination; the Board Certification Exam for Therapeutic Massage and Bodywork (BCTMB) if taken at anytime; and 
                                        the National Certification Exam for Therapeutic Massage and Bodywork (NCETMB) and the National Certification Exam 
                                        for Therapeutic Massage (NCETM) if taken on or before February 1, 2015. Please fill out this form completely and 
                                        have the official transcripts from your additional education mailed directly from your school to CAMTC. Please 
                                        also contact the exam board to have them transmit your passing results to CAMTC.
                                    </p>
                                </td>
                                <td align="left" class="cursorpointer">
                                    <b></b>
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                </div>
                <div>

                    <fieldset class="flsParentNewApplReqForm flsParentNewApplReqForm1">
                        <p>
                            <b>&nbsp;&nbsp;Full Name :</b>
                        </p>
                        <asp:Literal ID="ltrPersonalInfoEdit" runat="server"></asp:Literal>
                        <div style="width: 100%;">
                            <div>
                                <table class=" tblApplReqForm5 wdtmarauto">
                                    <tr>
                                        <td class="txtalgnrgt" style="width: 130px;">
                                            <label class="input-label required">
                                                First Name :
                                            </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtFirstNameEdit" Text="Kavitharaj" runat="server" CssClass="tooltip capitalize-text OnlyAlphabet inputTextbox NewAppPersonalTxtbx"
                                                MaxLength="150" title="Only A-Z characters are allowed."></asp:TextBox>
                                        </td>
                                        <td class="txtalgnrgt">
                                            <label class="input-label required">
                                                Last Name :
                                            </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtLastNameEdit" runat="server" Text="Basavaraj" CssClass="tooltip capitalize-text OnlyAlphabet inputTextbox NewAppPersonalTxtbx"
                                                MaxLength="150" title="Only A-Z characters are allowed."></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="txtalgnrgt">
                                            <label class="input-label">
                                                Middle Name :
                                            </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtMiddleNameEdit" runat="server" CssClass="tooltip OnlyAlphabet inputTextbox NewAppPersonalTxtbx"
                                                MaxLength="150" title="Only A-Z characters are allowed."></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="txtalgnrgt" style="width: 130px;">
                                            <label class="input-label required">
                                                CAMTC # :
                                            </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="tooltip capitalize-text OnlyAlphabet inputTextbox NewAppPersonalTxtbx"
                                                MaxLength="150" title="Only A-Z characters are allowed."></asp:TextBox>
                                        </td>
                                        <td class="txtalgnrgt">
                                            <label class="input-label required">
                                                Primary Email Address:
                                            </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtPrimaryEmail" runat="server"
                                                CssClass="inputTextbox NewAppPersonalTxtbx" MaxLength="150"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                    </fieldset>
                    <fieldset class="flsApplReqForm flsApplReqForm5">
                        <asp:Literal ID="ltrResidenceAddEdit" runat="server"></asp:Literal>
                        <table class=" tblApplReqForm5">
                            <tr>
                                <td colspan="5">
                                    <b>&nbsp;&nbsp;Home Address :</b>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle; width: 145px;" class="txtalgnrgt">
                                    <label class="input-label required">
                                        Street :
                                    </label>
                                </td>
                                <td colspan="5">
                                    <asp:TextBox ID="txtStreetResEdit" runat="server" Width="482px" CssClass="calWidth us_street"
                                        MaxLength="500"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td colspan="5">
                                    <asp:TextBox ID="txtStreet2ResEdit" runat="server" Width="482px" CssClass="calWidth us_street"
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
                                    <asp:TextBox ID="txtCityResEdit" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                                        Width="124px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                </td>
                                <td class="txtalgnrgt" style="width: 52px;">
                                    <label class="input-label required">
                                        State :
                                    </label>
                                </td>
                                <td style="width: 106px;">
                                    <asp:DropDownList ID="ddlStateResEdit" runat="server" Width="98px" CssClass="inputTextbox"
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
                                <td class="txtalgnrgt" style="width: 47px;">
                                    <label class="input-label required">
                                        Zip :
                                    </label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtZipResEdit" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                        CssClass="tooltip zip_us calWidth" Width="127px" MaxLength="500" title="Enter valid Zip eg: XXXXX-XXXX or XXXXX"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <div id="divVerifyHomeAddressBtn" runat="server" style="padding: 10px;">
                            <span class="fltrt" style="margin-right: 50px;">
                                <asp:Button ID="btnVerifyHomeAddress" CssClass="btn-success btn-xs" runat="server"
                                    OnClick="btnVerifyHomeAddress_Click" Text="Verify Address" />
                            </span>
                        </div>
                        <div id="divVerifyHomeAddressPnl" runat="server" visible="false" class="address-box">
                            <div>
                                <span class="fltrt">
                                    <asp:ImageButton ID="imgbtnCloseVerifyAddress" ImageUrl="~/App_Themes/Theme1/images/close-icon.png"
                                        runat="server" OnClick="btnVerifyHomeAddressYes_Click" />
                                </span>
                            </div>
                            <div>
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 50%;">
                                            <p style="font-size: 14px; font-weight: bold; padding-left: 58px;">
                                                User Address
                                            </p>
                                        </td>
                                        <td style="width: 50%;">
                                            <p style="font-size: 14px; font-weight: bold; padding-left: 55px;">
                                                Verified Address
                                            </p>
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
                                                    <td></td>
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
                                                        <td></td>
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
                                                <asp:Label ID="lblUnverifiedAdd" runat="server" Style="display: block; position: relative; top: 21px;"></asp:Label>
                                            </p>
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
                        <div class="clear"></div>
                        <table class="tblApplReqForm5">
                            <tr>
                                <td colspan="6">
                                    <table class="tblLiveScanApp tblLiveScanApp1" width="100%">
                                        <tr>
                                            <td style="width: 480px; padding-left: 0px;">
                                                <label class="input-label required">
                                                    <b>&nbsp;&nbsp;Is your Mailing Address the same as the above Home Address where you live?</b></label>
                                            </td>
                                            <td align="left" class="cursorpointer">
                                                <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                                    <asp:ListItem Value="0">No</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </td>
                                        </tr>
                                    </table>
                                    <div>
                                        <p style="border: 1px solid #ddd; padding: 6px; line-height: 20px;">
                                            If you answered "No" to question above, then please provide your Mailing Address
                                                below otherwise, you may leave Mailing Address blank and proceed to the next step. Please
                                                note that your Application may be delayed or you may be required to pay additional
                                                processing fees if you provide CAMTC with an incorrect Mailing Address.
                                        </p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    <b>&nbsp;&nbsp;Mailing Address :</b>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle; width: 145px;" class="txtalgnrgt">
                                    <label class="input-label">
                                        Street :
                                    </label>
                                </td>
                                <td colspan="5">
                                    <asp:TextBox ID="txtStreetMailEdit" runat="server" Width="482px" CssClass="calWidth us_street"
                                        MaxLength="500"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td colspan="5">
                                    <asp:TextBox ID="txtStreet2MailEdit" runat="server" Width="482px" CssClass="calWidth us_street"
                                        MaxLength="500"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="txtalgnrgt">
                                    <label class="input-label">
                                        City :
                                    </label>
                                </td>
                                <td style="width: 151px;">
                                    <asp:TextBox ID="txtCityMailEdit" runat="server" Width="133px" CssClass="tooltip OnlyAlphabet calWidth"
                                        MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                </td>
                                <td class="txtalgnrgt" style="width: 52px;">
                                    <label class="input-label">
                                        State :
                                    </label>
                                </td>
                                <td style="width: 106px;">
                                    <asp:DropDownList ID="ddlStateMailEdit" runat="server" Width="98px" CssClass="inputTextbox"
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
                                <td class="txtalgnrgt" style="width: 47px;">
                                    <label class="input-label">
                                        Zip :
                                    </label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtZipMailEdit" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                        Width="127px" CssClass="tooltip zip_us calWidth" MaxLength="500" title="Enter valid Zip eg: XXXXX-XXXX or XXXXX"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <div class="clear">
                        </div>
                        <div id="divVerifyMailingAddressBtn" runat="server" style="padding: 10px;">
                            <span class="fltrt" style="margin-right: 50px;">
                                <asp:Button ID="btnVerifyMailingAddress" CssClass="btn-success btn-xs" runat="server"
                                    OnClick="btnVerifyMailingAddress_Click" Text="Verify Address" />
                            </span>
                        </div>
                        <div id="divVerifyMailingAddressPnl" runat="server" visible="false" class="address-box">
                            <div>
                                <span class="fltrt">
                                    <asp:ImageButton ID="imgbtnCloseVerifyMailingAddress" ImageUrl="~/App_Themes/Theme1/images/close-icon.png"
                                        runat="server" OnClick="btnVerifyMailingAddressYes_Click" />
                                </span>
                            </div>
                            <div>
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 50%;">
                                            <p style="font-size: 14px; font-weight: bold; padding-left: 58px;">
                                                User Address
                                            </p>
                                        </td>
                                        <td style="width: 50%;">
                                            <p style="font-size: 14px; font-weight: bold; padding-left: 55px;">
                                                Verified Address
                                            </p>
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
                                                        <asp:Label ID="lblUMailingStreet1" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>
                                                        <asp:Label ID="lblUMailingStreet2" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label">
                                                            <b>City :</b>
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblUMailingCity" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label">
                                                            <b>State :</b>
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblUMailingState" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label">
                                                            <b>Zip :</b>
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblUMailingZip" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td style="vertical-align: baseline;">
                                            <div id="divNotVerifiedMailingAdd" runat="server">
                                                <table style="width: 100%">
                                                    <tr>
                                                        <td align="right" style="width: 107px;">
                                                            <label class="input-label">
                                                                <b>Street :</b>
                                                            </label>
                                                        </td>
                                                        <td style="width: 220px;">
                                                            <asp:Label ID="lblVMailingStreet1" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td>
                                                            <asp:Label ID="lblVMailingStreet2" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <label class="input-label">
                                                                <b>City :</b>
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblVMailingCity" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <label class="input-label">
                                                                <b>State :</b>
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblVMailingState" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <label class="input-label">
                                                                <b>Zip :</b>
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblVMailingZip" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <p style="color: Red; text-align: center;">
                                                <asp:Label ID="lblUnverifiedMailingAdd" runat="server" Style="display: block; position: relative; top: 21px;"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="padding-top: 13px !important;">
                                            <asp:Button ID="btnVerifyMailingAddressYes" CssClass="btn-warning btn-xs" runat="server"
                                                OnClick="btnVerifyMailingAddressYes_Click" Text="Use User Address" />
                                        </td>
                                        <td align="center">
                                            <asp:Button ID="btnVerifyMailingAddressNo" CssClass="btn-success btn-xs" runat="server"
                                                OnClick="btnVerifyMailingAddressNo_Click" Text="Use Verified Address" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="clear">
                        </div>
                        <table class=" tblApplReqForm5">
                            <tr>
                                <td align="right" style="width: 145px;">
                                    <label class="input-label required">Primary Phone :</label></td>
                                <td style="width: 165px;">
                                    <asp:TextBox ID="TextBox3" CssClass="phone_us" runat="server"></asp:TextBox></td>
                                <td class="cursorpointer">
                                    <asp:CheckBox ID="CheckBox10" Text="Mobile" runat="server" /></td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label class="input-label">Secondary Phone :</label>
                                <td>
                                    <asp:TextBox ID="TextBox4" CssClass="phone_us" runat="server"></asp:TextBox></td>
                                <td class="cursorpointer">
                                    <asp:CheckBox ID="CheckBox11" Text="Mobile" runat="server" /></td>
                            </tr>
                        </table>
                        <div style="border: 1px solid rgb(212, 216, 219); margin: 11px auto auto; right: 2px; display: block; background-color: white;">
                            <div class="blockheader" style="margin: 0px 0px -3px auto;">
                                <p>
                                    <span>Supporting Documentation</span>
                                </p>
                            </div>
                            <table class="tblApplReqForm5" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
                                <tr>
                                    <td colspan="2" style="line-height: 20px;">
                                        <b style="color: red;">All submitted education is subject to review, even from approved schools. Not all programs/classes from approved schools are accepted for purposes of CAMTC certification.
                                        </b>
                                    </td>
                                </tr>
                                <tr><td colspan="2" style="height:10px;"></td></tr>
                                <tr>
                                    <td style="line-height: 20px;">
                                        <b>&nbsp;Please add all education you have received from CAMTC Approved Massage Therapy Schools.</b>
                                    </td>
                                </tr>
                            </table>
                            <div class="divLicenseInfon divaddnew" id="divEducationt2" runat="server">
                                <span style="float: right; margin-right: 10px;" class="AfterApproved">
                                    <asp:Button ID="btnEducation2AddNew" CssClass="buttonGreen small" runat="server"
                                        Text="Add" CausesValidation="true" OnClick="btnEducation2AddNew_Click" />
                                </span>
                            </div>
                            <div id="divAddPanelEducation2" runat="server" visible="false">
                                <table class=" tblApplReqForm5 wthtop20" style="margin: 0 auto;">
                                    <tr>
                                        <td class="txtalgnrgt">
                                            <label class="input-label required">
                                                Name of Massage Therapy School :
                                            </label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlSchool" Style="width: 182px;" runat="server">
                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                <asp:ListItem>Approved School</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="txtalgnrgt">
                                            <label class="input-label required">
                                                Date Started Program :
                                            </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtEducationStartDate" CssClass="inputTextbox" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="txtalgnrgt">
                                            <label class="input-label required">
                                                Date Completed Program (Graduation Date) :
                                            </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtEducationEndDate" CssClass="inputTextbox" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="txtalgnrgt">
                                            <label class="input-label required">
                                                Total number of documented hours of education completed at this school :
                                            </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtEducationHRS" CssClass="inputTextbox" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <label class="input-label">
                                                If you did not graduate, please type in your own brief explanation for non-graduation.
                                            </label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <label class="input-label">
                                                My Own Explanation :
                                            </label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:TextBox ID="txtExplainNoneGraduate" Width="600px" Style="line-height: 20px;"
                                                CssClass="inputTextbox" TextMode="MultiLine" runat="server"></asp:TextBox>
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
                                    CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None"
                                    OnRowDataBound="gvEducation2_RowDataBound">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Name of School">
                                            <ItemStyle />
                                            <EditItemTemplate>
                                                <asp:UpdatePanel runat="server" ID="MassageTrainingandEducationUp2">
                                                    <ContentTemplate>
                                                        <div>
                                                            <table class="grid-heading">
                                                                <tr>
                                                                    <td style="width: 160px;">
                                                                        <span id="lblDateStart">01/02/2012</span>
                                                                    </td>
                                                                    <td style="width: 204px;">
                                                                        <span id="lblDateComplete">02/04/2014</span>
                                                                    </td>
                                                                    <td style="width: 100px;">
                                                                        <span id="lblTotalHRS">201</span>
                                                                    </td>
                                                                    <td>
                                                                        <span>
                                                                            <input type="image" id="imgbtnNotepad" disabled="disabled" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                                                                                class="aspNetDisabled" src="../../App_Themes/Public/images/notepad.png" style="width: 20px;">
                                                                        </span>
                                                                    </td>
                                                                    <td align="center" valign="middle" style="width: 100px;"></td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                        <div class="divGridEdit">
                                                            <p class="addNewDiv">
                                                                <span>Education</span>
                                                            </p>
                                                            <table class=" tblApplReqForm5 wthtop20" style="margin: 0 auto;">
                                                                <tr>
                                                                    <td class="txtalgnrgt">
                                                                        <label class="input-label required">
                                                                            Name of Massage Therapy School :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlSchoolEdit" Style="width: 182px;" runat="server">
                                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                            <asp:ListItem Value="1" Selected="True">SCHOOL OF ACUPUNTURE</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="txtalgnrgt">
                                                                        <label class="input-label required">
                                                                            Date Started Program :
                                                                        </label>
                                                                    </td>
                                                                    <td>
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
                                                                    <td colspan="2">
                                                                        <label class="input-label">
                                                                            If you did not graduate, please type in your own brief explanation for non-graduation.
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2">
                                                                        <label class="input-label">
                                                                            My Own Explanation :
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2">
                                                                        <asp:TextBox ID="txtExplainNoneGraduateEdit" Style="line-height: 20px;" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                                                                            Width="580px" CssClass="inputTextbox" TextMode="MultiLine" runat="server"></asp:TextBox>
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
                                                <asp:Label ID="lblMassageSchoolName" runat="server" Text=""></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Start Date">
                                            <ItemStyle />
                                            <ItemTemplate>
                                                <asp:Label ID="lblDateStart" runat="server" Text="01/01/2015"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Total HRS">
                                            <ItemStyle />
                                            <ItemTemplate>
                                                <asp:Label ID="lblTotalHRS" runat="server" Text="222"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Explanation">
                                            <ItemTemplate>
                                                <span>
                                                    <asp:ImageButton ID="imgbtnNotepad" Enabled="false" ToolTip="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                                                        runat="server" Width="20px" ImageUrl="~/App_Themes/Theme1/images/notepad.png" />
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
                            <div class="clear"></div>
                            <br />
                            <div>
                                <table class="tblApplReqForm5" style="width: 98% !important; margin: 10px auto; line-height: 30px;">
                                    <tr>
                                        <td style="line-height: 20px;">
                                            <b>&nbsp;Please indicate if you have passed any of the following CAMTC approved exams. 
                                                If so, you are required to have the examining board send proof directly to CAMTC. 
                                                You must have passed a CAMTC approved exam in order to be certified.</u></b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"></td>
                                    </tr>
                                </table>
                                <div id="divAddButtonQ22" runat="server" class="divLicenseInfon divaddnew">
                                    <span style="float: right; margin-right: 10px;" class="AfterApproved">
                                        <asp:Button ID="btnAddNewQ22" CssClass="buttonGreen small" OnClick="btnAddNewQ22_Click" runat="server" Text="Add" />
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
                                                <asp:ListItem>BCETMB</asp:ListItem>
                                                <asp:ListItem>NCETM taken on before February 1, 2015</asp:ListItem>
                                                <asp:ListItem>NCETMB taken on or before February 1, 2015</asp:ListItem>
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
                                <div class="divLicenseInfo" style="margin-top: 10px">
                                    <asp:GridView ID="gvExams" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                        CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Exam Name">
                                                <ItemStyle />
                                                <ItemTemplate>MBLEX</ItemTemplate>
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
                                                                        <asp:ListItem>BCETMB</asp:ListItem>
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
                                                <ItemTemplate>09/16/2014</ItemTemplate>
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
                            </div>
                            <div class="toolBar">
                                <span class="fltrt">
                                    <asp:Button ID="btnSave3" CssClass="buttonGreen medium" runat="server" OnClick="btnSave3NewQ22Edit_Click" Text="Save & Next" />
                                    <asp:Button ID="btnCancel3" CssClass="secondary medium" runat="server" OnClick="btnCancel3NewQ22Edit_Click" Text="Cancel" />
                                </span>
                            </div>
                        </div>
                        <%--<table>
                            <tr>
                                <td>
                                    <p>
                                        By my signature below, I attest that all the information on this form and all supporting
                                        documentation I will provide is complete, true, and accurate to the best of my knowledge.
                                        I agree to notify CAMTC of any changes in my address, work locations, or other contact
                                        information.
                                    </p>
                                </td>
                            </tr>
                        </table>--%>
                        <div class="clear"></div>
                        <br />
                        <div>
                            <table width="100%">
                                <tr>
                                    <td align="right">
                                        <label class="input-label required">Signature :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="AffSign" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="right">
                                        <label class="input-label required">Date :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="AffDate" CssClass="calender inputTextbox" placeholder="MM/DD/YYYY"
                                            runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <p class="cursorpointer">
                                <asp:CheckBox ID="AffQ13" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged"
                                    Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                    runat="server" />
                            </p>
                        </div>
                        <table style="width: 100%; margin-top: 15px;">
                            <tr>
                                <td>
                                    <p>
                                        <u>All applications, supporting documentation and credit card payments may be submitted online 
                                        for immediate processing. If you prefer, you may mail this application including check or money 
                                        order for all fees and any supporting documentation to :</u>
                                    </p>
                                </td>
                            </tr>
                        </table>
                        <div>
                            <p style="text-align: center; padding-top: 12px; padding-bottom: 12px;">
                                <b>California Massage Therapy Council<br />
                                    One Capitol Mall, Suite 800<br />
                                    Sacramento, CA 95814 </b>
                            </p>
                        </div>
                        <table style="width: 100%; margin-top: 15px; display: none;">
                            <tr>
                                <td colspan="4">
                                    <p>
                                        You can pay these fees by credit card at <a style="color: blue; text-decoration: underline;" href="https://www.camtc.org/" target="_blank">www.camtc.org </a>or by supplying the appropriate information below :
                                        <br />
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td class="txtalgnrgt" style="padding-right: 10px;">Name on Credit Card :</td>
                                <td>
                                    <asp:TextBox ID="txtCeridtcardName" runat="server"></asp:TextBox></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td colspan="4" style="height: 10px;"></td>
                            </tr>
                            <tr>
                                <td colspan="2">

                                    <asp:RadioButtonList ID="RadioButtonList1" RepeatDirection="Horizontal" CssClass="chlbx" runat="server">
                                        <asp:ListItem>VISA</asp:ListItem>
                                        <asp:ListItem>MC</asp:ListItem>
                                        <asp:ListItem>AMEX</asp:ListItem>
                                        <asp:ListItem>DISCOVER</asp:ListItem>
                                    </asp:RadioButtonList></td>
                                <td class="txtalgnrgt" style="padding-right: 10px;">Billing Zip Code :</td>
                                <td>
                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>

                            </tr>
                            <tr>
                                <td colspan="4" style="height: 10px;"></td>
                            </tr>
                            <tr>
                                <td class="txtalgnrgt" style="padding-right: 10px">Card # :</td>
                                <td>
                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                                <td class="txtalgnrgt" style="padding-right: 10px">Exp. Date :</td>
                                <td>
                                    <asp:TextBox ID="TextBox9" Width="140px" CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td colspan="4" style="height: 10px;"></td>
                            </tr>
                            <tr>
                                <td class="txtalgnrgt" style="padding-right: 10px">3-­‐digit Security Code :
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox10" MaxLength="3" CssClass="OnlyNumeric" Width="60px" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td colspan="4" style="height: 15px;"></td>
                            </tr>
                        </table>
                        <div>
                            <div>
                                <p>
                                    <b>I understand that the $150 fee only provides me with ONE original certificate, should
                                                                    I be certified. I am therefore requesting the following number of additional original
                                                                    certificates ($15 for each original certificate), so that I may display an original
                                                                    certificate at each location where I provide massage services for compensation.
                                    </b>
                                </p>
                            </div>
                            <div>
                                <table class="tblApplReqForm5">
                                    <tr>
                                        <td align="right">
                                            <label class="input-label required">Payment Method :</label>
                                        </td>
                                        <td>&nbsp;&nbsp;<asp:DropDownList ID="ddlPaymentMethod" AutoPostBack="true" runat="server"
                                            Style="width: 158px; margin-left: 6px; height: 27px;" OnSelectedIndexChanged="ddlPaymentMethod_SelectedIndexChanged">
                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                            <asp:ListItem Value="1">Check</asp:ListItem>
                                            <asp:ListItem Value="2">Money Order</asp:ListItem>
                                            <asp:ListItem Value="3">Credit / Debit Card</asp:ListItem>
                                        </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label required">Application Fees :</label>
                                        </td>
                                        <td style="padding: 4px; text-align: center;">$&nbsp;<asp:TextBox ID="txtApplicationFees" Style="width: 145px;" runat="server"
                                            Text="150" Enabled="false"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label required">Please enter the number of additional certiﬁcates :</label>
                                        </td>
                                        <td>&nbsp;&nbsp;
                                                                        <asp:DropDownList ID="txtNumberOfAdditinolCerti" OnSelectedIndexChanged="txtNumberOfAdditinolCerti_TextChanged" Width="162px" AutoPostBack="true" runat="server">
                                                                            <asp:ListItem>Select</asp:ListItem>
                                                                            <asp:ListItem>1</asp:ListItem>
                                                                            <asp:ListItem>2</asp:ListItem>
                                                                            <asp:ListItem>3</asp:ListItem>
                                                                            <asp:ListItem>4</asp:ListItem>
                                                                            <asp:ListItem>5</asp:ListItem>
                                                                        </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label required">Additional Certificate Amount :</label>
                                        </td>
                                        <td style="padding: 4px; text-align: center;">$&nbsp;<asp:TextBox ID="txtAdditionalCertificateAmt" CssClass="OnlyNumeric" Style="width: 145px;"
                                            runat="server" Enabled="false"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label required">Total Fees :</label>
                                        </td>
                                        <td style="padding: 4px; text-align: center;">$&nbsp;<asp:TextBox ID="txtTotalFees" Style="width: 145px;" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                                <p class="cursorpointer" style="margin-top: 30px;">
                                    <asp:Label ID="Label1" runat="server" Text="I understand that my Application Fee is non-refundable regardless of the ultimate disposition of my Application."></asp:Label>
                                </p>
                            </div>
                        </div>
                        <table class="tblApplReqForm5" style="width: 100%; display: none;">
                            <tr>
                                <td colspan="5">
                                    <h5>Please Select Your Payment Method :</h5>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label class="inout-label"><b>Personal Check :</b></label>
                                </td>
                                <td>
                                    <asp:RadioButton ID="chkChashiercheck" Text="Cashier's Check" runat="server" />
                                </td>
                                <td>
                                    <asp:RadioButton ID="chkMoneyOrder" runat="server" Text="Money Order" />
                                </td>
                                <td>
                                    <asp:RadioButton ID="chkCreditCardOnline" runat="server" Text="Credit Card Online" />
                                </td>
                                <td>
                                    <asp:RadioButton ID="chkCreditCard" runat="server" Text="Credit Card (Below):" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label class="inout-label"><b>Card Type :</b></label>
                                </td>
                                <td>
                                    <asp:RadioButton ID="chkVisa" Text="Visa" runat="server" />
                                </td>
                                <td>
                                    <asp:RadioButton ID="chkMasterCard" Text="Master Card" runat="server" />
                                </td>
                                <td>
                                    <asp:RadioButton ID="rblAmericanExpress" Text="American Express" runat="server" />
                                </td>
                                <td>
                                    <asp:RadioButton ID="rblDiscover" Text="Discover" runat="server" />
                                </td>
                            </tr>
                        </table>
                        <table class="tblApplReqForm5" style="width: 100%; display: none;">
                            <tr>
                                <td align="right">
                                    <label class="input-label">Name on Card :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNameOnCard" CssClass="inputTextbox" runat="server"></asp:TextBox>
                                </td>
                                <td align="right">
                                    <label class="input-label">Credit Card # :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCreditCardNo" CssClass="inputTextbox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label class="input-label">Exp. Date :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtEXPDate" CssClass="inputTextbox" runat="server"></asp:TextBox>
                                </td>
                                <td align="right">
                                    <label class="input-label">Code :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCode" CssClass="inputTextbox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label class="input-label">Your Credit Card Billing Zip Code :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtbilingZipCode" CssClass="inputTextbox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <div style="padding-top: 20px;">
                            <div id="pnlCheck" runat="server" visible="false" style="border: 1px solid rgb(236, 233, 233);">
                                <table class="tblUploadSection" style="width: 78%; margin: 20px auto;">
                                    <tr>
                                        <td align="right" style="width: 150px;">
                                            <label class="input-label ">
                                                Check # :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtCheckNo" runat="server" CssClass="tooltip inputTextbox calWidth"
                                                MaxLength="15" Style="width: 353px;"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: middle;" align="right">
                                            <label class="input-label">
                                                Comment :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtCheckComment" Style="width: 350px !important; margin-top: 9px; height: 45px;"
                                                TextMode="MultiLine" runat="server" MaxLength="500"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td style="padding-top: 6px;">
                                            <asp:CheckBox ID="CheckBox9" runat="server" Text="I am mailing the payment." />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div id="pnlMoneyOrder" runat="server" visible="false" style="border: 1px solid rgb(236, 233, 233);">
                                <table class="tblUploadSection" style="width: 78%; margin: 20px auto;">
                                    <tr>
                                        <td align="right" style="width: 150px;">
                                            <label class="input-label ">
                                                Money Order # :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtMoney_OrderNo" runat="server" CssClass="tooltip inputTextbox calWidth"
                                                MaxLength="15" Style="width: 353px;"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: middle;" align="right">
                                            <label class="input-label">
                                                Comment :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtMoneyOrderComment"
                                                Style="width: 350px !important; margin-top: 9px; height: 45px;" TextMode="MultiLine"
                                                runat="server" MaxLength="500"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td style="padding-top: 6px;">
                                            <asp:CheckBox ID="CheckBox8" runat="server" Text="I am mailing the payment." />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </fieldset>
                    <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                        <span class="fltrt">
                            <asp:Button ID="Button1" runat="server" CssClass="buttonGreen medium" Text="Save" />
                            <asp:Button ID="Button2" runat="server" CssClass="secondary medium bottom buttonalignment" Text="Cancel" />
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </asp:Panel>
</div>
