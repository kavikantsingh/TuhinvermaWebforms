﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucAddNewCertificationApplication.ascx.cs" Inherits="Module_UI_Backoffice_Workflow_ucAddNewCertificationApplication" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<style>
    table#ContentPlaceHolder1_MidContent_ucCertificationApplication1_ucAddNewCertificateApplication1_rblGenderEdit tr td {
        padding: 0px !important;
    }
</style>
<div id="divVerifiy" runat="server">
    <div class="applicationform">
        <div>
            <asp:Literal ID="ltrMainMessage" runat="server"></asp:Literal>
        </div>
        <div class="divmain">
            <div id="pnlLeft" class="mainleftpanel">
                <div class="get-started-content leftpanel left_sidebar">
                    <div id="sidebar">
                        <div id="sidebar_content" class="lessgap">
                            <div class="menu-w-licensure-container">
                                <div id="nav_menu-32" class="widget widget_nav_menu">
                                    <ul id="menu-w-licensure" class="menu Act ulwidth">
                                        <li runat="server" visible="false" clientidmode="Static" id="liApplicatinInstructions">
                                            <asp:Button ID="lnkInstruction" runat="server" Text="Instructions" OnClick="lnkInstruction_Click"
                                                CssClass="btnlimenu" />
                                            <span class="spnStatusImage statusimgalgn">
                                                <asp:ImageButton ID="imgbtnInstruction" Width="20px" Height="20px" runat="server"
                                                    ToolTip="Completed" ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="lnkInstruction_Click" /></span>
                                        </li>
                                        <li runat="server" clientidmode="Static" class="" id="liMassageTherapistApplication">
                                            <asp:Button ID="btnMassageTherapistApplication" runat="server" Text="Applicant" CssClass="btnlimenu"
                                                OnClick="btnMassageTherapistApplication_Click" />
                                            <span class="spnStatusImage statusimgalgn">
                                                <asp:ImageButton ID="imgMassageTherapistApplication" Width="20px" Height="20px" runat="server"
                                                    ToolTip="Completed" ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnMassageTherapistApplication_Click" /></span>
                                        </li>
                                        <li runat="server" clientidmode="Static" class="" id="liSection2">
                                            <asp:Button ID="btnSection2" runat="server" Text="Identification" CssClass="btnlimenu"
                                                OnClick="btnSection2_Click" />
                                            <span class="spnStatusImage statusimgalgn">
                                                <asp:ImageButton ID="imgSection2" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                    ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnSection2_Click" /></span>
                                        </li>
                                        <li runat="server" clientidmode="Static" class="" id="liSection3">
                                            <asp:Button ID="btnSection3" runat="server" Text="Licensure Information" CssClass="btnlimenu"
                                                OnClick="btnSection3_Click" />
                                            <span class="spnStatusImage statusimgalgn">
                                                <asp:ImageButton ID="imgSection3" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                    ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnSection3_Click" /></span>
                                        </li>
                                        <li runat="server" clientidmode="Static" class="" id="liSection4">
                                            <asp:Button ID="btnSection4" runat="server" Text="Education" CssClass="btnlimenu"
                                                OnClick="btnSection4_Click" />
                                            <span class="spnStatusImage statusimgalgn">
                                                <asp:ImageButton ID="imgSection4" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                    ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnSection4_Click" /></span>
                                        </li>
                                        <li runat="server" clientidmode="Static" class="" id="liSection5">
                                            <asp:Button ID="btnSection5" runat="server" Text="Work Information" CssClass="btnlimenu"
                                                OnClick="btnSection5_Click" />
                                            <span class="spnStatusImage statusimgalgn">
                                                <asp:ImageButton ID="imgSection5" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                    ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnSection5_Click" /></span>
                                        </li>
                                        <li runat="server" clientidmode="Static" class="" id="liSection6">
                                            <asp:Button ID="btnSection6" runat="server" Text="History" CssClass="btnlimenu" OnClick="btnSection6_Click" />
                                            <span class="spnStatusImage statusimgalgn">
                                                <asp:ImageButton ID="imgSection6" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                    ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnSection6_Click" /></span>
                                        </li>
                                        <li runat="server" clientidmode="Static" class="" id="liSection7">
                                            <asp:Button ID="btnSection7" runat="server" Text="Affidavit" CssClass="btnlimenu"
                                                OnClick="btnSection7_Click" />
                                            <span class="spnStatusImage statusimgalgn">
                                                <asp:ImageButton ID="imgSection7" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                    ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnSection7_Click" /></span>
                                        </li>
                                        <li runat="server" clientidmode="Static" class="" id="liPayment">
                                            <asp:Button ID="btnPayment" runat="server" Text="Payment" CssClass="btnlimenu" OnClick="btnPayment_Click" />
                                            <span class="spnStatusImage statusimgalgn">
                                                <asp:ImageButton ID="imgbtnPayment" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                    ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnPayment_Click" /></span>
                                        </li>
                                        <li id="liChecklist" visible="false" runat="server" clientidmode="Static" class="">
                                            <asp:Button ID="btnChecklist" runat="server" Text="Checklist" CssClass="btnlimenu"
                                                OnClick="btnChecklist_Click" />
                                            <span class="spnStatusImage statusimgalgn">
                                                <asp:ImageButton ID="imgChecklist" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                    ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnChecklist_Click" /></span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="pnlRight" class="mainrightpanel">
                <p class="HeaddingMain">
                    <span class="HeaddingMainSpn">California Massage Therapy Council </span>
                </p>
                <asp:Panel ID="pnlApplicatinInstructions" runat="server" Visible="false">
                    <asp:UpdatePanel runat="server" ID="upInstruction">
                        <Triggers>
                            <asp:PostBackTrigger ControlID="lnkQues1" />
                        </Triggers>
                        <ContentTemplate>
                            <div>
                                <div>
                                    <div class="sectionDiv">
                                        <span>APPLICATION INSTRUCTIONS</span>
                                    </div>
                                    <fieldset class="flsLiveScanApp flsLiveScanApp1">
                                        <asp:Literal ID="ltrErrorMesageInstructionEdit" runat="server"></asp:Literal>
                                        <table class="tblLiveScanApp tblLiveScanApp1" width="100%">
                                            <tr>
                                                <td style="width: 12px;">
                                                    <b>1.</b>
                                                </td>
                                                <td style="width: 480px; padding-left: 0px;">
                                                    <b>Have you read ALL of the
                                                        <asp:LinkButton ID="lnkQues1" CssClass="hyperlink" ClientIDMode="Static" runat="server"
                                                            OnClick="lnkQues1_Click" OnClientClick="window.document.forms[0].target='_blank';">
                                                                                            Application Instructions?</asp:LinkButton></b>
                                                </td>
                                                <td align="left" class="cursorpointer">
                                                    <b>
                                                        <asp:RadioButtonList ID="rblQuestionEdit1" Enabled="false" AutoPostBack="true" runat="server"
                                                            RepeatDirection="Horizontal" OnSelectedIndexChanged="rblQuestionEdit1_OnSelectedIndexChanged">
                                                            <asp:ListItem Value="1">Yes</asp:ListItem>
                                                            <asp:ListItem Value="0">No</asp:ListItem>
                                                        </asp:RadioButtonList></b>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td colspan="2">
                                                    <p style="font-size: 13px;">
                                                        (The Yes and No button is enabled only after you have clicked on the Application Instruction link above and read the instructions.) 
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b>2.</b>
                                                </td>
                                                <td style="padding-left: 0px;">
                                                    <b>Do you understand the qualiﬁcations for Massage Therapist Certification?</b>
                                                </td>
                                                <td class="cursorpointer">
                                                    <b>
                                                        <asp:RadioButtonList ID="rblQuestionEdit2" Enabled="false" AutoPostBack="true" runat="server"
                                                            RepeatDirection="Horizontal" OnSelectedIndexChanged="rblQuestionEdit1_OnSelectedIndexChanged">
                                                            <asp:ListItem Value="1">Yes</asp:ListItem>
                                                            <asp:ListItem Value="0">No</asp:ListItem>
                                                        </asp:RadioButtonList></b>
                                                </td>
                                            </tr>
                                        </table>
                                        <p style="font-size: 13px; margin-top: 15px;">
                                            If you answered "Yes" to questions (1.) and (2.) above, then please proceed - otherwise
                                            <a class="hyperlink" href="https ://www.camtc.org/" target="_blank">PLEASE READ THE INSTRUCTIONS</a>
                                            before continuing the application process. Please remember that providing incomplete
                                            or misleading information to the California Massage Therapy Council ("CAMTC") may
                                            result in processing delays, denial of your application, revocation of your certificate,
                                            or additional processing fees.
                                        </p>
                                    </fieldset>
                                </div>
                                &nbsp;<div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                    <span class="fltrt">
                                        <asp:Button ID="btnApplicationStatus" CssClass="buttonGreen medium" runat="server"
                                            Text="Save & Next" OnClick="btnApplicationStatus_Click" />
                                        <asp:LinkButton ID="lnkApplicationStatusCancel" CssClass="secondary medium bottom buttonalignment"
                                            runat="server" OnClick="lnkApplicationStatusCancel_Click">Cancel</asp:LinkButton></span>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
                <asp:Panel ID="pnlSection1" runat="server" Visible="true">
                    <asp:UpdatePanel runat="server" ID="upPanelSection1MT">
                        <ContentTemplate>
                            <asp:Panel ID="pnlApprovedPersonalTab" runat="server">
                                <div>
                                    <div class="sectionDiv">
                                        <span>Applicant</span>
                                    </div>
                                    <fieldset class="flsParentNewApplReqForm flsParentNewApplReqForm1">
                                        <p>
                                            <b>3. Full Name :</b>
                                        </p>
                                        <asp:Literal ID="ltrPersonalInfoEdit" runat="server"></asp:Literal>
                                        <div id="MsgDivUploadAll">
                                        </div>
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
                                                            <asp:TextBox ID="txtFirstNameEdit" runat="server" CssClass="tooltip capitalize-text OnlyAlphabet inputTextbox NewAppPersonalTxtbx"
                                                                MaxLength="150" title="Only A-Z characters are allowed."></asp:TextBox>
                                                        </td>
                                                        <td class="txtalgnrgt">
                                                            <label class="input-label required">
                                                                Last Name :
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtLastNameEdit" runat="server" CssClass="tooltip capitalize-text OnlyAlphabet inputTextbox NewAppPersonalTxtbx"
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
                                                </table>
                                            </div>
                                    </fieldset>
                                    <fieldset class="flsApplReqForm flsApplReqForm5">
                                        <asp:Literal ID="ltrResidenceAddEdit" runat="server"></asp:Literal>
                                        <div>
                                            <table class=" tblApplReqForm5">
                                                <tr>
                                                    <td colspan="6">
                                                        <p>
                                                            <b>Note : Post Office boxes and mail drops may NOT be used here - only home (residence)
                                                                address.</b>
                                                        </p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="6">
                                                        <b>4. Home Address :</b>
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
                                                            CssClass="tooltip zip_us calWidth" Width="127px" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="clear">
                                        </div>
                                        <div id="divVerifyHomeAddressBtn" runat="server" style="padding: 10px;">
                                            <span class="fltrt" style="margin-right: 20px;">
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
                                                        <td>
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
                                        <div>
                                            <div class="clear">
                                            </div>
                                            <table class=" tblApplReqForm5">
                                                <tr>
                                                    <td colspan="6">
                                                        <table class="tblLiveScanApp tblLiveScanApp1" width="100%">
                                                            <tr>
                                                                <td style="width: 480px; padding-left: 0px;">
                                                                    <b>5. Is your Mailing Address the same as the above Home Address where you live?</b>
                                                                </td>
                                                                <td align="left" class="cursorpointer">
                                                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                                                        <asp:ListItem Value="0">No</asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <div>
                                                            <p style="border: 1px solid #ddd; padding: 6px; line-height: 20px;">
                                                                If you answered "No" to question above, then please provide your Mailing Address
                                                                below otherwise, you may leave Mailing Address blank and proceed to next step. Please
                                                                remember that your Application may be delayed, or you may be required to pay additional
                                                                processing fees if you provide CAMTC with an incorrect Mailing Address.
                                                            </p>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="5">
                                                        <b>6. Mailing Address :</b>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="vertical-align: middle; width: 145px;" class="txtalgnrgt">
                                                        <label class="input-label required">
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
                                                        <label class="input-label required">
                                                            City :
                                                        </label>
                                                    </td>
                                                    <td style="width: 151px;">
                                                        <asp:TextBox ID="txtCityMailEdit" runat="server" Width="133px" CssClass="tooltip OnlyAlphabet calWidth"
                                                            MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                    </td>
                                                    <td class="txtalgnrgt" style="width: 52px;">
                                                        <label class="input-label required">
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
                                                        <label class="input-label required">
                                                            Zip :
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtZipMailEdit" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                            Width="127px" CssClass="tooltip zip_us calWidth" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                    </td>
                                                </tr>
                                            </table>
                                            <div class="clear">
                                            </div>
                                            <div id="divVerifyMailingAddressBtn" runat="server" style="padding: 10px;">
                                                <span class="fltrt" style="margin-right: 20px;">
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
                                                    <td colspan="6">
                                                        <b>7. Phone Numbers :</b>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="6">
                                                        <table class="tblApplReqForm5">
                                                            <tr>
                                                                <td align="right" style="width: 145px;">
                                                                    <label class="input-label">Primary Phone :</label></td>
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
                                                                    <asp:CheckBox ID="CheckBox9" Text="Mobile" runat="server" /></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="6">
                                                        <table class="tblApplReqForm5">
                                                            <tr>
                                                                <td class="txtalgnrgt" style="width: 145px;"></td>
                                                                <td></td>
                                                                <td class="txtalgnrgt" style="width: 135px;"></td>
                                                                <td></td>
                                                            </tr>

                                                            <tr>
                                                                <td colspan="4">
                                                                    <b>8. Email Address :</b>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txtalgnrgt" style="width: 120px">
                                                                    <label class="input-label">
                                                                        Primary Email :
                                                                    </label>
                                                                </td>
                                                                <td colspan="3">
                                                                    <asp:TextBox ID="txtPrimaryEmail" Style="width: 484px !important;" runat="server"
                                                                        CssClass="inputTextbox NewAppPersonalTxtbx" MaxLength="150"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txtalgnrgt" style="width: 136px">
                                                                    <label class="input-label">
                                                                        Secondary Email :
                                                                    </label>
                                                                </td>
                                                                <td colspan="3">
                                                                    <asp:TextBox ID="txtSecondaryEmail" Style="width: 484px !important;" runat="server"
                                                                        CssClass="inputTextbox NewAppPersonalTxtbx" MaxLength="150"></asp:TextBox>
                                                                    <span>Email address must be provided by law, if you have one. </span>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table class="tblLiveScanApp tblLiveScanApp1" width="100%">
                                                            <tr>
                                                                <td style="width: 480px; padding-left: 0px;">
                                                                    <b>9. Do you have a website?</b>
                                                                </td>
                                                                <td align="left" class="cursorpointer">
                                                                    <asp:RadioButtonList ID="rblHaveaWebsite" runat="server" RepeatDirection="Horizontal">
                                                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                                                        <asp:ListItem Value="0">No</asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table>
                                                            <tr>
                                                                <td></td>
                                                                <td align="right">
                                                                    <label class="input-label">
                                                                        If yes, please provide URL->
                                                                    </label>
                                                                </td>
                                                                <td class="cursorpointer">
                                                                    <asp:TextBox ID="txtWebsite" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                                        MaxLength="150"></asp:TextBox>
                                                                    <br />
                                                                    <span>eg : http://www.example.com</span>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </fieldset>
                                    <div class="address-box posFixed" id="divEMail" runat="server" visible="false" style="min-height: 69px; padding-top: 18px; width: 68%; margin: 0 auto;">

                                        <div class="header">
                                            <h4 style="color: Red; text-align: center;">Do you want to continue without Email address?</h4>
                                        </div>
                                        <div class="" style="margin: 0 auto; width: 300px; line-height: 30px">
                                            <table class="padding-table" style="margin: 0 auto;">
                                                <tr>
                                                    <td colspan="4" align="center">
                                                        <asp:Button ID="btnProceed" Text="Yes" runat="server" Style="outline: 0;" CssClass="buttonGreen small"
                                                            OnClick="btnYes_Click" />
                                                        <asp:Button ID="btnProceedCancel" Text="No" runat="server" Style="outline: 0;" CssClass="secondary small"
                                                            OnClick="btnNo_Click" />
                                                    </td>
                                                </tr>
                                            </table>
                                            <style>
                                                .padding-table td {
                                                    padding: 4px;
                                                }
                                            </style>
                                        </div>
                                    </div>
                                    <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                        <span class="fltrt">
                                            <asp:Button ID="btnSavePersonalInfo" CssClass="buttonGreen medium" runat="server"
                                                Text="Save & Next" OnClick="btnSavePersonalInfo_Click" />
                                            <asp:LinkButton ID="lnkCancelPersonalInfo" CssClass="secondary medium bottom buttonalignment"
                                                runat="server" OnClick="lnkCancelPD_Click">Cancel</asp:LinkButton></span>
                                    </div>
                                </div>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
                <asp:Panel ID="pnlSection2" runat="server" Visible="false">
                    <asp:UpdatePanel runat="server" ID="upCSDEdit">
                        <ContentTemplate>
                            <asp:Panel ID="pnlApprovedSection2" runat="server">
                                <div>
                                    <div class="sectionDiv">
                                        <span>Identification</span> </span>
                                    </div>
                                    <fieldset class="flsNewApplReqForm flsNewApplReqForm2">
                                        <asp:Literal ID="ltrErrorMsgChildSuppInfoEdit" runat="server"></asp:Literal>
                                        <br />
                                        <p>
                                            <b>10. Driver's License or Official State Identification Information (required) :</b>
                                        </p>
                                        <p>
                                            Please provide all of the following information exactly as it appears on your Driver's
                                            License or Ofﬁcial State ID. This information is necessary to verify the Live Scan
                                            Fingerprint Information received from the Department of Justice ("DOJ") after you
                                            submit your fingerprints through a Live Scan Service Provider (see Application Instructions).
                                            If you do not have a Driver's License or Official State ID, please skip this question
                                            and continue to question (11.).
                                        </p>
                                        <div style="border: 1px solid #ddd; padding-bottom: 15px;">
                                            <p style="padding-left: 10px;">
                                                <b>If Driver License from other state?</b>
                                                <asp:CheckBox ID="CheckBox8" runat="server" />
                                            </p>
                                            <table class="tblApplReqForm5" style="width: 100%;">
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label">
                                                            License State :</label>
                                                    </td>
                                                    <td colspan="3">
                                                        <asp:DropDownList ID="ddlIfDLOtherState" CssClass="inputTextbox" Style="width: 178px;"
                                                            runat="server">
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
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="txtalgnrgt" style="width: 167px;">
                                                        <label class="input-label required">
                                                            Driver's License Number :
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtDriverLicenseNo" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                            MaxLength="150"></asp:TextBox>
                                                    </td>
                                                    <td class="txtalgnrgt" style="width: 124px;">
                                                        <label class="input-label required">
                                                            Expiration Date :
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtExpirationDate" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx calender"
                                                            placeholder="MM/DD/YYYY" MaxLength="150"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4" style="padding: 0px 10px !important;">
                                                        <hr />
                                                    </td>
                                                </tr>
                                                <tr id="trAddDocument" runat="server">
                                                    <td colspan="4">
                                                        <table style="width: 100%;">
                                                            <tr class="pdgnone">
                                                                <td class="txtalgnrgt" style="width: 167px;">
                                                                    <label class="input-label required">
                                                                        Document Type :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <asp:DropDownList ID="ddlDocumentType" Style="width: 182px;" runat="server">
                                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                        <asp:ListItem Value="1">Driver License</asp:ListItem>
                                                                        <asp:ListItem Value="2">Passport</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </td>
                                                                <td class="txtalgnrgt" style="width: 124px;">
                                                                    <label class="input-label required">
                                                                        Document Number :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtDocumentNo" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                                        MaxLength="150"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txtalgnrgt">
                                                                    <label class="input-label required">
                                                                        Document :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <asp:FileUpload ID="fuDocument" runat="server" />
                                                                </td>
                                                                <td class="txtalgnrgt">
                                                                    <label class="input-label required">
                                                                        Date Expiration :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtDateExp" runat="server" placeholder="MM/DD/YYYY" CssClass="inputTextbox NewAppPersonalTxtbx calender"
                                                                        MaxLength="150"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="3"></td>
                                                                <td align="center">
                                                                    <span class="fltlft">
                                                                        <asp:Button ID="btnAddDoc" CssClass="buttonGreen small" runat="server" Text="Save"
                                                                            OnClick="btnAddDoc_Click" /></span>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                            <div id="pnlGridDocument" runat="server">
                                                <table class="index  grid mozillapdgnone" id="Table4" style="width: 95%; margin: 10px auto; border: 1px solid rgb(221, 221, 221);"
                                                    border="1" cellpadding="5" cellspacing="0">
                                                    <tbody>
                                                        <tr>
                                                            <th scope="col">Document Type
                                                            </th>
                                                            <th scope="col">Document Number
                                                            </th>
                                                            <th scope="col">Date Expiration
                                                            </th>
                                                            <th scope="col">Link
                                                            </th>
                                                            <th>Action</th>
                                                        </tr>
                                                        <tr id="trEditDocument" runat="server" visible="false">
                                                            <td colspan="5">
                                                                <table style="margin: 10px auto;">
                                                                    <tr class="pdgnone">
                                                                        <td class="txtalgnrgt">
                                                                            <label class="input-label required">
                                                                                Document Type :
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:DropDownList ID="DropDownList1" Style="width: 182px;" runat="server">
                                                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                                <asp:ListItem Selected="True" Value="1">Driver License</asp:ListItem>
                                                                                <asp:ListItem Value="2">Passport</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                        <td class="txtalgnrgt">
                                                                            <label class="input-label required">
                                                                                Document Number :
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="TextBox1" Text="1321" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                                                MaxLength="150"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="txtalgnrgt">
                                                                            <label class="input-label required">
                                                                                Document :
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:FileUpload ID="FileUpload6" runat="server" />
                                                                        </td>
                                                                        <td class="txtalgnrgt">
                                                                            <label class="input-label required">
                                                                                Date Expiration :
                                                                            </label>
                                                                        </td>
                                                                        <td style="padding-left: 0px !important;">
                                                                            <asp:TextBox ID="TextBox2" runat="server" Text="01/01/2015" placeholder="MM/DD/YYYY"
                                                                                CssClass="inputTextbox NewAppPersonalTxtbx calender" MaxLength="150"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="3"></td>
                                                                        <td align="center">
                                                                            <span class="fltlft">
                                                                                <asp:Button ID="Button6" CssClass="buttonGreen small" runat="server" Text="Save"
                                                                                    OnClick="btnUpdateDoc_Click" /></span>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr class="bordrbtm gridrow" id="trGridRowDoc" runat="server">
                                                            <td>Driver's License
                                                            </td>
                                                            <td>1321
                                                            </td>
                                                            <td>01/01/2015
                                                            </td>
                                                            <td>
                                                                <a class="hyperlink" target="_blank" href="../../App_Themes/Theme1/images/Chrysanthemum.jpg">Document Details </a>
                                                            </td>
                                                            <td>
                                                                <span>
                                                                    <asp:ImageButton ID="imgbtnDocumentEdit" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                        OnClick="imgbtnDocumentEdit_Click" />
                                                                    <input id="Image6" title="Delete" class="imgDelete" src="../../App_Themes/Theme1/images/delete.png"
                                                                        type="image"></span>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <table class="tblApplReqForm5">
                                            <tr>
                                                <td class="txtalgnrgt" style="width: 170px;">
                                                    <label class="input-label required">
                                                        Date of Birth :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtDOB" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx calenderDOB"
                                                        placeholder="MM/DD/YYYY" MaxLength="150"></asp:TextBox>
                                                </td>
                                                <td class="txtalgnrgt" style="width: 133px;">
                                                    <label class="input-label required">
                                                        Gender :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:RadioButtonList ID="rblGenderEdit" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="M">Male</asp:ListItem>
                                                        <asp:ListItem Value="F">Female</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="txtalgnrgt">
                                                    <label class="input-label">
                                                        Height :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtHeight" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                        MaxLength="150"></asp:TextBox>
                                                </td>
                                                <td class="txtalgnrgt">
                                                    <label class="input-label">
                                                        Weight :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtWeight" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                        MaxLength="150"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="txtalgnrgt">
                                                    <label class="input-label">
                                                        Eye Color :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtEyeColor" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx  "
                                                        MaxLength="150"></asp:TextBox>
                                                </td>
                                                <td class="txtalgnrgt">
                                                    <label class="input-label">
                                                        Hair Color :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtHaieColor" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx  "
                                                        MaxLength="150"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                        <table class="tblApplReqForm5">
                                            <tr>
                                                <td style="vertical-align: middle; width: 170px;" class="txtalgnrgt">
                                                    <label class="input-label required">
                                                        Street :
                                                    </label>
                                                </td>
                                                <td colspan="5">
                                                    <asp:TextBox ID="txtStreetIdenti" runat="server" Width="482px" CssClass="calWidth us_street"
                                                        MaxLength="500"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td colspan="5">
                                                    <asp:TextBox ID="txtStreet2Identi" runat="server" Width="482px" CssClass="calWidth us_street"
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
                                                    <asp:TextBox ID="txtCityIdenti" runat="server" Width="133px" CssClass="tooltip OnlyAlphabet calWidth"
                                                        MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                </td>
                                                <td class="txtalgnrgt" style="width: 52px;">
                                                    <label class="input-label required">
                                                        State :
                                                    </label>
                                                </td>
                                                <td style="width: 106px;">
                                                    <asp:DropDownList ID="ddlStateIdenti" runat="server" Width="98px" CssClass="inputTextbox"
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
                                                    <asp:TextBox ID="txtZipIdenti" runat="server" placeholder="xxxxx-xxxx or xxxxx" Width="127px"
                                                        CssClass="tooltip zip_us calWidth" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                        <table class="tblLiveScanApp" style="width: 100%; margin-top: 10px;">
                                            <tr>
                                                <td style="width: 18px;">
                                                    <b>11.</b>
                                                </td>
                                                <td style="padding-left: 0px; width: 153px;">
                                                    <b>Social Security Number :</b>
                                                </td>
                                                <td class="cursorpointer">
                                                    <asp:TextBox ID="txtSSNEdit" runat="server" placeholder="XXX-XX-XXXX" CssClass="inputTextbox NewAppPersonalTxtbx ssn"
                                                        MaxLength="150"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                        <table class="tblLiveScanApp tblLiveScanApp1" width="100%">
                                            <tr>
                                                <td style="width: 20px;">
                                                    <b>12.</b>
                                                </td>
                                                <td style="width: 545px; padding-left: 0px;">
                                                    <b>Are you a U.S. citizen?</b>
                                                </td>
                                                <td align="left" class="cursorpointer">
                                                    <asp:RadioButtonList ID="rblUSCitizen" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                                        <asp:ListItem Value="0">No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                        </table>
                                        <p>
                                            If not, please provide a copy of a valid I-551 permanent residency card or valid
                                            employment authorization card.
                                        </p>
                                        <table class="tblLiveScanApp tblLiveScanApp1" width="100%">
                                            <tr>
                                                <td>
                                                    <b>13.</b>
                                                </td>
                                                <td style="width: 545px; padding-left: 0px;">
                                                    <b>Have you ever changed your name through marriage or through the action of a court,
                                                        used another name in your massage profession, or have you ever been known by any
                                                        other name?</b>
                                                </td>
                                                <td align="left" class="cursorpointer">
                                                    <asp:RadioButtonList ID="rblOtherName" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                                        <asp:ListItem Value="0">No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                        </table>
                                        <p>
                                            If you answered "Yes" to (13.), please list all of your other name(s) :
                                        </p>
                                        <fieldset class="flsParentNewApplReqForm flsParentNewApplReqForm1" style="border: 1px solid rgb(221, 221, 221) ! important; padding-bottom: 14px ! important;">
                                            <asp:Literal ID="ltrOtherNameEdit" runat="server"></asp:Literal>
                                            <table class=" tblApplReqForm5 wdtmarauto">
                                                <tr>
                                                    <td class="txtalgnrgt tdwidth1" style="width: 100px !important; padding-bottom: 10px;">
                                                        <label class="input-label">
                                                            Other Name :
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtMiddleNameOtherEdit" Style="width: 290px !important;" runat="server"
                                                            CssClass="tooltip OnlyAlphabet inputTextbox NewAppPersonalTxtbx" MaxLength="150"
                                                            title="Only A-Z characters are allowed."></asp:TextBox>
                                                        <span class="AfterApproved">
                                                            <asp:Button CssClass="buttonGreen small" runat="server" ID="btnSaveOtname" Text="Add"
                                                                ValidationGroup="VGPersonalOther" /></span><%--OnClick="btnSaveOtname_Click"--%>
                                                    </td>
                                                </tr>
                                            </table>
                                            <table class=" tblApplReqForm5 wdtmarauto">
                                                <tr>
                                                    <td>
                                                        <asp:GridView ID="gvOtherNameEdit" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                            CssClass="index  grid" ShowHeader="false" Style="width: 50%; margin-left: 64px; margin-top: 5px;"
                                                            CellPadding="5" ForeColor="#333333" GridLines="None">
                                                            <AlternatingRowStyle BackColor="White" />
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Other Name">
                                                                    <ItemStyle CssClass="vlignbtm" />
                                                                    <EditItemTemplate>
                                                                        <div class="divGridEdit">
                                                                            <p class="addNewDiv">
                                                                                <span>Edit Other Name</span>
                                                                            </p>
                                                                            <table class="GridNewAppPersonalIndoOtherName" style="height: 38px;">
                                                                                <tr>
                                                                                    <td class="txtalgnrgt" style="width: 230px;">
                                                                                        <label class="input-label">
                                                                                            Other Name :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="txtOtherNameEdit" runat="server" AutoComplete="off" CssClass="tooltip OnlyAlphabet inputTextbox NewAppPersonalTxtbx"
                                                                                            MaxLength="150" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="txtalgnrgt tdwidth2" colspan="2"></td>
                                                                                </tr>
                                                                            </table>
                                                                            <div class="toolBar" style="padding: 4px; margin: 4px;">
                                                                                <span class="fltrt">
                                                                                    <asp:Button ID="btnOtherNameUpdate" ValidationGroup="VGPersonalOtherName" CssClass="buttonGreen medium"
                                                                                        runat="server" Text="Update" CausesValidation="true" /><%-- OnClick="btnOtherNameUpdate_Click"--%>
                                                                                    <asp:LinkButton ID="lnkOtherNameEditCancle" CssClass="secondary medium bottom buttonalignment"
                                                                                        runat="server">Cancel</asp:LinkButton></span><%-- OnClick="lnkOtherNameEditCancle_Cancel"--%>
                                                                            </div>
                                                                        </div>
                                                                    </EditItemTemplate>
                                                                    <ItemTemplate>
                                                                        <%# Eval("Name") %>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField ItemStyle-Width="100px">
                                                                    <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                                                                    <ItemTemplate>
                                                                        <span class="fltrt AfterApproved">
                                                                            <asp:ImageButton ID="imgbtnOTherNameEdit" Style="display: none;" CssClass="imgDelete"
                                                                                CommandArgument='<%# Eval("Other_ID") %>' runat="server" RowIndex='<%# Container.DisplayIndex %>'
                                                                                ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" /><%--  OnClick="imgbtnOTherNameEdit_Click"--%>
                                                                            <asp:ImageButton ID="imgBtnOTherNameDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                                CommandArgument='<%# Eval("Other_ID") %>' ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                                                                OnClientClick="javascript :return confirm('Are you sure you want to delete?')" /></span><%--    OnClick="imgbtnEditOTherNameDelete_Click" --%>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                            </Columns>
                                                            <EmptyDataTemplate>
                                                                <div style="width: 100%; height: 50px; border: 0px; padding: 3px">
                                                                    No record found.
                                                                </div>
                                                            </EmptyDataTemplate>
                                                        </asp:GridView>
                                                        <table class="index  grid" border="1" cellspacing="0" cellpadding="5" id="Table1"
                                                            style="width: 57%; margin-left: 100px; border: 1px solid #ddd;">
                                                            <tbody>
                                                                <tr>
                                                                    <th style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Other Name
                                                                    </th>
                                                                    <th style="padding-left: 0px; text-align: center;">Action
                                                                    </th>
                                                                </tr>
                                                                <tr>
                                                                    <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Michael Clarcke
                                                                    </td>
                                                                    <td align="center" valign="middle" style="padding-top: 0px ! important; width: 60px;">
                                                                        <span>
                                                                            <asp:ImageButton ID="ImageButton1" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" />
                                                                            <input type="image" id="imgBtnOTherNameDelete" title="Delete" class="imgDelete" src="../../App_Themes/Theme1/images/delete.png"></span>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </fieldset>
                                        <table class="tblApplReqForm5">
                                            <tr>
                                                <td colspan="4">
                                                    <b>14. Place of Birth :</b>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="txtalgnrgt" style="width: 210px">
                                                    <label class="input-label required">
                                                        Country :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlPOBCountry" runat="server" CssClass="inputTextbox" AutoPostBack="true"
                                                        OnSelectedIndexChanged="ddlPOBCountry_OnSelectedIndexChanged">
                                                        <asp:ListItem Selected="True" Value="US">USA</asp:ListItem>
                                                        <asp:ListItem Value="DZ">Algeria</asp:ListItem>
                                                        <asp:ListItem Value="AS">American Samoa</asp:ListItem>
                                                        <asp:ListItem Value="AD">Andorra</asp:ListItem>
                                                        <asp:ListItem Value="AO">Angola</asp:ListItem>
                                                        <asp:ListItem Value="AI">Anguilla</asp:ListItem>
                                                        <asp:ListItem Value="AQ">Antarctica</asp:ListItem>
                                                        <asp:ListItem Value="BS">Bahamas</asp:ListItem>
                                                        <asp:ListItem Value="BH">Bahrain</asp:ListItem>
                                                        <asp:ListItem Value="BD">Bangladesh</asp:ListItem>
                                                        <asp:ListItem Value="BB">Barbados</asp:ListItem>
                                                        <asp:ListItem Value="BY">Belarus</asp:ListItem>
                                                        <asp:ListItem Value="BE">Belgium</asp:ListItem>
                                                        <asp:ListItem Value="BZ">Belize</asp:ListItem>
                                                        <asp:ListItem Value="BJ">Benin</asp:ListItem>
                                                        <asp:ListItem Value="BM">Bermuda</asp:ListItem>
                                                        <asp:ListItem Value="BT">Bhutan</asp:ListItem>
                                                        <asp:ListItem Value="BO">Bolivia, Plurinational State of</asp:ListItem>
                                                        <asp:ListItem Value="CV">Cape Verde</asp:ListItem>
                                                        <asp:ListItem Value="KY">Cayman Islands</asp:ListItem>
                                                        <asp:ListItem Value="Canada">Canada</asp:ListItem>
                                                        <asp:ListItem Value="CF">Central African Republic</asp:ListItem>
                                                        <asp:ListItem Value="TD">Chad</asp:ListItem>
                                                        <asp:ListItem Value="CL">Chile</asp:ListItem>
                                                        <asp:ListItem Value="CN">China</asp:ListItem>
                                                        <asp:ListItem Value="CX">Christmas Island</asp:ListItem>
                                                        <asp:ListItem Value="CC">Cocos (Keeling) Islands</asp:ListItem>
                                                        <asp:ListItem Value="HK">Hong Kong</asp:ListItem>
                                                        <asp:ListItem Value="HU">Hungary</asp:ListItem>
                                                        <asp:ListItem Value="IS">Iceland</asp:ListItem>
                                                        <asp:ListItem Value="IN">India</asp:ListItem>
                                                        <asp:ListItem Value="ID">Indonesia</asp:ListItem>
                                                        <asp:ListItem Value="IR">Iran, Islamic Republic of</asp:ListItem>
                                                        <asp:ListItem Value="IQ">Iraq</asp:ListItem>
                                                        <asp:ListItem Value="IE">Ireland</asp:ListItem>
                                                        <asp:ListItem Value="IM">Isle of Man</asp:ListItem>
                                                        <asp:ListItem Value="IL">Israel</asp:ListItem>
                                                        <asp:ListItem Value="IT">Italy</asp:ListItem>
                                                        <asp:ListItem Value="JM">Jamaica</asp:ListItem>
                                                        <asp:ListItem Value="JP">Japan</asp:ListItem>
                                                        <asp:ListItem Value="JE">Jersey</asp:ListItem>
                                                        <asp:ListItem Value="JO">Jordan</asp:ListItem>
                                                        <asp:ListItem Value="KZ">Kazakhstan</asp:ListItem>
                                                        <asp:ListItem Value="other">Other</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="txtalgnrgt" style="width: 210px">
                                                    <label class="input-label required">
                                                        Province or State :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtState" Visible="false" runat="server" CssClass="inputTextbox"></asp:TextBox>
                                                    <asp:DropDownList ID="ddlPOBStateOfUSA" runat="server" CssClass="inputTextbox" title="Select your state">
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
                                                    </asp:DropDownList>
                                                    <asp:DropDownList ID="ddlPOBStateOfCanada" runat="server" Visible="false" CssClass="inputTextbox"
                                                        title="Select your state">
                                                        <asp:ListItem Value="-1">STATES OF CANADA</asp:ListItem>
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
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="txtalgnrgt">
                                                    <label class="input-label required">
                                                        City :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtPOBCity" CssClass="inputTextbox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </fieldset>
                                    <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                        <span class="fltrt">
                                            <asp:Button ID="btnChildSupp" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                                                runat="server" Text="Save & Next" CausesValidation="true" OnClick="btnChildSupp_Click" />
                                            <asp:LinkButton ID="lnkCancelCSD" CssClass="secondary medium bottom buttonalignment"
                                                runat="server" OnClick="lnkCancelCSD_Click">Cancel</asp:LinkButton></span>
                                    </div>
                                </div>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
                <asp:Panel ID="pnlSection3" runat="server" Visible="false">
                    <asp:UpdatePanel runat="server" ID="upSection2">
                        <ContentTemplate>
                            <asp:Panel ID="pnlApprovedSection3" runat="server">
                                <div>
                                    <div class="sectionDiv">
                                        <span>Licensure Information </span>
                                    </div>
                                    <asp:UpdatePanel ID="upLicenseInfo" runat="server">
                                        <ContentTemplate>
                                            <fieldset class="flsNewApplReqForm flsNewApplReqForm3">
                                                <table class="tblApplReqForm5">
                                                    <tr>
                                                        <td style="width: 20px;">
                                                            <b>15.</b>
                                                        </td>
                                                        <td style="width: 545px; padding-left: 0px; line-height: 18px; text-align: justify;">
                                                            <b>Do you now hold or have you ever held any license (massage related, medical, or other
                                                                professional), or any registration, certiﬁcation, or other authorization to practice
                                                                <u>Massage Therapy, or any other profession, or license certificate permit, or other authorization
                                                                            for a massage therapy business </u>in any city or county in any state,
                                                                or province, U.S. territory, or foreign country? </b>
                                                        </td>
                                                        <td align="left" class="cursorpointer">
                                                            <asp:RadioButtonList ID="rblLicenInfo" runat="server" RepeatDirection="Horizontal">
                                                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                                                <asp:ListItem Value="0">No</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <p>
                                                    If you answered "Yes" to (15.) above, please list all of your massage therapy business
                                                    <u>Massage Therapy </u>and other professional registrations, permits, certificates,
                                                    licenses, or other authorizations, including your <u>Registration, Permit Cetificate,
                                                                or License Number first date issuance, </u>date of expiration <u>City, State or Province,
                                                                    Country of issuance and license status : </u>Attach an additional
                                                    page if needed. If your registration, permit, certificate, or license is currently
                                                    inactive, please provide the <b><u>Reason of Inactivity :</u></b>
                                                </p>
                                                <div class="divLicenseInfon divaddnew AfterApproved" id="divAddbuttonLicensureInformation"
                                                    runat="server">
                                                    <span style="float: right; margin-right: 10px;">
                                                        <asp:Button ID="btnLicensureInformationAddNew" ValidationGroup="vgAffidavit" CssClass="buttonGreen small"
                                                            runat="server" Text="Add New" CausesValidation="true" OnClick="btnLicensureInformationAddNew_Click" />
                                                    </span>
                                                </div>
                                                <asp:Literal ID="ltrLicenseInfoEdit" runat="server"></asp:Literal>
                                                <div class="divLicenseInfo" id="divAddPanelLicensureInformation" runat="server" visible="false">
                                                    <p class="addNewDiv">
                                                        <span>Add Licensure Information</span>
                                                    </p>
                                                    <table class="tblApplReqForm5 wthtop20" style="width: 96%;">
                                                        <tr>
                                                            <td class="txtalgnrgt tdwidth1">
                                                                <label class="input-label required">
                                                                    License # :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtLicenseInfoLicenseNo" runat="server" CssClass="inputTextbox"
                                                                    MaxLength="150"></asp:TextBox>
                                                            </td>
                                                            <td class="txtalgnrgt tdwidth2">
                                                                <label class="input-label required">
                                                                    Type :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtLicensInfoType" runat="server" CssClass="inputTextbox" MaxLength="150"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label required">
                                                                    Date of Issuance :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtLicensInfoDateOfIssuance" runat="server" CssClass="inputTextbox calender"></asp:TextBox>
                                                            </td>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label required">
                                                                    City :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtLicensInfoCity" runat="server" CssClass="inputTextbox"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label required">
                                                                    Province or State  :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="ddlLicensInfoState" runat="server" CssClass="inputTextbox">
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
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label required">
                                                                    Country :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="ddlLicenseInfoCountry" runat="server" CssClass="inputTextbox">
                                                                    <asp:ListItem Value="USA">USA</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label required">
                                                                    Status :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="ddlLicenseInfoStatus" runat="server" CssClass="inputTextbox">
                                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                    <asp:ListItem Value="1">Active</asp:ListItem>
                                                                    <asp:ListItem Value="2">Inactive</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label required">
                                                                    Reason :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtLicensInfoReason" runat="server" CssClass="inputTextbox"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                        <span class="fltrt">
                                                            <asp:Button ID="btnLicensureInformationSave" ValidationGroup="VGLicensure" CssClass="buttonGreen medium"
                                                                runat="server" Text="Save" CausesValidation="true" OnClick="btnLicensureInformationSave_Click" />
                                                            <asp:LinkButton ID="lnkLicensureInformationCancel" CssClass="secondary medium bottom buttonalignment"
                                                                runat="server" OnClick="lnkLicensureInformationCancel_Click">Cancel</asp:LinkButton></span>
                                                    </div>
                                                </div>
                                                <div class="divLicenseInfo">
                                                    <asp:GridView ID="gvLicenseInfo" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                        CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None"
                                                        OnRowDataBound="gvLicenseInfo_RowDataBound">
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="License #">
                                                                <ItemStyle />
                                                                <EditItemTemplate>
                                                                    <asp:UpdatePanel ID="upLicenseInfo2" runat="server">
                                                                        <Triggers>
                                                                            <asp:PostBackTrigger ControlID="btnLicensureInformationUpdate" />
                                                                        </Triggers>
                                                                        <ContentTemplate>
                                                                            <div>
                                                                                <table class="grid-heading">
                                                                                    <tr>
                                                                                        <td style="width: 143px;">
                                                                                            <span id="lblCertificationNo">CAMTC.001</span>
                                                                                        </td>
                                                                                        <td style="width: 180px;">
                                                                                            <span id="lblDateofIssue">02/04/2014</span>
                                                                                        </td>
                                                                                        <td style="width: 64px;">
                                                                                            <span id="lblLiState">CA</span>
                                                                                        </td>
                                                                                        <td style="width: 99px;">
                                                                                            <span id="lblCountry">USA</span>
                                                                                        </td>
                                                                                        <td>
                                                                                            <span id="lblStatus">Active</span>
                                                                                        </td>
                                                                                        <td></td>
                                                                                    </tr>
                                                                                </table>
                                                                            </div>
                                                                            <div class="divGridEdit">
                                                                                <p class="addNewDiv">
                                                                                    <span>Edit Licensure Information</span>
                                                                                </p>
                                                                                <table class="tblApplReqForm5 wthtop20" style="width: 96%;">
                                                                                    <tr>
                                                                                        <td class="txtalgnrgt tdwidth1">
                                                                                            <label class="input-label required">
                                                                                                License # :
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:TextBox ID="txtLicenseInfoLicenseNoEdit" runat="server" CssClass="inputTextbox"
                                                                                                MaxLength="150"></asp:TextBox>
                                                                                        </td>
                                                                                        <td class="txtalgnrgt tdwidth2">
                                                                                            <label class="input-label">
                                                                                                Type :
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:TextBox ID="txtLicensInfoTypeEdit" runat="server" CssClass="inputTextbox" MaxLength="150"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="txtalgnrgt">
                                                                                            <label class="input-label required">
                                                                                                Date of Issuance :
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:TextBox ID="txtLicensInfoDateOfIssuanceEdit" runat="server" CssClass="inputTextbox calender"></asp:TextBox>
                                                                                        </td>
                                                                                        <td class="txtalgnrgt">
                                                                                            <label class="input-label required">
                                                                                                City :
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:TextBox ID="txtLicensInfoCityEdit" Text="RANCHO MIRAGE" runat="server" CssClass="inputTextbox"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="txtalgnrgt">
                                                                                            <label class="input-label required">
                                                                                                Province or State :
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:DropDownList ID="ddlLicensInfoStateEdit" runat="server" CssClass="inputTextbox">
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
                                                                                        <td class="txtalgnrgt">
                                                                                            <label class="input-label required">
                                                                                                Country :
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:DropDownList ID="ddlLicenseInfoCountryEdit" runat="server" CssClass="inputTextbox">
                                                                                                <asp:ListItem Value="US">USA</asp:ListItem>
                                                                                            </asp:DropDownList>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="txtalgnrgt">
                                                                                            <label class="input-label required">
                                                                                                Status :
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:DropDownList ID="ddlLicenseInfoStatusEdit" runat="server" CssClass="inputTextbox">
                                                                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                                                <asp:ListItem Value="1">Active</asp:ListItem>
                                                                                                <asp:ListItem Value="2">Inactive</asp:ListItem>
                                                                                            </asp:DropDownList>
                                                                                        </td>
                                                                                        <td class="txtalgnrgt">
                                                                                            <label class="input-label">
                                                                                                Reason :
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:TextBox ID="txtLicensInfoReasonEdit" runat="server" CssClass="inputTextbox"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                                    <span class="fltrt">
                                                                                        <asp:Button ID="btnLicensureInformationUpdate" ValidationGroup="VGLicensureedit"
                                                                                            CssClass="buttonGreen medium" runat="server" Text="Update" CausesValidation="true"
                                                                                            OnClick="btnLicensureInformationUpdate_Click" />
                                                                                        <asp:LinkButton ID="lnkLicensureInformationCancelUpdate" CssClass="secondary medium bottom buttonalignment"
                                                                                            runat="server" OnClick="lnkLicensureInformationCancelUpdate_Click">Cancel</asp:LinkButton></span>
                                                                                </div>
                                                                            </div>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                </EditItemTemplate>
                                                                <ItemTemplate>
                                                                    <asp:Label ID="lblCertificationNo" runat="server" Text="Label"></asp:Label>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Date of Issuance">
                                                                <ItemStyle />
                                                                <ItemTemplate>
                                                                    <asp:Label ID="lblDateofIssue" runat="server" Text="Label"></asp:Label>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="State">
                                                                <ItemStyle />
                                                                <ItemTemplate>
                                                                    <asp:Label ID="lblLiState" runat="server" Text="Label"></asp:Label>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Country">
                                                                <ItemStyle />
                                                                <ItemTemplate>
                                                                    <asp:Label ID="lblCountry" runat="server" Text="Label"></asp:Label>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Status">
                                                                <ItemStyle CssClass="aligncenter" />
                                                                <HeaderStyle CssClass="aligncenter" />
                                                                <ItemTemplate>
                                                                    <asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField ItemStyle-Width="60px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                                                                <ItemStyle CssClass="ActionCollumn" HorizontalAlign="Center" />
                                                                <ItemTemplate>
                                                                    <span class="fltrt AfterApproved">
                                                                        <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" CommandArgument="1" runat="server"
                                                                            RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                            OnClick="lnkLicensureInformationEdit_Click" />
                                                                        <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                            CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript :return confirm('Are you sure you want to delete?')"
                                                                            OnClick="lnkLicensureInformationDelete_Click" /></span>
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
                                            </fieldset>
                                            <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                <span class="fltrt">
                                                    <asp:Button ID="btnLicInfoNext" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                                                        runat="server" Text="Save & Next" CausesValidation="true" OnClick="btnLicNextInfo_Click" />
                                                    <asp:LinkButton ID="lnkCancelLiceInfo" CssClass="secondary medium bottom buttonalignment"
                                                        runat="server" OnClick="lnkCancelLiceInfo_Click">Cancel</asp:LinkButton></span>
                                            </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
                <asp:Panel ID="pnlSection4" runat="server" Visible="false">
                    <asp:UpdatePanel runat="server" ID="upSection4">
                        <ContentTemplate>
                            <asp:Panel ID="pnlApprovedSection4" runat="server">
                                <div>
                                    <div class="sectionDiv">
                                        <span>Education</span>
                                    </div>
                                    <fieldset class="flsNewApplReqForm flsNewApplReqForm4">
                                        <table class="tblApplReqForm5">
                                            <tr>
                                                <td style="width: 20px;">
                                                    <b>16.</b>
                                                </td>
                                                <td style="width: 545px; padding-left: 0px; line-height: 20px; text-align: justify;">
                                                    <b>Have you COMPLETED 500 HOURS or more of Massage Therapy education from CAMTC <a
                                                        class="hyperlink" href="https ://www.camtc.org/" target="_blank">approved schools?</a>
                                                    </b>
                                                </td>
                                                <td align="left" class="cursorpointer">
                                                    <asp:RadioButtonList ID="rblEducationQ1" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                                        <asp:ListItem Value="0">No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 20px;">
                                                    <b>17.</b>
                                                </td>
                                                <td style="width: 545px; padding-left: 0px; line-height: 20px; text-align: justify;">
                                                    <b>Are all of the school(s) you attended still in business? (If your answer is "No"
                                                        please also complete question (20.) for those schools that are no longer in business).
                                                    </b>
                                                </td>
                                                <td align="left" class="cursorpointer">
                                                    <asp:RadioButtonList ID="rblEducationQ2" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                                        <asp:ListItem Value="0">No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 20px;">
                                                    <b>18.</b>
                                                </td>
                                                <td style="width: 545px; padding-left: 0px; line-height: 20px; text-align: justify;">
                                                    <b>Are all of the school(s) you attended in California? (If your answer is "No" please
                                                        also complete question (20.) for those schools that are not in California).
                                                    </b>
                                                </td>
                                                <td align="left" class="cursorpointer">
                                                    <asp:RadioButtonList ID="rblEducationQ3" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                                        <asp:ListItem Value="0">No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b>19.</b>
                                                </td>
                                                <td colspan="2" style="line-height: 20px;">
                                                    <b>Please identify all Massage Therapy Schools that you attended in the United States
                                                        or in any other country including start date and end date and total number of hours
                                                        of attendance at EACH school even if the school is not a CAMTC approved school;
                                                        attach an additional page if needed. Applicants from some schools may be required
                                                        to provide additional documentation. Please see <a class="hyperlink" href="http://www.camtc.org/Schools.aspx"
                                                            target="_blank">http://www.camtc.org/Schools.aspx</a> for details. </b>
                                                </td>
                                            </tr>
                                        </table>
                                        <div class="divLicenseInfon divaddnew" id="divEducationt2" runat="server">
                                            <span style="float: right; margin-right: 10px;" class="AfterApproved">
                                                <asp:Button ID="btnEducation2AddNew" ValidationGroup="vgAffidavit" CssClass="buttonGreen small"
                                                    runat="server" Text="Add New" CausesValidation="true" OnClick="btnEducation2AddNew_Click" />
                                            </span>
                                        </div>
                                        <div id="divAddPanelEducation2" runat="server" visible="false">
                                            <table class=" tblApplReqForm5 wthtop20" style="width: 99%;">
                                                <tr>
                                                    <td class="txtalgnrgt">
                                                        <label class="input-label required">
                                                            Name of Massage Therapy School :
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlSchool" Style="width: 143px;" runat="server">
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
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
                                                        <asp:TextBox ID="txtEducationStartDate" placeholder="MM/DD/YYYY" CssClass="inputTextbox calender"
                                                            runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="txtalgnrgt">
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
                                                        <asp:TextBox ID="txtExplainNoneGraduate" Width="625px" CssClass="inputTextbox" TextMode="MultiLine"
                                                            runat="server"></asp:TextBox>
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
                                                            <div>
                                                                <table class="grid-heading">
                                                                    <tr>
                                                                        <td style="width: 143px;">
                                                                            <span id="lblDateStart">01/02/2012</span>
                                                                        </td>
                                                                        <td style="width: 180px;">
                                                                            <span id="lblDateComplete">02/04/2014</span>
                                                                        </td>
                                                                        <td>
                                                                            <span id="lblTotalHRS">201</span>
                                                                        </td>
                                                                        <td>
                                                                            <span>
                                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucCertificationApplication1$gvEducation2$ctl02$imgbtnNotepad"
                                                                                    id="imgbtnNotepad" disabled="disabled" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                                                                                    class="aspNetDisabled" src="../../App_Themes/Theme1/images/notepad.png" style="width: 20px;">
                                                                            </span>
                                                                        </td>
                                                                        <td></td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                            <asp:UpdatePanel runat="server" ID="MassageTrainingandEducationUp2">
                                                                <ContentTemplate>
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
                                                                                    <asp:DropDownList ID="ddlSchoolEdit" Style="width: 143px;" runat="server">
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
                                                                                    <asp:TextBox ID="txtExplainNoneGraduateEdit" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
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
                                                                <asp:ImageButton ID="imgbtnNotepad" Enabled="false" Width="20px" ToolTip="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                                                                    runat="server" ImageUrl="~/App_Themes/Theme1/images/notepad.png" />
                                                            </span>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ItemStyle-Width="60px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                                                        <ItemStyle CssClass="ActionCollumn" HorizontalAlign="Center" />
                                                        <ItemTemplate>
                                                            <span class="fltrt AfterApproved">
                                                                <asp:ImageButton ID="imgbtnEducation2Edit" CssClass="imgDelete" CommandArgument="1"
                                                                    runat="server" RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                    OnClick="lnkEducation2Edit_Click" />
                                                                <asp:ImageButton ID="imgBtnEducation2Delete" CssClass="imgDelete" runat="server"
                                                                    ToolTip="Delete" CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                                                    OnClientClick="javascript :return confirm('Are you sure you want to delete?')"
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
                                        <asp:UpdatePanel runat="server" ID="MassageTrainingandEducationUp">
                                            <ContentTemplate>
                                                <div>
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 20px;">
                                                                <b>20.</b>
                                                            </td>
                                                            <td>
                                                                <b>If you attended a school or schools that are now closed, have changed their name,
                                                                    or are OUTSIDE of California, please provide the following additional information
                                                                    about each school (to the best of your ability). See Instructions. Attach an additional
                                                                    page if needed. </b>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div class="divLicenseInfon divaddnew" id="divEducationt1" runat="server">
                                                    <span style="float: right;" class="AfterApproved">
                                                        <asp:Button ID="btnEducation1AddNew" ValidationGroup="vgAffidavit" CssClass="buttonGreen small"
                                                            runat="server" Text="Add New" CausesValidation="true" OnClick="btnEducation1AddNew_Click" />
                                                    </span>
                                                </div>
                                                <div id="divAddPanelEducation1" runat="server" visible="false">
                                                    <asp:Literal ID="ltrMessageTrnGEdit" runat="server"></asp:Literal>
                                                    <table class="tblApplReqForm5">
                                                        <tr>
                                                            <td></td>
                                                            <td colspan="3">
                                                                <label class="input-label required">
                                                                    Full name of Massage Therapy School you attended :
                                                                </label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding: 0px !important;"></td>
                                                            <td colspan="3" style="padding: 0px !important;">
                                                                <asp:TextBox ID="txtEdu1SchoolName" Width="482px" runat="server" CssClass="tooltip OnlyAlphabet inputTextbox calWidth"
                                                                    MaxLength="150" title="Only A-Z characters are allowed."></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="txtalgnrgt" style="width: 145px;">
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
                                                                <table style="margin-top: -7px;">
                                                                    <tr>
                                                                        <td style="vertical-align: middle; width: 145px;" class="txtalgnrgt">
                                                                            <label class="input-label required">
                                                                                Street :
                                                                            </label>
                                                                        </td>
                                                                        <td colspan="5">
                                                                            <asp:TextBox ID="txtEdu1Street" runat="server" Width="482px" CssClass="calWidth us_street"
                                                                                MaxLength="500"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td></td>
                                                                        <td colspan="5">
                                                                            <asp:TextBox ID="txtEdu1Street2" runat="server" Width="482px" CssClass="calWidth us_street"
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
                                                                            <asp:TextBox ID="txtEdu1City" runat="server" CssClass="tooltip calWidth" Width="124px"
                                                                                MaxLength="500"></asp:TextBox>
                                                                        </td>
                                                                        <td class="txtalgnrgt" style="width: 52px;">
                                                                            <label class="input-label required">
                                                                                State :
                                                                            </label>
                                                                        </td>
                                                                        <td style="width: 106px;">
                                                                            <asp:DropDownList ID="ddlEdu1State" runat="server" Width="98px" CssClass="inputTextbox">
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
                                                                            <asp:TextBox ID="txtEdu1Zip" runat="server" placeholder="xxxxx-xxxx or xxxxx" CssClass="zip_us" Width="127px"
                                                                                MaxLength="500"></asp:TextBox>
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
                                                                <asp:TextBox ID="txtEdu1SchoolPhone" runat="server" CssClass="inputTextbox calWidth phone_us"></asp:TextBox>
                                                            </td>
                                                            <td class="txtalgnrgt" style="width: 205px;">
                                                                <label class="input-label">
                                                                    School Email :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtEdu1SchoolEmail" runat="server" CssClass="inputTextbox calWidth"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label required">
                                                                    School Website :
                                                                </label>
                                                            </td>
                                                            <td colspan="3">
                                                                <asp:TextBox ID="txtEdu1SchoolWebsite" runat="server" CssClass="inputTextbox calWidth"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                        <span class="fltrt">
                                                            <asp:Button ID="btnEducation1Save" ValidationGroup="VGSchool" CssClass="buttonGreen medium"
                                                                runat="server" Text="Save" CausesValidation="true" OnClick="btnEducation1Save_Click" />
                                                            <asp:LinkButton ID="lnkEducation1Cancel" CssClass="secondary medium bottom buttonalignment"
                                                                runat="server" OnClick="lnkEducation1Cancel_Click">Cancel</asp:LinkButton></span>
                                                    </div>
                                                </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                        <div class="divLicenseInfo">
                                            <asp:GridView ID="gvEducation1" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None"
                                                OnRowDataBound="gvEducation1_RowDataBound">
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
                                                                                <td style="width: 205px;">
                                                                                    <span id="lblBusinessName4">NATIONAL HOLISTIC INSTITUTE</span>
                                                                                </td>
                                                                                <td style="width: 120px;">
                                                                                    <span id="lblBusinessPhone4">(530) 542-0604</span>
                                                                                </td>
                                                                                <td style="width: 134px;">
                                                                                    <span id="lblCity4">EMERYVILLE</span>
                                                                                </td>
                                                                                <td style="width: 42px;">
                                                                                    <span id="lblState4">CA</span>
                                                                                </td>
                                                                                <td>
                                                                                    <span id="lblZip4">96151</span>
                                                                                </td>
                                                                                <td></td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <div class="divGridEdit">
                                                                        <p class="addNewDiv">
                                                                            <span>Education</span>
                                                                        </p>
                                                                        <table class=" tblApplReqForm5 wthtop20" style="width: 99%;">
                                                                            <tr>
                                                                                <td></td>
                                                                                <td colspan="3">
                                                                                    <label class="input-label required">
                                                                                        Full name of Massage Therapy School you attended :
                                                                                    </label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="padding: 0px !important;"></td>
                                                                                <td colspan="3" style="padding: 0px !important;">
                                                                                    <asp:TextBox ID="txtEdu1SchoolNameEdit" Width="482px" runat="server" CssClass="tooltip OnlyAlphabet inputTextbox calWidth"
                                                                                        Text="NATIONAL HOLISTIC INSTITUTE"></asp:TextBox>
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
                                                                                    <table style="margin-top: -7px;">
                                                                                        <tr>
                                                                                            <td style="vertical-align: middle; width: 145px;" class="txtalgnrgt">
                                                                                                <label class="input-label required">
                                                                                                    Street :
                                                                                                </label>
                                                                                            </td>
                                                                                            <td colspan="5">
                                                                                                <asp:TextBox ID="txtEdu1StreetEdit" Text="3675 Lakeside Dr" runat="server" Width="482px"
                                                                                                    CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td></td>
                                                                                            <td colspan="5">
                                                                                                <asp:TextBox ID="txtEdu1Street2Edit" runat="server" Width="482px" CssClass="calWidth us_street"
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
                                                                                                <asp:TextBox ID="txtEdu1CityEdit" runat="server" Text="EMERYVILLE" CssClass="tooltip calWidth"
                                                                                                    Width="124px" MaxLength="500"></asp:TextBox>
                                                                                            </td>
                                                                                            <td class="txtalgnrgt" style="width: 52px;">
                                                                                                <label class="input-label required">
                                                                                                    State :
                                                                                                </label>
                                                                                            </td>
                                                                                            <td style="width: 106px;">
                                                                                                <asp:DropDownList ID="ddlEdu1StateEdit" runat="server" Width="98px" CssClass="inputTextbox">
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
                                                                                                <asp:TextBox ID="txtEdu1ZipEdit" Text="96151" runat="server" CssClass="zip_us" placeholder="xxxxx-xxxx or xxxxx"
                                                                                                    Width="127px" MaxLength="500"></asp:TextBox>
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
                                                                                <td class="txtalgnrgt" style="width: 190px;">
                                                                                    <label class="input-label">
                                                                                        School Email :
                                                                                    </label>
                                                                                </td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txtEdu1SchoolEmailEdit" runat="server" CssClass="inputTextbox calWidth"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="txtalgnrgt">
                                                                                    <label class="input-label">
                                                                                        School Website :
                                                                                    </label>
                                                                                </td>
                                                                                <td colspan="3">
                                                                                    <asp:TextBox ID="txtEdu1SchoolWebsiteEdit" runat="server" CssClass="inputTextbox calWidth"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                        <div class="clear">
                                                                        </div>
                                                                        <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                            <span class="fltrt">
                                                                                <asp:Button ID="btnEducation1Update" ValidationGroup="VGSchoolEdit" CssClass="buttonGreen medium"
                                                                                    runat="server" Text="Update" CausesValidation="true" OnClick="btnEducation1Update_Click" />
                                                                                <asp:LinkButton ID="lnkEducation1CancelUpdate" CssClass="secondary medium bottom buttonalignment"
                                                                                    runat="server" OnClick="lnkEducation1CancelUpdate_Click">Cancel</asp:LinkButton></span>
                                                                        </div>
                                                                    </div>
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblBusinessName2" runat="server" Text="Label"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="School Phone">
                                                        <ItemStyle />
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblBusinessPhone2" runat="server" Text="Label"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="City">
                                                        <ItemStyle />
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblCity2" runat="server" Text="Label"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="State">
                                                        <ItemStyle CssClass="aligncenter" />
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblState2" runat="server" Text="Label"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Zip">
                                                        <ItemStyle CssClass="aligncenter" />
                                                        <HeaderStyle CssClass="aligncenter" />
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblZip2" runat="server" Text="Label"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ItemStyle-Width="60px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                                                        <ItemStyle CssClass="ActionCollumn" HorizontalAlign="Center" />
                                                        <ItemTemplate>
                                                            <span class="fltrt AfterApproved">
                                                                <asp:ImageButton ID="imgbtnEducation1Edit" CssClass="imgDelete" CommandArgument="1"
                                                                    runat="server" RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                    OnClick="lnkEducation1Edit_Click" />
                                                                <asp:ImageButton ID="imgBtnEducation1Delete" CssClass="imgDelete" runat="server"
                                                                    ToolTip="Delete" CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                                                    OnClientClick="javascript :return confirm('Are you sure you want to delete?')"
                                                                    OnClick="lnkEducation1Delete_Click" /></span>
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
                                        <div>
                                            <table style="width: 100%;">
                                                <tr>
                                                    <td style="width: 20px;">
                                                        <b>21.</b>
                                                    </td>
                                                    <td>
                                                        <b>Please enter the TOTAL DOCUMENTED HOURS of Education from ALL CAMTC approved Massage
                                                            Therapy Schools you have attended.</b>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>
                                                        <asp:TextBox ID="txtEducationQ6" Width="145px" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <b>22.</b>
                                                    </td>
                                                    <td>
                                                        <b>Please indicate if you have passed any of the following CAMTC approved exams. If
                                                            so, you are required to have the examining board send proof directly to CAMTC. You
                                                            must have passed a CAMTC approved exam in order to be certified. </b>
                                                    </td>
                                                </tr>
                                                <tr>

                                                    <td colspan="2">
                                                        <div id="divAddButtonQ22" runat="server" class="divLicenseInfon divaddnew">
                                                            <span style="float: right; margin-right: 10px;" class="AfterApproved">
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
                                                                            <asp:Button ID="Button8" CssClass="secondary medium" runat="server" OnClick="btnCancelNewQ22_Click" Text="Cancel" />


                                                                        </span>
                                                                    </div>
                                                                </td>
                                                            </tr>


                                                        </table>

                                                        <%--<table style="width: 100%;">
                                                                            <tr>
                                                                                <td class="cursorpointer">
                                                                                    <asp:CheckBox ID="chkEducation1" Text="MBLEX" runat="server" />
                                                                                </td>
                                                                                <td class="cursorpointer">
                                                                                    <asp:CheckBox ID="chkEducation2" Text="BCTMB" runat="server" />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="cursorpointer">
                                                                                    <asp:CheckBox ID="chkEducation3" Text="NCETM taken on before February 1, 2015" runat="server" />
                                                                                </td>
                                                                                <td class="cursorpointer">
                                                                                    <asp:CheckBox ID="chkEducation4" Text="NCETMB taken on or before February 1, 2015"
                                                                                        runat="server" />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <label class="hed input-label">
                                                                                        Pass Date :
                                                                                    </label>
                                                                                    <asp:TextBox ID="txtEducationPassDate" CssClass="calender" runat="server"></asp:TextBox>
                                                                                </td>
                                                                                <td></td>
                                                                            </tr>
                                                                        </table>--%>
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
                                                                        <ItemStyle CssClass="ActionCollumn" />
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
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </fieldset>
                                    <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                        <span class="fltrt">
                                            <asp:Button ID="btnNextMassageTraning" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                                                runat="server" Text="Save & Next" CausesValidation="true" OnClick="btnNextMassageTraning_Click" />
                                            <asp:LinkButton ID="lnkCancelNextMassageTraning" CssClass="secondary medium bottom buttonalignment"
                                                runat="server" OnClick="lnkCancelNextMassageTraning_Click">Cancel</asp:LinkButton></span>
                                    </div>
                                </div>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
                <asp:Panel ID="pnlSection5" runat="server" Visible="false">
                    <asp:UpdatePanel runat="server" ID="uppnlSection5">
                        <ContentTemplate>
                            <asp:Panel ID="pnlApprovedSection5" runat="server">
                                <div>
                                    <div class="sectionDiv">
                                        <span>Work Information</span>
                                    </div>
                                    <fieldset class="flsNewApplReqForm flsNCBTMBEI">
                                        <div class="work-info-1">
                                            <table class="tblApplReqForm5">
                                                <tr>
                                                    <td style="width: 20px;">
                                                        <b>23.</b>
                                                    </td>
                                                    <td style="width: 545px; padding-left: 0px; line-height: 20px; text-align: justify;">
                                                        <b>Are you currently WORKING in the ﬁeld of Massage Therapy on paying clients (excluding
                                                            intern/externships)? </b>
                                                    </td>
                                                    <td align="left" class="cursorpointer">
                                                        <asp:RadioButtonList ID="rblWorkInfoQ1" runat="server" RepeatDirection="Horizontal">
                                                            <asp:ListItem Value="1">Yes</asp:ListItem>
                                                            <asp:ListItem Value="0">No</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 20px;"></td>
                                                    <td style="width: 545px; padding-left: 0px; line-height: 20px; text-align: justify;">
                                                        <b>Have you EVER worked in the ﬁeld of Massage Therapy on paying clients (excluding
                                                            intern/extemships)? </b>
                                                    </td>
                                                    <td align="left" class="cursorpointer">
                                                        <asp:RadioButtonList ID="rblWorkInfoQ2" runat="server" RepeatDirection="Horizontal">
                                                            <asp:ListItem Value="1">Yes</asp:ListItem>
                                                            <asp:ListItem Value="0">No</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                            </table>
                                            <p>
                                                If you answered "Yes" to (23.) above, then please provide the following BUSINESS
                                                INFORMATION for <u>ALL </u>locations where you currently provide Massage Therapy
                                                services. You must request directly from CAMTC that an official copy of your CAMTC
                                                Certificate be provided for display at each place of business where you provide
                                                massage for compensation according to CA Business and Professions Code section 4608(a).
                                                If you work at more than two (2) locations, please enter the additional locations
                                                on the attached "Location Supplement Sheet."
                                            </p>
                                            <asp:Literal ID="ltrScoreReport" runat="server"></asp:Literal>
                                            <div class="divLicenseInfon divaddnew" id="divbtnWorkInfo1" runat="server">
                                                <span style="float: right; margin-right: 10px;" class="AfterApproved">
                                                    <asp:Button ID="btnWorkInfo1AddNew" CssClass="buttonGreen small" runat="server" Text="Add New"
                                                        OnClick="btnWorkInfo1AddNew_Click" />
                                                </span>
                                            </div>
                                            <div id="divpnlWorkInfo1" runat="server" visible="false">
                                                <table class="tblApplReqForm5">
                                                    <tr>
                                                        <td colspan="6">
                                                            <b>Current Place of Work :</b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6">
                                                            <table class="tblApplReqForm5">
                                                                <tr>
                                                                    <td class="txtalgnrgt" style="width: 110px;">
                                                                        <label class="input-label">
                                                                            Business Name :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtWorkInfo1BusinessName" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                    </td>
                                                                    <td class="txtalgnrgt" style="width: 168px;">
                                                                        <label class="input-label">
                                                                            Primary Business Contact :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtWorkInfo1BusinessContact" runat="server" CssClass="inputTextbox phone_us NewAppPersonalTxtbx phone_us"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="vertical-align: middle; width: 111px;" class="txtalgnrgt">
                                                            <label class="input-label required">
                                                                Street :
                                                            </label>
                                                        </td>
                                                        <td colspan="5">
                                                            <asp:TextBox ID="txtWorkInfoQ1Street1" runat="server" Width="515px" CssClass="calWidth us_street"
                                                                MaxLength="500"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td colspan="5">
                                                            <asp:TextBox ID="txtWorkInfoQ1Street2" runat="server" Width="515px" CssClass="calWidth us_street"
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
                                                            <asp:TextBox ID="txtWorkInfoQ1City" runat="server" Width="133px" CssClass="tooltip OnlyAlphabet calWidth"
                                                                MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                        </td>
                                                        <td class="txtalgnrgt" style="width: 52px;">
                                                            <label class="input-label required">
                                                                State :
                                                            </label>
                                                        </td>
                                                        <td style="width: 138px;">
                                                            <asp:DropDownList ID="ddlWorkInfoQ1State" runat="server" Width="135px" CssClass="inputTextbox"
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
                                                            <asp:TextBox ID="txtWorkInfoQ1Zip" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                Width="127px" CssClass="tooltip zip_us calWidth" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6">
                                                            <table class="tblApplReqForm5" style="margin-top: -7px;">
                                                                <tr>
                                                                    <td class="txtalgnrgt" style="width: 110px;">
                                                                        <label class="input-label">
                                                                            Business Phone :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtWorkInfo1BusinessPhone" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx phone_us"></asp:TextBox>
                                                                    </td>
                                                                    <td class="txtalgnrgt" style="width: 168px;">
                                                                        <label class="input-label">
                                                                            Business Website :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtWorkInfo1BusinessWebsite" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="txtalgnrgt">
                                                                        <label class="input-label">
                                                                            Business Email :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtWorkInfoQ1BusinessEmail" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                    </td>
                                                                    <td class="txtalgnrgt">
                                                                        <label class="input-label">
                                                                            Approximate Start Date :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtWorkInfoQ1ApStartdate" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx calender"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="txtalgnrgt">
                                                                        <label class="input-label">
                                                                            End Date :
                                                                        </label>
                                                                    </td>
                                                                    <td colspan="3">
                                                                        <asp:TextBox ID="txtWorkInfoQ1Enddate" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx calender"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="4">
                                                                        <label class="input-label">
                                                                            Please indicate your work status :
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <%--<tr>
                                                                    <td colspan="4">
                                                                        <table style="margin-top : -10px; width : 100%;">
                                                                            <tr>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusOne5" Text="Self Employed" /><input
                                                                                            type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusOne7" Text="Manager/Operator" /><input
                                                                                            type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusOne3" Text="Independent Contractor" /><input
                                                                                            type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td colspan="2">
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusOne4" Text="Paying for use of Space" /><input
                                                                                            type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusOne1" Text="Owner" /><input type="image"
                                                                                            style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusOne2" Text="Employee" /><input type="image"
                                                                                            style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusOne6" Text="Employer" /><input type="image"
                                                                                            style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusOne8" Text="Instructor" /><input type="image"
                                                                                            style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusOne9" Text="Other" /><input type="image"
                                                                                            style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>--%>
                                                                <tr>
                                                                    <td></td>
                                                                    <td colspan="3">
                                                                        <div class="listbox">
                                                                            <asp:CheckBoxList ID="CheckBoxList1" Style="line-height: 20px; width: 300px;" runat="server"
                                                                                CssClass="pdgnone">
                                                                                <asp:ListItem Value="0">Self Employed</asp:ListItem>
                                                                                <asp:ListItem Value="1">Manager/Operator</asp:ListItem>
                                                                                <asp:ListItem Value="2">Independent Contractor</asp:ListItem>
                                                                                <asp:ListItem Value="3">Paying for use of Space</asp:ListItem>
                                                                                <asp:ListItem Value="4">Owner</asp:ListItem>
                                                                                <asp:ListItem Value="1">Employee</asp:ListItem>
                                                                                <asp:ListItem Value="2">Employer</asp:ListItem>
                                                                                <asp:ListItem Value="3">Instructor</asp:ListItem>
                                                                                <asp:ListItem Value="4">Other</asp:ListItem>
                                                                            </asp:CheckBoxList>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                    <span class="fltrt">
                                                        <asp:Button ID="btnSaveWorkInfo1" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnSaveWorkInfo1_Click" />
                                                        <asp:LinkButton ID="lnkCancelWorkInfo1" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server" OnClick="lnkCancelWorkInfo1_Click">Cancel</asp:LinkButton></span>
                                                </div>
                                            </div>
                                            <div class="divLicenseInfo">
                                                <asp:GridView ID="gvWorkInfo1" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                    CssClass="index  grid" Width="100%" CellPadding="5" OnRowDataBound="gvWorkInfo1_RowDataBound"
                                                    ForeColor="#333333" GridLines="None">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Business Name">
                                                            <ItemStyle />
                                                            <EditItemTemplate>
                                                                <asp:UpdatePanel runat="server" ID="MassageTrainingandEducationUp2">
                                                                    <ContentTemplate>
                                                                        <div>
                                                                            <table class="grid-heading">
                                                                                <tr>
                                                                                    <td style="width: 151px;">
                                                                                        <span id="lblBusinessName1">Max Health Center</span>
                                                                                    </td>
                                                                                    <td style="width: 131px;">
                                                                                        <span id="lblBusinessPhone1">(530) 542-0604</span>
                                                                                    </td>
                                                                                    <td style="width: 163px;">
                                                                                        <span id="lblCity1">EMERYVILLE</span>
                                                                                    </td>
                                                                                    <td>
                                                                                        <span id="lblState1">CA</span>
                                                                                    </td>
                                                                                    <td>
                                                                                        <span id="lblZip1">96151</span>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </div>
                                                                        <div class="divGridEdit">
                                                                            <p class="addNewDiv">
                                                                                <span>Work Information</span>
                                                                            </p>
                                                                            <table class="tblApplReqForm5" style="margin: 0 auto;">
                                                                                <tr>
                                                                                    <td colspan="6">
                                                                                        <table class="tblApplReqForm5" style="margin-top: -7px;">
                                                                                            <tr>
                                                                                                <td class="txtalgnrgt" style="width: 145px;">
                                                                                                    <label class="input-label">
                                                                                                        Business Name :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtWorkInfo1BusinessNameEdit" runat="server" CssClass="inputTextbox workinfo NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                </td>
                                                                                                <td class="txtalgnrgt" style="width: 168px;">
                                                                                                    <label class="input-label">
                                                                                                        Primary Business Contact :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtWorkInfo1BusinessContactEdit" Style="width: 147px;" runat="server"
                                                                                                        CssClass="inputTextbox phone_us"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="vertical-align: middle; width: 144px;" class="txtalgnrgt">
                                                                                        <label class="input-label required">
                                                                                            Street :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td colspan="5">
                                                                                        <asp:TextBox ID="txtWorkInfoQ1Street1Edit" Text="626 Humboldt Street" runat="server"
                                                                                            Width="494px" CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td></td>
                                                                                    <td colspan="5">
                                                                                        <asp:TextBox ID="txtWorkInfoQ1Street2Edit" runat="server" Width="494px" CssClass="calWidth us_street"
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
                                                                                        <asp:TextBox ID="txtWorkInfoQ1CityEdit" runat="server" Width="133px" CssClass="tooltip OnlyAlphabet calWidth"
                                                                                            MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="txtalgnrgt" style="width: 52px;">
                                                                                        <label class="input-label required">
                                                                                            State :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td style="width: 133px;">
                                                                                        <asp:DropDownList ID="ddlWorkInfoQ1StateEdit" runat="server" Width="128px" CssClass="inputTextbox"
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
                                                                                        <asp:TextBox ID="txtWorkInfoQ1ZipEdit" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                                            Width="111px" CssClass="tooltip zip_us calWidth" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="6">
                                                                                        <table class="tblApplReqForm5" style="margin-top: -7px;">
                                                                                            <tr>
                                                                                                <td class="txtalgnrgt" style="width: 145px;">
                                                                                                    <label class="input-label">
                                                                                                        Business Phone :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtWorkInfo1BusinessPhoneEdit" runat="server" CssClass="inputTextbox workinfo NewAppPersonalTxtbx phone_us"></asp:TextBox>
                                                                                                </td>
                                                                                                <td class="txtalgnrgt" style="width: 145px;">
                                                                                                    <label class="input-label">
                                                                                                        Business Website :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtWorkInfo1BusinessWebsiteEdit" runat="server" CssClass="inputTextbox workinfo NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="txtalgnrgt">
                                                                                                    <label class="input-label">
                                                                                                        Business Email :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtWorkInfoQ1BusinessEmailEdit" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                </td>
                                                                                                <td class="txtalgnrgt">
                                                                                                    <label class="input-label">
                                                                                                        Approximate Start Date :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtWorkInfoQ1ApStartdateEdit" runat="server" CssClass="inputTextbox workinfo NewAppPersonalTxtbx calender"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>

                                                                                                <td class="txtalgnrgt">
                                                                                                    <label class="input-label">
                                                                                                        End Date :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td colspan="3">
                                                                                                    <asp:TextBox ID="txtWorkInfoQ1EnddateEdit" runat="server" CssClass="inputTextbox workinfo NewAppPersonalTxtbx calender"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td colspan="4">
                                                                                                    <label class="input-label">
                                                                                                        Please indicate your work status :
                                                                                                    </label>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <%--<tr>
                                                                                                <td colspan="4">
                                                                                                    <table style="margin-top : -10px; width : 100%;">
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusOne5Edit" Text="Self Employed" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusOne7Edit" Text="Manager/Operator" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusOne3Edit" Text="Independent Contractor" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td colspan="2">
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusOne4Edit" Text="Paying for use of Space" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusOne1Edit" Text="Owner" /><input type="image"
                                                                                                                        style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusOne2Edit" Text="Employee" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusOne6Edit" Text="Employer" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusOne8Edit" Text="Instructor" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusOne9Edit" Text="Other" /><input type="image"
                                                                                                                        style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>--%>
                                                                                            <tr>
                                                                                                <td></td>
                                                                                                <td colspan="3">
                                                                                                    <div class="listbox">
                                                                                                        <asp:CheckBoxList ID="CheckBoxList2" Style="line-height: 20px; width: 300px;" runat="server"
                                                                                                            CssClass="pdgnone">
                                                                                                            <asp:ListItem Value="0">Self Employed</asp:ListItem>
                                                                                                            <asp:ListItem Value="1">Manager/Operator</asp:ListItem>
                                                                                                            <asp:ListItem Value="2">Independent Contractor</asp:ListItem>
                                                                                                            <asp:ListItem Value="3">Paying for use of Space</asp:ListItem>
                                                                                                            <asp:ListItem Value="4">Owner</asp:ListItem>
                                                                                                            <asp:ListItem Value="1">Employee</asp:ListItem>
                                                                                                            <asp:ListItem Value="2">Employer</asp:ListItem>
                                                                                                            <asp:ListItem Value="3">Instructor</asp:ListItem>
                                                                                                            <asp:ListItem Value="4">Other</asp:ListItem>
                                                                                                        </asp:CheckBoxList>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <div class="clear">
                                                                            </div>
                                                                            <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                                <span class="fltrt">
                                                                                    <asp:Button ID="btnWorkInfo1Update" ValidationGroup="VGSchoolEdit" CssClass="buttonGreen medium"
                                                                                        runat="server" Text="Update" CausesValidation="true" OnClick="btnWorkInfo1Update_Click" />
                                                                                    <asp:LinkButton ID="lnkWorkInfo1CancelUpdate" CssClass="secondary medium bottom buttonalignment"
                                                                                        runat="server" OnClick="lnkWorkInfo1CancelUpdate_Click">Cancel</asp:LinkButton></span>
                                                                            </div>
                                                                        </div>
                                                                    </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblBusinessName1" runat="server" Text="Label"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Business Phone">
                                                            <ItemStyle />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblBusinessPhone1" runat="server" Text="Label"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="City">
                                                            <ItemStyle />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblCity1" runat="server" Text="Label"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="State">
                                                            <ItemStyle CssClass="aligncenter" />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblState1" runat="server" Text="Label"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Zip">
                                                            <ItemStyle CssClass="aligncenter" />
                                                            <HeaderStyle CssClass="aligncenter" />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblZip1" runat="server" Text="Label"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField ItemStyle-Width="60px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                                                            <ItemStyle CssClass="ActionCollumn" HorizontalAlign="Center" />
                                                            <ItemTemplate>
                                                                <span class="fltrt AfterApproved">
                                                                    <asp:ImageButton ID="imgbtnWorkInfo1Edit" CssClass="imgDelete" CommandArgument="1"
                                                                        runat="server" RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                        OnClick="lnkWorkInfo1Edit_Click" />
                                                                    <asp:ImageButton ID="imgBtnWorkInfo1Delete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                        CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript :return confirm('Are you sure you want to delete?')"
                                                                        OnClick="lnkWorkInfo1Delete_Click" /></span>
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
                                        </div>
                                        <div class="work-info-2">
                                            <div>
                                                <table style="width: 100%;">
                                                    <tr>
                                                        <td style="width: 20px;">
                                                            <b>24.</b>
                                                        </td>
                                                        <td>
                                                            <b>Prospective employer (if any) :</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="divLicenseInfon divaddnew" id="divbtnWorkInfo2" runat="server">
                                                <span style="float: right; margin-right: 10px;" class="AfterApproved">
                                                    <asp:Button ID="btnWorkInfo2AddNew" CssClass="buttonGreen small" runat="server" Text="Add New"
                                                        OnClick="btnWorkInfo2AddNew_Click" />
                                                </span>
                                            </div>
                                            <div id="divpnlWorkInfo2" runat="server" visible="false">
                                                <table class="tblApplReqForm5">
                                                    <tr>
                                                        <td>
                                                            <b>Previous Place of Work :</b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6">
                                                            <table class="tblApplReqForm5">
                                                                <tr>
                                                                    <td class="txtalgnrgt" style="width: 145px;">
                                                                        <label class="input-label">
                                                                            Business Name :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtWorkInfo2BusinessName" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                    </td>
                                                                    <td class="txtalgnrgt" style="width: 166px;">
                                                                        <label class="input-label">
                                                                            Primary Business Contact :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtWorkInfo2BusinessContact" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx phone_us"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="vertical-align: middle; width: 144px;" class="txtalgnrgt">
                                                            <label class="input-label required">
                                                                Street :
                                                            </label>
                                                        </td>
                                                        <td colspan="5">
                                                            <asp:TextBox ID="txtWorkInfoQ2Street1" runat="server" Width="516px" CssClass="calWidth us_street"
                                                                MaxLength="500"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td colspan="5">
                                                            <asp:TextBox ID="txtWorkInfoQ2Street2" runat="server" Width="516px" CssClass="calWidth us_street"
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
                                                            <asp:TextBox ID="txtWorkInfoQ2City" runat="server" Width="133px" CssClass="tooltip OnlyAlphabet calWidth"
                                                                MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                        </td>
                                                        <td class="txtalgnrgt" style="width: 52px;">
                                                            <label class="input-label required">
                                                                State :
                                                            </label>
                                                        </td>
                                                        <td style="width: 138px;">
                                                            <asp:DropDownList ID="ddlWorkInfoQ2State" runat="server" Width="136px" CssClass="inputTextbox"
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
                                                            <asp:TextBox ID="txtWorkInfoQ2Zip" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                Width="127px" CssClass="tooltip zip_us calWidth" MaxLength="500"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6">
                                                            <table class="tblApplReqForm5" style="margin-top: -7px;">
                                                                <tr>
                                                                    <td class="txtalgnrgt" style="width: 145px;">
                                                                        <label class="input-label">
                                                                            Business Phone :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtWorkInfo2BusinessPhone" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx phone_us"></asp:TextBox>
                                                                    </td>
                                                                    <td class="txtalgnrgt" style="width: 166px;">
                                                                        <label class="input-label">
                                                                            Business Website :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtWorkInfo2BusinessWebsite" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="txtalgnrgt">
                                                                        <label class="input-label">
                                                                            Business Email :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtWorkInfoQ2BusinessEmail" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                    </td>
                                                                    <td class="txtalgnrgt">
                                                                        <label class="input-label">
                                                                            Approximate Start Date :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtWorkInfoQ2ApStartdate" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx calender"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>

                                                                    <td class="txtalgnrgt">
                                                                        <label class="input-label">
                                                                            End Date :
                                                                        </label>
                                                                    </td>
                                                                    <td colspan="3">
                                                                        <asp:TextBox ID="txtWorkInfoQ2Enddate" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx calender"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="4">
                                                                        <label class="input-label">
                                                                            Please indicate your work status :
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <%--<tr>
                                                                    <td colspan="4">
                                                                        <table style="margin-top : -10px; width : 100%;">
                                                                            <tr>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusTwo5" Text="Self Employed" /><input
                                                                                            type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusTwo7" Text="Manager/Operator" /><input
                                                                                            type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusTwo3" Text="Independent Contractor" /><input
                                                                                            type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td colspan="2">
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusTwo4" Text="Paying for use of Space" /><input
                                                                                            type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusTwo1" Text="Owner" /><input type="image"
                                                                                            style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusTwo2" Text="Employee" /><input type="image"
                                                                                            style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusTwo6" Text="Employer" /><input type="image"
                                                                                            style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusTwo8" Text="Instructor" /><input type="image"
                                                                                            style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusTwo9" Text="Other" /><input type="image"
                                                                                            style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>--%>
                                                                <tr>
                                                                    <td></td>
                                                                    <td colspan="3">
                                                                        <div class="listbox">
                                                                            <asp:CheckBoxList ID="CheckBoxList3" Style="line-height: 20px; width: 300px;" runat="server"
                                                                                CssClass="pdgnone">
                                                                                <asp:ListItem Value="0">Self Employed</asp:ListItem>
                                                                                <asp:ListItem Value="1">Manager/Operator</asp:ListItem>
                                                                                <asp:ListItem Value="2">Independent Contractor</asp:ListItem>
                                                                                <asp:ListItem Value="3">Paying for use of Space</asp:ListItem>
                                                                                <asp:ListItem Value="4">Owner</asp:ListItem>
                                                                                <asp:ListItem Value="1">Employee</asp:ListItem>
                                                                                <asp:ListItem Value="2">Employer</asp:ListItem>
                                                                                <asp:ListItem Value="3">Instructor</asp:ListItem>
                                                                                <asp:ListItem Value="4">Other</asp:ListItem>
                                                                            </asp:CheckBoxList>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                    <span class="fltrt">
                                                        <asp:Button ID="btnSaveWorkInfo2" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnSaveWorkInfo2_Click" />
                                                        <asp:LinkButton ID="lnkWorkInfo2" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server" OnClick="lnkCancelWorkInfo2_Click">Cancel</asp:LinkButton></span>
                                                </div>
                                            </div>
                                            <div class="divLicenseInfo">
                                                <asp:GridView ID="gvWorkInfo2" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                    CssClass="index  grid" Width="100%" CellPadding="5" OnRowDataBound="gvWorkInfo2_RowDataBound"
                                                    ForeColor="#333333" GridLines="None">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Business Name">
                                                            <ItemStyle />
                                                            <EditItemTemplate>
                                                                <asp:UpdatePanel runat="server" ID="MassageTrainingandEducationUp3">
                                                                    <ContentTemplate>
                                                                        <div>
                                                                            <table class="grid-heading">
                                                                                <tr>
                                                                                    <td style="width: 210px;">
                                                                                        <span id="lblBusinessName2">Dolce Salon and Spa</span>
                                                                                    </td>
                                                                                    <td style="width: 117px;">
                                                                                        <span id="lblBusinessPhone2">(530) 542-0604</span>
                                                                                    </td>
                                                                                    <td style="width: 133px;">
                                                                                        <span id="lblCity2">EMERYVILLE</span>
                                                                                    </td>
                                                                                    <td>
                                                                                        <span id="lblState2">CA</span>
                                                                                    </td>
                                                                                    <td>
                                                                                        <span id="lblZip2">96151</span>
                                                                                    </td>
                                                                                    <td></td>
                                                                                </tr>
                                                                            </table>
                                                                        </div>
                                                                        <div class="divGridEdit">
                                                                            <p class="addNewDiv">
                                                                                <span>Work Information</span>
                                                                            </p>
                                                                            <table class="tblApplReqForm5" style="margin: 0 auto;">
                                                                                <tr>
                                                                                    <td colspan="6">
                                                                                        <table class="tblApplReqForm5">
                                                                                            <tr>
                                                                                                <td class="txtalgnrgt" style="width: 145px;">
                                                                                                    <label class="input-label">
                                                                                                        Business Name :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtWorkInfo2BusinessNameEdit" Text="Dolce Salon and Spa" runat="server"
                                                                                                        CssClass="inputTextbox workinfo NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                </td>
                                                                                                <td class="txtalgnrgt" style="width: 168px;">
                                                                                                    <label class="input-label">
                                                                                                        Primary Business Contact :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtWorkInfo2BusinessContactEdit" Style="width: 147px;" runat="server"
                                                                                                        CssClass="inputTextbox phone_us"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="vertical-align: middle; width: 144px;" class="txtalgnrgt">
                                                                                        <label class="input-label required">
                                                                                            Street :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td colspan="5">
                                                                                        <asp:TextBox ID="txtWorkInfoQ2Street1Edit" Text="6441 N Durango Dr" runat="server"
                                                                                            Width="494px" CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td></td>
                                                                                    <td colspan="5">
                                                                                        <asp:TextBox ID="txtWorkInfoQ2Street2Edit" runat="server" Width="494px" CssClass="calWidth us_street"
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
                                                                                        <asp:TextBox ID="txtWorkInfoQ2CityEdit" Text="EMERYVILLE" runat="server" Width="133px"
                                                                                            CssClass="tooltip OnlyAlphabet calWidth" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="txtalgnrgt" style="width: 52px;">
                                                                                        <label class="input-label required">
                                                                                            State :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td style="width: 127px;">
                                                                                        <asp:DropDownList ID="ddlWorkInfoQ2StateEdit" runat="server" Width="125px" CssClass="inputTextbox"
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
                                                                                        <asp:TextBox ID="txtWorkInfoQ2ZipEdit" Text="96151" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                                            Width="117px" CssClass="tooltip zip_us calWidth" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="6">
                                                                                        <table class="tblApplReqForm5">
                                                                                            <tr>
                                                                                                <td class="txtalgnrgt" style="width: 145px;">
                                                                                                    <label class="input-label">
                                                                                                        Business Phone  :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtWorkInfo2BusinessPhoneEdit" Text="(530) 542-0604" runat="server"
                                                                                                        CssClass="inputTextbox workinfo NewAppPersonalTxtbx phone_us"></asp:TextBox>
                                                                                                </td>
                                                                                                <td class="txtalgnrgt" style="width: 145px;">
                                                                                                    <label class="input-label">
                                                                                                        Business Website :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtWorkInfo2BusinessWebsiteEdit" runat="server" CssClass="inputTextbox workinfo NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="txtalgnrgt">
                                                                                                    <label class="input-label">
                                                                                                        Business Email :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtWorkInfoQ2BusinessEmailEdit" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                </td>
                                                                                                <td class="txtalgnrgt">
                                                                                                    <label class="input-label">
                                                                                                        Approximate Start Date :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtWorkInfoQ2ApStartdateEdit" runat="server" CssClass="inputTextbox workinfo NewAppPersonalTxtbx calender"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="txtalgnrgt">
                                                                                                    <label class="input-label">
                                                                                                        End Date :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td colspan="3">
                                                                                                    <asp:TextBox ID="txtWorkInfoQ2EnddateEdit" runat="server" CssClass="inputTextbox workinfo NewAppPersonalTxtbx calender"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td colspan="4">
                                                                                                    <label class="input-label">
                                                                                                        Please indicate your work status :
                                                                                                    </label>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <%--<tr>
                                                                                                <td colspan="4">
                                                                                                    <table style="margin-top : -10px; width : 100%;">
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusTwo5Edit" Text="Self Employed" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusTwo7Edit" Text="Manager/Operator" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusTwo3Edit" Text="Independent Contractor" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td colspan="2">
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusTwo4Edit" Text="Paying for use of Space" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox Checked="true" runat="server" ID="chkWorkStatusTwo1Edit" Text="Owner" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusTwo2Edit" Text="Employee" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusTwo6Edit" Text="Employer" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusTwo8Edit" Text="Instructor" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusTwo9Edit" Text="Other" /><input type="image"
                                                                                                                        style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>--%>
                                                                                            <tr>
                                                                                                <td></td>
                                                                                                <td colspan="3">
                                                                                                    <div class="listbox">
                                                                                                        <asp:CheckBoxList ID="CheckBoxList4" Style="line-height: 20px; width: 300px;" runat="server"
                                                                                                            CssClass="pdgnone">
                                                                                                            <asp:ListItem Value="0">Self Employed</asp:ListItem>
                                                                                                            <asp:ListItem Value="1">Manager/Operator</asp:ListItem>
                                                                                                            <asp:ListItem Value="2">Independent Contractor</asp:ListItem>
                                                                                                            <asp:ListItem Value="3">Paying for use of Space</asp:ListItem>
                                                                                                            <asp:ListItem Value="4">Owner</asp:ListItem>
                                                                                                            <asp:ListItem Value="1">Employee</asp:ListItem>
                                                                                                            <asp:ListItem Value="2">Employer</asp:ListItem>
                                                                                                            <asp:ListItem Value="3">Instructor</asp:ListItem>
                                                                                                            <asp:ListItem Value="4">Other</asp:ListItem>
                                                                                                        </asp:CheckBoxList>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <div class="clear">
                                                                            </div>
                                                                            <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                                <span class="fltrt">
                                                                                    <asp:Button ID="btnWorkInfo2Update" ValidationGroup="VGSchoolEdit" CssClass="buttonGreen medium"
                                                                                        runat="server" Text="Update" CausesValidation="true" OnClick="btnWorkInfo2Update_Click" />
                                                                                    <asp:LinkButton ID="lnkWorkInfo2CancelUpdate" CssClass="secondary medium bottom buttonalignment"
                                                                                        runat="server" OnClick="lnkWorkInfo2CancelUpdate_Click">Cancel</asp:LinkButton></span>
                                                                            </div>
                                                                        </div>
                                                                    </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblBusinessName2" runat="server" Text="Label"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Business Phone">
                                                            <ItemStyle />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblBusinessPhone2" runat="server" Text="Label"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="City">
                                                            <ItemStyle />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblCity2" runat="server" Text="Label"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="State">
                                                            <ItemStyle CssClass="aligncenter" />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblState2" runat="server" Text="Label"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Zip">
                                                            <ItemStyle CssClass="aligncenter" />
                                                            <HeaderStyle CssClass="aligncenter" />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblZip2" runat="server" Text="Label"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField ItemStyle-Width="60px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                                                            <ItemStyle CssClass="ActionCollumn" HorizontalAlign="Center" />
                                                            <ItemTemplate>
                                                                <span class="fltrt AfterApproved">
                                                                    <asp:ImageButton ID="imgbtnWorkInfo2Edit" CssClass="imgDelete" CommandArgument="1"
                                                                        runat="server" RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                        OnClick="lnkWorkInfo2Edit_Click" />
                                                                    <asp:ImageButton ID="imgBtnWorkInfo2Delete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                        CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript :return confirm('Are you sure you want to delete?')"
                                                                        OnClick="lnkWorkInfo2Delete_Click" /></span>
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
                                        </div>
                                        <div class="work-info-3">
                                            <div>
                                                <table style="width: 100%;">
                                                    <tr>
                                                        <td style="width: 20px;">
                                                            <b>25.</b>
                                                        </td>
                                                        <td>
                                                            <b>Please provide all of your <u>Previous Massage Work Locations </u>within the <u>past ten (10) years</u>
                                                                . If you have provided massage for compensation at more than two (2) massage locations
                                                                within the past ten (10) years, please enter your additional previous work locations
                                                                on the attached "Location Supplement Sheet." </b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="divLicenseInfon divaddnew" id="divbtnWorkInfo3" runat="server">
                                                <span style="float: right; margin-right: 10px;" class="AfterApproved">
                                                    <asp:Button ID="btnWorkInfo3AddNew" CssClass="buttonGreen small" runat="server" Text="Add New"
                                                        OnClick="btnWorkInfo3AddNew_Click" />
                                                </span>
                                            </div>
                                            <div id="divpnlWorkInfo3" runat="server" visible="false">
                                                <table class="tblApplReqForm5">
                                                    <tr>
                                                        <td colspan="6">
                                                            <table class="tblApplReqForm5">
                                                                <tr>
                                                                    <td class="txtalgnrgt" style="width: 145px;">
                                                                        <label class="input-label">
                                                                            Business Name :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtWorkInfo3BusinessName" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                    </td>
                                                                    <td class="txtalgnrgt" style="width: 159px;">
                                                                        <label class="input-label" style="padding-right: 6px;">
                                                                            Primary Business Contact :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtWorkInfo3BusinessContact" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx phone_us"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="vertical-align: middle; width: 144px;" class="txtalgnrgt">
                                                            <label class="input-label required">
                                                                Street :
                                                            </label>
                                                        </td>
                                                        <td colspan="5">
                                                            <asp:TextBox ID="txtWorkInfoQ3Street1" runat="server" Width="507px" CssClass="calWidth us_street"
                                                                MaxLength="500"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td colspan="5">
                                                            <asp:TextBox ID="txtWorkInfoQ3Street2" runat="server" Width="507px" CssClass="calWidth us_street"
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
                                                            <asp:TextBox ID="txtWorkInfoQ3City" runat="server" Width="133px" CssClass="tooltip OnlyAlphabet calWidth"
                                                                MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                        </td>
                                                        <td class="txtalgnrgt" style="width: 52px;">
                                                            <label class="input-label required">
                                                                State :
                                                            </label>
                                                        </td>
                                                        <td style="width: 130px;">
                                                            <asp:DropDownList ID="ddlWorkInfoQ3State" runat="server" Width="125px" CssClass="inputTextbox"
                                                                title="Select your state">
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
                                                            <asp:TextBox ID="txtWorkInfoQ3Zip" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                Width="127px" CssClass="tooltip zip_us calWidth" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6">
                                                            <table class="tblApplReqForm5" style="margin-top: -7px;">
                                                                <tr>
                                                                    <td class="txtalgnrgt" style="width: 145px;">
                                                                        <label class="input-label">
                                                                            Business Phone :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtWorkInfo3BusinessPhone" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx phone_us"></asp:TextBox>
                                                                    </td>
                                                                    <td class="txtalgnrgt" style="width: 160px;">
                                                                        <label class="input-label">
                                                                            Business Website :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtWorkInfo3BusinessWebsite" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="txtalgnrgt">
                                                                        <label class="input-label">
                                                                            Business Email :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtWorkInfoQ3BusinessEmail" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                    </td>
                                                                    <td class="txtalgnrgt">
                                                                        <label class="input-label">
                                                                            Approximate Start Date :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtWorkInfoQ3ApStartdate" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx calender"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="txtalgnrgt">
                                                                        <label class="input-label">
                                                                            End Date :
                                                                        </label>
                                                                    </td>
                                                                    <td colspan="3">
                                                                        <asp:TextBox ID="txtEndDate25Edit" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx calender"></asp:TextBox>
                                                                    </td>

                                                                </tr>
                                                                <tr>
                                                                    <td colspan="4">
                                                                        <label class="input-label">
                                                                            Please indicate your work status :
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <%--<tr>
                                                                    <td colspan="4">
                                                                        <table style="margin-top : -10px; width : 100%;">
                                                                            <tr>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusThree5" Text="Self Employed" /><input
                                                                                            type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusThree7" Text="Manager/Operator" /><input
                                                                                            type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusThree3" Text="Independent Contractor" /><input
                                                                                            type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td colspan="2">
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusThree4" Text="Paying for use of Space" /><input
                                                                                            type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusThree1" Text="Owner" /><input type="image"
                                                                                            style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusThree2" Text="Employee" /><input type="image"
                                                                                            style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusThree6" Text="Employer" /><input type="image"
                                                                                            style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusThree8" Text="Instructor" /><input
                                                                                            type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                                <td>
                                                                                    <p>
                                                                                        <asp:CheckBox runat="server" ID="chkWorkStatusThree9" Text="Other" /><input type="image"
                                                                                            style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                            name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                    </p>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>--%>
                                                                <tr>
                                                                    <td></td>
                                                                    <td colspan="3">
                                                                        <div class="listbox">
                                                                            <asp:CheckBoxList ID="CheckBoxList5" Style="line-height: 20px; width: 300px;" runat="server"
                                                                                CssClass="pdgnone">
                                                                                <asp:ListItem Value="0">Self Employed</asp:ListItem>
                                                                                <asp:ListItem Value="1">Manager/Operator</asp:ListItem>
                                                                                <asp:ListItem Value="2">Independent Contractor</asp:ListItem>
                                                                                <asp:ListItem Value="3">Paying for use of Space</asp:ListItem>
                                                                                <asp:ListItem Value="4">Owner</asp:ListItem>
                                                                                <asp:ListItem Value="1">Employee</asp:ListItem>
                                                                                <asp:ListItem Value="2">Employer</asp:ListItem>
                                                                                <asp:ListItem Value="3">Instructor</asp:ListItem>
                                                                                <asp:ListItem Value="4">Other</asp:ListItem>
                                                                            </asp:CheckBoxList>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                    <span class="fltrt">
                                                        <asp:Button ID="btnSaveWorkInfo3" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnSaveWorkInfo3_Click" />
                                                        <asp:LinkButton ID="lnkWorkInfo3" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server" OnClick="lnkCancelWorkInfo3_Click">Cancel</asp:LinkButton></span>
                                                </div>
                                            </div>
                                            <div class="divLicenseInfo">
                                                <asp:GridView ID="gvWorkInfo3" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                    CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None"
                                                    OnRowDataBound="gvWorkInfo3_RowDataBound">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Business Name">
                                                            <ItemStyle />
                                                            <EditItemTemplate>
                                                                <asp:UpdatePanel runat="server" ID="MassageTrainingandEducationUp3">
                                                                    <ContentTemplate>
                                                                        <div>
                                                                            <table class="grid-heading">
                                                                                <tr>
                                                                                    <td style="width: 200px;">
                                                                                        <span id="lblBusinessName3">Four Seasons Hotel</span>
                                                                                    </td>
                                                                                    <td style="width: 120px;">
                                                                                        <span id="lblBusinessPhone3">(702) 414-1618</span>
                                                                                    </td>
                                                                                    <td style="width: 136px;">
                                                                                        <span id="lblCity3">EMERYVILLE</span>
                                                                                    </td>
                                                                                    <td>
                                                                                        <span id="lblState3">CA</span>
                                                                                    </td>
                                                                                    <td>
                                                                                        <span id="lblZip3">96151</span>
                                                                                    </td>
                                                                                    <td></td>
                                                                                </tr>
                                                                            </table>
                                                                        </div>
                                                                        <div class="divGridEdit">
                                                                            <p class="addNewDiv">
                                                                                <span>Work Information</span>
                                                                            </p>
                                                                            <table class="tblApplReqForm5" style="margin: 0 auto;">
                                                                                <tr>
                                                                                    <td colspan="6">
                                                                                        <table class="tblApplReqForm5">
                                                                                            <tr>
                                                                                                <td class="txtalgnrgt" style="width: 145px;">
                                                                                                    <label class="input-label">
                                                                                                        Business Name :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtWorkInfo3BusinessNameEdit" Text="Four Seasons Hotel" runat="server"
                                                                                                        CssClass="inputTextbox workinfo NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                </td>
                                                                                                <td class="txtalgnrgt" style="width: 150px;">
                                                                                                    <label class="input-label">
                                                                                                        Primary Business Contact :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtWorkInfo3BusinessContactEdit" runat="server" CssClass="inputTextbox workinfo NewAppPersonalTxtbx phone_us"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="vertical-align: middle; width: 144px;" class="txtalgnrgt">
                                                                                        <label class="input-label required">
                                                                                            Street :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td colspan="5">
                                                                                        <asp:TextBox ID="txtWorkInfoQ3Street1Edit" Text="8950 W Charleston Blvd" runat="server"
                                                                                            Width="499px" CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td></td>
                                                                                    <td colspan="5">
                                                                                        <asp:TextBox ID="txtWorkInfoQ3Street2Edit" runat="server" Width="499px" CssClass="calWidth us_street"
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
                                                                                        <asp:TextBox ID="txtWorkInfoQ3CityEdit" Text="EMERYVILLE" runat="server" Width="133px"
                                                                                            CssClass="tooltip OnlyAlphabet calWidth" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="txtalgnrgt" style="width: 52px;">
                                                                                        <label class="input-label required">
                                                                                            State :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td style="width: 122px;">
                                                                                        <asp:DropDownList ID="ddlWorkInfoQ3StateEdit" runat="server" Width="120px" CssClass="inputTextbox"
                                                                                            title="Select your state">
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
                                                                                        <asp:TextBox ID="txtWorkInfoQ3ZipEdit" Text="96151" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                                            Width="127px" CssClass="tooltip zip_us calWidth" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="6">
                                                                                        <table class="tblApplReqForm5" style="margin-top: -7px;">
                                                                                            <tr>
                                                                                                <td class="txtalgnrgt" style="width: 145px;">
                                                                                                    <label class="input-label">
                                                                                                        Business Phone :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtWorkInfo3BusinessPhoneEdit" Text="(702) 414-1618" runat="server"
                                                                                                        CssClass="inputTextbox workinfo NewAppPersonalTxtbx phone_us"></asp:TextBox>
                                                                                                </td>
                                                                                                <td class="txtalgnrgt" style="width: 149px;">
                                                                                                    <label class="input-label">
                                                                                                        Business Website :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtWorkInfo3BusinessWebsiteEdit" runat="server" CssClass="inputTextbox workinfo NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="txtalgnrgt">
                                                                                                    <label class="input-label">
                                                                                                        Business Email :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtWorkInfoQ3BusinessEmailEdit" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                </td>
                                                                                                <td class="txtalgnrgt">
                                                                                                    <label class="input-label">
                                                                                                        Approximate Start Date :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtWorkInfoQ3ApStartdateEdit" runat="server" CssClass="inputTextbox workinfo NewAppPersonalTxtbx calender"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="txtalgnrgt">
                                                                                                    <label class="input-label">
                                                                                                        End Date :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td colspan="3">
                                                                                                    <asp:TextBox ID="txtEndDate25Edit1" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx calender"></asp:TextBox>
                                                                                                </td>

                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td colspan="4">
                                                                                                    <label class="input-label">
                                                                                                        Please indicate your work status :
                                                                                                    </label>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <%--<tr>
                                                                                                <td colspan="4">
                                                                                                    <table style="margin-top : -10px; width : 100%;">
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusThree5Edit" Text="Self Employed" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusThree7Edit" Text="Manager/Operator" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusThree3Edit" Text="Independent Contractor" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td colspan="2">
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusThree4Edit" Text="Paying for use of Space" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox Checked="true" runat="server" ID="chkWorkStatusThree1Edit" Text="Owner" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusThree2Edit" Text="Employee" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusThree6Edit" Text="Employer" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusThree8Edit" Text="Instructor" /><input
                                                                                                                        type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <p>
                                                                                                                    <asp:CheckBox runat="server" ID="chkWorkStatusThree9Edit" Text="Other" /><input type="image"
                                                                                                                        style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                        name="Help" title="Edit" src="../../App_Themes/Theme1/images/help.png">
                                                                                                                </p>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>--%>
                                                                                            <tr>
                                                                                                <td></td>
                                                                                                <td colspan="3">
                                                                                                    <div class="listbox">
                                                                                                        <asp:CheckBoxList ID="CheckBoxList6" Style="line-height: 20px; width: 300px;" runat="server"
                                                                                                            CssClass="pdgnone">
                                                                                                            <asp:ListItem Value="0">Self Employed</asp:ListItem>
                                                                                                            <asp:ListItem Value="1">Manager/Operator</asp:ListItem>
                                                                                                            <asp:ListItem Value="2">Independent Contractor</asp:ListItem>
                                                                                                            <asp:ListItem Value="3">Paying for use of Space</asp:ListItem>
                                                                                                            <asp:ListItem Value="4">Owner</asp:ListItem>
                                                                                                            <asp:ListItem Value="1">Employee</asp:ListItem>
                                                                                                            <asp:ListItem Value="2">Employer</asp:ListItem>
                                                                                                            <asp:ListItem Value="3">Instructor</asp:ListItem>
                                                                                                            <asp:ListItem Value="4">Other</asp:ListItem>
                                                                                                        </asp:CheckBoxList>
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <div class="clear">
                                                                            </div>
                                                                            <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                                <span class="fltrt">
                                                                                    <asp:Button ID="btnWorkInfo3Update" ValidationGroup="VGSchoolEdit" CssClass="buttonGreen medium"
                                                                                        runat="server" Text="Update" CausesValidation="true" OnClick="btnWorkInfo3Update_Click" />
                                                                                    <asp:LinkButton ID="lnkWorkInfo3CancelUpdate" CssClass="secondary medium bottom buttonalignment"
                                                                                        runat="server" OnClick="lnkWorkInfo3CancelUpdate_Click">Cancel</asp:LinkButton></span>
                                                                            </div>
                                                                        </div>
                                                                    </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblBusinessName3" runat="server" Text="Label"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Business Phone">
                                                            <ItemStyle />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblBusinessPhone3" runat="server" Text="Label"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="City">
                                                            <ItemStyle />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblCity3" runat="server" Text="Label"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="State">
                                                            <ItemStyle CssClass="aligncenter" />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblState3" runat="server" Text="Label"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Zip">
                                                            <ItemStyle CssClass="aligncenter" />
                                                            <HeaderStyle CssClass="aligncenter" />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblZip3" runat="server" Text="Label"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField ItemStyle-Width="60px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                                                            <ItemStyle CssClass="ActionCollumn" HorizontalAlign="Center" />
                                                            <ItemTemplate>
                                                                <span class="fltrt AfterApproved">
                                                                    <asp:ImageButton ID="imgbtnWorkInfo3Edit" CssClass="imgDelete" CommandArgument="1"
                                                                        runat="server" RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                        OnClick="lnkWorkInfo3Edit_Click" />
                                                                    <asp:ImageButton ID="imgBtnWorkInfo3Delete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                        CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript :return confirm('Are you sure you want to delete?')"
                                                                        OnClick="lnkWorkInfo3Delete_Click" /></span>
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
                                        </div>
                                        <div class="work-info-4">
                                            <div>
                                                <table style="width: 100%;">
                                                    <tr>
                                                        <td style="width: 20px;">
                                                            <b>26.</b>
                                                        </td>
                                                        <td>
                                                            <b>Please provide all of your <u>Previous Residential Locations </u>for the <u><b>past ten(10) years. </b></u>
                                                                If you have lived in more than two (2) locations within the past ten (10) years,
                                                                please enter your additional locations on the attached "Location Supplement Sheet."
                                                            </b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="divLicenseInfon divaddnew" id="divbtnWorkInfo4" runat="server">
                                                <span style="float: right; margin-right: 10px;" class="AfterApproved">
                                                    <asp:Button ID="btnWorkInfo4AddNew" CssClass="buttonGreen small" runat="server" Text="Add New"
                                                        OnClick="btnWorkInfo4AddNew_Click" />
                                                </span>
                                            </div>
                                            <div id="divpnlWorkInfo4" runat="server" visible="false">
                                                <table class="tblApplReqForm5">
                                                    <tr>
                                                        <td style="vertical-align: middle; width: 144px;" class="txtalgnrgt">
                                                            <label class="input-label required">
                                                                Street :
                                                            </label>
                                                        </td>
                                                        <td colspan="5">
                                                            <asp:TextBox ID="txtWorkInfoQ4Street1" runat="server" Width="482px" CssClass="calWidth us_street"
                                                                MaxLength="500"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td colspan="5">
                                                            <asp:TextBox ID="txtWorkInfoQ4Street2" runat="server" Width="482px" CssClass="calWidth us_street"
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
                                                            <asp:TextBox ID="txtWorkInfoQ4City" runat="server" Width="133px" CssClass="tooltip OnlyAlphabet calWidth"
                                                                MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                        </td>
                                                        <td class="txtalgnrgt" style="width: 52px;">
                                                            <label class="input-label required">
                                                                State :
                                                            </label>
                                                        </td>
                                                        <td style="width: 106px;">
                                                            <asp:DropDownList ID="ddlWorkInfoQ4State" runat="server" Width="98px" CssClass="inputTextbox"
                                                                title="Select your state">
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
                                                            <asp:TextBox ID="txtWorkInfoQ4Zip" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                Width="127px" CssClass="tooltip zip_us calWidth" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                    <span class="fltrt">
                                                        <asp:Button ID="btnSaveWorkInfo4" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnSaveWorkInfo4_Click" />
                                                        <asp:LinkButton ID="lnkWorkInfo4" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server" OnClick="lnkCancelWorkInfo4_Click">Cancel</asp:LinkButton></span>
                                                </div>
                                            </div>
                                            <div class="divLicenseInfo">
                                                <asp:GridView ID="gvWorkInfo4" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                    CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None"
                                                    OnRowDataBound="gvWorkInfo4_RowDataBound">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Street">
                                                            <ItemStyle />
                                                            <EditItemTemplate>
                                                                <asp:UpdatePanel runat="server" ID="MassageTrainingandEducationUp3">
                                                                    <ContentTemplate>
                                                                        <div>
                                                                            <table class="grid-heading">
                                                                                <tr>
                                                                                    <td style="width: 203px;">
                                                                                        <span id="lblStreet4">8950 W Charleston Blvd</span>
                                                                                    </td>
                                                                                    <td style="width: 212px;">
                                                                                        <span id="lblCity4">EMERYVILLE</span>
                                                                                    </td>
                                                                                    <td style="width: 84px;">
                                                                                        <span id="lblState4">CA</span>
                                                                                    </td>
                                                                                    <td>
                                                                                        <span id="lblZip4">96151</span>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </div>
                                                                        <div class="divGridEdit">
                                                                            <p class="addNewDiv">
                                                                                <span>Work Information</span>
                                                                            </p>
                                                                            <table class="tblApplReqForm5" style="margin: 0 auto;">
                                                                                <tr>
                                                                                    <td style="vertical-align: middle; width: 144px;" class="txtalgnrgt">
                                                                                        <label class="input-label required">
                                                                                            Street :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td colspan="5">
                                                                                        <asp:TextBox ID="txtWorkInfoQ4Street1Edit" Text="8950 W Charleston Blvd" runat="server"
                                                                                            Width="482px" CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td></td>
                                                                                    <td colspan="5">
                                                                                        <asp:TextBox ID="txtWorkInfoQ4Street2Edit" runat="server" Width="482px" CssClass="calWidth us_street"
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
                                                                                        <asp:TextBox ID="txtWorkInfoQ4CityEdit" Text="EMERYVILLE" runat="server" Width="133px"
                                                                                            CssClass="tooltip OnlyAlphabet calWidth" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="txtalgnrgt" style="width: 52px;">
                                                                                        <label class="input-label required">
                                                                                            State :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td style="width: 106px;">
                                                                                        <asp:DropDownList ID="ddlWorkInfoQ4StateEdit" runat="server" Width="98px" CssClass="inputTextbox"
                                                                                            title="Select your state">
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
                                                                                        <asp:TextBox ID="txtWorkInfoQ4ZipEdit" Text="96151" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                                            Width="127px" CssClass="tooltip zip_us calWidth" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <div class="clear">
                                                                            </div>
                                                                            <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                                <span class="fltrt">
                                                                                    <asp:Button ID="btnWorkInfo4Update" ValidationGroup="VGSchoolEdit" CssClass="buttonGreen medium"
                                                                                        runat="server" Text="Update" CausesValidation="true" OnClick="btnWorkInfo4Update_Click" />
                                                                                    <asp:LinkButton ID="lnkWorkInfo4CancelUpdate" CssClass="secondary medium bottom buttonalignment"
                                                                                        runat="server" OnClick="lnkWorkInfo4CancelUpdate_Click">Cancel</asp:LinkButton></span>
                                                                            </div>
                                                                        </div>
                                                                    </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblStreet4" runat="server" Text="Label"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="City">
                                                            <ItemStyle />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblCity4" runat="server" Text="Label"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="State">
                                                            <ItemStyle CssClass="aligncenter" />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblState4" runat="server" Text="Label"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Zip">
                                                            <ItemStyle CssClass="aligncenter" />
                                                            <HeaderStyle CssClass="aligncenter" />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblZip4" runat="server" Text="Label"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField ItemStyle-Width="60px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                                                            <ItemStyle CssClass="ActionCollumn" HorizontalAlign="Center" />
                                                            <ItemTemplate>
                                                                <span class="fltrt AfterApproved">
                                                                    <asp:ImageButton ID="imgbtnWorkInfo4Edit" CssClass="imgDelete" CommandArgument="1"
                                                                        runat="server" RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                        OnClick="lnkWorkInfo4Edit_Click" />
                                                                    <asp:ImageButton ID="imgBtnWorkInfo4Delete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                        CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript :return confirm('Are you sure you want to delete?')"
                                                                        OnClick="lnkWorkInfo4Delete_Click" /></span>
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
                                        </div>
                                    </fieldset>
                                    <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                        <span class="fltrt">
                                            <asp:Button ID="btnEducation" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                                                runat="server" Text="Save & Next" CausesValidation="true" OnClick="btnEducation_Click" />
                                            <asp:LinkButton ID="lnkExamInfoCancel" CssClass="secondary medium bottom buttonalignment"
                                                runat="server" OnClick="lnkExamInfoCancel_Click">Cancel</asp:LinkButton></span>
                                    </div>
                                </div>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
                <asp:Panel ID="pnlSection6" runat="server" Visible="false">
                    <asp:UpdatePanel runat="server" ID="uppnlSection6">
                        <ContentTemplate>
                            <asp:Panel ID="pnlApprovedSection6" runat="server">
                                <div class="history">
                                    <div>
                                        <asp:Literal ID="ltrCharacterReferenceEdit" runat="server"></asp:Literal>
                                    </div>
                                    <div class="sectionDiv">
                                        <span>APPLICANT HISTORY SECTION</span>
                                    </div>
                                    <fieldset class="flsNewApplReqForm flsCharacterReferences">
                                        <p>
                                            A "Yes" answer to any of the following questions requires a separate written statement
                                            explaining in your own words all of the complete details (as requested in the instructions)
                                            regarding the incident(s) or event(s). All supporting documentation to a "Yes" answer
                                            must be attached to your initial application at the time you file your application
                                            with CAMTC. CAMTC may request additional documentation as needed.
                                        </p>
                                        <p>
                                            <b>Failure to fully disclose or provide all requested information is a violation of
                                                the law and is considered to be an attempt to procure a certificate by fraud, misrepresentation,
                                                or mistake and is grounds for denial of an application or revocation of a certificate.
                                            </b>
                                        </p>
                                        <table class="tblApplReqForm5" style="margin: 0px auto; width: 100%;">
                                            <tr>
                                                <td style="width: 24px;">
                                                    <b>27.</b>
                                                </td>
                                                <td style="width: 545px; padding-left: 0px; line-height: 20px; text-align: justify;">Have you ever received an administrative or civil citation related to the practice
                                                    of massage therapy or a massage therapy business. or any other profession, or been
                                                    denied or refused the renewal of a license, permit, certificate, or other authorization
                                                    to practice massage therapy or related to a massage therapy business or any other
                                                    profession in any city, county, state, country or jurisdiction?
                                                </td>
                                                <td align="left" class="cursorpointer" style="vertical-align: middle;">
                                                    <asp:RadioButtonList ID="rblHistoryQ1" AutoPostBack="true" OnSelectedIndexChanged="rblHistoryQ1_SelectedIndexChanged"
                                                        runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                                        <asp:ListItem Value="0">No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <div id="divhist1" runat="server" visible="false">
                                                        <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion27');" class="hyperlink">Please read the Instructions</a>
                                                        <asp:TextBox ID="TextBox10" CssClass="txtQestion27 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                            runat="server"></asp:TextBox>
                                                        <div class="histdiv">
                                                            <table class="tblApplReqForm5" style="width: 100%;">
                                                                <tr>
                                                                    <td align="right">
                                                                        <label class="input-label">Document Name :</label></td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="txtalgnrgt">
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
                                                                            <asp:Button ID="Button1" CssClass="buttonGreen small" runat="server" Text="Upload Document"
                                                                                OnClick="btnAddHist1_Click" />
                                                                        </span>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <div id="divgvhist1" runat="server">
                                                                <table class="index pdgnone brdr  grid" id="Table5" style="color: #333333; width: 90%; margin: 10px auto; border-collapse: collapse;"
                                                                    cellpadding="5" cellspacing="0">
                                                                    <tbody>
                                                                        <tr>
                                                                            <th scope="col">Document Name
                                                                            </th>
                                                                            <th scope="col">Date
                                                                            </th>
                                                                            <th scope="col">Link
                                                                            </th>
                                                                            <th></th>
                                                                        </tr>
                                                                        <tr class="bordrbtm gridrow">
                                                                            <td>Driver's License
                                                                            </td>
                                                                            <td>01/01/2015
                                                                            </td>
                                                                            <td>
                                                                                <a class="hyperlink" target="_blank" href="../../App_Themes/Theme1/images/Chrysanthemum.jpg">Document Details </a>
                                                                            </td>
                                                                            <td>
                                                                                <span>
                                                                                    <input id="Image1" title="Delete" class="imgDelete" src="../../App_Themes/Theme1/images/delete.png"
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
                                            <tr>
                                                <td>
                                                    <b>28.</b>
                                                </td>
                                                <td style="width: 545px; padding-left: 0px; line-height: 20px; text-align: justify;">Have you ever had a license, certificate, certification of registration, permit,
                                                    or other authorization for a massage therapy business, or to practice massage therapy,
                                                    or for any other profession, revoked, suspended, or otherwise acted against (including
                                                    administrative citation, civil citation, municipal code violation, probation, fine,
                                                    reprimand, settlement, or surrender of a license, permit, certificate, or other
                                                    authorization)?
                                                </td>
                                                <td align="left" class="cursorpointer" style="vertical-align: middle;">
                                                    <asp:RadioButtonList ID="rblHistoryQ2" AutoPostBack="true" OnSelectedIndexChanged="rblHistoryQ2_SelectedIndexChanged"
                                                        runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                                        <asp:ListItem Value="0">No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <div id="divhist2" runat="server" visible="false">
                                                        <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion28');" class="hyperlink">Please read the Instructions</a>
                                                        <asp:TextBox ID="TextBox9" CssClass="txtQestion28 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                            runat="server"></asp:TextBox>
                                                        <div class="histdiv">
                                                            <table class="tblApplReqForm5" style="width: 100%;">
                                                                <tr>
                                                                    <td align="right">
                                                                        <label class="input-label">
                                                                            Document Name :</label>

                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
                                                                </tr>
                                                                <tr>

                                                                    <td class="txtalgnrgt">
                                                                        <label class="input-label required">
                                                                            Document :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:FileUpload ID="FileUpload2" runat="server" />
                                                                    </td>
                                                                    <td></td>
                                                                    <td align="center">
                                                                        <span class="fltlft">
                                                                            <asp:Button ID="Button2" CssClass="buttonGreen small" runat="server" Text="Upload Document"
                                                                                OnClick="btnAddHist2_Click" />
                                                                        </span>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <div id="divgvhist2" runat="server">
                                                                <table class="index pdgnone brdr  grid" id="Table6" style="color: #333333; width: 90%; margin: 10px auto; border-collapse: collapse;"
                                                                    cellpadding="5" cellspacing="0">
                                                                    <tbody>
                                                                        <tr>
                                                                            <th scope="col">Document Name
                                                                            </th>

                                                                            <th scope="col">Date
                                                                            </th>
                                                                            <th scope="col">Link
                                                                            </th>
                                                                            <th></th>
                                                                        </tr>
                                                                        <tr class="bordrbtm gridrow">
                                                                            <td>Driver's License
                                                                            </td>

                                                                            <td>01/01/2015
                                                                            </td>
                                                                            <td>
                                                                                <a class="hyperlink" target="_blank" href="../../App_Themes/Theme1/images/Chrysanthemum.jpg">Document Details </a>
                                                                            </td>
                                                                            <td>
                                                                                <span>
                                                                                    <input id="Image2" title="Delete" class="imgDelete" src="../../App_Themes/Theme1/images/delete.png"
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
                                            <tr>
                                                <td>
                                                    <b>29.</b>
                                                </td>
                                                <td style="width: 545px; padding-left: 0px; line-height: 20px; text-align: justify;">Have you ever had, or is there currently pending against you, in any city, county,
                                                    state, country or jurisdiction a complaint against your professional conduct (sexual
                                                    misconduct or otherwise) or professional competence?
                                                </td>
                                                <td align="left" class="cursorpointer" style="vertical-align: middle;">
                                                    <asp:RadioButtonList ID="rblHistoryQ3" AutoPostBack="true" OnSelectedIndexChanged="rblHistoryQ3_SelectedIndexChanged"
                                                        runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                                        <asp:ListItem Value="0">No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <div id="divhist3" runat="server" visible="false">
                                                        <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion29');" class="hyperlink">Please read the Instructions</a>
                                                        <asp:TextBox ID="TextBox8" CssClass="txtQestion29 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                            runat="server"></asp:TextBox>
                                                        <div class="histdiv">
                                                            <table class="tblApplReqForm5" style="width: 100%;">
                                                                <tr>
                                                                    <td align="right">
                                                                        <label class="input-label">
                                                                            Document Name :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="txtalgnrgt">
                                                                        <label class="input-label required">
                                                                            Document :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:FileUpload ID="FileUpload3" runat="server" />
                                                                    </td>
                                                                    <td></td>
                                                                    <td align="center">
                                                                        <span class="fltlft">
                                                                            <asp:Button ID="Button3" CssClass="buttonGreen small" runat="server" Text="Upload Document"
                                                                                OnClick="btnAddHist3_Click" />
                                                                        </span>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <div id="divgvhist3" runat="server">
                                                                <table class="index pdgnone brdr  grid" id="Table7" style="color: #333333; width: 90%; margin: 10px auto; border-collapse: collapse;"
                                                                    cellpadding="5" cellspacing="0">
                                                                    <tbody>
                                                                        <tr>
                                                                            <th scope="col">Document Name
                                                                            </th>

                                                                            <th scope="col">Date
                                                                            </th>
                                                                            <th scope="col">Link
                                                                            </th>
                                                                            <th></th>
                                                                        </tr>
                                                                        <tr class="bordrbtm gridrow">
                                                                            <td>Driver's License
                                                                            </td>

                                                                            <td>01/01/2015
                                                                            </td>
                                                                            <td>
                                                                                <a class="hyperlink" target="_blank" href="../../App_Themes/Theme1/images/Chrysanthemum.jpg">Document Details </a>
                                                                            </td>
                                                                            <td>
                                                                                <span>
                                                                                    <input id="Image3" title="Delete" class="imgDelete" src="../../App_Themes/Theme1/images/delete.png"
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
                                            <tr>
                                                <td>
                                                    <b>30.</b>
                                                </td>
                                                <td style="width: 545px; padding-left: 0px; line-height: 20px; text-align: justify;">Are you aware of any complaints made against you to a business or made to you directly
                                                    in relation to your conduct as a massage professional or in relation to a massage
                                                    therapy business you currently own/operate or have in the past owned or operated?
                                                </td>
                                                <td align="left" class="cursorpointer" style="vertical-align: middle;">
                                                    <asp:RadioButtonList ID="rblHistoryQ4" AutoPostBack="true" OnSelectedIndexChanged="rblHistoryQ4_SelectedIndexChanged"
                                                        runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                                        <asp:ListItem Value="0">No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <div id="divhist4" runat="server" visible="false">
                                                        <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion30');" class="hyperlink">Please read the Instructions</a>
                                                        <asp:TextBox ID="TextBox7" CssClass="txtQestion30 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                            runat="server"></asp:TextBox>
                                                        <div class="histdiv">
                                                            <table class="tblApplReqForm5" style="width: 100%;">
                                                                <tr>
                                                                    <td align="right">
                                                                        <label class="input-label">Document Name :</label></td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="txtalgnrgt">
                                                                        <label class="input-label required">
                                                                            Document :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:FileUpload ID="FileUpload4" runat="server" />
                                                                    </td>
                                                                    <td></td>
                                                                    <td align="center">
                                                                        <span class="fltlft">
                                                                            <asp:Button ID="Button4" CssClass="buttonGreen small" runat="server" Text="Upload Document"
                                                                                OnClick="btnAddHist4_Click" />
                                                                        </span>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <div id="divgvhist4" runat="server">
                                                                <table class="index pdgnone brdr  grid" id="Table8" style="color: #333333; width: 90%; margin: 10px auto; border-collapse: collapse;"
                                                                    cellpadding="5" cellspacing="0">
                                                                    <tbody>
                                                                        <tr>
                                                                            <th scope="col">Document Name
                                                                            </th>

                                                                            <th scope="col">Date
                                                                            </th>
                                                                            <th scope="col">Link
                                                                            </th>
                                                                            <th></th>
                                                                        </tr>
                                                                        <tr class="bordrbtm gridrow">
                                                                            <td>Driver's License
                                                                            </td>

                                                                            <td>01/01/2015
                                                                            </td>
                                                                            <td>
                                                                                <a class="hyperlink" target="_blank" href="../../App_Themes/Theme1/images/Chrysanthemum.jpg">Document Details </a>
                                                                            </td>
                                                                            <td>
                                                                                <span>
                                                                                    <input id="Image4" title="Delete" class="imgDelete" src="../../App_Themes/Theme1/images/delete.png"
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
                                            <tr>
                                                <td>
                                                    <b>31.</b>
                                                </td>
                                                <td style="width: 545px; padding-left: 0px; line-height: 20px; text-align: justify;">Have you ever been convicted of any criminal offense? (You need not disclose any
                                                    marijuana-related offenses specified in the marijuana reform legislation and codiﬁed
                                                    in the Health and Safety Code, sections 11361.5 and 11361.7.) If yes, please explain
                                                    fully as described in the instructions. Convictions MUST be reported even if they
                                                    have been adjudicated, dismissed or expunged. The definition of a conviction includes
                                                    a plea of nolo contendere (no contest), as well as pleas or verdicts of guilty.
                                                    You MUST include ALL convictions, including infractions, misdemeanors, and felonies.
                                                </td>
                                                <td align="left" class="cursorpointer" style="vertical-align: middle;">
                                                    <asp:RadioButtonList ID="rblHistoryQ5" AutoPostBack="true" OnSelectedIndexChanged="rblHistoryQ5_SelectedIndexChanged"
                                                        runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                                        <asp:ListItem Value="0">No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <div id="divhist5" runat="server" visible="false">
                                                        <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion31');" class="hyperlink">Please read the Instructions</a>
                                                        <asp:TextBox ID="TextBox6" CssClass="txtQestion31 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                            runat="server"></asp:TextBox>
                                                        <div class="histdiv">
                                                            <table class="tblApplReqForm5" style="width: 100%;">
                                                                <tr>
                                                                    <td align="right">
                                                                        <label class="input-label">Document Name :</label></td>
                                                                    <td colspan="3">
                                                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="txtalgnrgt">
                                                                        <label class="input-label required">
                                                                            Document :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:FileUpload ID="FileUpload5" runat="server" />
                                                                    </td>
                                                                    <td></td>
                                                                    <td align="center">
                                                                        <span class="fltlft">
                                                                            <asp:Button ID="Button5" CssClass="buttonGreen small" runat="server" Text="Upload Document"
                                                                                OnClick="btnAddHist5_Click" />
                                                                        </span>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <div id="divgvhist5" runat="server">
                                                                <table class="index pdgnone brdr  grid" id="Table9" style="color: #333333; width: 90%; margin: 10px auto; border-collapse: collapse;"
                                                                    cellpadding="5" cellspacing="0">
                                                                    <tbody>
                                                                        <tr>
                                                                            <th scope="col">Document Name
                                                                            </th>

                                                                            <th scope="col">Date
                                                                            </th>
                                                                            <th scope="col">Link
                                                                            </th>
                                                                            <th></th>
                                                                        </tr>
                                                                        <tr class="bordrbtm gridrow">
                                                                            <td>Driver's License
                                                                            </td>

                                                                            <td>01/01/2015
                                                                            </td>
                                                                            <td>
                                                                                <a class="hyperlink" target="_blank" href="../../App_Themes/Theme1/images/Chrysanthemum.jpg">Document Details </a>
                                                                            </td>
                                                                            <td>
                                                                                <span>
                                                                                    <input id="Image5" title="Delete" class="imgDelete" src="../../App_Themes/Theme1/images/delete.png"
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
                                    </fieldset>
                                    <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                        <span class="fltrt">
                                            <asp:Button ID="btnNextCharacterReferences" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                                                runat="server" Text="Save & Next" CausesValidation="true" OnClick="btnNextCharacterReferences_Click" />
                                            <asp:LinkButton ID="lnkCancleNextCharacterReferences" CssClass="secondary medium bottom buttonalignment"
                                                runat="server" OnClick="lnkCancleNextCharacterReferences_Click">Cancel</asp:LinkButton></span>
                                    </div>
                                </div>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
                <asp:Panel ID="pnlSection7" runat="server" Visible="false">
                    <asp:UpdatePanel ID="upAppScQues" runat="server">
                        <ContentTemplate>
                            <div class="sectionDiv">
                                <span>APPLICANT AFFIDAVIT RECORD RELEASE</span>
                            </div>
                            <fieldset class="flsNewApplReqForm flsCharacterReferences">
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 600px; padding-left: 0px; line-height: 20px; text-align: justify;">
                                            <p style="padding-bottom: 10px;">
                                                <label class="input-label required">
                                                    I,</label>
                                                <asp:TextBox ID="txtAffidavitApplicantName" Text="Nancy Blachly" runat="server"></asp:TextBox>
                                                ("the Applicant"), affirm that I am the person referred to in the foregoing CAMTC
                                                Certiﬁcation Application, and that the <b>attached passport photograph is less than
                                                    sixty (60) days old</b> and is a true likeness of myself.
                                            </p>
                                        </td>
                                        <td align="right" style="width: 50px; vertical-align: middle;" class="cursorpointer">
                                            <asp:CheckBox Text="Yes" ID="AffQ1" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged"
                                                runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                            <p style="padding-bottom: 10px;">
                                                I further affirm that I am in good health and not suffering from any mental or physical
                                                health condition that might affect my own personal health and safety in performing
                                                Massage Therapy, or that might affect the personal health and safety of my Massage
                                                Therapy clients.
                                            </p>
                                        </td>
                                        <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                            <asp:CheckBox Text="Yes" ID="AffQ2" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged"
                                                runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                            <p style="padding-bottom: 10px;">
                                                I understand that it is my duty and responsibility as an Applicant for CAMTC Certification
                                                per CA Business and Professions Code section 4600 et. seq. to fully disclose all
                                                requested information and to supplement and/or update my Application after it has
                                                been submitted and to update my information and notify CAMTC when I am a certificate
                                                holder, if and when any change in circumstances or conditions occurs which might
                                                affect CAMTC's decision concerning my eligibility for Certification. I understand
                                                that if I am charged with Penal Code section 647(b)- Prostitution, or any act punishable
                                                as a sexually related crime, or required to register as a sex offender in California
                                                or another state, I am required to immediately notify CAMTC of the fact that these
                                                charges have been filed against me, and if/when I have been convicted of these or
                                                any other offenses. Failure to supplement and/or update my Application or update
                                                my information with CAMTC when I am a certificate holder may result in disciplinary
                                                action by CAMTC against me, including but not limited to denial of my application
                                                or revocation of my Certification.
                                            </p>
                                        </td>
                                        <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                            <asp:CheckBox Text="Yes" ID="AffQ3" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged"
                                                runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                            <p style="padding-bottom: 10px;">
                                                I understand that it is my responsibility by law to provide CAMTC with any <b>CHANGE
                                                    OF HOME ADDRESS, any CHANGE OF PRIMARY EMAIL ADDRESS, any CHANGE OF BUSINESS ADDRESS,
                                                    and to notify CAMTC of additional business locations where I provide massage services
                                                    for compensation <u>within 30 DAYS. </u></b>If any such change or addition,
                                                and that failure to report such changes or additions in a timely manner to CAMTC
                                                may result in disciplinary action by CAMTC against me, including but not limited
                                                to revocation of my Certification. I also understand that I may be required to provide
                                                a copy of, or other evidence of my Certification to local cities and countries in
                                                California if requested, and that l may be required to obtain a business license
                                                to practice my profession unless I am a W-2 employee.
                                            </p>
                                        </td>
                                        <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                            <asp:CheckBox Text="Yes" ID="AffQ4" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged"
                                                runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                            <p style="padding-bottom: 10px;">
                                                I understand that it is my responsibility by law to include the name under which
                                                I am certiﬁed and my certificate number in any and all advertising, including but
                                                not limited to business cards and websites, and I shall display an original certiﬁcate
                                                at my place(s) of business.
                                            </p>
                                        </td>
                                        <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                            <asp:CheckBox Text="Yes" ID="AffQ5" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged"
                                                runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                            <p style="padding-bottom: 10px;">
                                                I hereby authorize Law Enforcement Agencies (LEA), government agencies, and other
                                                massage related entities to release my records to CAMTC upon request, and l hereby
                                                authorize CAMTC to share all information about me, whether provided by me or others,
                                                including personal information, with LEA, government agencies, and other massage
                                                related entities upon request. (Note : we will not sell or release personal information
                                                for marketing purposes.)
                                            </p>
                                        </td>
                                        <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                            <asp:CheckBox Text="Yes" ID="AffQ6" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged"
                                                runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                            <p style="padding-bottom: 10px;">
                                                I understand and agree that CAMTC may consider applicants (and re-certifications)
                                                practicing massage in an establishment that advertises in any adult and/or sexually
                                                oriented section of any form of media whether printed or digital, and applicants
                                                (and re-certifications) who own a massage establishment that advertises in any adult
                                                and/or sexually oriented section of any form of media, whether printed or digital,
                                                to be engaged in unprofessional conduct. I further understand and agree that a finding
                                                of unprofessional conduct may preclude certiﬁcation or re-certification.
                                            </p>
                                        </td>
                                        <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                            <asp:CheckBox Text="Yes" ID="AffQ7" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged"
                                                runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                            <p style="padding-bottom: 10px;">
                                                I understand that if I am granted CAMTC certification, it is only for a period of
                                                two years, and it is my responsibility to submit a fully completed application for
                                                recertification and ensure that it is received by CAMTC before the expiration date
                                                listed on my certificate. I further understand that a reminder notiﬁcation may be
                                                sent to me as a courtesy, but failure to receive the reminder notiﬁcation does not
                                                waive my responsibility to submit a fully completed application for re-certification
                                                and ensure that it is received before my current certiﬁcate expires. I further understand
                                                that failure to submit a fully completed application for recertification that is
                                                received by CAMTC before my certificate expires will result in a late fee of up
                                                to $90 if the application for re-certiﬁcation is received by CAMTC within six (6)
                                                T months of my certificate expiring. I further understand that if a fully completed
                                                application for re-certification is not received by CAMTC within six (6) months
                                                of my certiﬁcate expiring, I will be required to apply for certification as a new
                                                applicant and I will have to meet all of the requirements for certification that
                                                exist at the time I request re~ certification. <b>I UNDERSTAND THAT UNDER NO CIRCUMSTANCES
                                                    CAN THIS LATE FEE OR POLICY BE WAIVED.</b>
                                            </p>
                                        </td>
                                        <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                            <asp:CheckBox Text="Yes" ID="AffQ8" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged"
                                                runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                            <p style="padding-bottom: 10px;">
                                                I HAVE CAREFULLY READ THE QUESTIONS IN THE FOREGOING APPLICATION AND HAVE ANSWERED
                                                THEM COMPLETELY, WITHOUT RESERVATION OF ANY KIND, AND I DECLARE, UNDER PENALTY OF
                                                PERJURY UNDER THE LAWS OF THE STATE OF CALIFORNIA, THAT MY ANSWERS AND ALL STATEMENTS
                                                MADE BY ME HERE IN AND IN SUPPORT OF THIS APPLICATION <b>ARE COMPLETE, TRUE AND CORRECT.</b>
                                                Should I furnish any false information on or in support of this Application, or
                                                fail to fully provide all requested information, I understand that such action shall
                                                constitute cause for denial, suspension, revocation, or action against my CAMTC
                                                Certiﬁcation.
                                            </p>
                                        </td>
                                        <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                            <asp:CheckBox Text="Yes" ID="AffQ9" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged"
                                                runat="server" />
                                        </td>
                                    </tr>
                                </table>
                                <div>
                                    <div class="fltlft" style="width: 72%;">
                                        <table>
                                            <tr>
                                                <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                                    <p style="padding-bottom: 10px;">
                                                        I HAVE READ, UNDERSTAND, AND AGREE TO COMPLY WITH THE STATUTES AND RULES APPLICABLE
                                                        TO THE PRACTICE OF MY PROFESSION IN CALIFORNIA.
                                                    </p>
                                                </td>
                                                <td align="right" style="vertical-align: middle; width: 50px;" class="cursorpointer">
                                                    <asp:CheckBox Text="Yes" ID="AffQ10" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged"
                                                        runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                                    <p style="padding-bottom: 10px;">
                                                        I understand that my Application Fee is non-refundable regardless of the ultimate
                                                        disposition of my application.
                                                    </p>
                                                </td>
                                                <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                                    <asp:CheckBox Text="Yes" ID="AffQ11" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged"
                                                        runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                                    <p style="padding-bottom: 10px;">
                                                        I understand that if my Application is not complete, it will be purged 1 year after
                                                        the last date of activity and after a reminder to my stated email and home addresses
                                                        have been sent by CAMTC. Once it is purged, I understand that I will need to start
                                                        the entire process over, including paying the $150 application fee submitting Live
                                                        Scan prints, securing official transcript(s), etc.
                                                    </p>
                                                </td>
                                                <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                                    <asp:CheckBox Text="Yes" ID="AffQ12" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged"
                                                        runat="server" />
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="fltrt" style="width: 27%;">
                                        <div>
                                            <div>
                                                <asp:Image runat="server" ID="imgProfile" ClientIDMode="Static" ImageUrl="../../../App_Themes/Theme1/images/no_img.jpg"
                                                    alt="Image" Width="150px" />
                                            </div>
                                            <p style="font-size: 14px; padding: 4px; text-align: center;">
                                                <asp:FileUpload ID="fpImageUpload" Style="width: 186px;" CssClass="MyUpload" onchange="javascript :upload(this);"
                                                    runat="server" />
                                                <asp:Button ID="btnPhotoUpload" ClientIDMode="Static" Style="margin-left: 5px; display: none;"
                                                    CssClass="buttonGreen small" runat="server" Text="Upload" OnClick="btnPhotoUpload_Click" />
                                            </p>
                                            <p style="font-size: 11px; text-align: center; line-height: 15px; padding-bottom: 10px;">
                                                <b>PLEASE UPLOAD YOUR 2" x 2" RECENT PASSPORT PHOTO HERE</b>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="clear">
                                </div>
                                <div>
                                    <table width="100%">
                                        <tr>
                                            <td align="right">
                                                <label class="input-label required">
                                                    Certificate Holder's Signature :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="AffSign" runat="server"></asp:TextBox>
                                            </td>
                                            <td align="right">
                                                <label class="input-label required">
                                                    Date :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="AffDate" CssClass="calender" placeholder="MM/DD/YYYY" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <p class="cursorpointer">
                                        <asp:CheckBox ID="AffQ13" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged"
                                            Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore."
                                            runat="server" />
                                    </p>
                                </div>
                            </fieldset>
                            <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                <span class="fltrt">
                                    <asp:Button ID="btnNextSection7" Enabled="false" ValidationGroup="VGAffidavit" CssClass="buttonGreen medium"
                                        runat="server" Text="Save & Next" CausesValidation="true" OnClick="btnNextSection7_Click" />
                                    <asp:LinkButton ID="lnkCalcelSection7" CssClass="secondary medium bottom buttonalignment"
                                        runat="server" OnClick="lnkCalcelSection7_Click">Cancel</asp:LinkButton></span>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
                <asp:Panel ID="pnlPayment" runat="server" Visible="false">
                    <asp:UpdatePanel runat="server" ID="WaiverUpdate">
                        <ContentTemplate>
                            <asp:Panel ID="pnlApprovedCivilApp" runat="server">
                                <div>
                                    <div class="sectionDiv">
                                        <span>Payment</span>
                                    </div>
                                </div>
                                <fieldset class="flsNewApplReqForm flsNCBTMBEI">
                                    <div>
                                        <asp:Literal ID="ltrTest" runat="server"></asp:Literal>
                                    </div>
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
                                        <div id="divPaymentMethod" runat="server" style="padding-bottom: 30px;">
                                            <table class="tblApplReqForm5">
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label required">
                                                            Payment Method :</label>
                                                    </td>
                                                    <td>&nbsp;&nbsp;
                                                        <asp:DropDownList ID="ddlPaymentMethod" AutoPostBack="true" runat="server" Width="154px"
                                                            OnSelectedIndexChanged="ddlPaymentMethod_SelectedIndexChanged">
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                            <asp:ListItem Value="1">Money Order</asp:ListItem>
                                                            <asp:ListItem Value="2">Credit Card</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label required">
                                                            Application Fees :</label>
                                                    </td>
                                                    <td style="padding: 4px; text-align: center;">$&nbsp;<asp:TextBox ID="txtApplicationFees" Style="width: 145px;" runat="server"
                                                        Text="150" Enabled="false"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label required">
                                                            Please enter the number of additional certiﬁcates below :</label>
                                                    </td>
                                                    <td>&nbsp;&nbsp;
                                                        <asp:TextBox ID="txtNumberOfAdditinolCerti" runat="server" Style="width: 145px;"
                                                            OnTextChanged="txtNumberOfAdditinolCerti_TextChanged" AutoPostBack="true"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label required">
                                                            Additional Certificate Amount :</label>
                                                    </td>
                                                    <td style="padding: 4px; text-align: center;">$&nbsp;<asp:TextBox ID="txtAdditionalCertificateAmt" CssClass="OnlyNumeric" Style="width: 145px;"
                                                        runat="server" Enabled="false"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label required">
                                                            Total Fees :</label>
                                                    </td>
                                                    <td style="padding: 4px; text-align: center;">$&nbsp;<asp:TextBox ID="txtTotalFees" Style="width: 145px;" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div id="divAfterPayment" runat="server" visible="false">
                                            <table class="tblApplReqForm5" style="margin: 0 auto;">
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label">
                                                            Payment Status :</label>
                                                    </td>
                                                    <td>Paid
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label">
                                                            Paid Amount :</label>
                                                    </td>
                                                    <td>$5.00
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
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
                                                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtComment" Style="width: 350px !important; margin-top: 9px; height: 45px;"
                                                        TextMode="MultiLine" runat="server" MaxLength="500"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div id="pnlCreditCard" class="backofficepaymentcontrole" runat="server" visible="false">
                                        <hr />
                                        <style>
                                            .divDotnet {
                                                text-align: center;
                                                margin: 0;
                                                padding: 0;
                                                width: 166px;
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
                                            <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
                                            <asp:UpdatePanel ID="Uppanel" runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <input type="password" style="display: none" />
                                                    <table style="width: 100%">
                                                        <tr>
                                                            <td colspan="2">
                                                                <div id="div2" class="HeaderFooter1" style="text-align: center;">
                                                                    <h3 style="text-align: center; margin-top: 2px;">SECURE PAYMENT PORTAL
                                                                    </h3>
                                                                </div>
                                                        </tr>
                                                    </table>
                                                    <table style="width: 100%">
                                                        <tr>
                                                            <td colspan="2">
                                                                <table class="SectionHeadingBorder" id="tableOrderInformation">
                                                                    <tbody>
                                                                        <tr>
                                                                            <td align="right" style="width: 170px;">
                                                                                <label class="Label">
                                                                                    Application Name  :</label>
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="lblApplicationName" runat="server" Text="Application Request"></asp:Label>
                                                                            </td>
                                                                            <td align="right">
                                                                                <label class="Label">
                                                                                    Application Number  :</label>
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="lblApplicationNumber" runat="server" Text="OL150222882821"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right">
                                                                                <label class="Label">
                                                                                    Invoice Number  :</label>
                                                                            </td>
                                                                            <td colspan="3">
                                                                                <asp:Label ID="lblInvoiceNo" runat="server" Text="ORD3065"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <br />
                                                    <div class="Label cursorpointer" style="text-align: center; display: none;">
                                                        Select Payment Method
                                                        <br />
                                                        <asp:RadioButton ID="rblAuthorizeNet" Checked="true" runat="server" Text="Credit/Debit Card"
                                                            GroupName="PaymentMethod" />
                                                        <asp:RadioButton ID="rblPaypal" runat="server" Visible="false" Text="PayPal" GroupName="PaymentMethod" />
                                                    </div>
                                                    <br />
                                                    <asp:Panel ID="pnlAuthorizeNet" runat="server">
                                                        <table>
                                                            <tr>
                                                                <td colspan="2">
                                                                    <div id="divOrderDetailsBottomSpacer">
                                                                        <div id="message-box-slot" style="width: 100%; margin: 0 auto;">
                                                                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="top" style="width: 46%">
                                                                    <table class="SectionHeadingBorder" id="table2">
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
                                                                                        <asp:Label ID="lblApplicationFee" runat="server" Text="US $0.00"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="display: none;">
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
                                                                                <tr style="display: none;">
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
                                                                                        <asp:Label ID="lblTotal" runat="server" Text="US $0.00"></asp:Label>
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
                                                                                        <img id="Img1" runat="server" src="~/App_Themes/Theme1/images/V.gif" height="23"
                                                                                            title="Visa" alt="Visa" />
                                                                                        <img id="Img2" runat="server" src="~/App_Themes/Theme1/images/MC.gif" height="23"
                                                                                            title="MasterCard" alt="MasterCard" />
                                                                                        <img id="Img3" runat="server" src="~/App_Themes/Theme1/images/Amex.gif" height="23"
                                                                                            title="American Express" alt="American Express" />
                                                                                        <img id="Img4" runat="server" src="~/App_Themes/Theme1/images/Disc.gif" height="23"
                                                                                            title="Discover" alt="Discover">
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="LabelColCC">
                                                                                        <label class="input-label required">
                                                                                            Card Number  :</label>
                                                                                    </td>
                                                                                    <td class="DataColCC">
                                                                                        <asp:TextBox ID="x_card_num" runat="server" AutoPostBack="true" CssClass="OnlyNumeric"
                                                                                            autoComplete="off" name="x_card_num" MaxLength="17" Style="width: 150px !important;"
                                                                                            OnTextChanged="x_card_num_TextChanged"></asp:TextBox><br />
                                                                                        <span style="font-size: 12px;">(no dash or space accepted)</span>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="LabelColCC">
                                                                                        <label class="input-label required">
                                                                                            CVV  :</label>
                                                                                    </td>
                                                                                    <td class="DataColCC">
                                                                                        <asp:TextBox ID="x_cvv_num" runat="server" TextMode="Password" CssClass="OnlyNumeric"
                                                                                            autoComplete="off" name="x_cvv_num" Width="150px"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="LabelColCC">
                                                                                        <label class="input-label required">
                                                                                            Expiration Date  :</label>
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
                                                                    <table class="SectionHeadingBorder" id="table3">
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
                                                                                <%--<tr>
                                                                                                    <td class="cursorpointer" colspan="2" align="center">
                                                                                                        <label class="input-label">
                                                                                                            <asp:CheckBox ID="chkCopyAddress" runat="server" AutoPostBack="true" OnCheckedChanged="chkCopyAddress_CheckedChanged"
                                                                                                                Text="Copy details from application" />
                                                                                                        </label>
                                                                                                    </td>
                                                                                                </tr>--%>
                                                                                <tr>
                                                                                    <td align="right" class="LabelColBill">
                                                                                        <label class="input-label required">
                                                                                            First Name  :</label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="x_first_name" runat="server" CssClass="OnlyAlphabet UpperCase" MaxLength="20"
                                                                                            autoComplete="off"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right">
                                                                                        <label class="input-label required">
                                                                                            Last Name  :</label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="x_last_name" Style="float: left;" runat="server" CssClass="OnlyAlphabet UpperCase"
                                                                                            MaxLength="20" autoComplete="off"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" class="LabelColBill">
                                                                                        <label class="input-label required">
                                                                                            Street  :</label>
                                                                                    </td>
                                                                                    <td class="DataColBill">
                                                                                        <asp:TextBox ID="x_address" runat="server" autoComplete="off"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" class="LabelColBill">
                                                                                        <label class="input-label required">
                                                                                            City  :</label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="x_city" runat="server" CssClass="OnlyAlphabet" Width="80" MaxLength="20"
                                                                                            autoComplete="off"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" style="width: 100px;">
                                                                                        <label class="input-label required">
                                                                                            State/Province  :</label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:DropDownList ID="ddlState" runat="server" Style="width: 208px !important; height: 28px;">
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
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" class="LabelColBill">
                                                                                        <label class="input-label required">
                                                                                            Zip/Postal Code  :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="x_zip" runat="server" MaxLength="12" CssClass="zip_us" autoComplete="off"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" style="width: 100px;">
                                                                                        <label class="input-label required">
                                                                                            Country  :</label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:DropDownList ID="ddlCountry" runat="server" Style="width: 208px !important; height: 28px;">
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
                                                                        Your credit/debit card will be charged by The California Massage Therapy Council.
                                                                        The California Massage Therapy Council fees are NOT REFUNDABLE, PLEASE ENSURE THE
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
                                                                                    </div>
                                                                                    <a href="http://www.authorize.net/" id="AuthorizeNetText" target="_blank">Credit Card
                                                                                        Processing</a>
                                                                                </td>
                                                                                <td style="width: 15%;"></td>
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
                                    </div>
                                    <table class="tblApplReqForm5" style="width: 100%; display: none;">
                                        <tr>
                                            <td colspan="5">
                                                <h5>Please Select Your Payment Method :</h5>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="inout-label">
                                                    <b>Personal Check :</b></label>
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
                                                <asp:RadioButton ID="chkCreditCard" runat="server" Text="Credit Card (Below) :" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="inout-label">
                                                    <b>Card Type :</b></label>
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
                                                <label class="input-label">
                                                    Name on Card :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtNameOnCard" CssClass="inputTextbox" runat="server"></asp:TextBox>
                                            </td>
                                            <td align="right">
                                                <label class="input-label">
                                                    Credit Card # :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtCreditCardNo" CssClass="inputTextbox" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">
                                                    Exp. Date :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtEXPDate" CssClass="inputTextbox" runat="server"></asp:TextBox>
                                            </td>
                                            <td align="right">
                                                <label class="input-label">
                                                    Code :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtCode" CssClass="inputTextbox" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">
                                                    Your Credit Card Billing Zip Code :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtbilingZipCode" CssClass="inputTextbox" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </fieldset>
                                <%--<div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                    <span class="fltrt">
                                        <asp:Button ID="btnNextSaveChecklist" ValidationGroup="VGAffidavit" CssClass="buttonGreen medium"
                                            runat="server" Text="Save & Next" CausesValidation="true" OnClick="btnNextSaveChecklist_Click" />
                                        <asp:LinkButton ID="btnCancelPayment" CssClass="secondary medium bottom buttonalignment"
                                            runat="server">Cancel</asp:LinkButton></span>
                                </div>--%>
                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                    <span class="fltrt" style="">
                                        <asp:Button ID="btnSaveNextPayment" CssClass="buttonGreen medium" runat="server"
                                            Text="Save" OnClick="btnSaveNextPayment_Click" ValidationGroup="VGApplicationWaiver"
                                            CausesValidation="true" />
                                        <asp:LinkButton ID="lnkNextSaveChecklist" CssClass="secondary medium bottom buttonalignment"
                                            runat="server" OnClick="lnkCancelChecklist_Click">Cancel</asp:LinkButton></span>
                                </div>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
                <asp:Panel ID="pnlChecklist" runat="server" Visible="false">
                    <asp:UpdatePanel runat="server" ID="UpdateAffidavit">
                        <ContentTemplate>
                            <asp:Panel ID="pnlApprovedAffidavit" runat="server">
                                <div>
                                    <div class="sectionDiv">
                                        <span>Checklist</span>
                                    </div>
                                    <asp:Literal ID="ltrAffidavitEdit" runat="server"></asp:Literal>
                                    <div class="clear">
                                    </div>
                                    <fieldset class="flsNewApplReqForm flsAffidavit">
                                        <p>
                                            Items 1 - 6 are required from <u>ALL APPLICANTS. </u>Item 7 may be required by some
                                            applicants (please see instructions).
                                        </p>
                                        <div>
                                            <ul style="list-style-type: decimal;" class="cursorpointer mrglft4">
                                                <li>
                                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="APPLICATION. Completed, Signed, and Dated 'CAMTC Application for Certification'
                                                                    form." />
                                                </li>
                                                <li>
                                                    <asp:CheckBox ID="CheckBox2" runat="server" Text="PHOTO. Recent Passport Photo (lees than 60 days old) attached to Application using
                                                                    one piece of double-sided tape." />
                                                </li>
                                                <li>
                                                    <asp:CheckBox ID="CheckBox3" runat="server" Text="DRIVER'S LlCENSE. Good clean Photocopy of your Driver's License." />
                                                </li>
                                                <li>
                                                    <asp:CheckBox ID="CheckBox4" runat="server" Text="FEE. Check or Money Order for $150.00 (plus an additional $15 for EACH additional
                                                                    original certificate requested) made out to 'CAMTC' (or pay by Personal Check, or
                                                                    by Credit Card here or online)." />
                                                </li>
                                                <li>
                                                    <asp:CheckBox ID="CheckBox5" runat="server" Text="TRANSCRIPTS. Official School Transcripts sent directly from your school(s) to the
                                                                    CAMTC address below." />
                                                </li>
                                                <li>
                                                    <asp:CheckBox ID="CheckBox6" runat="server" Text="FINGERPRINTS. Live Scan Fingerprints - please see instructions one-time additional
                                                                    fee of approximately $80 to $90." />
                                                </li>
                                                <li>
                                                    <asp:CheckBox ID="CheckBox7" runat="server" Text="DOCUMENTATION. Supporting Documentation as needed for questions (19.), (27.), (28.),
                                                                    (29.7), (30.), and (31.) of Application." />
                                                </li>
                                            </ul>
                                        </div>
                                        <div>
                                            <div>
                                                <p style="text-align: justify;">
                                                    Please mail this APPLICATION including photo, fee, transcripts, and any supporting
                                                    documentation to :
                                                </p>
                                            </div>
                                            <div>
                                                <p style="text-align: center;">
                                                    <b>California Massage Therapy Council
                                                        <br />
                                                        One Capitol Mall, Suite 320
                                                        <br />
                                                        Sacramento, CA 95814 </b>
                                                </p>
                                            </div>
                                            <div>
                                                <p style="text-align: justify;">
                                                    NOTE : Your Live Scan Fingerprint results will be forwarded automatically to the
                                                    CAMTC after you complete the Live Scan Fingerprint process - please see instructions.
                                                </p>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <br />
                                </div>
                                <%--  <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                    <span class="fltrt" style="">
                                        <asp:Button ID="btnSaveNextPayment" CssClass="buttonGreen medium" runat="server"
                                            Text="Save" OnClick="btnSaveNextPayment_Click" ValidationGroup="VGApplicationWaiver"
                                            CausesValidation="true" />
                                        <asp:LinkButton ID="lnkNextSaveChecklist" CssClass="secondary medium bottom buttonalignment"
                                            runat="server" OnClick="lnkCancelChecklist_Click">Cancel</asp:LinkButton></span>
                                </div>--%>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>
        </div>
        <div class="clear">
            <asp:Literal ID="ltrErrAssignTo" runat="server"></asp:Literal>
        </div>
        <div class="toolBar" style="padding: 4px; display: none;" runat="server" id="PnalApprovebtn">
            <div style="float: left;">
            </div>
            <span class="fltrt"><span class="AfterApproved">
                <asp:Button ID="btnAppReqFormUpdate" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                    Enabled='<%# Eval("EnableApproveButton")%>' runat="server" Text="Confirm and Approve"
                    CausesValidation="true" /></span>
                <asp:LinkButton ID="lnkCancelUpdate" CssClass="secondary medium bottom buttonalignment"
                    runat="server">Close Application</asp:LinkButton></span>
        </div>
    </div>
</div>
