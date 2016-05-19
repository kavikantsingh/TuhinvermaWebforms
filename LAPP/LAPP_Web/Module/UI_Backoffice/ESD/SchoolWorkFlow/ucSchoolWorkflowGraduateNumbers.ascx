<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucSchoolWorkflowGraduateNumbers.ascx.cs" Inherits="Module_UI_Backoffice_ESD_SchoolWorkFlow_ucSchoolWorkflowGraduateNumbers" %>
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
<script>
    //    $(function () {
    //        AllRadioCheck();
    //    });
    //    function AllRadioCheck() {
    //        $('input[type="radio"]').each(function () {
    //            alert('hi');
    //            $(this).change(function () {
    //                RadioCheck1();

    //            });
    //        });
    //    }
    //    function RadioCheck1() {
    //        $('#rblHistoryQ1 input').click(function () {
    //            var value = $('#rblHistoryQ1 input:checked').val();
    //            if (value == 1) {
    //                document.getElementById("hist1").style.display = "block";
    //            }
    //            if (value == 0) {
    //                document.getElementById("hist1").style.display = "none";
    //            }
    //        });
    //    }


    <%-- function changeItemState() {
        rb = document.getElementById("<%= rblQuestionEdit1.ClientID %>");

        var rbItems = rb.getElementsByTagName('input');

        for (var itemIndex = 0; itemIndex < rbItems.length; itemIndex++) {
            rbItems[itemIndex].disabled = false;
        }
    }--%>
</script>
<style type="text/css">
    @-moz-document url-prefix() {
        .expinputfirefox {
            color: red;
        }

        .mozillapdgnone tr th {
            height: 0px !important;
        }
    }
</style>
<style>
    .listbox {
        width: 215px;
        height: 170px;
        overflow-x: hidden;
        overflow-y: scroll;
        border: 1px solid #ddd;
        padding: 8px;
    }

    .mrglft4 label {
        margin-left: 4px;
    }

    .grid-header-other-name .index tr th {
        height: 25px !important;
        padding: 0px 0px 0px 3px !important;
        line-height: 25px;
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

        .history .tblApplReqForm5 td:last-child {
            vertical-align: middle !important;
        }

    table#ContentPlaceHolder1_ucCertificationApplication1_rblGenderEdit td {
        padding: 0px !important;
    }

    .mrgnto16 {
        margin-top: -14px;
    }

    .error_header {
        width: 93%;
        line-height: 20px;
        margin: 0px 11px 0px 6px;
        padding: 16px 0px 11px 21px;
    }

    .address-box {
        position: relative;
        top: 2px;
        z-index: 1;
        color: #000;
        background: transparent -moz-linear-gradient(center top, #FCDCDE, #F3D5D6) repeat scroll 0% 0%;
        animation: 1.5s ease 0s normal none infinite running msg-error-pulse;
        box-shadow: 0px 1px 0px #F7FEF2 inset, 0px 1px 0px #DADEE1;
        border-radius: 5px;
        border: 1px solid #F9AFB4;
        padding-left: 10px;
        padding-right: 10px;
        padding-top: 5px;
        padding-bottom: 10px;
    }

        .address-box span {
            color: rgb(240, 29, 32);
            text-align: left;
            font-size: 13px;
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
    .dvuploadgrid {
        margin-top: 10px;
        margin-bottom: 10px;
        float: left;
        width: 100%;
    }

    .dvuploadclass {
        float: right;
        margin-top: 3px;
        margin-right: 109px;
    }

    .readinstrucn {
        padding-left: 20px;
        margin-bottom: 20px;
        margin-top: 20px;
    }

        .readinstrucn label {
            padding-left: 3px;
        }

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

    .pdgnone td {
        padding: 0px 0px 0px !important;
    }

    .tableborder_trcschk {
    }

        .tableborder_trcschk tr {
        }

        .tableborder_trcschk td {
            border: 1px solid #DEDEDE;
            padding: 5px;
        }
</style>
<script>
    function showdetails() {
        var dive = document.getElementById("showdetils1");
        var dive2 = document.getElementById("showdetils2");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
        dive2.style.display = (dive2.style.display == "none") ? "block" : "none";
    }


    function studentlistF1() {
        var dive = document.getElementById("paneltranscriptcamtc");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }

    function studentlistF2() {
        var dive2 = document.getElementById("Lasthiperlink");
        dive2.style.display = (dive2.style.display == "none") ? "block" : "none";
    }



</script>
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

                                                        <li runat="server" clientidmode="Static" class="actived" id="liSection3">
                                                            <asp:Button ID="btnSection3" runat="server" Text="About the School" CssClass="btnlimenu"
                                                                OnClick="btnSection3_Click" />
                                                            <span class="spnStatusImage statusimgalgn">
                                                                <asp:ImageButton ID="imgSection3" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                                    ImageUrl="~/App_Themes/Theme1/images/button_cross.png" OnClick="btnSection3_Click" /></span>
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
                    <asp:Panel ID="pnlSection3" runat="server">
                        <asp:UpdatePanel runat="server" ID="upSection2">
                            <ContentTemplate>
                                <asp:Panel ID="pnlApprovedSection3" runat="server">
                                    <div>
                                        <div class="sectionDiv">
                                            <span>About the School </span>
                                        </div>
                                        <asp:UpdatePanel ID="upLicenseInfo" runat="server">
                                            <ContentTemplate>
                                                <fieldset class="flsNewApplReqForm flsNewApplReqForm3" style="text-align: justify;">
                                                    <table class="tblApplReqForm5">
                                                        <tr>
                                                            <td style="width: 100%; line-height: 20px;">
                                                                <b style="float: left;">1. NUMBER OF GRADUATES</b></br>
                                                                            <p style="padding-left: 50px; width: 85%;">
                                                                                Please list the TOTAL number of graduates from ALL massage programs for which the school 
                                                                                seeks approval. Do not include continuing education classes or other programs. 
                                                                                Put “0” if the program is new or had no graduates.  Enter ‘Data Unavailable’ if applicable.

                                                                            </p>
                                                            </td>
                                                            <td style="width: 545px; padding-left: 0px; line-height: 18px; text-align: justify;"></td>

                                                        </tr>

                                                    </table>
                                                    <table>
                                                        <tr style="height: 15px; width: 100%; float: left;"></tr>

                                                    </table>
                                                    <table style="margin-left: 50px;">

                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label">
                                                                    Estimated Graduates for 2016 Calendar Year :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtGradYear" runat="server" Width="100px" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                                    MaxLength="150"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr style="height: 10px; width: 100px;"></tr>
                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label">
                                                                    Graduates from 2015 Calendar Year :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtGradYear_1" runat="server" Width="100px" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                                    MaxLength="150"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr style="height: 10px; width: 100px;"></tr>
                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label">
                                                                    Graduates from 2014 Calendar Year :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtGradYear_2" runat="server" Width="100px" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                                    MaxLength="150"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr style="height: 10px; width: 100px;"></tr>
                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label">
                                                                    Graduates from 2013 Calendar Year :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtGradYear_3" runat="server" Width="100px" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                                    MaxLength="150"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr style="height: 10px; width: 100px;"></tr>
                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label">
                                                                    Graduates from 2012 Calendar Year :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtGradYear_4" runat="server" Width="100px" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                                    MaxLength="150"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr style="height: 10px; width: 100px;"></tr>
                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label">
                                                                    Graduates from 2011 Calendar Year :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtGradYear_5" runat="server" Width="100px" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                                    MaxLength="150"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr style="height: 10px; width: 100px;"></tr>
                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label">
                                                                    Graduates from 2010 Calendar Year :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtGradYear_6" runat="server" Width="100px" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                                    MaxLength="150"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr style="height: 10px; width: 100px;"></tr>
                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label">
                                                                    Graduates from 2009 Calendar Year :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtGradYear_7" runat="server" Width="100px" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                                    MaxLength="150"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table>
                                                        <tr style="height: 15px; width: 100%; float: left;"></tr>
                                                    </table>

                                                    <table class="index brdr grid" border="1" cellspacing="0" cellpadding="5" id="abouteGRADUATES"
                                                        style="width: 68%; margin-left: 50px; border: 1px solid rgb(221, 221, 221);">
                                                        <tbody>
                                                            <tr>
                                                                <th style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Year
                                                                </th>
                                                                <th style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Estimated
                                                                </th>
                                                                <th style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Year
                                                                </th>
                                                                <th style="padding-left: 0px; text-align: center;">Actual
                                                                </th>
                                                            </tr>
                                                            <tr>
                                                                <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">2016
                                                                </td>
                                                                <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">79
                                                                </td>
                                                                <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">2015
                                                                </td>
                                                                <td align="center" valign="middle" style="padding-top: 0px ! important; width: 60px;">62                                                                                      
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">2015
                                                                </td>
                                                                <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">80
                                                                </td>
                                                                <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">2014
                                                                </td>
                                                                <td align="center" valign="middle" style="padding-top: 0px ! important; width: 60px;">37                                                                                      
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table>
                                                        <tr style="height: 15px; width: 100%; float: left;"></tr>
                                                    </table>
                                                    <table>
                                                        <tr>
                                                            <td><b>2. TYPE OF BUSINESS ORGANIZATION</b></td>

                                                        </tr>

                                                    </table>
                                                    <table style="margin-left: 50px; margin-top: 15px; margin-bottom: 15px;">

                                                        <tr>
                                                            <td>
                                                                <div class="listbox" style="height: auto;">
                                                                    <asp:CheckBoxList ID="cblBussOrg" Style="line-height: 20px; width: 300px;" runat="server"
                                                                        CssClass="pdgnone">
                                                                        <asp:ListItem Value="0">Individual</asp:ListItem>
                                                                        <asp:ListItem Value="1">Married Couple</asp:ListItem>
                                                                        <asp:ListItem Value="2">Partnership</asp:ListItem>
                                                                        <asp:ListItem Value="3">For Profit Corporation</asp:ListItem>
                                                                        <asp:ListItem Value="4">Non-Profit Corporation</asp:ListItem>
                                                                        <asp:ListItem Value="5">Limited Liability Corporation</asp:ListItem>
                                                                        <asp:ListItem Value="6">Public Institution</asp:ListItem>
                                                                    </asp:CheckBoxList>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div class="divLicenseInfo" id="dvAboutOwnershipUpSection" runat="server" style="margin-top: 30px;">

                                                        <p class="addNewDiv">
                                                            <span>Proof of Ownership</span>
                                                        </p>

                                                        <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left: 10px;">
                                                            <tr style="line-height: 20px;">
                                                                <td colspan="4">
                                                                    <label>
                                                                        Please provide all documents, as directed by the Policies and Procedures for 
                                                                                    Approval of Schools, that support Proof of Ownership.
                                                                    </label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txtalgnrgt">
                                                                    <label class="input-label required">
                                                                        Document Name :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtDocNameAboutOwnership" runat="server"></asp:TextBox>
                                                                </td>
                                                                <td class="txtalgnrgt">
                                                                    <label class="input-label required">
                                                                        Document Type :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <asp:DropDownList ID="ddlOwnAboutOwnership" runat="server" CssClass="inputTextbox">
                                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                        <asp:ListItem Value="1">Articles of incorporation</asp:ListItem>
                                                                        <asp:ListItem Value="2">Partnership Agreement</asp:ListItem>
                                                                        <asp:ListItem Value="3">Contract</asp:ListItem>
                                                                        <asp:ListItem Value="4">CA STD 204</asp:ListItem>
                                                                        <asp:ListItem Value="5">EIN certificate from the IRS</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txtalgnrgt">
                                                                    <label class="input-label required">
                                                                        Document :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <asp:FileUpload ID="DocFUAboutOwnership" runat="server" />
                                                                </td>
                                                                <td colspan="3">
                                                                    <asp:Button ID="btnUploadAboutOwnership" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                <td></td>
                                                            </tr>
                                                        </table>

                                                        <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                            <span class="fltrt">
                                                                <asp:Button ID="btnSaveAboutOwnership" CssClass="buttonGreen medium"
                                                                    runat="server" Text="Save" CausesValidation="true" />
                                                                <asp:LinkButton ID="lblCancelAboutOwnership" CssClass="secondary medium bottom buttonalignment"
                                                                    runat="server">Cancel</asp:LinkButton></span>
                                                        </div>

                                                    </div>

                                                    <div class="divLicenseInfo" id="dvAboutBusinessDocUpSection" runat="server" style="margin-top: 30px; margin-bottom: 30px;">

                                                        <p class="addNewDiv">
                                                            <span>Proof of Business Operations</span>
                                                        </p>

                                                        <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left: 10px;">
                                                            <tr style="line-height: 20px;">
                                                                <td colspan="4">
                                                                    <label>
                                                                        Please provide all documents, as directed by the Policies and Procedures for 
                                                                                    Approval of Schools, that support Proof of Business Operations.
                                                                    </label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left: 10px; border: 1px solid rgb(222, 222, 222);">
                                                            <tr>
                                                                <td class="txtalgnrgt">
                                                                    <label class="input-label required">
                                                                        Lease/Deed :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtDocNameAboutBusinessDoc" runat="server"></asp:TextBox>
                                                                </td>
                                                                <td class="txtalgnrgt" style="width: 107px;">
                                                                    <label class="input-label required">
                                                                        Document Type :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <asp:DropDownList ID="ddlOwnAboutBusinessDoc" runat="server" AutoPostBack="true" CssClass="inputTextbox">
                                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                        <asp:ListItem Value="1">Lease</asp:ListItem>
                                                                        <asp:ListItem Value="2">Deed</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>

                                                            <tr>
                                                                <td class="txtalgnrgt" style="padding-bottom: 15px ! important; width: 128px;">
                                                                    <label class="input-label required">
                                                                        Document :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <asp:FileUpload ID="DocFUAboutBusinessDoc" runat="server" />
                                                                </td>
                                                                <td>
                                                                    <asp:Button ID="btnUploadAboutBusinessDoc" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="4">
                                                                    <table class="index vlign  grid" id="gvUploadApplicant" style="color: #333333; margin-left: 6px; border: 1px solid rgb(222, 222, 222); margin-bottom: 10px; width: 98%; border-collapse: collapse;"
                                                                        cellpadding="5" cellspacing="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <th scope="col">Document Type</th>
                                                                                <th scope="col">Document Name</th>
                                                                                <th scope="col">Document Link</th>
                                                                                <th scope="col" style="width: 6%;" align="center">Action</th>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="width: 200px;">Document Type1
                                                                                </td>
                                                                                <td style="width: 148px;">DocumentDemo.txt
                                                                                </td>

                                                                                <td style="width: 145px;">
                                                                                    <a id="hlkURL" class="documentdetail" href="#" target="_blank">Document Detail </a>

                                                                                </td>
                                                                                <td class="vligntop" align="center">
                                                                                    <span class="fltrt" style="margin-right: 20px;">
                                                                                        <div style="width: 20px; display: inline-block">
                                                                                            <asp:ImageButton ID="ImageButton55" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                                                CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png" />

                                                                                        </div>
                                                                                    </span>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left: 10px; border: 1px solid rgb(222, 222, 222);">
                                                            <tr>
                                                                <td class="txtalgnrgt" style="padding-bottom: 15px ! important; width: 195px;">
                                                                    <label class="input-label">
                                                                        Property Tax Bill :
                                                                    </label>
                                                                </td>
                                                                <td style="width: 182px;">
                                                                    <asp:FileUpload ID="FileUpload79" runat="server" />
                                                                </td>
                                                                <td colspan="3">
                                                                    <asp:Button ID="Button87" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                <td></td>
                                                            </tr>
                                                        </table>
                                                        <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left: 10px; border: 1px solid rgb(222, 222, 222);">
                                                            <tr>
                                                                <td class="txtalgnrgt" style="padding-bottom: 15px ! important; width: 195px;">
                                                                    <label class="input-label required">
                                                                        Local Business License :
                                                                    </label>
                                                                </td>
                                                                <td style="width: 182px;">
                                                                    <asp:FileUpload ID="FileUpload81" runat="server" />
                                                                </td>
                                                                <td colspan="3">
                                                                    <asp:Button ID="Button90" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                <td></td>
                                                            </tr>
                                                        </table>
                                                        <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left: 10px; border: 1px solid rgb(222, 222, 222);">
                                                            <tr>
                                                                <td class="txtalgnrgt" style="width: 195px; padding-bottom: 15px ! important;">
                                                                    <label class="input-label">
                                                                        DBA/Fictious Business Name :
                                                                    </label>
                                                                </td>
                                                                <td style="width: 182px;">
                                                                    <asp:FileUpload ID="FileUpload82" runat="server" />
                                                                </td>
                                                                <td colspan="3">
                                                                    <asp:Button ID="Button91" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                <td></td>
                                                            </tr>
                                                        </table>
                                                        <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left: 10px; border: 1px solid rgb(222, 222, 222);">
                                                            <tr>
                                                                <td class="txtalgnrgt" style="padding-bottom: 15px ! important; width: 195px;">
                                                                    <label class="input-label required">
                                                                        Organizational Chart :
                                                                    </label>
                                                                </td>
                                                                <td style="width: 182px;">
                                                                    <asp:FileUpload ID="FileUpload83" runat="server" />
                                                                </td>
                                                                <td colspan="3">
                                                                    <asp:Button ID="Button92" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                <td></td>
                                                            </tr>
                                                        </table>
                                                        <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left: 10px; border: 1px solid rgb(222, 222, 222);">
                                                            <tr>
                                                                <td class="txtalgnrgt">
                                                                    <label class="input-label required">
                                                                        Document Name :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox141" runat="server"></asp:TextBox>
                                                                </td>
                                                                <td class="txtalgnrgt">
                                                                    <label class="input-label required">
                                                                        Document Type :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="true" CssClass="inputTextbox">
                                                                        <asp:ListItem Value="-1">Other (Specify)</asp:ListItem>

                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr id="tr15" runat="server">
                                                                <td></td>
                                                                <td></td>
                                                                <td class="txtalgnrgt" style="width: 135px;">
                                                                    <label class="input-label">
                                                                        Other Document Type :
                                                                    </label>
                                                                </td>
                                                                <td style="border-right: 1px solid #dedede;">
                                                                    <asp:TextBox ID="TextBox142" Width="128px" runat="server"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txtalgnrgt" style="width: 128px; padding-bottom: 15px ! important;">
                                                                    <label class="input-label">
                                                                        Document :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <asp:FileUpload ID="FileUpload84" runat="server" />
                                                                </td>
                                                                <td>
                                                                    <asp:Button ID="Button93" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                <td></td>
                                                            </tr>
                                                        </table>

                                                        <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                            <span class="fltrt">
                                                                <asp:Button ID="btnSaveAboutBusinessDoc" CssClass="buttonGreen medium"
                                                                    runat="server" Text="Save" CausesValidation="true" />
                                                                <asp:LinkButton ID="lblCancelAboutBusinessDoc" CssClass="secondary medium bottom buttonalignment"
                                                                    runat="server">Cancel</asp:LinkButton></span>
                                                        </div>

                                                    </div>

                                                    <table>
                                                        <tr>
                                                            <td style="width: 100%; line-height: 20px;">
                                                                <b>3. RELATED SCHOOLS</b></br>
                                                                            <p style="padding-left: 50px; width: 85%;">
                                                                                If this school or campus shares its name, address, and/or ownership with another school(s),
                                                                                 please list (NOTE: each campus seeking CAMTC school approval must submit a separate 
                                                                                application).
                                                                            </p>
                                                            </td>
                                                        </tr>
                                                    </table>

                                                    <table style="width: 95%; margin-top: 10px; margin-left: 50px;">
                                                                    <tr>
                                                                        <td class="6">
                                                                            

                                                                            <asp:Literal ID="Literal11" runat="server"></asp:Literal>
                                                                            <div class="divLicenseInfon divaddnew" id="divBtnAddNewRelatedSchools" runat="server">
                                                                                <span style="float: right; margin-right: 10px;" class="AfterApproved">
                                                                                    <asp:Button ID="btnAddNewRelatedSchools" CssClass="buttonGreen small" runat="server" Text="Add"
                                                                                        OnClick="btnAddNewRelatedSchools_Click" />
                                                                                </span>
                                                                            </div>
                                                                            <div id="divAddNewRelatedSchools" runat="server" visible="false">
                                                                                <table class="tblApplReqForm5">
                                                                                    
                                                                                    <tr>
                                                                                        <td colspan="6">
                                                                                            <table class="tblApplReqForm5">
                                                                                                <tr>
                                                                                                    <td class="txtalgnrgt" style="width: 110px;">
                                                                                                        <label class="input-label required">
                                                                                                            School Name :
                                                                                                        </label>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:TextBox ID="TextBox2" runat="server" Width="518px" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                    </td>

                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>

                                                                                    <tr>
                                                                                        <td colspan="6">
                                                                                            <table class="tblApplReqForm5">
                                                                                                <tr style="margin-left: -134px; margin-top: -12px; float: left;">
                                                                                                    <td class="txtalgnrgt" style="width: 245px;">
                                                                                                        <label class="input-label required">
                                                                                                            Primary Contact First Name :
                                                                                                        </label>
                                                                                                    </td>
                                                                                                    <td style="padding-top: 20px ! important;">
                                                                                                        <asp:TextBox ID="TextBox65" Style="width: 170px;" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                    </td>
                                                                                                    <td class="txtalgnrgt" style="width: 195px;">
                                                                                                        <label class="input-label required">
                                                                                                            Primary Contact Last Name :
                                                                                                        </label>
                                                                                                    </td>
                                                                                                    <td style="padding-top: 20px ! important;">
                                                                                                        <asp:TextBox ID="TextBox66" runat="server" Width="140px" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>

                                                                                    <tr>
                                                                                        <td style="width: 111px;" class="txtalgnrgt">
                                                                                            <label class="input-label required">
                                                                                                Street :
                                                                                            </label>
                                                                                        </td>
                                                                                        <td colspan="5" style="padding-top: 20px !important;">
                                                                                            <asp:TextBox ID="TextBox6" runat="server" Width="518px" CssClass="calWidth us_street"
                                                                                                MaxLength="500"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td></td>
                                                                                        <td colspan="5" style="padding-top: 20px ! important;">
                                                                                            <asp:TextBox ID="TextBox7" runat="server" Width="518px" CssClass="calWidth us_street"
                                                                                                MaxLength="500"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="txtalgnrgt">
                                                                                            <label class="input-label required">
                                                                                                City :
                                                                                            </label>
                                                                                        </td>
                                                                                        <td style="width: 151px; padding-top: 20px ! important;">
                                                                                            <asp:TextBox ID="TextBox8" runat="server" Width="133px" CssClass="tooltip OnlyAlphabet calWidth"
                                                                                                MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                        </td>
                                                                                        <td class="txtalgnrgt" style="width: 52px; padding-top: 20px ! important;">
                                                                                            <label class="input-label required">
                                                                                                State :
                                                                                            </label>
                                                                                        </td>
                                                                                        <td style="width: 140px; padding-top: 20px ! important;">
                                                                                            <asp:DropDownList ID="DropDownList1" runat="server" Width="135px" CssClass="inputTextbox"
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
                                                                                            <asp:TextBox ID="TextBox9" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                                                Width="127px" CssClass="tooltip zip_us calWidth" MaxLength="500" title="Enter valid Zip eg: XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td colspan="6">
                                                                                            <table class="tblApplReqForm5" style="margin-top: -7px;">
                                                                                                <tr>
                                                                                                    <td class="txtalgnrgt" style="width: 110px;">
                                                                                                        <label class="input-label required">
                                                                                                            Phone :
                                                                                                        </label>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:TextBox ID="TextBox10" runat="server" Width="135px" CssClass="inputTextbox NewAppPersonalTxtbx phone_us"></asp:TextBox>
                                                                                                        <asp:CheckBox ID="CheckBox58" runat="server" Style="margin-left: 5px;" Text="Mobile" />
                                                                                                    </td>
                                                                                                    <td class="txtalgnrgt" style="width: 143px;">
                                                                                                        <label class="input-label">
                                                                                                            Website :
                                                                                                        </label>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:TextBox ID="TextBox11" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td class="txtalgnrgt">
                                                                                                        <label class="input-label required">
                                                                                                            Email :
                                                                                                        </label>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:TextBox ID="TextBox12" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                    </td>
                                                                                                    <td class="txtalgnrgt"></td>
                                                                                                    <td>
                                                                                                        <div id="div26" runat="server" style="width: 100%; float: right;">
                                                                                                            <span class="fltrt">
                                                                                                                <asp:Button ID="Button20" CssClass="btn-success btn-xs" runat="server"
                                                                                                                    OnClick="btnVerifyPreviousAddress_Click" Text="Verify Address" />
                                                                                                            </span>
                                                                                                        </div>
                                                                                                    </td>
                                                                                                </tr>

                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                    </table>
                                                                                <table style="margin-left: -68px;">
                                                                                    <tr>
                                                                                        <td class="txtalgnrgt">
                                                                                            <label class="input-label required">
                                                                                                Approximate Date Associated :
                                                                                            </label>
                                                                                        </td>
                                                                                        <td style="width: 151px; padding-top: 20px ! important;">
                                                                                            <asp:TextBox ID="txtApproxDateAssociate" runat="server" Width="133px" 
                                                                                                CssClass="inputTextbox calender"></asp:TextBox>
                                                                                        </td>
                                                                                        <td class="txtalgnrgt" style="width: 52px; padding-top: 20px ! important;"></td>
                                                                                        <td style="width: 140px; padding-top: 20px ! important;"></td>
                                                                                        <td class="txtalgnrgt" style="width: 47px;"></td>
                                                                                        <td></td>
                                                                                    </tr>
                                                                                </table>
                                                                                <div class="address-box posFixed" id="dvErrAddRelSchools" runat="server" visible="false" style="min-height: 30px; width: 87%; margin: 15px auto;">
                                                                                    <span class="notok"></span>
                                                                                    <div class="error_header">
                                                                                        <asp:Label ID="lblErrAddRelSchools" runat="server" Text=""></asp:Label>

                                                                                    </div>
                                                                                    <div class="" style="margin: 0 auto; width: 300px; line-height: 30px">

                                                                                        <style>
                                                                                            .padding-table td {
                                                                                                padding: 4px;
                                                                                            }
                                                                                        </style>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                                    <span class="fltrt">
                                                                                        <asp:Button ID="btnSaveRelatedSchool" CssClass="buttonGreen medium" runat="server" Text="Save"
                                                                                            CausesValidation="true" OnClick="btnSaveRelatedSchool_Click" />
                                                                                        <asp:LinkButton ID="lnkCancelRelatedSchool" CssClass="secondary medium bottom buttonalignment"
                                                                                            runat="server" OnClick="lnkCancelRelatedSchool_Click">Cancel</asp:LinkButton></span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="divLicenseInfo">
                                                                                <asp:GridView ID="gvRelatedSchool" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                                                    CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" OnRowDataBound="gvRelatedSchool_RowDataBound"
                                                                                    GridLines="None">
                                                                                    <AlternatingRowStyle BackColor="White" />
                                                                                    <Columns>
                                                                                        <asp:TemplateField HeaderText="School Name">
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
                                                                                                                    <td style="width: 144px;">
                                                                                                                        <span id="lblBusinessPhone1">(530) 542-0604</span>
                                                                                                                    </td>
                                                                                                                    <td style="width: 171px;">
                                                                                                                        <span id="lblSacramento">EMERYVILLE</span>
                                                                                                                    </td>
                                                                                                                    <td style="width: 66px;">
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
                                                                                                                <span>School Information</span>
                                                                                                            </p>
                                                                                                            <table class="tblApplReqForm5" style="margin: 0 auto;">
                                                                                                                <tr>
                                                                                                                    <td colspan="6">
                                                                                                                        <table class="tblApplReqForm5" style="margin-top: -7px;">
                                                                                                                            <tr>
                                                                                                                                <td class="txtalgnrgt" style="width: 145px;">
                                                                                                                                    <label class="input-label">
                                                                                                                                        School Name :
                                                                                                                                    </label>
                                                                                                                                </td>
                                                                                                                                <td>
                                                                                                                                    <asp:TextBox ID="txtRelatedSchoolBusinessNameEdit" runat="server" CssClass="inputTextbox workinfo NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                                                </td>
                                                                                                                                <td class="txtalgnrgt" style="width: 168px;">
                                                                                                                                    <label class="input-label">
                                                                                                                                        Primary School Contact :
                                                                                                                                    </label>
                                                                                                                                </td>
                                                                                                                                <td>
                                                                                                                                    <asp:TextBox ID="txtRelatedSchoolBusinessContactEdit" Style="width: 147px;" runat="server"
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
                                                                                                                        <asp:TextBox ID="txtRelatedSchoolStreet1Edit" Text="626 Humboldt Street" runat="server"
                                                                                                                            Width="465px" CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td></td>
                                                                                                                    <td colspan="5">
                                                                                                                        <asp:TextBox ID="txtRelatedSchoolStreet2Edit" runat="server" Width="465px" CssClass="calWidth us_street"
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
                                                                                                                        <asp:TextBox ID="txtRelatedSchoolCityEdit" runat="server" Width="133px" CssClass="tooltip OnlyAlphabet calWidth"
                                                                                                                            MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                                                    </td>
                                                                                                                    <td class="txtalgnrgt" style="width: 52px;">
                                                                                                                        <label class="input-label required">
                                                                                                                            State :
                                                                                                                        </label>
                                                                                                                    </td>
                                                                                                                    <td style="width: 125px;">
                                                                                                                        <asp:DropDownList ID="ddlRelatedSchoolStateEdit" runat="server" Width="120px" CssClass="inputTextbox"
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
                                                                                                                        <asp:TextBox ID="txtRelatedSchoolZipEdit" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                                                                            Width="91px" CssClass="tooltip zip_us calWidth" MaxLength="500" title="Enter valid Zip eg: XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td colspan="6">
                                                                                                                        <table class="tblApplReqForm5" style="margin-top: -7px;">
                                                                                                                            <tr>
                                                                                                                                <td class="txtalgnrgt" style="width: 145px;">
                                                                                                                                    <label class="input-label">
                                                                                                                                        School Phone :
                                                                                                                                    </label>
                                                                                                                                </td>
                                                                                                                                <td>
                                                                                                                                    <asp:TextBox ID="txtRelatedSchoolBusinessPhoneEdit" runat="server" CssClass="inputTextbox workinfo NewAppPersonalTxtbx phone_us"></asp:TextBox>
                                                                                                                                </td>
                                                                                                                                <td class="txtalgnrgt" style="width: 149px;">
                                                                                                                                    <label class="input-label">
                                                                                                                                        School Website :
                                                                                                                                    </label>
                                                                                                                                </td>
                                                                                                                                <td>
                                                                                                                                    <asp:TextBox ID="txtRelatedSchoolBusinessWebsiteEdit" runat="server" CssClass="inputTextbox workinfo NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td class="txtalgnrgt">
                                                                                                                                    <label class="input-label">
                                                                                                                                        School Email :
                                                                                                                                    </label>
                                                                                                                                </td>
                                                                                                                                <td>
                                                                                                                                    <asp:TextBox ID="txtRelatedSchoolBusinessEmailEdit" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                                                </td>

                                                                                                                            </tr>

                                                                                                                        </table>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                            </table>
                                                                                                            <div class="clear">
                                                                                                            </div>
                                                                                                            <div class="address-box posFixed" id="dvErrEditRelatedSchools" runat="server" visible="false" style="min-height: 30px; width: 87%; margin: 15px auto;">
                                                                                                                <span class="notok"></span>
                                                                                                                <div class="error_header">
                                                                                                                    <asp:Label ID="lblErrEditRelatedSchools" runat="server" Text=""></asp:Label>

                                                                                                                </div>
                                                                                                                <div class="" style="margin: 0 auto; width: 300px; line-height: 30px">

                                                                                                                    <style>
                                                                                                                        .padding-table td {
                                                                                                                            padding: 4px;
                                                                                                                        }
                                                                                                                    </style>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                                                                <span class="fltrt">
                                                                                                                    <asp:Button ID="btnRelatedSchoolUpdate" ValidationGroup="VGSchoolEdit" CssClass="buttonGreen medium"
                                                                                                                        runat="server" Text="Update" CausesValidation="true" OnClick="btnRelatedSchoolUpdate_Click" />
                                                                                                                    <asp:LinkButton ID="lnkRelatedSchoolCancelUpdate" CssClass="secondary medium bottom buttonalignment"
                                                                                                                        runat="server" OnClick="lnkRelatedSchoolCancelUpdate_Click">Cancel</asp:LinkButton></span>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </ContentTemplate>
                                                                                                </asp:UpdatePanel>
                                                                                            </EditItemTemplate>
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="lblBusinessName1" runat="server" Text="Label"></asp:Label>
                                                                                            </ItemTemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="School Phone">
                                                                                            <ItemStyle />
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="lblBusinessPhone1" runat="server" Text="Label"></asp:Label>
                                                                                            </ItemTemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="City">
                                                                                            <ItemStyle />
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="lblSacramento" runat="server" Text="Label"></asp:Label>
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
                                                                                                    <asp:ImageButton ID="imgbtnRelatedSchoolEdit" CssClass="imgDelete" CommandArgument="1"
                                                                                                        runat="server" RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                                                        OnClick="lnkRelatedSchoolEdit_Click" />
                                                                                                    <asp:ImageButton ID="imgBtnRelatedSchoolDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                                                        CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?')"
                                                                                                        OnClick="lnkRelatedSchoolDelete_Click" /></span>
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
                                                                        </td>
                                                                    </tr>
                                                                </table>

                                                    <table style="margin-bottom: 15px; margin-top: 15px;">
                                                        <tr>
                                                            <td style="width: 100%; line-height: 20px;">
                                                                <b>4. OTHER PROGRAM(S)</b></br>
                                                                             <p style="padding-left: 50px; width: 90%;">If this school offers educational program(s) other than massage, please list.</p>
                                                            </td>
                                                        </tr>
                                                    </table>

                                                    <table style="width: 95%; margin-top: 10px; margin-left: 50px; margin-bottom: 5px;">
                                                        <tr>
                                                            <td class="6">
                                                                <%--<asp:TextBox ID="TextBox203" runat="server" style="height: 35px; width: 88%;" TextMode="MultiLine" 
                                                                                CssClass="inputTextbox NewAppPersonalTxtbx" MaxLength="150">
                                                                            </asp:TextBox>--%>

                                                                <%--<fieldset class="flsParentNewApplReqForm flsParentNewApplReqForm1" 
                                                                                style="border: 1px solid rgb(221, 221, 221) ! important; padding-bottom: 14px ! important;">--%>
                                                                <asp:Literal ID="ltrOtherProgramNameEdit" runat="server"></asp:Literal>
                                                                <table class=" tblApplReqForm5 wdtmarauto">
                                                                    <tr>
                                                                        <td class="txtalgnrgt tdwidth1" style="width: 180px !important; padding-bottom: 10px;">
                                                                            <label class="input-label">
                                                                                Other Program Name :
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtOtherProgramNameEdit" Style="width: 290px;" runat="server" CssClass="tooltip OnlyAlphabet inputTextbox NewAppPersonalTxtbx"
                                                                                MaxLength="150" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                            <span class="AfterApproved">
                                                                                <asp:Button CssClass="buttonGreen small" runat="server" ID="btnSaveOtProgName" Text="Add"
                                                                                    ValidationGroup="VGPersonalOther" /></span><%--OnClick="btnSaveOtname_Click"--%>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <table class=" tblApplReqForm5 wdtmarauto">
                                                                    <tr>
                                                                        <td class="grid-header-other-name">
                                                                            <asp:GridView ID="gvOtherProgramNameEdit" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                                                CssClass="index  grid" ShowHeader="false" Style="width: 50%; margin-left: 64px; margin-top: 5px;"
                                                                                CellPadding="5" ForeColor="#333333" GridLines="None">
                                                                                <AlternatingRowStyle BackColor="White" />
                                                                                <Columns>
                                                                                    <asp:TemplateField HeaderText="Other Program Name">
                                                                                        <ItemStyle CssClass="vlignbtm" />
                                                                                        <EditItemTemplate>
                                                                                            <div class="divGridEdit">
                                                                                                <p class="addNewDiv">
                                                                                                    <span>Edit Other Program Name</span>
                                                                                                </p>
                                                                                                <table class="GridNewAppPersonalIndoOtherProgramName" style="height: 38px;">
                                                                                                    <tr>
                                                                                                        <td class="txtalgnrgt" style="width: 230px;">
                                                                                                            <label class="input-label">
                                                                                                                Other Program Name :
                                                                                                            </label>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <asp:TextBox ID="txtOtherProgramNameEdit" runat="server" AutoComplete="off" CssClass="tooltip OnlyAlphabet inputTextbox NewAppPersonalTxtbx"
                                                                                                                MaxLength="150" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                                        </td>
                                                                                                        <td class="txtalgnrgt tdwidth2" colspan="2"></td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                                <div class="toolBar" style="padding: 4px; margin: 4px;">
                                                                                                    <span class="fltrt">
                                                                                                        <asp:Button ID="btnOtherProgramNameUpdate" ValidationGroup="VGPersonalOtherProgramName" CssClass="buttonGreen medium"
                                                                                                            runat="server" Text="Update" CausesValidation="true" /><%-- OnClick="btnOtherProgramNameUpdate_Click"--%>
                                                                                                        <asp:LinkButton ID="lnkOtherProgramNameEditCancle" CssClass="secondary medium bottom buttonalignment"
                                                                                                            runat="server">Cancel</asp:LinkButton></span><%-- OnClick="lnkOtherProgramNameEditCancle_Cancel"--%>
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
                                                                                                <asp:ImageButton ID="imgbtnOtherProgramNameEdit" Style="display: none;" CssClass="imgDelete"
                                                                                                    CommandArgument='<%# Eval("Other_ID") %>' runat="server" RowIndex='<%# Container.DisplayIndex %>'
                                                                                                    ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" /><%--  OnClick="imgbtnOtherProgramNameEdit_Click"--%>
                                                                                                <asp:ImageButton ID="imgBtnOtherProgramNameDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                                                    CommandArgument='<%# Eval("Other_ID") %>' ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                                                                                    OnClientClick="javascript:return confirm('Are you sure you want to delete?')" /></span><%--    OnClick="imgbtnEditOtherProgramNameDelete_Click" --%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>
                                                                                </Columns>
                                                                                <EmptyDataTemplate>
                                                                                    <div style="width: 100%; height: 50px; border: 0px; padding: 3px">
                                                                                        No record found.
                                                                                    </div>
                                                                                </EmptyDataTemplate>
                                                                            </asp:GridView>
                                                                            <table class="index brdr grid" border="1" cellspacing="0" cellpadding="5" id="Table4"
                                                                                style="width: 55%; margin-left: 180px; border: 1px solid #ddd;">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <th style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Other Program Name
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
                                                                                                <input type="image" id="imgBtnOtherProgramNameDelete" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"></span>
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <%--</fieldset>--%>
                                                            </td>
                                                        </tr>
                                                    </table>

                                                    <asp:Literal ID="ltrLicenseInfoEdit" runat="server"></asp:Literal>
                                                      </fieldset>
                                                <div class="divLicenseInfo" id="dvAboutFacilityUpSection" runat="server" style="margin-top: 30px; width:95%;">

                                                                <p class="addNewDiv">
                                                                    <span>Facility</span>
                                                                </p>

                                                               <%-- <table class="tblApplReqForm5 wthtop20" style="width: 99%;">
                                                                    <tr>
                                                                        <td class="txtalgnrgt">
                                                                            <label class="input-label required">
                                                                                Document Name :
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtDocNameAboutFacility" runat="server"></asp:TextBox>
                                                                        </td>
                                                                        <td class="txtalgnrgt">
                                                                            <label class="input-label required">
                                                                                Document Type :
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:DropDownList ID="ddlOwnAboutFacility" runat="server" CssClass="inputTextbox">
                                                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                                <asp:ListItem Value="1">Floor Plan</asp:ListItem>
                                                                                <asp:ListItem Value="2">Exterior Signage</asp:ListItem>
                                                                                <asp:ListItem Value="3">Building Exterior</asp:ListItem>
                                                                                <asp:ListItem Value="4">Massage Classroom</asp:ListItem>
                                                                                <asp:ListItem Value="5">Massage Clinic</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="txtalgnrgt">
                                                                            <label class="input-label required">
                                                                                Document :
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:FileUpload ID="DocFUAboutFacility" runat="server" />
                                                                        </td>
                                                                        <td colspan="3">
                                                                            <asp:Button ID="btnUploadAboutFacility" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                        <td></td>
                                                                    </tr>
                                                                </table>--%>
                                                                <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left:10px;border: 1px solid rgb(222, 222, 222);">
                                                                        <tr>
                                                                            <td class="txtalgnrgt" style="padding-bottom: 15px ! important;width: 320px;">
                                                                                <label class="input-label required">
                                                                                    Floor Plan (including approximate square footage) :
                                                                                </label>
                                                                            </td>
                                                                            <td style="width:182px;">
                                                                                <asp:FileUpload ID="FUFlorPlan" runat="server" />
                                                                            </td>
                                                                            <td colspan="3">
                                                                                <asp:Button ID="btnFlorPlan" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        </table>
                                                                    <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left:10px; border: 1px solid rgb(222, 222, 222);">
                                                                        <tr>
                                                                            <td class="txtalgnrgt" style="padding-bottom: 15px ! important;width: 320px;">
                                                                                <label class="input-label required">
                                                                                    Photograph(s) of Exterior Signage :
                                                                                </label>
                                                                            </td>
                                                                            <td style="width:182px;">
                                                                                <asp:FileUpload ID="FUPhotExterSig" runat="server" />
                                                                            </td>
                                                                            <td colspan="3">
                                                                                <asp:Button ID="btnPhotExterSig" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        </table>
                                                                    <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left:10px; border: 1px solid rgb(222, 222, 222);">
                                                                        <tr>
                                                                            <td class="txtalgnrgt" style="width:320px;padding-bottom: 15px ! important;">
                                                                                <label class="input-label required">
                                                                                   Photograph(s) of Buiding exterior :
                                                                                </label>
                                                                            </td>
                                                                            <td style="width:182px;">
                                                                                <asp:FileUpload ID="FUPhotBuildExt" runat="server" />
                                                                            </td>
                                                                            <td colspan="3">
                                                                                <asp:Button ID="btnPhotBuildExt" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        </table>
                                                                    <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left:10px; border: 1px solid rgb(222, 222, 222);">
                                                                        <tr>
                                                                            <td class="txtalgnrgt" style="padding-bottom: 15px ! important; width:320px;">
                                                                                <label class="input-label required">
                                                                                    Photograph(s) of Massage Classroom(s):
                                                                                </label>
                                                                            </td>
                                                                            <td style="width:182px;">
                                                                                <asp:FileUpload ID="FUPhotOfMassClass" runat="server" />
                                                                            </td>
                                                                            <td colspan="3">
                                                                                <asp:Button ID="btnPhotOfMassClass" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        </table>
                                                                <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left:10px; border: 1px solid rgb(222, 222, 222);">
                                                                        <tr>
                                                                            <td class="txtalgnrgt" style="padding-bottom: 15px ! important; width:320px;">
                                                                                <label class="input-label required">
                                                                                   Photograph(s) of Massage Clinic(s) :
                                                                                </label>
                                                                            </td>
                                                                            <td style="width:182px;">
                                                                                <asp:FileUpload ID="FUPhotOfMassClin" runat="server" />
                                                                            </td>
                                                                            <td colspan="3">
                                                                                <asp:Button ID="btnPhotOfMassClin" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        </table>
                                                                    <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left:10px; border: 1px solid rgb(222, 222, 222);">
                                                                        <tr>
                                                                            <td class="txtalgnrgt">
                                                                                <label class="input-label required">
                                                                                    Document Name :
                                                                                </label>
                                                                            </td>
                                                                            <td>
                                                                                <asp:TextBox ID="txtDocNameClin" runat="server"></asp:TextBox>
                                                                            </td>
                                                                            <td class="txtalgnrgt">
                                                                                <label class="input-label required">
                                                                                    Document Type :
                                                                                </label>
                                                                            </td>
                                                                            <td >
                                                                                <asp:DropDownList ID="ddlOtherClin" runat="server" AutoPostBack="true"  CssClass="inputTextbox">
                                                                                    <asp:ListItem Value="-1">Other (Specify)</asp:ListItem>
                                                                                    
                                                                                </asp:DropDownList>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="txtalgnrgt" style="width: 195px; padding-bottom: 15px ! important;">
                                                                                <label class="input-label">
                                                                                   Document :
                                                                                </label>
                                                                            </td>
                                                                            <td>
                                                                                <asp:FileUpload ID="FileUpload89" runat="server" />
                                                                            </td>
                                                                            <td >
                                                                                <asp:Button ID="Button98" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4">
                                                                                <table class="index vlign  grid" id="gvUploadApplicant" style="color: #333333;margin-left: 6px;
border: 1px solid rgb(222, 222, 222);
margin-bottom: 10px; width: 98%; border-collapse: collapse;" cellpadding="5" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <th scope="col">Document Type</th>
                                                                                            <th scope="col">Document Name</th>
                                                                                            <th scope="col">Document Link</th>
                                                                                            <th scope="col" style="width: 6%;" align="center">Action</th>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td style="width: 200px;">Document Type1
                                                                                            </td>
                                                                                            <td style="width: 148px;">DocumentDemo.txt
                                                                                            </td>
                                                                                            
                                                                                            <td style="width: 145px;">
                                                                                                <a id="hlkURL" class="documentdetail" href="#" target="_blank">Document Detail </a>

                                                                                            </td>
                                                                                            <td class="vligntop" align="center">
                                                                                                <span class="fltrt" style="margin-right: 20px;">
                                                                                                    <div style="width: 20px; display: inline-block">
                                                                                                        <asp:ImageButton ID="ImageButton56" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                                                        CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png"  />
                                                                                                        
                                                                                                    </div>
                                                                                                </span>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                                </td>
                                                                        </tr>
                                                                    </table>

                                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                    <span class="fltrt">
                                                                        <asp:Button ID="btnSaveAboutFacility" CssClass="buttonGreen medium"
                                                                            runat="server" Text="Save" CausesValidation="true" />
                                                                        <asp:LinkButton ID="lblCancelAboutFacility" CssClass="secondary medium bottom buttonalignment"
                                                                            runat="server">Cancel</asp:LinkButton></span>
                                                                </div>

                                                            </div>

                                                            <div class="divLicenseInfo" id="dvAboutAdvertisingUpSection" runat="server" style="margin-top: 30px; width:95%;">

                                                                <p class="addNewDiv">
                                                                    <span>Advertising</span>
                                                                </p>

                                                                <table class="tblApplReqForm5 wthtop20" style="width: 99%;">
                                                                    <tr>
                                                                        <td class="txtalgnrgt">
                                                                            <label>
                                                                                Please provide copies of <u>all</u> advertising.
                                                                            </label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="txtalgnrgt">
                                                                            <label class="input-label required">
                                                                                Document Name :
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtDocNameAboutAdvertising" runat="server"></asp:TextBox>
                                                                        </td>
                                                                        <td class="txtalgnrgt">
                                                                            <label class="input-label required">
                                                                                Document Type :
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:DropDownList ID="ddlOwnAboutAdvertising" runat="server" CssClass="inputTextbox">
                                                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                                <asp:ListItem Value="1">Online Advertisement/Marketing</asp:ListItem>
                                                                                <asp:ListItem Value="2"> Print Advertisement/Marketing</asp:ListItem>

                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="txtalgnrgt">
                                                                            <label class="input-label required">
                                                                                Document :
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:FileUpload ID="DocFUAboutAdvertising" runat="server" />
                                                                        </td>
                                                                        <td colspan="3">
                                                                            <asp:Button ID="btnUploadAboutAdvertising" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                        <td></td>
                                                                    </tr>
                                                                </table>

                                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                    <span class="fltrt">
                                                                        <asp:Button ID="btnSaveAboutAdvertising" CssClass="buttonGreen medium"
                                                                            runat="server" Text="Save" CausesValidation="true" />
                                                                        <asp:LinkButton ID="lblCancelAboutAdvertising" CssClass="secondary medium bottom buttonalignment"
                                                                            runat="server">Cancel</asp:LinkButton></span>
                                                                </div>

                                                            </div>

                                                           
                                                            <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                <span class="fltrt">
                                                                    <asp:Button ID="btnLicInfoNext" CssClass="buttonGreen medium" runat="server" Text="Save"
                                                                        CausesValidation="true" OnClick="btnLicNextInfo_Click" />
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
                </div>
            </div>
        </div>
    </div>
    </div>