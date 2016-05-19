<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucAddNewReCertification.ascx.cs" Inherits="Module_UI_Backoffice_Workflow_ucAddNewReCertification" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<div id="divVerifiy">
    <div>
        <asp:Literal ID="ltrMainMessage" runat="server"></asp:Literal>
    </div>
    <div class="applicationform">
        <div class="divmain">
            <div id="pnlLeft" class="mainleftpanel">
                <div class="get-started-content leftpanel left_sidebar">
                    <div id="sidebar">
                        <div id="sidebar_content" class="lessgap">
                            <div class="menu-w-licensure-container">
                                <div id="nav_menu-32" class="widget widget_nav_menu">
                                    <ul id="menu-w-licensure" class="menu Act ulwidth">
                                        <li runat="server" clientidmode="Static" id="liSection1">
                                            <asp:Button ID="btnSection1" runat="server" Text="Certificate Holder" CssClass="btnlimenu"
                                                OnClick="btnSection1_Click" />
                                            <span class="spnStatusImage statusimgalgn">
                                                <asp:ImageButton ID="imgbtnSection1" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                    ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnSection1_Click" /></span>
                                        </li>
                                        <li runat="server" clientidmode="Static" class="" id="liSection2">
                                            <asp:Button ID="btnSection2" runat="server" Text="Work Information" CssClass="btnlimenu"
                                                OnClick="btnSection2_Click" />
                                            <span class="spnStatusImage statusimgalgn">
                                                <asp:ImageButton ID="imgbtnSection2" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                    ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnSection2_Click" /></span>
                                        </li>
                                        <li runat="server" clientidmode="Static" class="" id="liSection3">
                                            <asp:Button ID="btnSection3" runat="server" Text="History" CssClass="btnlimenu" OnClick="btnSection3_Click" />
                                            <span class="spnStatusImage statusimgalgn">
                                                <asp:ImageButton ID="imgbtnSection3" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                    ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnSection3_Click" /></span>
                                        </li>
                                        <li runat="server" clientidmode="Static" class="" id="liSection4">
                                            <asp:Button ID="btnSection4" runat="server" Text="Affidavit" CssClass="btnlimenu"
                                                OnClick="btnSection4_Click" />
                                            <span class="spnStatusImage statusimgalgn">
                                                <asp:ImageButton ID="imgbtnSection4" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                    ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnSection4_Click" /></span>
                                        </li>
                                        <li id="liSection5" runat="server" clientidmode="Static" class="">
                                            <asp:Button ID="btnSection5" runat="server" Text="Payment" CssClass="btnlimenu" OnClick="btnSection5_Click" />
                                            <span class="spnStatusImage statusimgalgn">
                                                <asp:ImageButton ID="imgbtnSection5" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                    ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnSection5_Click" /></span>
                                        </li>
                                        <li id="liChecklist" runat="server" clientidmode="Static" visible="false" class="">
                                            <asp:Button ID="btnChecklist" runat="server" Text="Checklist" CssClass="btnlimenu"
                                                OnClick="btnChecklist_Click" />
                                            <span class="spnStatusImage statusimgalgn">
                                                <asp:ImageButton ID="imgbtnChecklist" Width="20px" Height="20px" runat="server" ToolTip="Completed"
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
                <asp:Panel ID="pnlSection1" runat="server">
                    <asp:UpdatePanel runat="server" ID="upPanelSection1MT">
                        <ContentTemplate>
                            <asp:Panel ID="pnlApprovedPersonalTab" runat="server">
                                <div>
                                    <div class="sectionDiv">
                                        <span>Individual</span>
                                    </div>
                                    <div>
                                        <asp:Literal ID="ltrPersonalInfoEdit" runat="server"></asp:Literal>
                                        <div id="MsgDivUploadAll">
                                        </div>
                                        <div style="width: 100%;">
                                            <div>
                                                <table class=" tblApplReqForm5 wdtmarauto">
                                                    <tr>
                                                        <td class="txtalgnrgt" style="width: 133px;">
                                                            <label class="input-label required">
                                                                <b>1. </b>CAMTC ID Number :
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtCamctIDNo" runat="server" Text="CAMTC.1010" CssClass="tooltip inputTextbox"></asp:TextBox>
                                                        </td>
                                                        <td class="txtalgnrgt" style="width: 170px;">
                                                            <label class="input-label required">
                                                                CAMTC Certiﬁcate Number :
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtCAMCTCertificateNo" runat="server" Text="OL150317062498" CssClass="tooltip inputTextbox"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4">
                                                            <b>2. Name :</b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="txtalgnrgt">
                                                            <label class="input-label required">
                                                                First Name :
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtFirstNameEdit" runat="server" Text="Nancy" CssClass="tooltip capitalize-text OnlyAlphabet inputTextbo"
                                                                MaxLength="150"></asp:TextBox>
                                                        </td>
                                                        <td class="txtalgnrgt">
                                                            <label class="input-label required">
                                                                Last Name :
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtLastNameEdit" runat="server" Text="Blachly" CssClass="tooltip capitalize-text OnlyAlphabet inputTextbox"
                                                                MaxLength="150"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="txtalgnrgt">
                                                            <label class="input-label">
                                                                Middle Name :
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtMiddleNameEdit" runat="server" Text="E" CssClass="tooltip OnlyAlphabet inputTextbox"
                                                                MaxLength="150"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <fieldset class="flsApplReqForm flsApplReqForm5">
                                        <asp:Literal ID="ltrResidenceAddEdit" runat="server"></asp:Literal>
                                        <table class=" tblApplReqForm5">
                                            <tr>
                                                <td colspan="6">
                                                    <p>
                                                        <b>3. Home Address :</b>
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="vertical-align: middle; width: 145px;" class="txtalgnrgt">
                                                    <label class="input-label required">
                                                        Street :
                                                    </label>
                                                </td>
                                                <td colspan="5">
                                                    <asp:TextBox ID="txtStreetResEdit" runat="server" Text="PO Box 14166" Width="482px" CssClass="calWidth us_street"
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
                                                    <asp:TextBox ID="txtCityResEdit" runat="server" Text="SOUTH LAKE TAHOE" CssClass="tooltip OnlyAlphabet calWidth"
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
                                                    <asp:TextBox ID="txtZipResEdit" Text="96151" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                        CssClass="tooltip zip_us calWidth" Width="127px" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
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
                                        <div class="clear">
                                        </div>
                                        <table class=" tblApplReqForm5">
                                            <tr>
                                                <td colspan="6">
                                                    <table class="tblLiveScanApp tblLiveScanApp1" width="100%">
                                                        <tr>
                                                            <td style="width: 480px; padding-left: 0px;">
                                                                <b>4. Is your Mailing Address the same as the above Home Address where you live?</b>
                                                            </td>
                                                            <td align="left" class="cursorpointer">
                                                                <asp:RadioButtonList ID="rblQuestionEdit1" runat="server" RepeatDirection="Horizontal">
                                                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                                                    <asp:ListItem Value="0">No</asp:ListItem>
                                                                </asp:RadioButtonList>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div>
                                                        <p style="border: 1px solid #ddd; padding: 6px; line-height: 20px;">
                                                            If you answered "No" to the question above, then you must provide your current Mailing
                                                                    Address below. You are also required by law to provide your primary email address,
                                                                    if you have one. Please remember that your Application may be delayed, or you may
                                                                    be required to pay additional processing fees if you provide CAMTC with an incorrect
                                                                    Mailing Address.
                                                        </p>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6">
                                                    <p>
                                                        <b>Mailing Address :</b>
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="vertical-align: middle; width: 145px;" class="txtalgnrgt">
                                                    <label class="input-label required">
                                                        Street :
                                                    </label>
                                                </td>
                                                <td colspan="5">
                                                    <asp:TextBox ID="txtStreetMailEdit" runat="server" Width="485px" CssClass="calWidth us_street"
                                                        MaxLength="500"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td colspan="5">
                                                    <asp:TextBox ID="txtStreet2MailEdit" runat="server" Width="485px" CssClass="calWidth us_street"
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
                                                        Width="130px" CssClass="tooltip zip_us calWidth" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
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
                                                    <table class="tblApplReqForm5">
                                                        <tr>
                                                            <td align="right" style="width: 145px;">
                                                                <label class="input-label">Primary Phone :</label></td>
                                                            <td style="width: 200px;">
                                                                <asp:TextBox ID="TextBox3" CssClass="phone_us NewAppPersonalTxtbx" runat="server"></asp:TextBox></td>
                                                            <td class="cursorpointer">
                                                                <asp:CheckBox ID="CheckBox10" Text="Mobile" runat="server" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                                <label class="input-label">Secondary Phone :</label>
                                                            <td>
                                                                <asp:TextBox ID="TextBox13" CssClass="phone_us NewAppPersonalTxtbx" runat="server"></asp:TextBox></td>
                                                            <td class="cursorpointer">
                                                                <asp:CheckBox ID="CheckBox8" Text="Mobile" runat="server" /></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6">
                                                    <table class="tblApplReqForm5" style="margin-top: -7px;">
                                                        <tr>
                                                            <td class="txtalgnrgt" style="width: 145px;"></td>
                                                            <td></td>
                                                            <td class="txtalgnrgt" style="width: 136px;"></td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>

                                                            <td class="txtalgnrgt">
                                                                <label class="input-label">
                                                                    Website :
                                                                </label>
                                                            </td>
                                                            <td colspan="3">
                                                                <asp:TextBox ID="txtWebsite" runat="server" Text="sbcglobal.net" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                                    MaxLength="150"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label">
                                                                    Date of Birth :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtDOB" runat="server" Text="06/08/1952" placeholder="MM/DD/YYYY" CssClass="inputTextbox calenderDOB NewAppPersonalTxtbx"
                                                                    MaxLength="150"></asp:TextBox>
                                                            </td>
                                                            <td class="txtalgnrgt">
                                                                <label style="display: block; position: relative; left: -5px; top: -13px;">
                                                                    Driver's License #<br />
                                                                    (or State ID) :
                                                                </label>
                                                            </td>
                                                            <td style="vertical-align: top;">
                                                                <asp:TextBox ID="txtDriverLicense" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                                    MaxLength="15"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="txtalgnrgt" style="width: 120px; position: relative; top: -16px;">
                                                                <label class="input-label">
                                                                    Primary Email :
                                                                </label>
                                                            </td>
                                                            <td colspan="3" style="position: relative; top: -16px;">
                                                                <asp:TextBox ID="txtPrimaryEmail" Style="width: 485px !important;" runat="server"
                                                                    CssClass="inputTextbox NewAppPersonalTxtbx" MaxLength="150"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="txtalgnrgt" style="width: 136px; position: relative; top: -10px;">
                                                                <label class="input-label">
                                                                    Secondary Email :
                                                                </label>
                                                            </td>
                                                            <td colspan="3">
                                                                <asp:TextBox ID="txtSecondaryEmail" Style="width: 485px !important; margin-top: -26px;" runat="server"
                                                                    CssClass="inputTextbox NewAppPersonalTxtbx" MaxLength="150"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
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
                                                runat="server">Cancel</asp:LinkButton></span><%-- OnClick="lnkCancelPD_Click"--%>
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
                                            <table style="width: 100%;" class="tblApplReqForm5">
                                                <tr>
                                                    <td style="width: 14px;">
                                                        <b>5.</b>
                                                    </td>
                                                    <td style="line-height: 20px;">
                                                        <b>Please provide the following BUSINESS INFORMATION for ALL locations where you CURRENTLY
                                                                    provide Massage Therapy Services.</b>
                                                    </td>
                                                </tr>
                                            </table>
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
                                                                        <asp:TextBox ID="txtWorkInfo1BusinessContact" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx phone_us"></asp:TextBox>
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
                                                    CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None"
                                                    OnRowDataBound="gvWorkInfo1_RowDataBound">
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
                                                                                    <td style="width: 150px;">
                                                                                        <span id="lblBusinessName1">Max Health Center</span>
                                                                                    </td>
                                                                                    <td style="width: 129px;">
                                                                                        <span id="lblBusinessPhone1">(530) 542-0604</span>
                                                                                    </td>
                                                                                    <td style="width: 166px;">
                                                                                        <span id="lblCity1">EMERYVILLE</span>
                                                                                    </td>
                                                                                    <td>
                                                                                        <span id="lblState1">CA</span>
                                                                                    </td>
                                                                                    <td>
                                                                                        <span id="lblZip1">96151</span>
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
                                            <p>
                                                <b>Please include additional current work locations on an attached sheet. </b>
                                            </p>
                                            <table style="width: 100%;" class="tblApplReqForm5">
                                                <tr>
                                                    <td style="width: 14px;">
                                                        <b>6. </b>
                                                    </td>
                                                    <td style="line-height: 20px;">
                                                        <b>Please provide information on all of your <u>Previous Massage Work Locations </u>
                                                            within the past ten (10) years. If you have provided massage for compensation at
                                                                    more than two (2) massage locations within the past ten (10) years, please enter
                                                                    your previous work locations on an additional sheet of paper, attached to the application.
                                                        </b>
                                                    </td>
                                                </tr>
                                            </table>
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
                                                    CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None"
                                                    OnRowDataBound="gvWorkInfo2_RowDataBound">
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
                                                                                    <td style="width: 208px;">
                                                                                        <span id="lblBusinessName2">Dolce Salon and Spa</span>
                                                                                    </td>
                                                                                    <td style="width: 118px;">
                                                                                        <span id="lblBusinessPhone2">(530) 542-0604</span>
                                                                                    </td>
                                                                                    <td style="width: 132px;">
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
                                            A “Yes" answer to any of the following questions requires a separate written statement
                                                    explaining in your own words all of the complete details (as requested in the instructions)
                                                    regarding the incident or event. All supporting documentation for a “Yes" answer
                                                    must be attached to your recertification application at the time it is filed with
                                                    the California Massage Therapy Council (“CAMTC"). CAMTC reserves the right to request
                                                    additional documentation as needed.
                                        </p>
                                        <p>
                                            <b>Failure to fully disclose or provide all requested information is a violation of
                                                        the law and is considered to be an attempt to procure a certificate by fraud, misrepresentation,
                                                        or mistake and is grounds for denial, suspension, or revocation of a CAMTC Certificate.
                                            </b>
                                        </p>
                                        <table class="tblApplReqForm5" style="margin: 0px auto; width: 100%;">
                                            <tr>
                                                <td style="width: 14px;">
                                                    <b>1.</b>
                                                </td>
                                                <td style="width: 560px; padding-left: 0px; line-height: 20px; text-align: justify;">Since the date you signed and dated your initial application for certification to
                                                            CAMTC, have you received an administrative or civil citation related to the practice
                                                            of massage therapy or a massage therapy business or any other profession, or been
                                                            denied or refused the renewal of a license, permit, certiﬁcate, or other authorization
                                                            to practice massage therapy or related to a massage therapy business or any other
                                                            profession, in any city, county, state, country, or jurisdiction?
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
                                                        <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion1');" class="hyperlink">Please read the Instructions</a>
                                                        <asp:TextBox ID="TextBox10" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
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
                                                    <b>2.</b>
                                                </td>
                                                <td style="padding-left: 0px; line-height: 20px; text-align: justify;">Since the date you signed and dated your initial application for certification to
                                                            CAMTC, have you had a license, certificate, certiﬁcate of registration, permit,
                                                            or other authorization for a massage therapy business, or to practice massage therapy,
                                                            or for any other profession, revoked, suspended, or otherwise acted against (including
                                                            administrative citation, civil citation, municipal code violation, probation, ﬁne,
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
                                                        <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion2');" class="hyperlink">Please read the Instructions</a>
                                                        <asp:TextBox ID="TextBox9" CssClass="txtQestion2 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                            runat="server"></asp:TextBox>
                                                        <div class="histdiv">
                                                            <table class="tblApplReqForm5" style="width: 100%;">
                                                                <tr>
                                                                    <td align="right">
                                                                        <label class="input-label">Document Name :</label></td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
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
                                                    <b>3.</b>
                                                </td>
                                                <td style="padding-left: 0px; line-height: 20px; text-align: justify;">Since the date you signed and dated your initial application for certiﬁcation to
                                                            CAMTC, have you had, or is there currently pending against you, in any city, county,
                                                            state, country, orjurisdiction, a complaint against your professional conduct (sexual
                                                            misconduct or otherwise) or professional competence?
                                                </td>
                                                <td align="left" class="cursorpointer" style="vertical-align: middle;">
                                                    <asp:RadioButtonList ID="rblHistoryQ3" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rblHistoryQ3_SelectedIndexChanged"
                                                        RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                                        <asp:ListItem Value="0">No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <div id="divhist3" runat="server" visible="false">
                                                        <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion3');" class="hyperlink">Please read the Instructions</a>
                                                        <asp:TextBox ID="TextBox8" CssClass="txtQestion3 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                            runat="server"></asp:TextBox>
                                                        <div class="histdiv">
                                                            <table class="tblApplReqForm5" style="width: 100%;">
                                                                <tr>
                                                                    <td align="right">
                                                                        <label class="input-label">Document Name :</label></td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
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
                                                    <b>4.</b>
                                                </td>
                                                <td style="padding-left: 0px; line-height: 20px; text-align: justify;">Are you aware of any complaints made against you to a business or made to you directly
                                                            in relation to your conduct as a massage professional, or in relation to a massage
                                                            therapy business you currently or in the past have owned or operated?
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
                                                        <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion4');" class="hyperlink">Please read the Instructions</a>
                                                        <asp:TextBox ID="TextBox7" CssClass="txtQestion4 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                            runat="server"></asp:TextBox>
                                                        <div class="histdiv">
                                                            <table class="tblApplReqForm5" style="width: 100%;">
                                                                <tr>
                                                                    <td align="right">
                                                                        <label class="input-label">Document Name :</label></td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
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
                                                    <b>5.</b>
                                                </td>
                                                <td style="padding-left: 0px; line-height: 20px; text-align: justify;">Since the date you signed and dated your initial application for certification to
                                                            CAMTC, have you had criminal charges ﬁled against you for penal code section 647(b)
                                                            - Prostitution or any act punishable as a sexually related crime, or been required
                                                            to register as a Sex Offender in California or another state?
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
                                                        <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion5');" class="hyperlink">Please read the Instructions</a>
                                                        <asp:TextBox ID="TextBox5" CssClass="txtQestion5 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                            runat="server"></asp:TextBox>
                                                        <div class="histdiv">
                                                            <table class="tblApplReqForm5" style="width: 100%;">
                                                                <tr>
                                                                    <td align="right">
                                                                        <label class="input-label">Document Name :</label></td>
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
                                            <tr>
                                                <td>
                                                    <b>6.</b>
                                                </td>
                                                <td style="padding-left: 0px; line-height: 20px; text-align: justify;">Have you ever been convicted of any criminal offense? (You need not disclose any
                                                            marijuana- related offenses specified in the marijuana reform legislation and codiﬁed
                                                            in the Health and Safety Code sections 11361.5 and 11361.7.) If “Yes," please explain
                                                            fully as described in the instructions. ALL convictions MUST be reported even if
                                                            they have been adjudicated, dismissed, or expunged. The definition of a “conviction"
                                                            includes a plea of nolo contendere (no contest), as well as pleas or verdicts of
                                                            guilty. You MUST include ALL convictions, including infractions, misdemeanor, and
                                                            felony convictions.
                                                </td>
                                                <td align="left" class="cursorpointer" style="vertical-align: middle;">
                                                    <asp:RadioButtonList ID="rblHistoryQ6" AutoPostBack="true" OnSelectedIndexChanged="rblHistoryQ6_SelectedIndexChanged"
                                                        runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                                        <asp:ListItem Value="0">No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <div id="divhist6" runat="server" visible="false">
                                                        <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion6');" class="hyperlink">Please read the Instructions</a>
                                                        <asp:TextBox ID="TextBox12" CssClass="txtQestion6 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                            runat="server"></asp:TextBox>
                                                        <div class="histdiv">
                                                            <table class="tblApplReqForm5" style="width: 100%;">
                                                                <tr>
                                                                    <td align="right">
                                                                        <label class="input-label">Document Name :</label></td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="txtalgnrgt">
                                                                        <label class="input-label required">
                                                                            Document :
                                                                        </label>
                                                                    </td>
                                                                    <td colspan="2">
                                                                        <asp:FileUpload ID="FileUpload6" runat="server" />
                                                                    </td>
                                                                    <td align="center">
                                                                        <span class="fltlft">
                                                                            <asp:Button ID="Button6" CssClass="buttonGreen small" runat="server" Text="Upload Document"
                                                                                OnClick="btnAddHist6_Click" />
                                                                        </span>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <div id="divgvhist6" runat="server">
                                                                <table class="index pdgnone brdr  grid" id="Table4" style="color: #333333; width: 90%; margin: 10px auto; border-collapse: collapse;"
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

                                                                            <td>01/01/2016
                                                                            </td>
                                                                            <td>
                                                                                <a class="hyperlink" target="_blank" href="../../App_Themes/Theme1/images/Chrysanthemum.jpg">Document Details </a>
                                                                            </td>
                                                                            <td>
                                                                                <span>
                                                                                    <input id="Image6" title="Delete" class="imgDelete" src="../../App_Themes/Theme1/images/delete.png"
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
                <asp:UpdatePanel ID="upAppScQues" runat="server">
                    <Triggers>
                    </Triggers>
                    <ContentTemplate>
                        <asp:Panel ID="pnlSection7" runat="server" Visible="false">
                            <div class="sectionDiv">
                                <span>APPLICANT AFFIDAVIT & RECORD RELEASE </span>
                            </div>
                            <fieldset class="flsNewApplReqForm flsCharacterReferences">
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 600px; padding-left: 0px; line-height: 20px; text-align: justify; text-align: justify;">
                                            <p style="padding-bottom: 10px;">
                                                <label class="input-label required">
                                                    I,</label>
                                                <asp:TextBox ID="txtAffidavitApplicantName" Text="Nancy Blachly" runat="server"></asp:TextBox>
                                                ("the Certiﬁcate Holder") hereby declare and reaffirm that, except for the new information
                                                        contained herein or attached hereto, the information contained in my initial CAMTC
                                                        application is still true and correct and I did not omit any relevant information
                                                        in my initial CAMTC application.
                                            </p>
                                        </td>
                                        <td align="right" style="width: 50px; vertical-align: middle;" class="cursorpointer">
                                            <asp:CheckBox Text="initial" ID="AffQ1" runat="server" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                            <p style="padding-bottom: 10px;">
                                                I understand that it is my duty and responsibility as a CAMTC Certiﬁcate Holder
                                                        and applicant for recertification to supplement and/or update my information with
                                                        CAMTC when any change in circumstances or conditions occur which might affect CAMTC’s
                                                        decision concerning my eligibility for certification or recertification. I understand
                                                        that if I am charged with Penal Code section 647(b) - Prostitution or any act punishable
                                                        as a sexually related crime, or required to register as a sex offender in California
                                                        or another state, I am required to immediately notify CAMTC of the fact that these
                                                        charges have been filed against me and if/when l have been convicted of these or
                                                        any other offenses. Failure to supplement and/or update my information may result
                                                        in disciplinary action by CAMTC including but not limited to denial, suspension,
                                                        or revocation of the Certificate.
                                            </p>
                                        </td>
                                        <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                            <asp:CheckBox Text="initial" ID="AffQ2" runat="server" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                            <p style="padding-bottom: 10px;">
                                                I understand that it is my responsibility by law to provide CAMTC with any changes
                                                        of home address, change of business address(es), change of primary email address,
                                                        and addition of business address(es) within 30 days of any such change or additions,
                                                        and that failure to report such changes or additions in a timely manner to CAMTC
                                                        may result in disciplinary action by CAMTC including but not limited to denial,
                                                        suspension, or revocation of my certificate.
                                            </p>
                                        </td>
                                        <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                            <asp:CheckBox Text="initial" ID="AffQ3" runat="server" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                            <p style="padding-bottom: 10px;">
                                                I understand and agree that my application for recertification may be denied based
                                                        on unprofessional conduct if I practice massage at a massage establishment, or own
                                                        a massage establishment, that advertises in any adult and/or sexually oriented section
                                                        of any form of media, whether print or digital.
                                            </p>
                                        </td>
                                        <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                            <asp:CheckBox Text="initial" ID="AffQ4" runat="server" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                            <p style="padding-bottom: 10px;">
                                                I hereby authorize Law Enforcement Agencies (LEA), government agencies, and other
                                                        massage related entities to release my records to CAMTC upon request and I hereby
                                                        authorize CAMTC to share all information about me, whether provided by me or others,
                                                        including personal information, with LEA, government agencies, and other massage
                                                        related entities upon request. (Note : we will not sell or release personal information
                                                        for marketing purposes).
                                            </p>
                                        </td>
                                        <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                            <asp:CheckBox Text="initial" ID="AffQ5" runat="server" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                            <p style="padding-bottom: 10px;">
                                                I understand that if I am granted CAMTC certification, it is only for a period of
                                                        two years, and it is my responsibility to submit a fully completed application for
                                                        re-certiﬁcation and ensure that it is received by CAMTC before the expiration date
                                                        listed on my certificate. I further understand that a reminder notification may
                                                        be sent to me as a courtesy, but failure to receive the reminder notiﬁcation does
                                                        not waive my responsibility to submit a fully completed application for re—certiﬁcation
                                                        and ensure that it is received before my current certificate expires. I further
                                                        understand that failure to submit a fully completed application for re—certification
                                                        that is received by CAMTC before my certificate expires <b>will result in a late fee
                                                            of up to $90</b> if the application for re-certiﬁcation is received by CAMTC
                                                        within six (6) months of my certificate expiring. I further understand that if a
                                                        fully completed application for re-certiﬁcation is not received by CAMTC within
                                                        six (6) months of my certificate expiring, I will be required to apply for certification
                                                        as a <b>new applicant </b>and I will have to meet all of the requirements for certiﬁcation
                                                        that exist at the time I apply. <b>I UNDERSTAND THAT UNDER NO CIRCUMSTANCES CAN THIS
                                                            LATE FEE OR POLICY BE WAIVED.</b>
                                            </p>
                                        </td>
                                        <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                            <asp:CheckBox Text="initial" ID="AffQ6" runat="server" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                            <p style="padding-bottom: 10px;">
                                                I HAVE READ, UNDERSTAND, AND AGREE TO COMPLY WITH THE STATUTES AND RULES APPLICABLE
                                                        TO THE PRACTICE OF MY PROFESSION IN CALIFORNIA.
                                            </p>
                                        </td>
                                        <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                            <asp:CheckBox Text="initial" ID="AffQ7" runat="server" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                            <p style="padding-bottom: 10px;">
                                                I understand that my recertification application fee is non-refundable regardless
                                                        of the ultimate disposition of my application for recertification.
                                            </p>
                                        </td>
                                        <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                            <asp:CheckBox Text="initial" ID="AffQ8" runat="server" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                            <p style="padding-bottom: 10px;">
                                                I HAVE CAREFULLY READ THE FOREGOING QUESTIONS AND HAVE ANSWERED THEM COMPLETELY
                                                        WITHOUT RESERVATION OF ANY KIND, AND I DECLARE UNDER PENALTY OF PERJURY, THAT MY
                                                        ANSWERS AND ALL OF THE STATEMENTS MADE HEREIN AND PROVIDED IN SUPPORT OF THIS APPLICATION
                                                        ARE <b>COMPLETE, TRUE AND CORRECT.</b> Should I furnish any false information or
                                                        fail to submit any relevant information in support of this application for recertification,
                                                        I understand that such action shall constitute cause for denial, suspension, or
                                                        revocation of my CAMTC Certificate.
                                            </p>
                                        </td>
                                        <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                            <asp:CheckBox Text="initial" ID="AffQ9" runat="server" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged" />
                                        </td>
                                    </tr>
                                </table>
                                <div>
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
                                        </table>
                                        <br />
                                        <p class="cursorpointer">
                                            <asp:CheckBox ID="AffQ10" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged"
                                                Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore."
                                                runat="server" />
                                        </p>
                                    </div>
                                </div>
                            </fieldset>
                            <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                <span class="fltrt">
                                    <asp:Button ID="btnNextSection7" Enabled="false" ValidationGroup="VGAffidavit" CssClass="buttonGreen medium"
                                        runat="server" Text="Save & Next" CausesValidation="true" OnClick="btnNextSection7_Click" />
                                    <asp:LinkButton ID="lnkCalcelSection7" CssClass="secondary medium bottom buttonalignment"
                                        runat="server" OnClick="lnkCalcelSection7_Click">Cancel</asp:LinkButton></span>
                            </div>
                        </asp:Panel>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <div id="pnlPayment" runat="server" visible="false">
                    <asp:UpdatePanel runat="server" ID="WaiverUpdate">
                        <ContentTemplate>
                            <asp:Panel ID="pnlApprovedCivilApp" runat="server">
                                <div class="sectionDiv">
                                    <span>Payment</span>
                                </div>
                                <fieldset class="flsNewApplReqForm flsNCBTMBEI">
                                    <div>
                                        <div>
                                            <asp:Literal ID="ltrTest" runat="server"></asp:Literal>
                                        </div>
                                        <div>
                                            <p>
                                                <b>Recertification Fee (includes ONE original CAMTC certificate) : $150.00 </b>
                                                <br />
                                                (By law you must display an original CAMTC certiﬁcate at each business location
                                                where you provide massage for compensation.)
                                            </p>
                                        </div>
                                    </div>
                                    <div id="divPaymentMethod" runat="server" style="padding-bottom: 30px;">
                                        <table class="tblApplReqForm5">
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label required">
                                                        Payment Method :</label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlPaymentMethod" AutoPostBack="true" Width="142px" Style="margin-left: 10px;"
                                                        runat="server" OnSelectedIndexChanged="ddlPaymentMethod_SelectedIndexChanged">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">Money Order</asp:ListItem>
                                                        <asp:ListItem Value="2">Credit Card</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label required">
                                                        Recertification Fees :</label>
                                                </td>
                                                <td>$&nbsp;<asp:TextBox ID="RetxtApplicationFees" runat="server" Text="150" Enabled="false"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Total number of additional original certificates requested :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtTotalNoOfAdditional" OnTextChanged="txtTotalNoOfAdditional_TextChanged"
                                                        AutoPostBack="true" Style="margin-left: 10px;" CssClass="inputTextbox" runat="server"></asp:TextBox><span>&nbsp;x
                                                            $15 each</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Fee for all Additional Original Certificates requested :
                                                    </label>
                                                </td>
                                                <td>$&nbsp;<asp:TextBox ID="txtFeeForAdditional" Enabled="false" CssClass="inputTextbox"
                                                    runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label required">
                                                        Late Fee :</label>
                                                </td>
                                                <td>$&nbsp;<asp:TextBox ID="txtReLateFee" CssClass="inputTextbox" OnTextChanged="txtReLateFee_TextChanged"
                                                    AutoPostBack="true" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Total fee (incl. recert. App. and add. original certs) :
                                                    </label>
                                                </td>
                                                <td>$&nbsp;<asp:TextBox ID="txtTotalFee" CssClass="inputTextbox" runat="server"></asp:TextBox>
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
                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                    <span class="fltrt">
                                        <asp:Button ID="btnSaveNextPayment" CssClass="buttonGreen medium" runat="server"
                                            Text="Submit" OnClick="btnSaveNextPayment_Click" ValidationGroup="VGApplicationWaiver"
                                            CausesValidation="true" />
                                        <asp:LinkButton ID="btnSaveNextPaymentCancel" CssClass="secondary medium bottom buttonalignment"
                                            runat="server">Cancel</asp:LinkButton></span>
                                </div>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <asp:Panel ID="pnlChecklist" runat="server" Visible="false">
                    <asp:UpdatePanel runat="server" ID="UpdatePayment">
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
                                                    NOTE: Your Live Scan Fingerprint results will be forwarded automatically to the
                                                                    CAMTC after you complete the Live Scan Fingerprint process - please see instructions.
                                                </p>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <br />
                                </div>
                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                    <span class="fltrt" style="">
                                        <asp:Button ID="Button16" CssClass="buttonGreen medium" runat="server" Text="Save as PDF" />
                                        <asp:Button ID="Button17" CssClass="buttonGreen medium" runat="server" Text="Submit"
                                            ValidationGroup="VGApplicationWaiver" CausesValidation="true" />
                                        <asp:LinkButton ID="lnkNextSaveChecklist" CssClass="secondary medium bottom buttonalignment"
                                            runat="server">Cancel</asp:LinkButton></span>
                                </div>
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
