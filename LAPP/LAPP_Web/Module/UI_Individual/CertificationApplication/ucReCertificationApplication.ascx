<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucReCertificationApplication.ascx.cs"
    Inherits="ucReCertificationApplication" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<script>
    function Navigate(e, j) {
        $("#menu-w-licensure li").each(function () {
            $(this).removeClass("actived");

        });
        $(e).addClass("actived");
        for (var i = 1; i <= 11; i++) {
            $(".section" + i).hide();
        } $(".section" + j).show();
    }
</script>
<style>
    .histdiv_space{line-height: 20px; margin-top: 15px; margin-bottom: 8px; float: left;}
    .listbox {
        width: 215px;
        height: 170px;
        overflow-x: hidden;
        overflow-y: scroll;
        border: 1px solid #ddd;
        padding: 8px;
    }

    .histdiv {
        border: 1px solid rgb(221, 221, 221);
        padding: 10px 0px !important;
        margin-top: 10px;
    }

    .history .tblApplReqForm5 .grid td {
        padding: 0px 0px 0px 4px !important;
    }

    .history .tblApplReqForm5 td {
        padding: 2px 0px 0px 0px !important;
    }

        .history .tblApplReqForm5 td :last-child {
            vertical-align: middle !important;
        }

    .mrgnto16 {
        margin-top: -14px;
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

    .workinfo {
        width: 135px;
    }

    .mrgnnon {
        margin-left: 0px !important;
    }

    .index tbody th a {
        color: #F9F9F9 !important;
    }

    select.inputTextbox {
        width: 180px;
    }

    .btnBCGPass {
        width: 80px;
    }

    .grid-heading {
        width: 100%;
        background-color: #ddd;
        font-weight: bold;
    }

    .btnBCGFail:hover {
        background-image: none;
        border: 1px solid #9D0707 !important;
        background-position: left 194px !important;
        -webkit-box-shadow: 0 2px 1px -1px #E57D49 inset;
        -moz-box-shadow: 0 2px 1px -1px #b3d72d inset;
        box-shadow: 0 2px 1px -1px #ED6640 inset;
        -webkit-box-shadow: 0 2px 1px -1px #F8D19E inset;
        -moz-box-shadow: 0 2px 1px -1px #b3d72d inset;
        background: rgb(237, 37, 37);
    }

    .btnBCGFail {
        -webkit-text-shadow: 0 -1px 0 rgba(0,0,0,0.4);
        -moz-text-shadow: 0 -1px 0 rgba(0,0,0,0.4);
        text-shadow: 0 -1px 0 rgba(0,0,0,0.4);
        -moz-user-select: none;
        -webkit-user-select: none;
        -ms-user-select: none;
        user-select: none;
        -o-border-radius: 3px;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
        background-image: url('../images/sprites.v1351539994.png');
        color: #fff !important;
        text-decoration: none !important;
        text-align: center;
        cursor: pointer;
        white-space: nowrap;
        padding: 0;
        margin: 0 2px;
        outline: 0;
        border: 1px solid #B50000 !important;
        background-position: left 194px !important;
        -webkit-box-shadow: 0 2px 1px -1px #E57D49 inset;
        -moz-box-shadow: 0 2px 1px -1px #b3d72d inset;
        box-shadow: 0 2px 1px -1px #ED6640 inset;
        -webkit-box-shadow: 0 2px 1px -1px #F8D19E inset;
        -moz-box-shadow: 0 2px 1px -1px #b3d72d inset;
        box-shadow: 0 2px 1px -1px #FAC59B inset;
        padding: 0px 10px !important;
        width: 80px;
        background: rgb(237, 55, 55);
        height: 30px;
        font: bold 14px Arial,Helvetica,sans-serif;
    }

    .actived {
        background: linear-gradient(rgb(182, 224, 38) 0%, rgb(171, 220, 40) 100%) rgb(221, 239, 180) !important;
    }

    .tblApplReqForm5 td {
        padding: 10px 0px 0px !important;
    }

    .clear.edit-mode-div {
        border-bottom: 1px solid #ddd;
    }

    .add-mode-div tr {
        border: 0px !important;
    }

    .add-mode-div td {
        border: 0px !important;
    }
</style>
<style>
    .tdwidth1 {
        width: 220px !important;
    }

    .tdwidth2 {
        width: 199px !important;
    }

    .pragraph {
        padding-bottom: 10px;
    }
</style>
<style>
    .gvDivUpr {
        color: rgb(0, 0, 0);
        font-family: Arial, Helvetica, sans-serif;
        font-size: 12px;
        font-style: normal;
        font-variant: normal;
        font-weight: normal;
        letter-spacing: normal;
        orphans: auto;
        text-align: left;
        text-indent: 0px;
        text-transform: none;
        white-space: normal;
        widows: auto;
        word-spacing: 0px;
        -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);
    }
</style>
<style>
    .hed {
        font-weight: bold;
    }

    .divquestion {
        margin: 3px auto;
        width: 100%;
        border: 1px solid rgb(238, 238, 238);
    }

    .index tr {
        border-top: 0px !important;
    }

    table#gvOtherNameEdit tbody tr td {
        border: 1px solid #ddd;
        padding: 0px !important;
        margin: 0px !important;
    }

    table#gvOtherNameEdit tbody .RowInEditMode td {
        border: 0px !important;
        padding: 0px !important;
        margin: 0px !important;
    }

    table#gvOtherNameEdit tbody tr td:First-Child {
        padding-left: 5px !important;
    }

    .tdwidth1 {
        width: 227px !important;
    }

    .vlignbtm {
        vertical-align: bottom;
    }

    #rblQuestionEdit1 tr td {
        padding: 0px !important;
    }

    #rblQuestionEdit2 tr td {
        padding: 0px !important;
    }

    #rblQuestionEdit3 tr td {
        padding: 0px !important;
    }

    .pdgtpnone tr td {
        padding-top: 0px !important;
    }

    .pdgnone td {
        padding: 0px 0px 0px !important;
    }
</style>
<asp:UpdatePanel runat="server" ID="upPnlCertificateApp">
    <ContentTemplate>
        <div>
            <asp:Literal ID="ltrStyles" runat="server"></asp:Literal>
            <div style="overflow: hidden; position: relative;">
                <div class="header">
                    <span>
                        <h4 style="text-align: left; margin: 0px !important;">
                            <span>
                                <asp:LinkButton ID="lnkBacktoDashboard" runat="server" PostBackUrl="~/LAPP_UI_Individual/UI/LogIn.aspx">&larr; Back to Home</asp:LinkButton></span>
                        </h4>
                    </span>
                    <p style="text-align: center; vertical-align: middle; text-indent: 119px; margin-top: 10px; padding-bottom: 10px;">
                        <span class="header-span">California Massage Therapy Council</span><span style="display: block; font-size: 16px;">Application for Recertification</span> <span style="display: block; font-size: 15px;"><i>Ver. 2015</i></span>
                    </p>
                </div>
            </div>
            <div class="clear">
            </div>
            <div class="gvDivUpr">
                <asp:Literal ID="ltrErrorMessageNewApp" runat="server"></asp:Literal>
                <div id="divVerifiy" runat="server">
                    <div class="">
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
                                                                    ImageUrl="~/App_Themes/Theme1/images/button_cross.png" OnClick="btnSection1_Click" /></span>
                                                        </li>
                                                        <li runat="server" clientidmode="Static" class="" id="liSection2">
                                                            <asp:Button ID="btnSection2" runat="server" Text="Work Information" CssClass="btnlimenu"
                                                                OnClick="btnSection2_Click" />
                                                            <span class="spnStatusImage statusimgalgn">
                                                                <asp:ImageButton ID="imgbtnSection2" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                                    ImageUrl="~/App_Themes/Theme1/images/button_cross.png" OnClick="btnSection2_Click" /></span>
                                                        </li>
                                                        <li runat="server" clientidmode="Static" class="" id="liSection3">
                                                            <asp:Button ID="btnSection3" runat="server" Text="History" CssClass="btnlimenu" OnClick="btnSection3_Click" />
                                                            <span class="spnStatusImage statusimgalgn">
                                                                <asp:ImageButton ID="imgbtnSection3" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                                    ImageUrl="~/App_Themes/Theme1/images/button_cross.png" OnClick="btnSection3_Click" /></span>
                                                        </li>
                                                        <li runat="server" clientidmode="Static" class="" id="liSection4">
                                                            <asp:Button ID="btnSection4" runat="server" Text="Affidavit" CssClass="btnlimenu"
                                                                OnClick="btnSection4_Click" />
                                                            <span class="spnStatusImage statusimgalgn">
                                                                <asp:ImageButton ID="imgbtnSection4" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                                    ImageUrl="~/App_Themes/Theme1/images/button_cross.png" OnClick="btnSection4_Click" /></span>
                                                        </li>
                                                        <li id="liSection5" runat="server" clientidmode="Static" class="">
                                                            <asp:Button ID="btnSection5" runat="server" Text="Payment" CssClass="btnlimenu" OnClick="btnSection5_Click" />
                                                            <span class="spnStatusImage statusimgalgn">
                                                                <asp:ImageButton ID="imgbtnSection5" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                                    ImageUrl="~/App_Themes/Theme1/images/button_cross.png" OnClick="btnSection5_Click" /></span>
                                                        </li>
                                                        <li id="liChecklist" runat="server" clientidmode="Static" class="">
                                                            <asp:Button ID="btnChecklist" runat="server" Text="Checklist" CssClass="btnlimenu"
                                                                OnClick="btnChecklist_Click" />
                                                            <span class="spnStatusImage statusimgalgn">
                                                                <asp:ImageButton ID="imgbtnChecklist" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                                    ImageUrl="~/App_Themes/Theme1/images/button_cross.png" OnClick="btnChecklist_Click" /></span>
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
                                                    <asp:Literal ID="ltrPersonalInfoEdit" runat="server"></asp:Literal>
                                                    <fieldset class="flsApplReqForm flsApplReqForm5">
                                                        <asp:Literal ID="ltrResidenceAddEdit" runat="server"></asp:Literal>
                                                        <table class=" tblApplReqForm5">
                                                            <tr>
                                                                <td colspan="6">
                                                                    <table class="pdgtpnone" style="position: relative; top: 10px;">
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
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="6">
                                                                    <table class=" tblApplReqForm5" style="width: 100%; position: relative; top: 10px;">
                                                                        <tr>
                                                                            <td colspan="4">
                                                                                <b>2. Name :</b>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="txtalgnrgt" style="width: 145px;">
                                                                                <label class="input-label required">
                                                                                    First Name :
                                                                                </label>
                                                                            </td>
                                                                            <td>
                                                                                <asp:TextBox ID="txtFirstNameEdit" Text="Nancy" runat="server" CssClass="tooltip capitalize-text OnlyAlphabet inputTextbox"
                                                                                    MaxLength="150"></asp:TextBox>
                                                                            </td>
                                                                            <td class="txtalgnrgt" style="width: 125px;">
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
                                                                </td>
                                                            </tr>
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
                                                        <div class="clear">
                                                        </div>
                                                        <table class=" tblApplReqForm5">
                                                            <tr>
                                                                <td colspan="6">
                                                                    <table class="tblLiveScanApp tblLiveScanApp1" width="100%">
                                                                        <tr>
                                                                             <td style="width: 480px; padding-left: 0px;">
                                                                                               <label  class="input-label required"> <b>4. Is your Mailing Address the same as the above Home Address where you live?</b></label>
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
                                                                                            If you answered "No" to the question above, then you must provide your current Mailing Address below. You are also required by law to provide your primary email address, if you have one. Please remember that your Application may be denied, delayed, or you may be required to pay additional processing fees if you provide CAMTC with an incorrect Mailing Address.
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
                                                                    <label class="input-label">
                                                                        Street :
                                                                    </label>
                                                                </td>
                                                                <td colspan="5">
                                                                    <asp:TextBox ID="txtStreetMailEdit" runat="server" Width="483px" CssClass="calWidth us_street"
                                                                        MaxLength="500"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td colspan="5">
                                                                    <asp:TextBox ID="txtStreet2MailEdit" runat="server" Width="483px" CssClass="calWidth us_street"
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
                                                                        Width="127px" CssClass="tooltip zip_us calWidth" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
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
                                                                <td colspan="6">
                                                                    <table class="tblApplReqForm5">
                                                                        <tr>
                                                                            <td align="right" style="width: 145px;">
                                                                                <label class="input-label required">Primary Phone :</label></td>
                                                                            <td style="width: 200px;">
                                                                                <asp:TextBox ID="TextBox3" CssClass="phone_us inputTextbox NewAppPersonalTxtbx" runat="server"></asp:TextBox></td>
                                                                            <td class="cursorpointer">
                                                                                <asp:CheckBox ID="CheckBox10" Text="Mobile" runat="server" /></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right">
                                                                                <label class="input-label">Secondary Phone :</label>
                                                                            <td>
                                                                                <asp:TextBox ID="TextBox4" CssClass="phone_us inputTextbox NewAppPersonalTxtbx" runat="server"></asp:TextBox></td>
                                                                            <td class="cursorpointer">
                                                                                                    <asp:CheckBox ID="CheckBox9" Text="Mobile" runat="server" /></td>
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
                                                                                    Website  :
                                                                                </label>
                                                                            </td>
                                                                            <td colspan="3">
                                                                                <asp:TextBox ID="txtWebsite" runat="server" Text="sbcglobal.net" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                                                    MaxLength="150"></asp:TextBox>
                                                                            </td>
                                                                        </tr>
                                                                        
                                                                        <tr style="position: relative; top: -9px;">
                                                                            <td class="txtalgnrgt" style="width: 120px">
                                                                                <label class="input-label required">
                                                                                    Primary Email :
                                                                                </label>
                                                                            </td>
                                                                            <td colspan="3">
                                                                                <asp:TextBox ID="txtPrimaryEmail" Style="width: 488px !important;" runat="server"
                                                                                    CssClass="inputTextbox NewAppPersonalTxtbx" MaxLength="150"></asp:TextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr style="position: relative; top: -9px;">
                                                                            <td class="txtalgnrgt" style="width: 136px">
                                                                                <label class="input-label">
                                                                                    Secondary Email :
                                                                                </label>
                                                                            </td>
                                                                            <td colspan="3">
                                                                                <asp:TextBox ID="txtSecondaryEmail" Style="width: 488px !important;" runat="server"
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
                                                                   <td style="line-height: 20px; vertical-align: baseline;">
                                                                                        <b>Please provide the following WORK INFORMATION for ALL locations where you CURRENTLY
                                                                                                    provide Massage Therapy Services and for all massage businesses you CURRENTLY own or operate.</b>
                                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <asp:Literal ID="ltrScoreReport" runat="server"></asp:Literal>
                                                            <div class="divLicenseInfon divaddnew" id="divbtnWorkInfo1" runat="server">
                                                                <span style="float: right; margin-right: 10px;" class="AfterApproved">
                                                                    <asp:Button ID="btnWorkInfo1AddNew" CssClass="buttonGreen small" runat="server" Text="Add"
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
                                                                                    <td class="txtalgnrgt" style="width: 164px;">
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
                                                                                    <td class="txtalgnrgt" style="width: 164px;">
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
                                                                                        <label class="input-label required">
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
                                                                                            Check all that apply below :
                                                                                        </label>
                                                                                    </td>
                                                                                </tr>
                                                                                <%--<tr>
                                                                                            <td colspan="4">
                                                                                                <table style="margin-top : -20px; width : 100%;">
                                                                                                    <tr>
                                                                                                        <td>
                                                                                                            <p>
                                                                                                                <asp:CheckBox runat="server" ID="chkWorkStatusOne5" Text="Self Employed" /><input
                                                                                                                    type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                    name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                            </p>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <p>
                                                                                                                <asp:CheckBox runat="server" ID="chkWorkStatusOne7" Text="Manager/Operator" /><input
                                                                                                                    type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                    name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                            </p>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <p>
                                                                                                                <asp:CheckBox runat="server" ID="chkWorkStatusOne3" Text="Independent Contractor" /><input
                                                                                                                    type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                    name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                            </p>
                                                                                                        </td>
                                                                                                        <td colspan="2">
                                                                                                            <p>
                                                                                                                <asp:CheckBox runat="server" ID="chkWorkStatusOne4" Text="Paying for use of Space" /><input
                                                                                                                    type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                    name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                            </p>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td>
                                                                                                            <p>
                                                                                                                <asp:CheckBox runat="server" ID="chkWorkStatusOne1" Text="Owner" /><input type="image"
                                                                                                                    style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                    name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                            </p>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <p>
                                                                                                                <asp:CheckBox runat="server" ID="chkWorkStatusOne2" Text="Employee" /><input type="image"
                                                                                                                    style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                    name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                            </p>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <p>
                                                                                                                <asp:CheckBox runat="server" ID="chkWorkStatusOne6" Text="Employer" /><input type="image"
                                                                                                                    style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                    name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                            </p>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <p>
                                                                                                                <asp:CheckBox runat="server" ID="chkWorkStatusOne8" Text="Instructor" /><input type="image"
                                                                                                                    style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                    name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                            </p>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <p>
                                                                                                                <asp:CheckBox runat="server" ID="chkWorkStatusOne9" Text="Other" /><input type="image"
                                                                                                                    style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                    name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                            </p>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                            </td>
                                                                                        </tr>--%>
                                                                                <tr>
                                                                                    <td></td>
                                                                                    <td colspan="3">
                                                                                        <div class="listbox" style="height: 120px;">
                                                                                            <asp:CheckBoxList ID="CheckBoxList1" Style="line-height: 20px; width: 300px;" runat="server"
                                                                                                CssClass="pdgnone">
                                                                                                <asp:ListItem Value="0">Sole Proprietor</asp:ListItem>
                                                                                                <asp:ListItem Value="1">Manager/Operator</asp:ListItem>
                                                                                                <asp:ListItem Value="2">Independent Contractor</asp:ListItem>
                                                                                                <asp:ListItem Value="4">Owner</asp:ListItem>
                                                                                                <asp:ListItem Value="1">Employee</asp:ListItem>
                                                                                                <asp:ListItem Value="3">Instructor</asp:ListItem>
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
                                                                                                    <td style="width: 168px;">
                                                                                                        <span id="lblBusinessName1">Max Health Center</span>
                                                                                                    </td>
                                                                                                    <td style="width: 145px;">
                                                                                                        <span id="lblBusinessPhone1">(530) 542-0604</span>
                                                                                                    </td>
                                                                                                    <td style="width: 180px;">
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
                                                                                                                        CssClass="inputTextbox NewAppPersonalTxtbx phone_us"></asp:TextBox>
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
                                                                                                            Width="463px" CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td></td>
                                                                                                    <td colspan="5">
                                                                                                        <asp:TextBox ID="txtWorkInfoQ1Street2Edit" runat="server" Width="463px" CssClass="calWidth us_street"
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
                                                                                                            Width="79px" CssClass="tooltip zip_us calWidth" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
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
                                                                                                                            <table style="margin-top : -20px; width : 100%;">
                                                                                                                                <tr>
                                                                                                                                    <td>
                                                                                                                                        <p>
                                                                                                                                            <asp:CheckBox runat="server" ID="chkWorkStatusOne5Edit" Text="Self Employed" /><input
                                                                                                                                                type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                                                name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                                                        </p>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <p>
                                                                                                                                            <asp:CheckBox runat="server" ID="chkWorkStatusOne7Edit" Text="Manager/Operator" /><input
                                                                                                                                                type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                                                name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                                                        </p>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <p>
                                                                                                                                            <asp:CheckBox runat="server" ID="chkWorkStatusOne3Edit" Text="Independent Contractor" /><input
                                                                                                                                                type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                                                name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                                                        </p>
                                                                                                                                    </td>
                                                                                                                                    <td colspan="2">
                                                                                                                                        <p>
                                                                                                                                            <asp:CheckBox runat="server" ID="chkWorkStatusOne4Edit" Text="Paying for use of Space" /><input
                                                                                                                                                type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                                                name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                                                        </p>
                                                                                                                                    </td>
                                                                                                                                </tr>
                                                                                                                                <tr>
                                                                                                                                    <td>
                                                                                                                                        <p>
                                                                                                                                            <asp:CheckBox runat="server" ID="chkWorkStatusOne1Edit" Text="Owner" /><input type="image"
                                                                                                                                                style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                                                name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                                                        </p>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <p>
                                                                                                                                            <asp:CheckBox runat="server" ID="chkWorkStatusOne2Edit" Text="Employee" /><input
                                                                                                                                                type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                                                name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                                                        </p>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <p>
                                                                                                                                            <asp:CheckBox runat="server" ID="chkWorkStatusOne6Edit" Text="Employer" /><input
                                                                                                                                                type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                                                name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                                                        </p>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <p>
                                                                                                                                            <asp:CheckBox runat="server" ID="chkWorkStatusOne8Edit" Text="Instructor" /><input
                                                                                                                                                type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                                                name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                                                        </p>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <p>
                                                                                                                                            <asp:CheckBox runat="server" ID="chkWorkStatusOne9Edit" Text="Other" /><input type="image"
                                                                                                                                                style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                                                name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
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
                                                                            <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
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
                                                           
                                                            <table style="width: 100%;" class="tblApplReqForm5">
                                                                <tr>
                                                                    <td style="width: 14px;">
                                                                        <b>6. </b>
                                                                    </td>
                                                                   <td style="line-height: 20px; vertical-align: baseline;">
                                                                                        <b>Please provide information on all of your <u>Previous Massage Work Locations including all massage therapy businesses where you have provided massage for compensation or you have owned or operated</u>
                                                                                             within the past ten (10) years.
                                                                                        </b>
                                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <div class="divLicenseInfon divaddnew" id="divbtnWorkInfo2" runat="server">
                                                                <span style="float: right; margin-right: 10px;" class="AfterApproved">
                                                                    <asp:Button ID="btnWorkInfo2AddNew" CssClass="buttonGreen small" runat="server" Text="Add"
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
                                                                                    <td class="txtalgnrgt" style="width: 164px;">
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
                                                                                    <td class="txtalgnrgt" style="width: 165px;">
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
                                                                                        <label class="input-label required">
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
                                                                                           Check all that apply below :
                                                                                        </label>
                                                                                    </td>
                                                                                </tr>
                                                                                <%--<tr>
                                                                                            <td colspan="4">
                                                                                                <table style="margin-top : -20px; width : 100%;">
                                                                                                    <tr>
                                                                                                        <td>
                                                                                                            <p>
                                                                                                                <asp:CheckBox runat="server" ID="chkWorkStatusTwo5" Text="Self Employed" /><input
                                                                                                                    type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                    name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                            </p>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <p>
                                                                                                                <asp:CheckBox runat="server" ID="chkWorkStatusTwo7" Text="Manager/Operator" /><input
                                                                                                                    type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                    name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                            </p>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <p>
                                                                                                                <asp:CheckBox runat="server" ID="chkWorkStatusTwo3" Text="Independent Contractor" /><input
                                                                                                                    type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                    name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                            </p>
                                                                                                        </td>
                                                                                                        <td colspan="2">
                                                                                                            <p>
                                                                                                                <asp:CheckBox runat="server" ID="chkWorkStatusTwo4" Text="Paying for use of Space" /><input
                                                                                                                    type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                    name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                            </p>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td>
                                                                                                            <p>
                                                                                                                <asp:CheckBox runat="server" ID="chkWorkStatusTwo1" Text="Owner" /><input type="image"
                                                                                                                    style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                    name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                            </p>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <p>
                                                                                                                <asp:CheckBox runat="server" ID="chkWorkStatusTwo2" Text="Employee" /><input type="image"
                                                                                                                    style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                    name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                            </p>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <p>
                                                                                                                <asp:CheckBox runat="server" ID="chkWorkStatusTwo6" Text="Employer" /><input type="image"
                                                                                                                    style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                    name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                            </p>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <p>
                                                                                                                <asp:CheckBox runat="server" ID="chkWorkStatusTwo8" Text="Instructor" /><input type="image"
                                                                                                                    style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                    name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                            </p>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <p>
                                                                                                                <asp:CheckBox runat="server" ID="chkWorkStatusTwo9" Text="Other" /><input type="image"
                                                                                                                    style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                    name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                            </p>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                            </td>
                                                                                        </tr>--%>
                                                                                <tr>
                                                                                    <td></td>
                                                                                    <td colspan="3">
                                                                                        <div class="listbox" style="height: 120px;">
                                                                                            <asp:CheckBoxList ID="CheckBoxList3" Style="line-height: 20px; width: 300px;" runat="server"
                                                                                                CssClass="pdgnone">
                                                                                                <asp:ListItem Value="0">Sole Proprietor</asp:ListItem>
                                                                                                <asp:ListItem Value="1">Manager/Operator</asp:ListItem>
                                                                                                <asp:ListItem Value="2">Independent Contractor</asp:ListItem>
                                                                                                <asp:ListItem Value="4">Owner</asp:ListItem>
                                                                                                <asp:ListItem Value="1">Employee</asp:ListItem>
                                                                                                <asp:ListItem Value="3">Instructor</asp:ListItem>
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
                                                                                                    <td style="width: 233px;">
                                                                                                        <span id="lblBusinessName2">Dolce Salon and Spa</span>
                                                                                                    </td>
                                                                                                    <td style="width: 122px;">
                                                                                                        <span id="lblBusinessPhone2">(530) 542-0604</span>
                                                                                                    </td>
                                                                                                    <td style="width: 152px;">
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
                                                                                                                        CssClass="inputTextbox NewAppPersonalTxtbx phone_us"></asp:TextBox>
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
                                                                                                            Width="462px" CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td></td>
                                                                                                    <td colspan="5">
                                                                                                        <asp:TextBox ID="txtWorkInfoQ2Street2Edit" runat="server" Width="462px" CssClass="calWidth us_street"
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
                                                                                                            Width="85px" CssClass="tooltip zip_us calWidth" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
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
                                                                                                                            <table style="margin-top : -20px; width : 100%;">
                                                                                                                                <tr>
                                                                                                                                    <td>
                                                                                                                                        <p>
                                                                                                                                            <asp:CheckBox runat="server" ID="chkWorkStatusTwo5Edit" Text="Self Employed" /><input
                                                                                                                                                type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                                                name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                                                        </p>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <p>
                                                                                                                                            <asp:CheckBox runat="server" ID="chkWorkStatusTwo7Edit" Text="Manager/Operator" /><input
                                                                                                                                                type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                                                name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                                                        </p>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <p>
                                                                                                                                            <asp:CheckBox runat="server" ID="chkWorkStatusTwo3Edit" Text="Independent Contractor" /><input
                                                                                                                                                type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                                                name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                                                        </p>
                                                                                                                                    </td>
                                                                                                                                    <td colspan="2">
                                                                                                                                        <p>
                                                                                                                                            <asp:CheckBox runat="server" ID="chkWorkStatusTwo4Edit" Text="Paying for use of Space" /><input
                                                                                                                                                type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                                                name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                                                        </p>
                                                                                                                                    </td>
                                                                                                                                </tr>
                                                                                                                                <tr>
                                                                                                                                    <td>
                                                                                                                                        <p>
                                                                                                                                            <asp:CheckBox Checked="true" runat="server" ID="chkWorkStatusTwo1Edit" Text="Owner" /><input
                                                                                                                                                type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                                                name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                                                        </p>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <p>
                                                                                                                                            <asp:CheckBox runat="server" ID="chkWorkStatusTwo2Edit" Text="Employee" /><input
                                                                                                                                                type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                                                name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                                                        </p>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <p>
                                                                                                                                            <asp:CheckBox runat="server" ID="chkWorkStatusTwo6Edit" Text="Employer" /><input
                                                                                                                                                type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                                                name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                                                        </p>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <p>
                                                                                                                                            <asp:CheckBox runat="server" ID="chkWorkStatusTwo8Edit" Text="Instructor" /><input
                                                                                                                                                type="image" style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                                                name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
                                                                                                                                        </p>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <p>
                                                                                                                                            <asp:CheckBox runat="server" ID="chkWorkStatusTwo9Edit" Text="Other" /><input type="image"
                                                                                                                                                style="padding : 0px; width : 14px; margin-left : 3px;" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                                                                                                                name="Help" title="Edit" src="../../App_Themes/Public/images/help.png">
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
                                                                            <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
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
                                                                <td style="width: 590px; padding-left: 0px; line-height: 20px; text-align: justify;">Since the date you signed and dated your initial application for certification to CAMTC, have you received an administrative or civil citation related to the practice of massage therapy, or a massage therapy business, or any other profession, or been denied or refused the renewal of a license, permit, certiﬁcate, or other authorization to practice massage therapy, or related to a massage therapy business or any other profession, in any city, county, state, country, or jurisdiction?  
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
                                                                        <div class="histdiv" style="padding: 10px ! important;">
                                                                            <b style="float: left;">Note :</b><p style="float: left; padding-left: 5px;">You will <u>not</u> be able to enter information until you <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion1');" class="hyperlink">read the instructions.</a></p>
                                                                            
                                                                            <table style="width: 100%;">
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <p>Provide information for each incident. Use the ‘Add’ button for each additional incident :</p>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <asp:Button ID="btnQue1Add" Style="float: right; margin-right:15px;" CssClass="buttonGreen small" runat="server" Text="Add" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <p>Provide a detailed description of the incident that lead to the action being taken against you including the date of the incident:</p>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label required">From Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="txtAddDate" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label">To Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox14" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>

                                                                                </tr>
                                                                                
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <p>Provide the location where the incident occurred and whether it occurred at a location where massage is provided : </p>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">Location/Name of Business :</label>
                                                                                    </td>
                                                                                    <td colspan="3"><asp:TextBox ID="TextBox61" CssClass="txtQestion1 aspNetDisabled" disabled Width="485px" runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">Address :</label>
                                                                                    </td>
                                                                                    <td colspan="3"><asp:TextBox ID="txtAddressQ1" CssClass="txtQestion1 aspNetDisabled" disabled Width="485px" runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">City : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox16" runat="server" Width="133px" CssClass="tooltip OnlyAlphabet calWidth txtQestion1 aspNetDisabled" disabled
                                                                                            MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">State : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="inputTextbox"
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
                                                                                        </asp:DropDownList></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt"> <label class="input-label required">Zip :</label></td>
                                                                                    <td><asp:TextBox ID="TextBox66" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                        CssClass="tooltip zip_us calWidth txtQestion1 aspNetDisabled" disabled Width="127px" MaxLength="500" title="Enter valid Zip eg: 
XXXXX-XXXX or XXXXX"></asp:TextBox></td>
                                                                                    <td colspan="2"></td>
                                                                                </tr>

                                                                                
                                                                                <tr>
                                                                                    <td class="txtalgnrgt" colspan="3">
                                                                                        <label class="input-label required">Massage provided at that location : </label>
                                                                                    </td>
                                                                                    <td class="txtalgnrgt">
                                                                                        <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="RadioButtonList24">
                                                                                            <asp:ListItem>Yes</asp:ListItem>
                                                                                            <asp:ListItem>No</asp:ListItem>
                                                                                        </asp:RadioButtonList></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt" colspan="3">
                                                                                        <label class="input-label required">Was the incident related to massage services? </label>
                                                                                    </td>
                                                                                    <td class="txtalgnrgt">
                                                                                        <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="RadioButtonList1">
                                                                                            <asp:ListItem>Yes</asp:ListItem>
                                                                                            <asp:ListItem>No</asp:ListItem>
                                                                                        </asp:RadioButtonList></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4" style="text-align: left;">
                                                                                        <label class="input-label histdiv_space required">Describe in your own words what happend :</label>
                                                                                    </td>

                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <asp:TextBox ID="TextBox15" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <label class="input-label histdiv_space required">Describe what was acted against (a permit, license, certificate, business license, operator’s permit, etc.) :</label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <asp:TextBox ID="TextBox18" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>

                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <span class="histdiv_space">Describe the specific action(s) taken against you (for example - did you have a permit revoked, paid a fine, had a state license disciplined,<label class="input-label required"> had your application denied, etc.) :</label></span>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <asp:TextBox ID="TextBox19" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>

                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <label class="input-label histdiv_space required">The date of the citation or the date the action against you occurred :</label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label required">From Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox20" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label">To Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox53" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>

                                                                                </tr>

                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <span class="histdiv_space">Identify the agency that took the action against you  <label class="input-label required"> (city, county, state, etc.) : </label></span>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <asp:TextBox ID="TextBox21" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>

                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <span class=" histdiv_space">
                                                                                            The stated reason for the action being taken against you (for example – a massage professional failed to properly cover a client, the business used 
                                                                                            a non permitted or non certified person to  <label class="input-label required"> provide massage services, etc.) :</label>
                                                                                        </span>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <asp:TextBox ID="TextBox22" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>

                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <label class="input-label histdiv_space required">Any other information that you would like to share with us :</label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <asp:TextBox ID="TextBox23" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>

                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <span class=" histdiv_space ">Please also provide copies of any documentation you have in relation to the action taken against you (for example – copies of administrative citations, judgments, receipts for fines paid, final decision letters from the agency that took action against you, etc.).</span>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <div class="histdiv">
                                                                                <table class="tblApplReqForm5" style="width: 100%;">
                                                                                    <tr>
                                                                                        <td align="right">
                                                                                            <label class="input-label required">Document Name :</label></td>
                                                                                        <td>
                                                                                            <asp:TextBox ID="TextBox13" CssClass="txtQestion1 aspNetDisabled" disabled runat="server"></asp:TextBox></td>
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
                                                                                                <th>Action</th>
                                                                                            </tr>
                                                                                            <tr class="bordrbtm gridrow">
                                                                                                <td class="InEditModetd">Driver's License
                                                                                                </td>

                                                                                                <td>01/01/2015
                                                                                                </td>
                                                                                                <td>
                                                                                                    <a class="hyperlink" target="_blank" href="../../App_Themes/Public/images/Chrysanthemum.jpg">Document Details </a>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <span>
                                                                                                        <input id="Image1" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"
                                                                                                            type="image"></span>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </div>
                                                                            </div>
                                                                            <table>
                                                                                <tr>
                                                                                    <td><b style="line-height: 20px; width: 100%; margin-top: 14px; float: left; margin-bottom: 10px;">Failure to fully disclose requested information is a violation of the law and is considered an attempt to procure a certificate by fraud, misrepresentation, or mistake and is grounds for denial of certification or revocation of certification.</b></td>
                                                                                </tr>
                                                                            </table>
                                                                            </div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <b>2.</b>
                                                                </td>
                                                                <td style="padding-left: 0px; line-height: 20px; text-align: justify;">Since the date you signed and dated your initial application for certification to CAMTC, have you had a license, certificate, certiﬁcate of registration, permit, or other authorization for a massage therapy business, or to practice massage therapy, or for any other profession, revoked, suspended, or otherwise acted against (including administrative citation, civil citation, municipal code violation, probation, ﬁne, reprimand, settlement, or surrender of a license, permit, certificate, or other authorization)? 
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
                                                                    <div id="divhist2"  runat="server" visible="false">
                                                                        <div class="histdiv" style="padding: 10px ! important;">
                                                                        <b style="float: left;">Note :</b><p style="float: left; padding-left: 5px;">You will <u>not</u> be able to enter information until you <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion2');" class="hyperlink">read the instructions.</a></p>
                                                                        <table style="width:100%;">
                                                                            <tr>
                                                                                <td colspan="4"><p>Provide information for each incident. Use the ‘Add’ button for each additional incident :</p></td>
                                                                            </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <asp:Button ID="btnQ2Add" Style="float:right; margin-right:15px;" CssClass="buttonGreen small" runat="server" Text="Add" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <p>Provide a detailed description of the incident that lead to the action being taken against you including the date of the incident:</p>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label required">From Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox9" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label">To Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox54" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>

                                                                                </tr>
                                                                                
                                                                                <tr>
                                                                                    <td  colspan="4">
                                                                                        <span>Provide the location where the incident occurred and whether it occurred at a location where massage<label class="input-label required"> is provided : </label></span>
                                                                                    </td>
                                                                                </tr>
                                                                             <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">Location/Name of Business :</label>
                                                                                    </td>
                                                                                    <td colspan="3"><asp:TextBox ID="TextBox17" CssClass="txtQestion1 aspNetDisabled" disabled Width="485px" runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">Address :</label>
                                                                                    </td>
                                                                                    <td colspan="3"><asp:TextBox ID="TextBox24" CssClass="txtQestion1 aspNetDisabled" disabled Width="485px" runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">City : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox25" runat="server" Width="133px" CssClass="tooltip OnlyAlphabet calWidth txtQestion1 aspNetDisabled" disabled
                                                                                            MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">State : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="inputTextbox"
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
                                                                                        </asp:DropDownList></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt"> <label class="input-label required">Zip :</label></td>
                                                                                    <td><asp:TextBox ID="TextBox62" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                        CssClass="tooltip zip_us calWidth txtQestion1 aspNetDisabled" disabled Width="127px" MaxLength="500" title="Enter valid Zip eg: 
XXXXX-XXXX or XXXXX"></asp:TextBox></td>
                                                                                    <td colspan="2"></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt"  colspan="3"><label class="input-label required">Massage provided at that location : </label></td>
                                                                                    <td class="txtalgnrgt"><asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="RadioButtonList2">
                                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                                <asp:ListItem>No</asp:ListItem>
                                                                            </asp:RadioButtonList></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt"  colspan="3"><label class="input-label required">Was the incident related to massage services? </label></td>
                                                                                    <td class="txtalgnrgt"><asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="RadioButtonList3">
                                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                                <asp:ListItem>No</asp:ListItem>
                                                                            </asp:RadioButtonList></td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4" style="text-align:left;" class="txtalgnrgt"><label class="input-label histdiv_space required">Describe in your own words what happened : </label></td>
                                                                                    
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="TextBox10" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <span class="histdiv_space">Describe what was acted against (a permit, license, certificate, business license,<label class="input-label required"> operator’s permit, etc.) :</label></span>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="TextBox26" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>

                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <span class="histdiv_space">Describe the specific action(s) taken against you (for example - did you have a permit revoked, paid a fine, had a state license disciplined,<label class="input-label required"> had your application denied, etc.) :</label></span>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="TextBox27" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>

                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <span class="histdiv_space">The date of the citation or the date the action<label class="input-label required"> against you occurred :</label></span>
                                                                                    </td>
                                                                                </tr>
                                                                               <tr>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label required">From Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox28" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label">To Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox57" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>

                                                                                </tr>

                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <span class="histdiv_space">Identify the agency that took the action<label class="input-label required"> against you (city, county, state, etc.) :</label></span>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="TextBox29" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>

                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <span class="histdiv_space">The stated reason for the action being taken against you (for example – a massage professional failed to properly cover a client, the business used 
                                                                                            a non permitted or non certified person to<label class="input-label required"> provide massage services, etc.) :</label></span>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="TextBox30" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>

                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <span class="histdiv_space">Any other information that you would like<label class="input-label required"> to share with us :</label></span>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="TextBox31" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>

                                                                                <tr>
                                                                                    <td colspan="4"><p class="histdiv_space">Please also provide copies of any documentation you have in relation to the action taken against you (for example – copies of administrative citations, judgments, receipts for fines paid, final decision letters from the agency that took action against you, etc.).</p></td>
                                                                                </tr>
                                                                            </table>                                                                            
                                                                        <div class="histdiv">
                                                                            <table class="tblApplReqForm5" style="width: 100%;">
                                                                                <tr>
                                                                                    <td align="right">
                                                                                        <label class="input-label required">Document Name :</label></td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox11" CssClass="txtQestion1 aspNetDisabled" disabled runat="server"></asp:TextBox></td>
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
                                                                                <table class="index pdgnone brdr  grid" id="Table2" style="color: #333333; width: 90%; margin: 10px auto; border-collapse: collapse;"
                                                                                    cellpadding="5" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <th scope="col">Document Name
                                                                                            </th>

                                                                                            <th scope="col">Date
                                                                                            </th>
                                                                                            <th scope="col">Link
                                                                                            </th>
                                                                                            <th>Action</th>
                                                                                        </tr>
                                                                                        <tr class="bordrbtm gridrow">
                                                                                            <td class="InEditModetd">Driver's License
                                                                                            </td>

                                                                                            <td>01/01/2015
                                                                                            </td>
                                                                                            <td>
                                                                                                <a class="hyperlink" target="_blank" href="../../App_Themes/Public/images/Chrysanthemum.jpg">Document Details </a>
                                                                                            </td>
                                                                                            <td>
                                                                                                <span>
                                                                                                    <input id="Image2" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"
                                                                                                        type="image"></span>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </div>
                                                                        <table>
                                                                            <tr>
                                                                                <td><b style="line-height: 20px; width: 100%; margin-top: 14px; float: left; margin-bottom: 10px;">Failure to fully disclose requested information is a violation of the law and is considered an attempt to procure a certificate by fraud, misrepresentation, or mistake and is grounds for denial of certification or revocation of certification.</b></td>
                                                                            </tr>
                                                                        </table>
                                                                            </div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <b>3.</b>
                                                                </td>
                                                                <td style="padding-left: 0px; line-height: 20px; text-align: justify;">Since the date you signed and dated your initial application for certiﬁcation to CAMTC, have you had, or is there currently pending against you, in any city, county, state, country, or jurisdiction, a complaint against your professional conduct (sexual misconduct or otherwise) or professional competence? 
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
                                                                        <div class="histdiv" style="padding: 10px ! important;">
                                                                       <b style="float: left;">Note :</b><p style="float: left; padding-left: 5px;">You will <u>not</u> be able to enter information until you <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion3');" class="hyperlink">read the instructions.</a></p>
                                                                        <table style="width:100%;">
                                                                            <tr>
                                                                                <td colspan="4"><p>Provide information for each incident. Use the ‘Add’ button for each additional incident :</p></td>
                                                                            </tr>
                                                                            <tr>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label required">From Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox33" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label">To Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox58" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>

                                                                                </tr>
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    <p>Provide the location (name of business and address) where the incident that resulted in the complaint occurred, including identifying whether it occurred at a business that provides massage :</p>
                                                                                </td>
                                                                            </tr>
                                                                             <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">Location/Name of Business :</label>
                                                                                    </td>
                                                                                    <td colspan="3"><asp:TextBox ID="TextBox67" CssClass="txtQestion1 aspNetDisabled" disabled Width="485px" runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">Address :</label>
                                                                                    </td>
                                                                                    <td colspan="3"><asp:TextBox ID="TextBox68" CssClass="txtQestion1 aspNetDisabled" disabled Width="485px" runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">City : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox69" runat="server" Width="133px" CssClass="tooltip OnlyAlphabet calWidth txtQestion1 aspNetDisabled" disabled
                                                                                            MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">State : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:DropDownList ID="DropDownList6" runat="server" CssClass="inputTextbox"
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
                                                                                        </asp:DropDownList></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt"> <label class="input-label required">Zip :</label></td>
                                                                                    <td><asp:TextBox ID="TextBox70" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                        CssClass="tooltip zip_us calWidth txtQestion1 aspNetDisabled" disabled Width="127px" MaxLength="500" title="Enter valid Zip eg: 
XXXXX-XXXX or XXXXX"></asp:TextBox></td>
                                                                                    <td colspan="2"></td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td class="txtalgnrgt"  colspan="3"><label class="input-label required">Massage provided at that location : </label></td>
                                                                                    <td class="txtalgnrgt"><asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="RadioButtonList4">
                                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                                <asp:ListItem>No</asp:ListItem>
                                                                            </asp:RadioButtonList></td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td class="txtalgnrgt"  colspan="3"><label class="input-label required">Was the incident related to massage services? </label></td>
                                                                                    <td class="txtalgnrgt"><asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="RadioButtonList5">
                                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                                <asp:ListItem>No</asp:ListItem>
                                                                            </asp:RadioButtonList></td>
                                                                                </tr>
                                                                          <tr>
                                                                                    <td colspan="4">
                                                                                        <asp:Button ID="btnAddQues3" Style="float:right; margin-right:15px;" CssClass="buttonGreen small" runat="server" Text="Add" />
                                                                                    </td>
                                                                                </tr>
                                                                              <tr>
                                                                                    <td colspan="4">
                                                                                        <span>Identify the place where the formal complaint is pending<label class="input-label required"> (city, county, state, or country) :</label></span>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                   <td colspan="4">
                                                                                         <asp:TextBox ID="TextBox8" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    <span class="histdiv_space">Describe the nature of the complaint and provide a detailed description of the incident that resulted in the complaint including<label class="input-label required"> the date of the incident :</label></span>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td colspan="4" class="txtalgnrgt" style=" text-align:left;">
                                                                                    <label class="input-label histdiv_space required">Nature of complaint : </label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    <asp:TextBox ID="TextBox32" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                                        runat="server"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                            
                                                                            <tr>
                                                                                <td colspan="4" class="txtalgnrgt">
                                                                                    <label class="input-label histdiv_space required">Describe in your own words what happened :</label>
                                                                                </td>
                                                                                
                                                                            </tr>
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    <asp:TextBox ID="TextBox34" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                                        runat="server"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                            
                                                                            
                                                                            
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                       <label class="input-label histdiv_space required">With whom was the complaint filed ?</label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="TextBox39" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>

                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <label class="input-label histdiv_space required">Provide any identifying information you have in relation to the complaint, such as case number, etc. :</label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="TextBox40" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>

                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <label class="input-label histdiv_space required">What is the current status of the complaint? </label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="TextBox41" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>

                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <label class="input-label histdiv_space required">Any other information that you would like to share with us :</label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="TextBox42" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>

                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <p class="histdiv_space">Please also provide copies of any documentation you have in relation to the complaint. </p>
                                                                                    </td>
                                                                                </tr>
                                                                                
                                                                            </table>
                                                                            

                                                                        <div class="histdiv">
                                                                            <table class="tblApplReqForm5" style="width: 100%;">
                                                                                <tr>
                                                                                    <td align="right">
                                                                                        <label class="input-label required">Document Name :</label></td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox6" CssClass="txtQestion1 aspNetDisabled" disabled runat="server"></asp:TextBox></td>
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
                                                                                            <th>Action</th>
                                                                                        </tr>
                                                                                        <tr class="bordrbtm gridrow">
                                                                                            <td class="InEditModetd">Driver's License
                                                                                            </td>

                                                                                            <td>01/01/2015
                                                                                            </td>
                                                                                            <td>
                                                                                                <a class="hyperlink" target="_blank" href="../../App_Themes/Public/images/Chrysanthemum.jpg">Document Details </a>
                                                                                            </td>
                                                                                            <td>
                                                                                                <span>
                                                                                                    <input id="Image3" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"
                                                                                                        type="image"></span>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </div>
                                                                        <table>
                                                                            <tr>
                                                                                <td><b style="line-height: 20px; width: 100%; margin-top: 14px; float: left; margin-bottom: 10px;">Failure to fully disclose requested information is a violation of the law and is considered an attempt to procure a certificate by fraud, misrepresentation, or mistake and is grounds for denial of certification or revocation of certification.</b></td>
                                                                            </tr>
                                                                        </table>
                                                                            </div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <b>4.</b>
                                                                </td>
                                                                <td style="padding-left: 0px; line-height: 20px; text-align: justify;">Are you aware of any complaints made against you to a business, or made to you directly, in relation to your conduct as a massage professional, or in relation to a massage therapy business you currently or in the past have owned or operated? 
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
                                                                        <div class="histdiv"  style="padding: 10px ! important;">
                                                                        <b style="float: left;">Note :</b><p style="float: left; padding-left: 5px;">You will <u>not</u> be able to enter information until you <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion4');" class="hyperlink">read the instructions.</a></p>
                                                                       <table style="width:100%;">
                                                                           <tr>
                                                                               <td colspan="4">
                                                                                   <p>Provide information for each incident. Use the ‘Add’ button for each additional incident :</p>
                                                                               </td>
                                                                           </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <asp:Button ID="Button7" Style="float:right; margin-right:15px;" CssClass="buttonGreen small" runat="server" Text="Add" />
                                                                                    </td>
                                                                                </tr>
                                                                           

                                                                           <tr>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label required">From Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox45" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label">To Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox59" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>

                                                                                </tr>

                                                                            

                                                                           <tr>
                                                                                <td colspan="4">
                                                                                    <span class="histdiv_space">Provide the location (name of business and address) where the incident that resulted in the complaint occurred, including identifying whether it occurred at a business that provides massage :</span>
                                                                                </td>
                                                                            </tr>


                                                                              <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">Location/Name of Business :</label>
                                                                                    </td>
                                                                                    <td colspan="3"><asp:TextBox ID="TextBox35" CssClass="txtQestion1 aspNetDisabled" disabled Width="485px" runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">Address :</label>
                                                                                    </td>
                                                                                    <td colspan="3"><asp:TextBox ID="TextBox36" CssClass="txtQestion1 aspNetDisabled" disabled Width="485px" runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">City : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox37" runat="server" Width="133px" CssClass="tooltip OnlyAlphabet calWidth txtQestion1 aspNetDisabled" disabled
                                                                                            MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">State : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="inputTextbox"
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
                                                                                        </asp:DropDownList></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt"> <label class="input-label required">Zip :</label></td>
                                                                                    <td><asp:TextBox ID="TextBox38" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                        CssClass="tooltip zip_us calWidth txtQestion1 aspNetDisabled" disabled Width="127px" MaxLength="500" title="Enter valid Zip eg: 
XXXXX-XXXX or XXXXX"></asp:TextBox></td>
                                                                                    <td colspan="2"></td>
                                                                                </tr>
                                                                           

                                                                           <tr>
                                                                                    <td class="txtalgnrgt"  colspan="3"><label class="input-label required">Massage provided at that location : </label></td>
                                                                                    <td class="txtalgnrgt"><asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="RadioButtonList6">
                                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                                <asp:ListItem>No</asp:ListItem>
                                                                            </asp:RadioButtonList></td>
                                                                                </tr>
                                                                           <tr>
                                                                                    <td class="txtalgnrgt"  colspan="3"><label class="input-label required">Was the incident related to massage services? </label></td>
                                                                                    <td class="txtalgnrgt"><asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="RadioButtonList9">
                                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                                <asp:ListItem>No</asp:ListItem>
                                                                            </asp:RadioButtonList></td>
                                                                                </tr>
                                                                           <tr>
                                                                                <td class="txtalgnrgt" colspan="4">
                                                                                    <label class="input-label histdiv_space required">Describe in your own words what happened :</label>
                                                                                </td>
                                                                               
                                                                            </tr>
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    <asp:TextBox ID="TextBox46" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                                        runat="server"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                           <tr>
                                                                                    <td colspan="4">
                                                                                        <span class="histdiv_space">Identify who made the complaint (for example – the client, the spouse of a client, the parent of a <label class="input-label required"> client, a neighbor, etc.) :</label></span>
                                                                                    </td>
                                                                                </tr>
                                                                           <tr>
                                                                                   <td colspan="4">
                                                                                         <asp:TextBox ID="TextBox7" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                           <tr>
                                                                                    <td colspan="4">
                                                                                        <span class="histdiv_space">Identify who the complaint was made against (for example – you, a massage professional working at<label class="input-label required"> your establishment, etc.) :</label></span>
                                                                                    </td>
                                                                                </tr>
                                                                           <tr>
                                                                               <td colspan="4">
                                                                                   <asp:TextBox ID="TextBox43" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                                       runat="server"></asp:TextBox>
                                                                               </td>
                                                                           </tr>
                                                                           <tr>
                                                                               <td colspan="4">
                                                                                   <span class="histdiv_space">Describe the nature of the complaint and provide a detailed description of the incident that resulted in the complaint including the<label class="input-label required"> date of the incident :</label></span>
                                                                               </td>
                                                                           </tr>

                                                                           <tr>
                                                                               <td class="txtalgnrgt" colspan="4">
                                                                                   <label class="input-label histdiv_space required">Nature of complaint : </label>
                                                                               </td>

                                                                           </tr>
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    <asp:TextBox ID="TextBox44" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                                        runat="server"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                        <span class="histdiv_space">What is the current status of the complaint including whether it has been resolved, and if so,<label class="input-label required"> how it was resolved :</label></span>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="TextBox51" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>

                                                                           <tr>
                                                                                    <td colspan="4">
                                                                                        <label class="input-label histdiv_space required">Any other information that you would like to share with us :</label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="TextBox52" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                           <tr>
                                                                               <td colspan="4"><label class="input-label histdiv_space">Please also provide copies of any documentation you have in relation to the complaint.</label></td>
                                                                           </tr>
                                                                           </table>
                                                                            <div class="histdiv">
                                                                            <table class="tblApplReqForm5" style="width: 100%;">
                                                                                <tr>
                                                                                    <td align="right">
                                                                                        <label class="input-label  required">Document Name :</label></td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox2" CssClass="txtQestion1 aspNetDisabled" disabled runat="server"></asp:TextBox></td>
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
                                                                                            <th>Action</th>
                                                                                        </tr>
                                                                                        <tr class="bordrbtm gridrow">
                                                                                            <td class="InEditModetd">Driver's License
                                                                                            </td>

                                                                                            <td>01/01/2015
                                                                                            </td>
                                                                                            <td>
                                                                                                <a class="hyperlink" target="_blank" href="../../App_Themes/Public/images/Chrysanthemum.jpg">Document Details </a>
                                                                                            </td>
                                                                                            <td>
                                                                                                <span>
                                                                                                    <input id="Image4" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"
                                                                                                        type="image"></span>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                           </div>
                                                                            <table>
                                                                            <tr>
                                                                                <td><b style="line-height: 20px; width: 100%; margin-top: 14px; float: left; margin-bottom: 10px;">Failure to fully disclose requested information is a violation of the law and is considered an attempt to procure a certificate by fraud, misrepresentation, or mistake and is grounds for denial of certification or revocation of certification.</b></td>
                                                                            </tr>
                                                                        </table>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <b>5.</b>
                                                                </td>
                                                                <td style="padding-left: 0px; line-height: 20px; text-align: justify;">Since the date you signed and dated your initial application for certification to CAMTC, have you had criminal charges ﬁled against you for penal code section 647(b) - Prostitution or any act punishable as a sexually related crime? 
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
                                                                       <div class="histdiv"  style="padding: 10px ! important;">
                                                                        <b style="float: left;">Note :</b><p style="float: left; padding-left: 5px;">You will <u>not</u> be able to enter information until you <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion2');" class="hyperlink">read the instructions.</a></p>
                                                                        <table style="width:100%;">
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    <p>Provide information for each incident. Use the ‘Add’ button for each additional incident:</p>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <asp:Button ID="Button5" Style="float:right; margin-right:15px;" CssClass="buttonGreen small" runat="server" Text="Add" />
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    <p>Provide the date of the incident(s) and conviction(s) :</p>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="txtalgnrgt" style="width: 195px;">
                                                                                    <label class="input-label required">Date of incident : </label>
                                                                                </td>
                                                                                <td colspan="3">
                                                                                    </td>
                                                                            </tr>
                                                                            <tr>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label required">From Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox1" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label">To Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox60" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>

                                                                                </tr>
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    <p>Provide the location where the incident took place :</p>

                                                                                </td>
                                                                            </tr>

                                                                            <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">Location/Name of Business :</label>
                                                                                    </td>
                                                                                    <td colspan="3"><asp:TextBox ID="TextBox48" CssClass="txtQestion1 aspNetDisabled" disabled Width="485px" runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">Address :</label>
                                                                                    </td>
                                                                                    <td colspan="3"><asp:TextBox ID="TextBox49" CssClass="txtQestion1 aspNetDisabled" disabled Width="485px" runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">City : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox50" runat="server" Width="133px" CssClass="tooltip OnlyAlphabet calWidth txtQestion1 aspNetDisabled" disabled
                                                                                            MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">State : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="inputTextbox"
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
                                                                                        </asp:DropDownList></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt"> <label class="input-label required">Zip :</label></td>
                                                                                    <td><asp:TextBox ID="TextBox74" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                        CssClass="tooltip zip_us calWidth txtQestion1 aspNetDisabled" disabled Width="127px" MaxLength="500" title="Enter valid Zip eg: 
XXXXX-XXXX or XXXXX"></asp:TextBox></td>
                                                                                    <td colspan="2"></td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td class="txtalgnrgt"  colspan="3"><label class="input-label required">Did the incident occur at a business that provides massage : </label></td>
                                                                                    <td class="txtalgnrgt"><asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="RadioButtonList10">
                                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                                <asp:ListItem>No</asp:ListItem>
                                                                            </asp:RadioButtonList></td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td class="txtalgnrgt"  colspan="3"><label class="input-label required">Was the incident related to massage services? </label></td>
                                                                                    <td class="txtalgnrgt"><asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="RadioButtonList11">
                                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                                <asp:ListItem>No</asp:ListItem>
                                                                            </asp:RadioButtonList></td>
                                                                                </tr>
                                                                            <tr>
                                                                                <td class="txtalgnrgt"   colspan="3">
                                                                                    <label class="input-label required">Date of conviction (if applicable) :</label>
                                                                                </td>
                                                                                <td>
                                                                                   </td>
                                                                            </tr>
                                                                            <tr>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label required">From Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox5" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label">To Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox81" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>

                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <label class="input-label required histdiv_space">List the specific charge(s) filed against you :</label>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="TextBox47" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <label class="input-label required histdiv_space">Identify the arresting agency :</label>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="TextBox75" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <label class="input-label required histdiv_space">Where is the court located or jurisdiction?</label>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="TextBox63" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <label class="input-label required histdiv_space">Any other information that you would like to share with us :</label>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <asp:TextBox ID="TextBox72" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <p class="histdiv_space">Please also provide copies of any documentation you have in relation to the action taken against you (for example – copies of administrative citations, judgments, receipts for fines paid, final decision letters from the agency that took action against you, etc.). </p>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        <div class="histdiv">
                                                                            <table class="tblApplReqForm5" style="width: 100%;">
                                                                                <tr>
                                                                                    <td align="right">
                                                                                        <label class="input-label required">Document Name :</label></td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox73" CssClass="txtQestion1 aspNetDisabled" disabled runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">
                                                                                            Document :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td colspan="2">
                                                                                        <asp:FileUpload ID="FileUpload5" runat="server" />
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <span class="fltlft">
                                                                                            <asp:Button ID="Button9" CssClass="buttonGreen small" runat="server" Text="Upload Document"
                                                                                                 />
                                                                                        </span>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <div id="div1" runat="server">
                                                                                <table class="index pdgnone brdr  grid" id="Table3" style="color: #333333; width: 90%; margin: 10px auto; border-collapse: collapse;"
                                                                                    cellpadding="5" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <th scope="col">Document Name
                                                                                            </th>

                                                                                            <th scope="col">Date
                                                                                            </th>
                                                                                            <th scope="col">Link
                                                                                            </th>
                                                                                            <th>Action</th>
                                                                                        </tr>
                                                                                        <tr class="bordrbtm gridrow">
                                                                                            <td class="InEditModetd">Driver's License
                                                                                            </td>

                                                                                            <td>01/01/2016
                                                                                            </td>
                                                                                            <td>
                                                                                                <a class="hyperlink" target="_blank" href="../../App_Themes/Public/images/Chrysanthemum.jpg">Document Details </a>
                                                                                            </td>
                                                                                            <td>
                                                                                                <span>
                                                                                                    <input id="Image6" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"
                                                                                                        type="image"></span>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </div>
                                                                        <table>
                                                                            <tr>
                                                                                <td><b style="line-height: 20px; width: 100%; margin-top: 14px; float: left; margin-bottom: 10px;">Failure to fully disclose requested information is a violation of the law and is considered an attempt to procure a certificate by fraud, misrepresentation, or mistake and is grounds for denial of certification or revocation of certification.</b></td>
                                                                            </tr>
                                                                        </table>
                                                                             </div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <b>6.</b>
                                                                </td>
                                                                <td style="padding-left: 0px; line-height: 20px; text-align: justify;">Have you ever been convicted of any criminal offense? (You need not disclose any marijuana- related offenses specified in the marijuana reform legislation and codiﬁed in the Health and Safety Code sections 11361.5 and 11361.7.) If “Yes," please explain fully as described in the instructions. ALL convictions MUST be reported even if they have been adjudicated, dismissed, or expunged. The definition of a “conviction" includes a plea of nolo contendere (no contest), as well as pleas or verdicts of guilty. You MUST include ALL convictions, including infractions, misdemeanor, and felony convictions. 
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
                                                                         <div class="histdiv"  style="padding: 10px ! important;">
                                                                        <b style="float: left;">Note :</b><p style="float: left; padding-left: 5px;">You will <u>not</u> be able to enter information until you <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion2');" class="hyperlink">read the instructions.</a></p>
                                                                        <table style="width:100%;">
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    <p>Provide information for each incident. Use the ‘Add’ button for each additional incident:</p>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <asp:Button ID="btnQu6Add" Style="float:right; margin-right:15px;" CssClass="buttonGreen small" runat="server" Text="Add" />
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    <p>Provide the date of the incident(s) and conviction(s) :</p>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="txtalgnrgt" style="width: 195px;">
                                                                                    <label class="input-label required">Date of incident : </label>
                                                                                </td>
                                                                                <td colspan="3">
                                                                                     </td>
                                                                            </tr>
                                                                            <tr>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label required">From Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox64" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label">To Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox65" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>

                                                                                </tr>
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    <p>Provide the location where the incident took place :</p>

                                                                                </td>
                                                                            </tr>

                                                                            <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">Location/Name of Business :</label>
                                                                                    </td>
                                                                                    <td colspan="3"><asp:TextBox ID="TextBox55" CssClass="txtQestion1 aspNetDisabled" disabled Width="485px" runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">Address :</label>
                                                                                    </td>
                                                                                    <td colspan="3"><asp:TextBox ID="TextBox56" CssClass="txtQestion1 aspNetDisabled" disabled Width="485px" runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">City : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="txtQ6City" runat="server" Width="133px" CssClass="tooltip OnlyAlphabet calWidth txtQestion1 aspNetDisabled" disabled
                                                                                            MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">State : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:DropDownList ID="ddlQ6State" runat="server" CssClass="inputTextbox"
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
                                                                                        </asp:DropDownList></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt"> <label class="input-label required">Zip :</label></td>
                                                                                    <td><asp:TextBox ID="txtQ6Zip" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                        CssClass="tooltip zip_us calWidth txtQestion1 aspNetDisabled" disabled Width="127px" MaxLength="500" title="Enter valid Zip eg: 
XXXXX-XXXX or XXXXX"></asp:TextBox></td>
                                                                                    <td colspan="2"></td>
                                                                                </tr>

                                                                            <tr>
                                                                                    <td class="txtalgnrgt"  colspan="3"><label class="input-label required">Did the incident occur at a business that provides massage : </label></td>
                                                                                    <td class="txtalgnrgt"><asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="rblQ6Inc">
                                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                                <asp:ListItem>No</asp:ListItem>
                                                                            </asp:RadioButtonList></td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td class="txtalgnrgt"  colspan="3"><label class="input-label required">Was the incident related to massage services? </label></td>
                                                                                    <td class="txtalgnrgt"><asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="rblQ6Service">
                                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                                <asp:ListItem>No</asp:ListItem>
                                                                            </asp:RadioButtonList></td>
                                                                                </tr>
                                                                            <tr>
                                                                                <td class="txtalgnrgt">
                                                                                    <label class="input-label required">Date of conviction : </label>
                                                                                </td>
                                                                                <td colspan="3">
                                                                                     </td>
                                                                            </tr>
                                                                            <tr>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label required">From Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox71" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label">To Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox76" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>

                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <label class="input-label required histdiv_space">List the specific charge(s) convicted of : </label>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="txtQ6ListofSpec" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <label class="input-label required histdiv_space">Identify the agency that took the action against you (city, county, state, etc) :</label>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="txtQ6Indentify" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                       <label class="input-label required histdiv_space">Where is the court located or jurisdiction?</label>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="txtQ6Locate" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <span class="histdiv_space">Describe the sanctions, penalties, or probationary terms imposed and completion dates.  Use the ‘Add’ button to list each sanction, penalty or probationary term imposed and the<label class="input-label required"> completion date separately :</label></span>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <asp:Button ID="btnQ6Add" Style="float: right; margin-right: 25px;" CssClass="buttonGreen small" runat="server" Text="Add" />
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td class="txtalgnrgt" style="width: 195px;">
                                                                                        <label class="input-label required">Terms imposed : </label>
                                                                                    </td>
                                                                                    <td colspan="3">
                                                                                        <asp:TextBox ID="txtQ6Term" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 462px; line-height: 18px; height: 60px;"
                                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td class="txtalgnrgt" style="width: 195px;">
                                                                                        <label class="input-label required">Completion date : </label>
                                                                                    </td>
                                                                                    <td colspan="3">
                                                                                        <asp:TextBox ID="txtQ6CompletionDate" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calender txtQestion1 aspNetDisabled" disabled></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    <table class="index pdgnone brdr  grid" id="gridQ6" style="color: #333333; width: 90%; margin: 10px auto; border-collapse: collapse;"
                                                                                        cellpadding="5" cellspacing="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <th scope="col">Terms Imposed</th>
                                                                                                <th scope="col">Completion Date</th>
                                                                                                <th style="text-align:center;">Action</th>
                                                                                            </tr>
                                                                                            <tr class="bordrbtm gridrow">
                                                                                                <td></td>
                                                                                                <td>01/01/2015</td>
                                                                                                <td class="txtalgnrgt" style="text-align:center;">
                                                                                                    <span>
                                                                                                        <input id="imgQ6Edit" title="Edit" class="imgDelete" src="../../App_Themes/Public/images/edit.png" type="image">
                                                                                                        <input id="imgQ6Del" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png" type="image">                                                                                                        
                                                                                                    </span>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table></td>
                                                                            </tr>
                                                                            
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <label class="input-label required histdiv_space">Any other information that you would like to share with us :</label>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <asp:TextBox ID="txtQ6Anyother" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <p class="input-label required histdiv_space">Please also provide copies of any documentation you have in relation to the action taken against you (for example – copies of administrative citations, judgments, receipts for fines paid, final decision letters from the agency that took action against you, etc.). </p>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        <div class="histdiv">
                                                                            <table class="tblApplReqForm5" style="width: 100%;">
                                                                                <tr>
                                                                                    <td align="right">
                                                                                        <label class="input-label required">Document Name :</label></td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="txtQ6DocName" CssClass="txtQestion1 aspNetDisabled" disabled runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">
                                                                                            Document :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td colspan="2">
                                                                                        <asp:FileUpload ID="FUQ6Doc" runat="server" />
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <span class="fltlft">
                                                                                            <asp:Button ID="btnHisQ6" CssClass="buttonGreen small" runat="server" Text="Upload Document"
                                                                                                OnClick="btnAddHist6_Click" />
                                                                                        </span>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <div id="divgvhist6" runat="server">
                                                                                <table class="index pdgnone brdr  grid" id="GridQ6DocName" style="color: #333333; width: 90%; margin: 10px auto; border-collapse: collapse;"
                                                                                    cellpadding="5" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <th scope="col">Document Name
                                                                                            </th>

                                                                                            <th scope="col">Date
                                                                                            </th>
                                                                                            <th scope="col">Link
                                                                                            </th>
                                                                                            <th>Action</th>
                                                                                        </tr>
                                                                                        <tr class="bordrbtm gridrow">
                                                                                            <td class="InEditModetd">Driver's License
                                                                                            </td>

                                                                                            <td>01/01/2016
                                                                                            </td>
                                                                                            <td>
                                                                                                <a class="hyperlink" target="_blank" href="../../App_Themes/Public/images/Chrysanthemum.jpg">Document Details </a>
                                                                                            </td>
                                                                                            <td>
                                                                                                <span>
                                                                                                    <input id="imgQ6DeleteDoc" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"
                                                                                                        type="image"></span>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </div>
                                                                        <table>
                                                                            <tr>
                                                                                <td><b style="line-height: 20px; width: 100%; margin-top: 14px; float: left; margin-bottom: 10px;">Failure to fully disclose requested information is a violation of the law and is considered an attempt to procure a certificate by fraud, misrepresentation, or mistake and is grounds for denial of certification or revocation of certification.</b></td>
                                                                            </tr>
                                                                        </table>
                                                                             </div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <b>7.</b>
                                                                </td>
                                                                <td style="padding-left: 0px; line-height: 20px; text-align: justify;">Are you now, or have you ever been, required to register as a Sex Offender in California or another state? 
                                                                </td>
                                                                <td align="left" class="cursorpointer" style="vertical-align: middle;">
                                                                    <asp:RadioButtonList ID="rblHistoryQ7" AutoPostBack="true" OnSelectedIndexChanged="rblHistoryQ7_SelectedIndexChanged"
                                                                        runat="server" RepeatDirection="Horizontal">
                                                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                                                        <asp:ListItem Value="0">No</asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="3">
                                                                    <div id="divhist7" runat="server" visible="false">
                                                                         <div class="histdiv"  style="padding: 10px ! important;">
                                                                        <b style="float: left;">Note :</b><p style="float: left; padding-left: 5px;">You will <u>not</u> be able to enter information until you <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion2');" class="hyperlink">read the instructions.</a></p>
                                                                        <table style="width:100%;">
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    <p>Provide information for each incident. Use the ‘Add’ button for each additional incident:</p>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <asp:Button ID="Button8" Style="float:right; margin-right:15px;" CssClass="buttonGreen small" runat="server" Text="Add" />
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    <p>Provide the date of the incident(s) and conviction(s) :</p>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="txtalgnrgt" style="width: 195px;">
                                                                                    <label class="input-label required">Date of incident : </label>
                                                                                </td>
                                                                                <td colspan="3">
                                                                                    </td>
                                                                            </tr>
                                                                            <tr>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label required">From Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox77" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label">To Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox78" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>

                                                                                </tr>
                                                                            <tr>
                                                                                <td colspan="4">
                                                                                    <p>Provide the location where the incident took place :</p>

                                                                                </td>
                                                                            </tr>

                                                                            <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">Location/Name of Business :</label>
                                                                                    </td>
                                                                                    <td colspan="3"><asp:TextBox ID="txtQ7Location" CssClass="txtQestion1 aspNetDisabled" disabled Width="485px" runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">Address :</label>
                                                                                    </td>
                                                                                    <td colspan="3"><asp:TextBox ID="txtQ7Address" CssClass="txtQestion1 aspNetDisabled" disabled Width="485px" runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">City : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="txtQ7City" runat="server" Width="133px" CssClass="tooltip OnlyAlphabet calWidth txtQestion1 aspNetDisabled" disabled
                                                                                            MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">State : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:DropDownList ID="ddlQ7State" runat="server" CssClass="inputTextbox"
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
                                                                                        </asp:DropDownList></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt"> <label class="input-label required">Zip :</label></td>
                                                                                    <td><asp:TextBox ID="txtQ7Zip" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                        CssClass="tooltip zip_us calWidth txtQestion1 aspNetDisabled" disabled Width="127px" MaxLength="500" title="Enter valid Zip eg: 
XXXXX-XXXX or XXXXX"></asp:TextBox></td>
                                                                                    <td colspan="2"></td>
                                                                                </tr>

                                                                            <tr>
                                                                                    <td class="txtalgnrgt"  colspan="3"><label class="input-label required">Did the incident occur at a business that provides massage : </label></td>
                                                                                    <td class="txtalgnrgt"><asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="rblQ7IcidentOC">
                                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                                <asp:ListItem>No</asp:ListItem>
                                                                            </asp:RadioButtonList></td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td class="txtalgnrgt"  colspan="3"><label class="input-label required">Was the incident related to massage services? </label></td>
                                                                                    <td class="txtalgnrgt"><asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="rblQ7Service">
                                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                                <asp:ListItem>No</asp:ListItem>
                                                                            </asp:RadioButtonList></td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <label class="histdiv_space input-label required">Describe in your own words what happened that led to your registration :</label>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="txtQ7DescribeWord" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                <td class="txtalgnrgt">
                                                                                    <label class="input-label required">Date of conviction : </label>
                                                                                </td>
                                                                                <td colspan="3">
                                                                                    </td>
                                                                            </tr>
                                                                            <tr>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label required">From Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox79" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>
                                                                                    <td class="txtalgnrgt" style="width:170px;">
                                                                                        <label class="input-label">To Date : </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox80" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calendertxtQestion1 aspNetDisabled" disabled></asp:TextBox>

                                                                                    </td>

                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <label class="input-label required histdiv_space">List the specific charge(s) convicted of : </label>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="txtQ7ListSpecific" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <label class="histdiv_space input-label required">Identify the agency that took the action against you (city, county, state, etc) :</label>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="txtQ7Indentify" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <label class="input-label required histdiv_space">Where is the court located for the underlying conviction?</label>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                         <asp:TextBox ID="txtQ7CourtLoc" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td class="txtalgnrgt"  colspan="3"><label class="input-label required">Is this a lifetime registration?</label></td>
                                                                                    <td class="txtalgnrgt"><asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="rblLifetimeReg">
                                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                                <asp:ListItem>No</asp:ListItem>
                                                                            </asp:RadioButtonList></td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <p class="histdiv_space">List all locations, dates and periods of registration below. Use the 'Add' butoon for each registration :</p>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <asp:Button ID="btntxtQ7Add" Style="float: right; margin-right: 25px;" CssClass="buttonGreen small" runat="server" Text="Add" />
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td class="txtalgnrgt" style="width: 195px;">
                                                                                        <label class="input-label required">Location of registration :</label>
                                                                                    </td>
                                                                                    <td colspan="3">
                                                                                        <asp:TextBox ID="txtQ7Term" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 462px; line-height: 18px; height: 60px;"
                                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td class="txtalgnrgt" style="width: 195px;">
                                                                                        <label class="input-label required">Registration date :</label>
                                                                                    </td>
                                                                                    <td colspan="3">
                                                                                        <asp:TextBox ID="txtQ7Com" Width="85px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calender txtQestion1 aspNetDisabled" disabled></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td class="txtalgnrgt" style="width: 195px;">
                                                                                        <label class="input-label required">Registration period :</label>
                                                                                    </td>
                                                                                    <td colspan="3">
                                                                                        <asp:TextBox ID="TextBox12" runat="server" CssClass="inputTextbox calender txtQestion1 aspNetDisabled" disabled></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            <table class="index pdgnone brdr  grid" id="gridQ7" style="color: #333333; width: 90%; margin: 10px auto; border-collapse: collapse;"
                                                                                        cellpadding="5" cellspacing="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <th scope="col">Location of registration</th>
                                                                                                <th scope="col">Registration date</th>
                                                                                                <th scope="col">Registration period</th>
                                                                                                <th style="text-align: center;">Action</th>
                                                                                            </tr>
                                                                                            <tr class="bordrbtm gridrow">
                                                                                                <td></td>
                                                                                                <td>01/01/2015</td>
                                                                                                <td></td>
                                                                                                <td class="txtalgnrgt" style="text-align: center;">
                                                                                                    <span>
                                                                                                        <input id="imgEditQ7" title="Edit" class="imgDelete" src="../../App_Themes/Public/images/edit.png" type="image">
                                                                                                        <input id="imgDeleteQ7" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png" type="image">                                                                                                        
                                                                                                    </span>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <label class="input-label required histdiv_space">Any other information that you would like to share with us :</label>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <asp:TextBox ID="txtQ7AnyotherRel" CssClass="txtQestion1 aspNetDisabled" disabled TextMode="MultiLine" Style="width: 656px; line-height: 18px; height: 60px;"
                                                                                            runat="server"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            <tr>
                                                                                    <td colspan="4">
                                                                                        <p class="histdiv_space">Please also provide copies of any documentation you have in relation to the action taken against you (for example – copies of administrative citations, judgments, receipts for fines paid, final decision letters from the agency that took action against you, etc.). </p>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        <div class="histdiv">
                                                                            <table class="tblApplReqForm5" style="width: 100%;">
                                                                                <tr>
                                                                                    <td align="right">
                                                                                        <label class="input-label required">Document Name :</label></td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="txtQ7DocName" CssClass="txtQestion1 aspNetDisabled" disabled runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">
                                                                                            Document :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td colspan="2">
                                                                                        <asp:FileUpload ID="fileQ7Doc" runat="server" />
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <span class="fltlft">
                                                                                            <asp:Button ID="btntxtQ7UploadDoc" CssClass="buttonGreen small" runat="server" Text="Upload Document"
                                                                                                 />
                                                                                        </span>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <div id="div3" runat="server">
                                                                                <table class="index pdgnone brdr  grid" id="GridtxtQ7Document" style="color: #333333; width: 90%; margin: 10px auto; border-collapse: collapse;"
                                                                                    cellpadding="5" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <th scope="col">Document Name
                                                                                            </th>

                                                                                            <th scope="col">Date
                                                                                            </th>
                                                                                            <th scope="col">Link
                                                                                            </th>
                                                                                            <th>Action</th>
                                                                                        </tr>
                                                                                        <tr class="bordrbtm gridrow">
                                                                                            <td class="InEditModetd">Driver's License
                                                                                            </td>

                                                                                            <td>01/01/2016
                                                                                            </td>
                                                                                            <td>
                                                                                                <a class="hyperlink" target="_blank" href="../../App_Themes/Public/images/Chrysanthemum.jpg">Document Details </a>
                                                                                            </td>
                                                                                            <td>
                                                                                                <span>
                                                                                                    <input id="imgDocQ7Del" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"
                                                                                                        type="image"></span>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </div>
                                                                        <table>
                                                                            <tr>
                                                                                <td><b style="line-height: 20px; width: 100%; margin-top: 14px; float: left; margin-bottom: 10px;">Failure to fully disclose requested information is a violation of the law and is considered an attempt to procure a certificate by fraud, misrepresentation, or mistake and is grounds for denial of certification or revocation of certification.</b></td>
                                                                            </tr>
                                                                        </table>
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
                                                        <td style="width: 600px; padding-left: 0px; line-height: 20px; text-align: justify;">
                                                            <p style="padding-bottom: 10px;">
                                                                                <label class="input-label required">
                                                                                    I,</label>
                                                                                <asp:TextBox ID="txtAffidavitApplicantName" Text="Nancy Blachly" runat="server"></asp:TextBox>
                                                                                ("the Certiﬁcate Holder") hereby declare and reaffirm that, except for the new information
                                                                                        contained herein or attached hereto, the information contained in my initial CAMTC
                                                                                        application is still true and correct and I did not omit any relevant information
                                                                                        in my initial CAMTC application or this application.
                                                                            </p>
                                                        </td>
                                                        <td align="right" style="width: 60px; vertical-align: middle;" class="cursorpointer">
                                                            <asp:CheckBox Text="Yes" ID="AffQ1" runat="server" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged" />
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
                                                                                        or revocation of my Certificate.
                                                                            </p>
                                                        </td>
                                                        <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                                            <asp:CheckBox Text="Yes" ID="AffQ2" runat="server" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                                            <p style="padding-bottom: 10px;">
                                                                I understand that it is my responsibility by law to provide CAMTC with any change
                                                                        of home address, change of business address(es), change of primary email address,
                                                                        and addition of business address(es) within 30 days of any such change or additions,
                                                                        and that failure to report such changes or additions in a timely manner to CAMTC
                                                                        may result in disciplinary action by CAMTC including but not limited to denial,
                                                                        suspension, or revocation of my certificate.
                                                            </p>
                                                        </td>
                                                        <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                                            <asp:CheckBox Text="Yes" ID="AffQ3" runat="server" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged" />
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
                                                            <asp:CheckBox Text="Yes" ID="AffQ4" runat="server" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                                            <p style="padding-bottom: 10px;">
                                                                I hereby authorize Law Enforcement Agencies (LEA), government agencies, and other
                                                                        massage related entities to release my records to CAMTC upon request and I hereby
                                                                        authorize CAMTC to share all information about me, whether provided by me or others,
                                                                        including personal information, with LEA, government agencies, and other massage
                                                                        related entities upon request. (Note: we will not sell or release personal information
                                                                        for marketing purposes).
                                                            </p>
                                                        </td>
                                                        <td align="right" style="vertical-align: middle;" class="cursorpointer">
                                                            <asp:CheckBox Text="Yes" ID="AffQ5" runat="server" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged" />
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
                                                                        not waive my responsibility to submit a fully completed application for re-certiﬁcation
                                                                        and ensure that it is received before my current certificate expires. I further
                                                                        understand that failure to submit a fully completed application for re-certification
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
                                                            <asp:CheckBox Text="Yes" ID="AffQ6" runat="server" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged" />
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
                                                            <asp:CheckBox Text="Yes" ID="AffQ7" runat="server" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged" />
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
                                                            <asp:CheckBox Text="Yes" ID="AffQ8" runat="server" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged" />
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
                                                            <asp:CheckBox Text="Yes" ID="AffQ9" runat="server" AutoPostBack="true" OnCheckedChanged="chkAffidavit_OnCheckedChanged" />
                                                        </td>
                                                    </tr>
                                                </table>
                                                <div>
                                                    <%--                                                            <div class="fltlft" style="width : 65%;">
                                                                <table>
                                                                    <tr>
                                                                        <td style=" padding-left : 0px; line-height : 20px; text-align : justify;">
                                                                            <p style="padding-bottom : 10px;">
                                                                                I HAVE READ, UNDERSTAND, AND AGREE TO COMPLY WITH THE STATUTES AND RULES APPLICABLE
                                                                                TO THE PRACTICE OF MY PROFESSION IN CALIFORNIA.
                                                                            </p>
                                                                        </td>
                                                                        <td align="center" style="vertical-align : middle; width : 50px;" class="cursorpointer">
                                                                            <asp:CheckBox Text="Yes" ID="AffQ10" runat="server" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style=" padding-left : 0px; line-height : 20px; text-align : justify;">
                                                                            <p style="padding-bottom : 10px;">
                                                                                I understand that my Application Fee is non-refundable regardless of the ultimate
                                                                                disposition of my application.
                                                                            </p>
                                                                        </td>
                                                                        <td align="center" style="vertical-align : middle;" class="cursorpointer">
                                                                            <asp:CheckBox Text="Yes" ID="AffQ11" runat="server" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style=" padding-left : 0px; line-height : 20px; text-align : justify;">
                                                                            <p style="padding-bottom : 10px;">
                                                                                I understand that if my Application is not complete, it will be purged 1 year after
                                                                                the last date of activity and after a reminder to my stated email and home addresses
                                                                                have been sent by CAMTC. Once it is purged, I understand that I will need to start
                                                                                the entire process over, including paying the $150 application fee. submitting Live
                                                                                Scan prints, securing official transcript(s), etc.
                                                                            </p>
                                                                        </td>
                                                                        <td align="center" style="vertical-align : middle;" class="cursorpointer">
                                                                            <asp:CheckBox Text="Yes" ID="AffQ12" runat="server" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                            <div class="fltrt" style="width : 34%;">
                                                                <div style="border : 1px solid #ddd;">
                                                                    <p style="font-size : 16px; padding : 4px; text-align : center;">
                                                                        <b>PLEASE TAPE YOUR 2" x 2" RECENT PASSPORT PHOTO HERE</b>
                                                                    </p>
                                                                    <br />
                                                                    <p style="font-size : 14px; padding : 4px; text-align : center;">
                                                                        Use one small piece of double- sided tape on the back of your photo and please remember
                                                                        to print your Name and Driver's License Number on the back of your photo.</p>
                                                                </div>
                                                            </div>--%>
                                                    <div>
                                                        <table width="100%">
                                                            <tr>
                                                                <td align="right">
                                                                    <label class="input-label required">
                                                                        Signature :</label>
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
                                    <asp:Literal ID="ltrRePaymentError" runat="server"></asp:Literal>
                                    <asp:UpdatePanel runat="server" ID="WaiverUpdate">
                                        <ContentTemplate>
                                            <asp:Panel ID="pnlApprovedCivilApp" runat="server">
                                                <div>
                                                    <p class="HeaddingMain">
                                                        <span class="HeaddingMainSpn">Payment</span>
                                                    </p>
                                                </div>
                                                <fieldset class="flsNewApplReqForm flsNCBTMBEI">
                                                    <div>
                                                        <div>
                                                            <p>
                                                                <b>Recertification Fee (includes ONE original CAMTC certificate) : $150.00 </b>
                                                                <br />
                                                                (By law you must display an original CAMTC certiﬁcate at each business location
                                                                where you provide massage for compensation.)
                                                            </p>
                                                            <br />
                                                                            <p>I understand that my Application Fee is non-refundable regardless of the ultimate disposition of my application.</p>
                                                                            <br />
                                                        </div>
                                                    </div>
                                                    <table class="tblApplReqForm5">
                                                        <tr>
                                                            <td align="right">
                                                                <label class="input-label required">
                                                                    Payment Method :</label>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="ddlPaymentMethod" AutoPostBack="true" runat="server" Style="width: 181px; margin-left: 11px; height: 27px;"
                                                                    OnSelectedIndexChanged="ddlPaymentMethod_SelectedIndexChanged">
                                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                    <asp:ListItem Value="1">Check</asp:ListItem>
                                                                    <asp:ListItem Value="2">Money Order</asp:ListItem>
                                                                    <asp:ListItem Value="3">Credit / Debit Card</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                                <label class="input-label required">
                                                                    Recertification Fees :</label>
                                                            </td>
                                                            <td>$&nbsp;<asp:TextBox ID="RetxtApplicationFees" CssClass="inputTextbox" runat="server"
                                                                Text="150" Enabled="false"></asp:TextBox>
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
                                                            <td>$&nbsp;<asp:TextBox ID="txtFeeForAdditional" CssClass="inputTextbox" runat="server"
                                                                Enabled="false"></asp:TextBox>
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
                                                    <div style="float: left;">
                                                    </div>
                                                    <span class="fltrt">
                                                        <asp:Button ID="btnSubmit" CssClass="buttonGreen medium" runat="server" Text="Save & Next"
                                                            ValidationGroup="VGApplicationWaiver" OnClick="btnSaveNextPayment_Click" CausesValidation="true" />
                                                        <asp:Button ID="btnSaveNextPayment" CssClass="buttonGreen medium" runat="server"
                                                            Text="Submit & Pay" Visible="false" OnClick="btnSaveNextCivilAppWaiver_Click"
                                                            ValidationGroup="VGApplicationWaiver" CausesValidation="true" />
                                                        <asp:LinkButton ID="btnSaveNextCivilAppWaiverCancel" CssClass="secondary medium bottom buttonalignment"
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
                                                            Items 1 & 3 may be required by some applicants (please see instructions). Item 2 is required from <u>ALL APPLICANTS.</u>
                                                        </p>
                                                        <div>
                                                            <ul style="list-style-type: decimal;" class="cursorpointer mrglft4">
                                                                <li>
                                                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="PHOTO. Recent Passport Photo (less than 60 days old) uploaded with the application." />
                                                                </li>
                                                                <li>
                                                                    <asp:CheckBox ID="CheckBox2" runat="server" Text="FEE. Online credit card payment (check or money order accepted—made out and mailed to ‘CAMTC’) in the amount  of $150.00 (plus an additional $15 for EACH additional original certificate requested)." />
                                                                </li>
                                                                <li>
                                                                    <asp:CheckBox ID="CheckBox3" runat="server" Text="DOCUMENTATION. Supporting Documentation uploaded with the application as needed for questions 1, 2, 3, 4, 5 and 6 (of the Applicant History Section)" />
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <div>
                                                                <p style="text-align: justify;">
                                                                    All recertifications, supporting documentation and credit card payments may be submitted online for immediate processing. If you prefer, you may mail this application for recertification including check or money order for all fees and any supporting documentation to :
                                                                </p>
                                                            </div>
                                                            <div>
                                                                <p style="text-align: center;">
                                                                    <b>California Massage Therapy Council
                                                                        <br />
                                                                        One Capitol Mall, Suite 800 
                                                                        <br />
                                                                        Sacramento, CA 95814 </b>
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
                    </div>
                </div>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
