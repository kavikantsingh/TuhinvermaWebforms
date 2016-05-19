<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucSchoolApplication.ascx.cs" Inherits="Module_UI_Backoffice_ESD_SchoolWorkFlow_ucSchoolApplication" %>
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

                                            <li runat="server" clientidmode="Static" class="actived" id="liApplicatinInstructions">
                                                <asp:Button ID="lnkInstruction" runat="server" Text="Instructions" OnClick="lnkInstruction_Click"
                                                    CssClass="btnlimenu" />
                                                <span class="spnStatusImage statusimgalgn">
                                                    <asp:ImageButton ID="imgbtnInstruction" Width="20px" Height="20px" runat="server"
                                                        ToolTip="Completed" ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="lnkInstruction_Click" />
                                                </span>
                                            </li>
                                            <li runat="server" clientidmode="Static" class="" id="liMassageTherapistApplication">
                                                <asp:Button ID="btnMassageTherapistApplication" runat="server" Text="School Information" CssClass="btnlimenu"
                                                    OnClick="btnMassageTherapistApplication_Click" />
                                                <span class="spnStatusImage statusimgalgn">
                                                    <asp:ImageButton ID="imgMassageTherapistApplication" Width="20px" Height="20px" runat="server"
                                                        ToolTip="Completed" ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnMassageTherapistApplication_Click" /></span>
                                            </li>
                                            <li runat="server" clientidmode="Static" class="" id="liSection2">
                                                <asp:Button ID="btnSection2" runat="server" Text="School Eligibility" CssClass="btnlimenu"
                                                    OnClick="btnSection2_Click" />
                                                <span class="spnStatusImage statusimgalgn">
                                                    <asp:ImageButton ID="imgSection2" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                        ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnSection2_Click" /></span>
                                            </li>


                                            <li runat="server" clientidmode="Static" class="" id="liSection3">
                                                <asp:Button ID="btnSection3" runat="server" Text="About the School" CssClass="btnlimenu"
                                                    OnClick="btnSection3_Click" />
                                                <span class="spnStatusImage statusimgalgn">
                                                    <asp:ImageButton ID="imgSection3" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                        ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnSection3_Click" /></span>
                                            </li>

                                            
                                            <li runat="server" clientidmode="Static" class="" id="li_Transcript_Checklist">
                                                <asp:Button ID="btnTransCheck" runat="server" Text="Transcript" CssClass="btnlimenu" OnClick="btnTransCheck_Click" />
                                                <span class="spnStatusImage statusimgalgn">
                                                    <asp:ImageButton ID="imgTransCheck" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                        ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnTransCheck_Click" /></span>
                                            </li>

                                            <li runat="server" clientidmode="Static" class="" id="li_Enrollment_Agreement_Checklist">
                                                <asp:Button ID="btnEnrollAgreeCheck" runat="server" Text="Enrollment Agreement" CssClass="btnlimenu" OnClick="btnEnrollAgreeCheck_Click" />
                                                <span class="spnStatusImage statusimgalgn">
                                                    <asp:ImageButton ID="imgEnrollAgreeCheck" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                        ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnEnrollAgreeCheck_Click" /></span>
                                            </li>


                                            <li runat="server" clientidmode="Static" class="" id="li_Course_Catalog_Checklist">
                                                <asp:Button ID="btnCourCataCheck" runat="server" Text="Course Catalog" CssClass="btnlimenu" OnClick="btnCourCataCheck_Click" />
                                                <span class="spnStatusImage statusimgalgn">
                                                    <asp:ImageButton ID="imgCourCataCheck" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                        ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnCourCataCheck_Click" /></span>
                                            </li>

                                            <li runat="server" clientidmode="Static" class="" id="li_Program_Hour_Requirement_Worksheet">
                                                <asp:Button ID="btnProgHourReqWork" runat="server" Text="Curriculum" CssClass="btnlimenu" OnClick="btnProgHourReqWork_Click" />
                                                <span class="spnStatusImage statusimgalgn">
                                                    <asp:ImageButton ID="imgProgHourReqWork" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                        ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnProgHourReqWork_Click" /></span>
                                            </li>



                                            <li runat="server" clientidmode="Static" class="" id="liSection5" style="display: none;">
                                                <asp:Button ID="btnSection5" runat="server" Text="Owner Information" CssClass="btnlimenu"
                                                    OnClick="btnSection5_Click" />
                                                <span class="spnStatusImage statusimgalgn">
                                                    <asp:ImageButton ID="imgSection5" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                        ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnSection5_Click" /></span>
                                            </li>



                                            <li runat="server" clientidmode="Static" class="" id="liSection4" style="display: none;">
                                                <asp:Button ID="btnSection4" runat="server" Text="School Declaration" CssClass="btnlimenu"
                                                    OnClick="btnSection4_Click" />
                                                <span class="spnStatusImage statusimgalgn">
                                                    <asp:ImageButton ID="imgSection4" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                        ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnSection4_Click" /></span>
                                            </li>

                                           

                                            <li runat="server" clientidmode="Static" class="" id="li_Instructor_Qualifications" style="display: none;">
                                                <asp:Button ID="btnInstQual" runat="server" Text="Instructor Qualifications" CssClass="btnlimenu" OnClick="btnInstQual_Click" />
                                                <span class="spnStatusImage statusimgalgn">
                                                    <asp:ImageButton ID="imgInstQual" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                        ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnInstQual_Click" /></span>
                                            </li>

                                            <li runat="server" clientidmode="Static" class="" id="li_Instructor_Declaration" style="display: none;">
                                                <asp:Button ID="btnInstDecl" runat="server" Text="Instructor Declaration" CssClass="btnlimenu" OnClick="btnInstDecl_Click" />
                                                <span class="spnStatusImage statusimgalgn">
                                                    <asp:ImageButton ID="imgInstDecl" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                        ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnInstDecl_Click" /></span>
                                            </li>



                                            <li runat="server" clientidmode="Static" class="" id="liSection6" style="display: none;">
                                                <asp:Button ID="btnSection6" runat="server" Text="Owner Declaration" CssClass="btnlimenu" OnClick="btnSection6_Click" />
                                                <span class="spnStatusImage statusimgalgn">
                                                    <asp:ImageButton ID="imgSection6" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                        ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnSection6_Click" /></span>
                                            </li>

                                           

                                            <li runat="server" clientidmode="Static" class="" id="liSchoolContactStaff">
                                                <asp:Button ID="btnSchoolContactStaff" runat="server" Text="Staff" CssClass="btnlimenu" OnClick="btnBackCheck_Click" />
                                                <span class="spnStatusImage statusimgalgn">
                                                    <asp:ImageButton ID="ibtnSchoolContactStaff" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                        ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnBackCheck_Click" /></span>
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
                    <asp:Panel ID="pnlApplicatinInstructions" runat="server">
                                    <asp:UpdatePanel runat="server" ID="upInstruction">
                                        <Triggers>
                                            <%--<asp:PostBackTrigger ControlID="lnkQues1" />--%>
                                        </Triggers>
                                        <ContentTemplate>
                                            <div>
                                                <div>
                                                    <div class="sectionDiv">
                                                        <span>INSTRUCTIONS</span>
                                                    </div>
                                                    <fieldset class="flsLiveScanApp flsLiveScanApp1">
                                                        <asp:Literal ID="ltrErrorMesageInstructionEdit" runat="server"></asp:Literal>
                                                        <table class="tblLiveScanApp tblLiveScanApp1" width="100%">
                                                            <tr>

                                                                <td style="width: 550px; padding-left: 0px; text-align: justify;">

                                                                    <b>1. Have you read ALL of the most current version of                                                                         
                                                                        <%--<asp:LinkButton ID="lnkQues1" CssClass="hyperlink" runat="server" OnClick="lnkQues1_Click">
                                                                            Application Instructions
                                                                        </asp:LinkButton>--%>
                                                                        <a target="_blank" href="https://www.camtc.org/" onclick="changeItemState()" class="hyperlink">the California Massage Therapy  Council’s (“CAMTC’s”)
                                                                        </a>
                                                                        Policies and Procedures for Approval of Schools?
                                                                    </b>

                                                                    <br />
                                                                     <br />
                                                                    <p>
                                                                        PLEASE READ the most current version of CAMTC’s Policies and Procedures for Approval of Schools before continuing the application
                                                                         process. Providing incomplete or misleading information to CAMTC may result in processing delays,
                                                                         denial of your application for school approval, disciplinary action, revocation of school approval, or additional processing fees.
                                                                    </p>
                                                                </td>
                                                                <td></td>
                                                                <td align="left" style="width: 110px;" class="cursorpointer">
                                                                    <p>
                                                                        <asp:RadioButtonList ID="rblQuestionEdit1" Enabled="false" AutoPostBack="true" runat="server"
                                                                            RepeatDirection="Horizontal" OnSelectedIndexChanged="rblQuestionEdit1_OnSelectedIndexChanged">
                                                                            <asp:ListItem Value="1">Yes</asp:ListItem>
                                                                        </asp:RadioButtonList>
                                                                    </p>
                                                                </td>
                                                            </tr>

                                                            <tr>
                                                                <td colspan="2" style="padding-left: 0px;">
                                                                    <br />
                                                                    <b>
                                                                        <p style="font-size: 13px;">
                                                                            (The Yes and No buttons are enabled only after you have clicked on the Policies and Procedures for Approval of Schools link above and read the instructions.) 
                                                                        </p>
                                                                    </b>
                                                                </td>
                                                                <td></td>

                                                            </tr>


                                                        </table>
                                                        <%--<p style="font-size: 13px; margin-top: 15px;">
                                                            If you answered "Yes" to questions (1.) and (2.) above, then please proceed - otherwise
                                                            <a class="hyperlink" href="https://www.camtc.org/" target="_blank">PLEASE READ THE INSTRUCTIONS</a>
                                                            before continuing the application process. Please remember that providing incomplete
                                                            or misleading information to the California Massage Therapy Council ("CAMTC") may
                                                            result in processing delays, denial of your application, revocation of your certificate,
                                                            or additional processing fees.
                                                        </p>--%>
                                                    </fieldset>
                                                </div>
                                                <div class="readinstrucn" style="display: none;">
                                                    <asp:CheckBox ID="chkManApplicatinInstructions" runat="server" Text="I have read the instructions." />
                                                </div>
                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                    <span class="fltrt">
                                                        <asp:Button ID="btnApplicationStatus" CssClass="buttonGreen medium" runat="server"
                                                            Text="Save & Next" Enabled="false" OnClick="btnApplicationStatus_Click" />
                                                        <asp:LinkButton ID="lnkApplicationStatusCancel" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server" OnClick="lnkApplicationStatusCancel_Click">Cancel</asp:LinkButton>
                                                    </span>
                                                </div>
                                            </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </asp:Panel>
                    <asp:Panel ID="pnlSection1" runat="server" Visible="false">
                        <asp:UpdatePanel runat="server" ID="upPanelSection1MT">
                            <ContentTemplate>
                                <asp:Panel ID="pnlApprovedPersonalTab" runat="server">
                                    <div>
                                    <div class="sectionDiv">
                                        <span>School Information</span>
                                    </div>
                                    <fieldset class="flsParentNewApplReqForm flsParentNewApplReqForm1">
                                        <p>
                                            <b>2.&nbsp;&nbsp;School Details :</b>
                                        </p>
                                        <asp:Literal ID="ltrPersonalInfoEdit" runat="server"></asp:Literal>
                                        <div id="MsgDivUploadAll">
                                        </div>
                                        <div style="width: 100%;">
                                            <div style="">
                                                <table class=" tblApplReqForm5 wdtmarauto">
                                                    <tr>
                                                        <td class="txtalgnrgt" style="width: 115px;">
                                                            <label class="input-label required">
                                                                School Name :
                                                            </label>
                                                        </td>
                                                        <td colspan="6">
                                                            <asp:TextBox ID="txtFirstNameEdit" Width="482px" runat="server" CssClass="tooltip OnlyAlphabet inputTextbox capitalize-text NewAppPersonalTxtbx" title="Only A-Z characters are allowed."></asp:TextBox>
                                                        </td>
                                                        <%--<td class="txtalgnrgt">
                                                                            <label class="input-label required">
                                                                                Previous School Name :
                                                                            </label>
                                                                        </td>
                                                                        <td colspan="3">
                                                                            <asp:TextBox ID="txtLastNameEdit" runat="server" CssClass="tooltip OnlyAlphabet inputTextbox 
capitalize-text NewAppPersonalTxtbx"
                                                                                MaxLength="150" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                        </td>--%>
                                                    </tr>
                                                    <tr>
                                                        <td class="txtalgnrgt" style="width: 115px;">
                                                            <label class="input-label required">
                                                                School Telephone :
                                                            </label>
                                                        </td>
                                                        <td style="width: 180px;">
                                                            <asp:TextBox ID="txtSchoolTel" runat="server" Style="width: 170px;" CssClass="phone_us"
                                                                autocomplete="off"
                                                                MaxLength="14"></asp:TextBox>
                                                        </td>
                                                        <td colspan="6">
                                                            <asp:CheckBox ID="CheckBox57" Style="margin-left: 10px;" Text="Mobile" runat="server" /></td>

                                                    </tr>
                                                    <tr>
                                                        <td class="txtalgnrgt" style="width: 130px;">
                                                            <label class="input-label required">
                                                                School Website :
                                                            </label>
                                                        </td>
                                                        <td colspan="6">
                                                            <asp:TextBox ID="txtschoolwebsite" runat="server" CssClass="inputTextbox 
NewAppPersonalTxtbx"
                                                                autocomplete="off"
                                                                MaxLength="150"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <fieldset class="flsParentNewApplReqForm flsParentNewApplReqForm1" style="margin-top: 20px;">
                                        <p>
                                            <b>3.&nbsp;&nbsp;Previous School's Names (if any) :</b>
                                        </p>
                                        <asp:Literal ID="Literal12" runat="server"></asp:Literal>
                                        <div style="width: 100%;">
                                            <table class=" tblApplReqForm5 wdtmarauto">
                                                <tr>
                                                    <td class="txtalgnrgt tdwidth1" style="width: 180px !important; padding-bottom: 10px;">
                                                        <label class="input-label">
                                                            Previous School Name :
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtSclInfoPrevSclName" Style="width: 308px !important;" runat="server" CssClass="tooltip OnlyAlphabet inputTextbox NewAppPersonalTxtbx"
                                                            MaxLength="150" title="Only A-Z characters are allowed."></asp:TextBox>
                                                        <span class="AfterApproved">
                                                            <asp:Button CssClass="buttonGreen small" runat="server" ID="btnSclInfoAdd" Text="Add"
                                                                ValidationGroup="VGPersonalOther" /></span><%--OnClick="btnSaveOtname_Click"--%>
                                                    </td>
                                                </tr>
                                            </table>
                                            <table class=" tblApplReqForm5 wdtmarauto">
                                                <tr>
                                                    <td class="grid-header-other-name">
                                                        <asp:GridView ID="GVSclInfoPrevScl" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                            CssClass="index  grid" ShowHeader="false" Style="width: 50%; margin-left: 64px; margin-top: 5px;"
                                                            CellPadding="5" ForeColor="#333333" GridLines="None">
                                                            <AlternatingRowStyle BackColor="White" />
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Other Program Name">
                                                                    <ItemStyle CssClass="vlignbtm" />
                                                                    <EditItemTemplate>
                                                                        <div class="divGridEdit">
                                                                            <p class="addNewDiv">
                                                                                <span>Previous School Name</span>
                                                                            </p>
                                                                            <table class="GridNewAppPersonalIndoOtherProgramName" style="height: 38px;">
                                                                                <tr>
                                                                                    <td class="txtalgnrgt" style="width: 230px;">
                                                                                        <label class="input-label">
                                                                                            Previous School Name :
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
                                                        <table class="index brdr grid" border="1" cellspacing="0" cellpadding="5" id="TableSclInfoPrevScl"
                                                            style="width: 55%; margin-left: 180px; border: 1px solid #ddd;">
                                                            <tbody>
                                                                <tr>
                                                                    <th style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Previous School Name
                                                                    </th>
                                                                    <th style="padding-left: 0px; text-align: center;">Action
                                                                    </th>
                                                                </tr>
                                                                <tr>
                                                                    <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">School
                                                                    </td>
                                                                    <td align="center" valign="middle" style="padding-top: 0px ! important; width: 60px;">
                                                                        <span>
                                                                            <asp:ImageButton ID="ImageButton7" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" />
                                                                            <input type="image" id="imgBtnOProgramNameDelete" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"></span>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
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
                                                                    <b>4.&nbsp;&nbsp;School Address :</b>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="vertical-align: middle; width: 130px;" class="txtalgnrgt">
                                                                    <label class="input-label required">
                                                                        Street :
                                                                    </label>
                                                                </td>
                                                                <td colspan="6">
                                                                    <asp:TextBox ID="TextBox3" runat="server" Width="482px" CssClass="calWidth us_street"
                                                                        MaxLength="500"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td colspan="6">
                                                                    <asp:TextBox ID="txtschool_Add" runat="server" Width="482px" CssClass="calWidth us_street"
                                                                        MaxLength="500"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <%-- <tr>
                                                                <td></td>
                                                                <td colspan="5">
                                                                    <asp:TextBox ID="txtStreet2ResEdit" runat="server" Width="482px" CssClass="calWidth us_street"
                                                                        MaxLength="500"></asp:TextBox>
                                                                </td>
                                                            </tr>--%>
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
                                                                        CssClass="tooltip zip_us calWidth" Width="127px" MaxLength="500" title="Enter valid Zip eg: 
XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                        </table>

                                                        <div class="clear">
                                                        </div>

                                                        <div id="divVerifySchoolAddressBtn" runat="server" style="padding: 10px;">
                                                            <span class="fltrt" style="margin-right: 68px;">
                                                                <asp:Button ID="btnVerifySchoolAddress" CssClass="btn-success btn-xs" runat="server"
                                                                    OnClick="btnVerifySchoolAddress_Click" Text="Verify Address" />
                                                            </span>
                                                        </div>
                                                        <div id="divVerifySchoolAddressPnl" runat="server" visible="false" class="address-box">
                                                            <div>
                                                                <span class="fltrt">
                                                                    <asp:ImageButton ID="imgbtnCloseVerifyAddress" ImageUrl="~/App_Themes/Theme1/images/close-icon.png"
                                                                        runat="server" OnClick="btnVerifySchoolAddressYes_Click" />
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
                                                                                        <asp:Label ID="lblUSchoolStreet1" runat="server"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td></td>
                                                                                    <td>
                                                                                        <asp:Label ID="lblUSchoolStreet2" runat="server"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right">
                                                                                        <label class="input-label">
                                                                                            <b>City :</b>
                                                                                        </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:Label ID="lblUSchoolCity" runat="server"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right">
                                                                                        <label class="input-label">
                                                                                            <b>State :</b>
                                                                                        </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:Label ID="lblUSchoolState" runat="server"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right">
                                                                                        <label class="input-label">
                                                                                            <b>Zip :</b>
                                                                                        </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:Label ID="lblUSchoolZip" runat="server"></asp:Label>
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
                                                                                            <asp:Label ID="lblVSchoolStreet1" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td></td>
                                                                                        <td>
                                                                                            <asp:Label ID="lblVSchoolStreet2" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="right">
                                                                                            <label class="input-label">
                                                                                                <b>City :</b>
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:Label ID="lblVSchoolCity" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="right">
                                                                                            <label class="input-label">
                                                                                                <b>State :</b>
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:Label ID="lblVSchoolState" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="right">
                                                                                            <label class="input-label">
                                                                                                <b>Zip :</b>
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:Label ID="lblVSchoolZip" runat="server"></asp:Label>
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
                                                                            <asp:Button ID="btnVerifySchoolAddressYes" CssClass="btn-warning btn-xs" runat="server"
                                                                                OnClick="btnVerifySchoolAddressYes_Click" Text="Use User Address" />
                                                                        </td>
                                                                        <td align="center">
                                                                            <asp:Button ID="btnVerifySchoolAddressNo" CssClass="btn-success btn-xs" runat="server"
                                                                                OnClick="btnVerifySchoolAddressNo_Click" Text="Use Verified Address" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>

                                                        <div class="clear">
                                                        </div>

                                                        <table class=" tblApplReqForm5">

                                                            <tr>
                                                                <td colspan="5">
                                                                    <b>5.&nbsp;&nbsp;Previous Address (if any) :</b>
                                                                </td>
                                                            </tr>

                                                        </table>

                                                        <div class="divLicenseInfon divaddnew AfterApproved" id="divAddbtnSchoolInfoPrevious"
                                                            runat="server">
                                                            <span style="float: right; margin-right: 32px; margin-top: 15px;">
                                                                <asp:Button ID="btnSchoolInfoPreviousAddNew" CssClass="buttonGreen small" runat="server"
                                                                    Text="Add" CausesValidation="true" OnClick="btnSchoolInfoPreviousAddNew_Click" />
                                                            </span>
                                                        </div>

                                                        <asp:Literal ID="ltrSchoolInfoPrevious" runat="server"></asp:Literal>


                                                        <div class="divLicenseInfo" id="divAddSchoolInfoPrevious" runat="server" visible="false" style="width: 91%; margin-top: 20px; margin-bottom: 10px;">
                                                            <p class="addNewDiv">
                                                                <span>School Previous Address</span>
                                                            </p>
                                                            <table class="tblApplReqForm5 wthtop20" style="width: 96%;">
                                                                <tr>
                                                                    <td style="vertical-align: middle; width: 97px;" class="txtalgnrgt">
                                                                        <label class="input-label">
                                                                            Street :
                                                                        </label>
                                                                    </td>
                                                                    <td colspan="5">
                                                                        <asp:TextBox ID="txtPreviousAdd" runat="server" Width="482px" CssClass="calWidth us_street"
                                                                            MaxLength="500"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td></td>
                                                                    <td colspan="6">
                                                                        <asp:TextBox ID="TextBox16" runat="server" Width="482px" CssClass="calWidth us_street"
                                                                            MaxLength="500"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <%-- <tr>
                                                                <td></td>
                                                                <td colspan="5">
                                                                    <asp:TextBox ID="txtStreet2ResEdit" runat="server" Width="482px" CssClass="calWidth us_street"
                                                                        MaxLength="500"></asp:TextBox>
                                                                </td>
                                                            </tr>--%>
                                                                <tr>
                                                                    <td class="txtalgnrgt">
                                                                        <label class="input-label">
                                                                            City :
                                                                        </label>
                                                                    </td>
                                                                    <td style="width: 151px;">
                                                                        <asp:TextBox ID="txtPreviousCity" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                                                                            Width="124px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                    </td>
                                                                    <td class="txtalgnrgt" style="width: 52px;">
                                                                        <label class="input-label">
                                                                            State :
                                                                        </label>
                                                                    </td>
                                                                    <td style="width: 106px;">
                                                                        <asp:DropDownList ID="ddlPreviousAddState" runat="server" Width="98px" CssClass="inputTextbox"
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
                                                                        <asp:TextBox ID="txtPreviousAddzip" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                            CssClass="tooltip zip_us calWidth" Width="127px" MaxLength="500" title="Enter valid Zip eg: 
XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                                    </td>
                                                                </tr>

                                                            </table>

                                                            <div id="divVerifyPreviousAddressBtn" runat="server" style="padding: 10px; width: 100%; float: right;">
                                                                <span class="fltrt" style="margin-right: 38px;">
                                                                    <asp:Button ID="btnVerifyPreviousAddress" CssClass="btn-success btn-xs" runat="server"
                                                                        OnClick="btnVerifyPreviousAddress_Click" Text="Verify Address" />
                                                                </span>
                                                            </div>

                                                            <div id="divVerifyPreviousAddressPnl" runat="server" visible="false" class="address-box" style="margin-top: -144px;">
                                                                <div>
                                                                    <span class="fltrt">
                                                                        <asp:ImageButton ID="imgbtnCloseVerifyAddress1" ImageUrl="~/App_Themes/Theme1/images/close-icon.png"
                                                                            runat="server" OnClick="btnVerifyPreviousAddressYes_Click" />
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
                                                                                            <asp:Label ID="lblUPreviousStreet1" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td></td>
                                                                                        <td>
                                                                                            <asp:Label ID="lblUPreviousStreet2" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="right">
                                                                                            <label class="input-label">
                                                                                                <b>City :</b>
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:Label ID="lblUPreviousCity" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="right">
                                                                                            <label class="input-label">
                                                                                                <b>State :</b>
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:Label ID="lblUPreviousState" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="right">
                                                                                            <label class="input-label">
                                                                                                <b>Zip :</b>
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:Label ID="lblUPreviousZip" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                            <td style="vertical-align: baseline;">
                                                                                <div id="divNotVerifiedAdd1" runat="server">
                                                                                    <table style="width: 100%">
                                                                                        <tr>
                                                                                            <td align="right" style="width: 107px;">
                                                                                                <label class="input-label">
                                                                                                    <b>Street :</b>
                                                                                                </label>
                                                                                            </td>
                                                                                            <td style="width: 220px;">
                                                                                                <asp:Label ID="lblVPreviousStreet1" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td></td>
                                                                                            <td>
                                                                                                <asp:Label ID="lblVPreviousStreet2" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="right">
                                                                                                <label class="input-label">
                                                                                                    <b>City :</b>
                                                                                                </label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="lblVPreviousCity" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="right">
                                                                                                <label class="input-label">
                                                                                                    <b>State :</b>
                                                                                                </label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="lblVPreviousState" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="right">
                                                                                                <label class="input-label">
                                                                                                    <b>Zip :</b>
                                                                                                </label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="lblVPreviousZip" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </div>
                                                                                <p style="color: Red; text-align: center;">
                                                                                    <asp:Label ID="lblUnverifiedAdd1" runat="server" Style="display: block; position: relative; top: 21px;"></asp:Label>
                                                                                </p>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="center" style="padding-top: 13px !important;">
                                                                                <asp:Button ID="btnVerifyPreviousAddressYes" CssClass="btn-warning btn-xs" runat="server"
                                                                                    OnClick="btnVerifyPreviousAddressYes_Click" Text="Use User Address" />
                                                                            </td>
                                                                            <td align="center">
                                                                                <asp:Button ID="btnVerifyPreviousAddressNo" CssClass="btn-success btn-xs" runat="server"
                                                                                    OnClick="btnVerifyPreviousAddressNo_Click" Text="Use Verified Address" />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                            <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                <span class="fltrt">
                                                                    <asp:Button ID="btnSchoolInfoPreviousAddNewSave" CssClass="buttonGreen medium"
                                                                        runat="server" Text="Save" CausesValidation="true"
                                                                        OnClick="btnSchoolInfoPreviousAddNewSave_Click" />
                                                                    <asp:LinkButton ID="lnkSchoolInfoPreviousAddNewCancel" CssClass="secondary medium bottom 
buttonalignment"
                                                                        runat="server"
                                                                        OnClick="lnkSchoolInfoPreviousAddNewCancel_Click">Cancel</asp:LinkButton></span>
                                                            </div>
                                                        </div>
                                                        <div class="divLicenseInfo" style="margin-top: 20px; width: 91%;">
                                                            <asp:GridView ID="gvSchoolInfoPrevious" ClientIDMode="Static" runat="server"
                                                                AutoGenerateColumns="False"
                                                                CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None"
                                                                OnRowDataBound="gvSchoolInfoPrevious_RowDataBound">
                                                                <AlternatingRowStyle BackColor="White" />
                                                                <Columns>
                                                                    <asp:TemplateField HeaderText="Street ">
                                                                        <ItemStyle />
                                                                        <EditItemTemplate>
                                                                            <asp:UpdatePanel ID="upSchoolInfoPrevious" runat="server">
                                                                                <Triggers>
                                                                                    <asp:PostBackTrigger ControlID="btnSchoolInfoPreviousUpdate" />
                                                                                </Triggers>
                                                                                <ContentTemplate>
                                                                                    <div>
                                                                                        <table class="grid-heading">
                                                                                            <tr>
                                                                                                <td style="width: 147px;">
                                                                                                    <span id="lblApprovalAgency">123 Test Street</span>
                                                                                                </td>
                                                                                                <td style="width: 208px;">
                                                                                                    <span id="lblSchoolCode">Sacramento</span>
                                                                                                </td>
                                                                                                <td style="width: 66px;">
                                                                                                    <span id="lblExpDate">California</span>
                                                                                                </td>
                                                                                                <td style="width: 66px;">
                                                                                                    <span id="lblzipco">94203</span>
                                                                                                </td>

                                                                                                <td></td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </div>
                                                                                    <div class="divGridEdit">
                                                                                        <p class="addNewDiv">
                                                                                            <span>Edit Previous Address</span>
                                                                                        </p>
                                                                                        <table class="tblApplReqForm5 wthtop20" style="width: 96%;">
                                                                                            <tr>
                                                                                                <td style="vertical-align: middle; width: 130px;" class="txtalgnrgt">
                                                                                                    <label class="input-label required">
                                                                                                        Street :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td colspan="5">
                                                                                                    <asp:TextBox ID="txtSateliteAddEdit" runat="server" Width="482px" CssClass="calWidth us_street"
                                                                                                        MaxLength="500"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td></td>
                                                                                                <td colspan="6">
                                                                                                    <asp:TextBox ID="TextBoxsateliteEdit" runat="server" Width="482px" CssClass="calWidth us_street"
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
                                                                                                    <asp:TextBox ID="txtSateliteCityEdit" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                                                                                                        Width="124px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                                </td>
                                                                                                <td class="txtalgnrgt" style="width: 52px;">
                                                                                                    <label class="input-label required">
                                                                                                        State :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td style="width: 106px;">
                                                                                                    <asp:DropDownList ID="ddlSateliteAddStateEdit" runat="server" Width="98px" CssClass="inputTextbox"
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
                                                                                                    <asp:TextBox ID="txtSateliteAddzipEdit" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                                                        CssClass="tooltip zip_us calWidth" Width="127px" MaxLength="500" title="Enter valid Zip eg: 
XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>


                                                                                        </table>
                                                                                        <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                                            <span class="fltrt">
                                                                                                <asp:Button ID="btnSchoolInfoPreviousUpdate"
                                                                                                    CssClass="buttonGreen medium" runat="server" Text="Update"
                                                                                                    CausesValidation="true"
                                                                                                    OnClick="btnSchoolInfoPreviousUpdate_Click" />
                                                                                                <asp:LinkButton ID="lnkSchoolInfoPreviousCancelUpdate" CssClass="secondary 
medium bottom buttonalignment"
                                                                                                    runat="server"
                                                                                                    OnClick="lnkSchoolInfoPreviousCancelUpdate_Click">Cancel</asp:LinkButton></span>
                                                                                        </div>
                                                                                    </div>
                                                                                </ContentTemplate>
                                                                            </asp:UpdatePanel>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblInfoPStreet" runat="server" Text="123 Test Street"></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="City">
                                                                        <ItemStyle />
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblInfoPcity" runat="server" Text="Sacramento"></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="State">
                                                                        <ItemStyle />
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblInfoPState" runat="server" Text="California"></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Zip">
                                                                        <ItemStyle />
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblInfoPZip" runat="server" Text="94203"></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField ItemStyle-Width="60px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                                                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                                                                        <ItemTemplate>
                                                                            <span class="fltrt AfterApproved">
                                                                                <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" CommandArgument="1"
                                                                                    runat="server"
                                                                                    RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit"
                                                                                    ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                                    OnClick="lnkSchoolInfoPreviousEdit_Click" />
                                                                                <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                                    CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                                                                    OnClientClick="javascript:return confirm('Are you sure you want to delete?')"
                                                                                    OnClick="lnkSchoolInfoPreviousDelete_Click" /></span>
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



                                                        <table class=" tblApplReqForm5">

                                                            <tr>
                                                                <td colspan="5">
                                                                    <b>6.&nbsp;&nbsp;Mailing Address (if different from school address) :</b>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="vertical-align: middle; width: 130px;" class="txtalgnrgt">
                                                                    <label class="input-label required">
                                                                        Street :
                                                                    </label>
                                                                </td>
                                                                <td colspan="5">
                                                                    <asp:TextBox ID="txtMailingAdd" runat="server" Width="482px" CssClass="calWidth us_street"
                                                                        MaxLength="500"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td colspan="6">
                                                                    <asp:TextBox ID="TextBox140" runat="server" Width="482px" CssClass="calWidth us_street"
                                                                        MaxLength="500"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <%-- <tr>
                                                                <td></td>
                                                                <td colspan="5">
                                                                    <asp:TextBox ID="txtStreet2ResEdit" runat="server" Width="482px" CssClass="calWidth us_street"
                                                                        MaxLength="500"></asp:TextBox>
                                                                </td>
                                                            </tr>--%>
                                                            <tr>
                                                                <td class="txtalgnrgt">
                                                                    <label class="input-label required">
                                                                        City :
                                                                    </label>
                                                                </td>
                                                                <td style="width: 151px;">
                                                                    <asp:TextBox ID="txtMailingCity" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                                                                        Width="124px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                </td>
                                                                <td class="txtalgnrgt" style="width: 52px;">
                                                                    <label class="input-label required">
                                                                        State :
                                                                    </label>
                                                                </td>
                                                                <td style="width: 106px;">
                                                                    <asp:DropDownList ID="ddlMailingState" runat="server" Width="98px" CssClass="inputTextbox"
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
                                                                    <asp:TextBox ID="txtMailngZip" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                        CssClass="tooltip zip_us calWidth" Width="127px" MaxLength="500" title="Enter valid Zip eg: 
XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                        </table>

                                                        <div class="clear">
                                                        </div>

                                                        <div id="divVerifySchoolMailingAddressBtn" runat="server" style="padding: 10px;">
                                                            <span class="fltrt" style="margin-right: 68px;">
                                                                <asp:Button ID="btnVerifySchoolMailingAddress" CssClass="btn-success btn-xs" runat="server"
                                                                    OnClick="btnVerifySchoolMailingAddress_Click" Text="Verify Address" />
                                                            </span>
                                                        </div>

                                                        <div id="divVerifySchoolMailingAddressPnl" runat="server" visible="false" class="address-box">
                                                            <div>
                                                                <span class="fltrt">
                                                                    <asp:ImageButton ID="ImageButton3" ImageUrl="~/App_Themes/Theme1/images/close-icon.png"
                                                                        runat="server" OnClick="btnVerifySchoolMailingAddressYes_Click" />
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
                                                                                        <asp:Label ID="lblUSchoolMailingStreet1" runat="server"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td></td>
                                                                                    <td>
                                                                                        <asp:Label ID="lblUSchoolMailingStreet2" runat="server"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right">
                                                                                        <label class="input-label">
                                                                                            <b>City :</b>
                                                                                        </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:Label ID="lblUSchoolMailingCity" runat="server"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right">
                                                                                        <label class="input-label">
                                                                                            <b>State :</b>
                                                                                        </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:Label ID="lblUSchoolMailingState" runat="server"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right">
                                                                                        <label class="input-label">
                                                                                            <b>Zip :</b>
                                                                                        </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:Label ID="lblUSchoolMailingZip" runat="server"></asp:Label>
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
                                                                                            <asp:Label ID="lblVSchoolMailingStreet1" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td></td>
                                                                                        <td>
                                                                                            <asp:Label ID="lblVSchoolMailingStreet2" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="right">
                                                                                            <label class="input-label">
                                                                                                <b>City :</b>
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:Label ID="lblVSchoolMailingCity" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="right">
                                                                                            <label class="input-label">
                                                                                                <b>State :</b>
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:Label ID="lblVSchoolMailingState" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="right">
                                                                                            <label class="input-label">
                                                                                                <b>Zip :</b>
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:Label ID="lblVSchoolMailingZip" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </div>
                                                                            <p style="color: Red; text-align: center;">
                                                                                <asp:Label ID="Label1" runat="server" Style="display: block; position: relative; top: 21px;"></asp:Label>
                                                                            </p>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="center" style="padding-top: 13px !important;">
                                                                            <asp:Button ID="btnVerifySchoolMailingAddressYes" CssClass="btn-warning btn-xs"
                                                                                runat="server"
                                                                                OnClick="btnVerifySchoolMailingAddressYes_Click" Text="Use User Address" />
                                                                        </td>
                                                                        <td align="center">
                                                                            <asp:Button ID="btnVerifySchoolMailingAddressNo" CssClass="btn-success btn-xs" runat="server"
                                                                                OnClick="btnVerifySchoolMailingAddressNo_Click" Text="Use Verified Address" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>

                                                        <div class="clear"></div>
                                                        <table class="tblApplReqForm5" style="width: 100%">
                                                            <tr>
                                                                <td colspan="5">
                                                                    <b>7.&nbsp;&nbsp;Director/Administrator Name & Job Title :</b>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txtalgnrgt" style="width: 124px;">
                                                                    <label class="input-label required">
                                                                        Name :
                                                                    </label>
                                                                </td>

                                                                <td style="width: 151px;">
                                                                    <asp:TextBox ID="TextBox141" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                                                                        Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                </td>



                                                                <td class="txtalgnrgt" style="width: 110px;">
                                                                    <label class="input-label required">
                                                                        Administrator Email :
                                                                    </label>
                                                                </td>
                                                                <td style="width: 150px;">
                                                                    <asp:TextBox ID="txtDirectorEmail" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                                        Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
<td class="txtalgnrgt" style="width: 124px;">
                                                                    <label class="input-label required">
                                                                        Job Title  :
                                                                    </label>
                                                                </td>

                                                                <td style="width: 151px;">
                                                                    <asp:TextBox ID="txtSclInfoJobTitle" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                                                                        Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                </td>
                                                                <td colspan="2"></td>
                                                            </tr>
                                                            <tr>
                                                            <td class="txtalgnrgt" style="width: 124px;">
                                                                <label class="input-label required">
                                                                    Primary Number :
                                                                </label>
                                                            </td>
                                                            <td style="width: 151px;">
                                                                <asp:TextBox ID="txtSclInfoPriNumber" runat="server" CssClass="phone_us" autocomplete="off"
                                                                    Width="170px" MaxLength="14"></asp:TextBox>

                                                            </td>
                                                            <td style="text-align: left;">
                                                                <asp:CheckBox ID="chkSclInfoPriNum" runat="server" Text="Mobile" /></td>
                                                                </tr>
                                                            <tr>
                                                                <td class="txtalgnrgt" style="width: 124px;">
                                                                    <label class="input-label">
                                                                        Secondary Number :
                                                                    </label>
                                                                </td>
                                                                <td style="width: 151px;">
                                                                    <asp:TextBox ID="txtSclInfoSecNumber" runat="server" CssClass="phone_us" autocomplete="off"
                                                                        Width="170px" MaxLength="14"></asp:TextBox>

                                                                </td>
                                                                <td style="text-align: left;">
                                                                    <asp:CheckBox ID="chktxtSclInfo" runat="server" Text="Mobile" /></td>
                                                            </tr>

                                                        </table>

                                                        <div class="clear">
                                                        </div>


                                                        <table class="tblApplReqForm5" style="width: 100%; margin-bottom: 5px;">
                                                            <tr>
                                                                <td colspan="5">
                                                                    <b>8.&nbsp;&nbsp;Contact Name for this Application & Job Title (if different than Director/Administrator Name & Job Title) :</b>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txtalgnrgt" style="width: 124px;">
                                                                    <label class="input-label">
                                                                        Name :
                                                                    </label>
                                                                </td>

                                                                <td style="width: 151px;">
                                                                    <asp:TextBox ID="txtApplicationName" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                                                                        Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                </td>



                                                                <td class="txtalgnrgt" style="width: 110px;">
                                                                    <label class="input-label">
                                                                        Contact Email :
                                                                    </label>
                                                                </td>
                                                                <td style="width: 150px;">
                                                                    <asp:TextBox ID="txtApplicationEmail" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                                        Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txtalgnrgt" style="width: 124px;">
                                                                    <label class="input-label">
                                                                        Job Title  :
                                                                    </label>
                                                                </td>

                                                                <td style="width: 151px;">
                                                                    <asp:TextBox ID="txtSchInfoSecJobtitle" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                                                                        Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                </td>
                                                                <td colspan="2"></td>
                                                            </tr>
                                                            <tr>
                                                            <td class="txtalgnrgt" style="width: 124px;">
                                                                <label class="input-label">
                                                                    Primary Number :
                                                                </label>
                                                            </td>
                                                            <td style="width: 151px;">
                                                                <asp:TextBox ID="txtApplicationNum" runat="server" CssClass="phone_us" autocomplete="off"
                                                                    Width="170px" MaxLength="14"></asp:TextBox>

                                                            </td>
                                                            <td style="text-align: left;">
                                                                <asp:CheckBox ID="CheckBox17" runat="server" Text="Mobile" /></td>
                                                                </tr>
                                                            <tr>
                                                                <td class="txtalgnrgt" style="width: 124px;">
                                                                    <label class="input-label">
                                                                        Secondary Number :
                                                                    </label>
                                                                </td>
                                                                <td style="width: 151px;">
                                                                    <asp:TextBox ID="TextBox143" runat="server" CssClass="phone_us" autocomplete="off"
                                                                        Width="170px" MaxLength="14"></asp:TextBox>

                                                                </td>
                                                                <td style="text-align: left;">
                                                                    <asp:CheckBox ID="CheckBox18" runat="server" Text="Mobile" /></td>
                                                            </tr>

                                                        </table>


                                                        <div class="clear">
                                                        </div>
                                                        <table class=" tblApplReqForm5">

                                                            <tr>
                                                                <td colspan="5">
                                                                    <b>9.&nbsp;&nbsp;Satellite Location Address (if any) :</b>
                                                                </td>
                                                            </tr>

                                                        </table>


                                                        <div class="divLicenseInfon divaddnew AfterApproved" id="divAddbtnSatelliteLocation"
                                                            runat="server">
                                                            <span style="float: right; margin-right: 32px; margin-top: 15px;">
                                                                <asp:Button ID="btnSatelliteLocationAddNew" CssClass="buttonGreen small" runat="server"
                                                                    Text="Add" CausesValidation="true" OnClick="btnSatelliteLocationAddNew_Click" />
                                                            </span>
                                                        </div>


                                                        <asp:Literal ID="ltrSatelliteLocation" runat="server"></asp:Literal>

                                                        <div class="divLicenseInfo" id="divAddSatelliteLocation" runat="server" visible="false" style="width: 91%; margin-top: 20px; margin-bottom: 10px;">
                                                            <p class="addNewDiv">
                                                                <span>Satellite Location Address </span>
                                                            </p>
                                                            <table class="tblApplReqForm5 wthtop20" style="width: 96%;">
                                                                <tr>
                                                                    <td style="vertical-align: middle; width: 130px;" class="txtalgnrgt">
                                                                        <label class="input-label">
                                                                            Street :
                                                                        </label>
                                                                    </td>

                                                                    <td colspan="5">
                                                                        <asp:TextBox ID="txtSatelliteLoc" runat="server" Width="482px" CssClass="calWidth us_street"
                                                                            MaxLength="500"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td></td>
                                                                    <td colspan="6">
                                                                        <asp:TextBox ID="TextBox144" runat="server" Width="482px" CssClass="calWidth us_street"
                                                                            MaxLength="500"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <%-- <tr>
                                                                <td></td>
                                                                <td colspan="5">
                                                                    <asp:TextBox ID="txtStreet2ResEdit" runat="server" Width="482px" CssClass="calWidth us_street"
                                                                        MaxLength="500"></asp:TextBox>
                                                                </td>
                                                            </tr>--%>
                                                                <tr>
                                                                    <td class="txtalgnrgt">
                                                                        <label class="input-label">
                                                                            City :
                                                                        </label>
                                                                    </td>
                                                                    <td style="width: 151px;">
                                                                        <asp:TextBox ID="txtSatelliteCity" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                                                                            Width="124px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                    </td>
                                                                    <td class="txtalgnrgt" style="width: 52px;">
                                                                        <label class="input-label">
                                                                            State :
                                                                        </label>
                                                                    </td>
                                                                    <td style="width: 106px;">
                                                                        <asp:DropDownList ID="ddlSatelliteState" runat="server" Width="98px" CssClass="inputTextbox"
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
                                                                        <asp:TextBox ID="txtSatelliteZip" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                            CssClass="tooltip zip_us calWidth" Width="127px" MaxLength="500" title="Enter valid Zip eg: 
XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>



                                                            <div id="divVerifySatelliteLocationAddressBtn" runat="server" style="width: 100%; float: right; padding: 10px;">
                                                                <span class="fltrt" style="margin-right: 16px;">
                                                                    <asp:Button ID="btnVerifySatelliteLocationAddress" CssClass="btn-success btn-xs" runat="server"
                                                                        OnClick="btnVerifySatelliteLocationAddress_Click" Text="Verify Address" />
                                                                </span>
                                                            </div>

                                                            <div id="divVerifySatelliteLocationAddressPnl" runat="server" visible="false" class="address-box">
                                                                <div>
                                                                    <span class="fltrt">
                                                                        <asp:ImageButton ID="ImageButton4" ImageUrl="~/App_Themes/Theme1/images/close-icon.png"
                                                                            runat="server" OnClick="btnVerifySatelliteLocationAddressYes_Click" />
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
                                                                                            <asp:Label ID="lblUSatelliteLocationStreet1" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td></td>
                                                                                        <td>
                                                                                            <asp:Label ID="lblUSatelliteLocationStreet2" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="right">
                                                                                            <label class="input-label">
                                                                                                <b>City :</b>
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:Label ID="lblUSatelliteLocationCity" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="right">
                                                                                            <label class="input-label">
                                                                                                <b>State :</b>
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:Label ID="lblUSatelliteLocationState" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="right">
                                                                                            <label class="input-label">
                                                                                                <b>Zip :</b>
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:Label ID="lblUSatelliteLocationZip" runat="server"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                            <td style="vertical-align: baseline;">
                                                                                <div id="div25" runat="server">
                                                                                    <table style="width: 100%">
                                                                                        <tr>
                                                                                            <td align="right" style="width: 107px;">
                                                                                                <label class="input-label">
                                                                                                    <b>Street :</b>
                                                                                                </label>
                                                                                            </td>
                                                                                            <td style="width: 220px;">
                                                                                                <asp:Label ID="lblVSatelliteLocationStreet1" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td></td>
                                                                                            <td>
                                                                                                <asp:Label ID="lblVSatelliteLocationStreet2" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="right">
                                                                                                <label class="input-label">
                                                                                                    <b>City :</b>
                                                                                                </label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="lblVSatelliteLocationCity" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="right">
                                                                                                <label class="input-label">
                                                                                                    <b>State :</b>
                                                                                                </label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="lblVSatelliteLocationState" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="right">
                                                                                                <label class="input-label">
                                                                                                    <b>Zip :</b>
                                                                                                </label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Label ID="lblVSatelliteLocationZip" runat="server"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </div>
                                                                                <p style="color: Red; text-align: center;">
                                                                                    <asp:Label ID="Label2" runat="server" Style="display: block; position: relative; top: 21px;"></asp:Label>
                                                                                </p>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="center" style="padding-top: 13px !important;">
                                                                                <asp:Button ID="btnVerifySatelliteLocationAddressYes" CssClass="btn-warning btn-xs"
                                                                                    runat="server"
                                                                                    OnClick="btnVerifySatelliteLocationAddressYes_Click" Text="Use User Address" />
                                                                            </td>
                                                                            <td align="center">
                                                                                <asp:Button ID="btnVerifySatelliteLocationAddressNo" CssClass="btn-success btn-xs"
                                                                                    runat="server"
                                                                                    OnClick="btnVerifySatelliteLocationAddressNo_Click" Text="Use Verified Address" />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </div>


                                                            <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                <span class="fltrt">
                                                                    <asp:Button ID="btnSatelliteLocationAddNewSave" CssClass="buttonGreen medium"
                                                                        runat="server" Text="Save" CausesValidation="true" OnClick="btnSatelliteLocationAddNewSave_Click" />
                                                                    <asp:LinkButton ID="lnkSatelliteLocationAddNewCancel" CssClass="secondary medium bottom 
buttonalignment"
                                                                        runat="server"
                                                                        OnClick="lnkSatelliteLocationAddNewCancel_Click">Cancel</asp:LinkButton></span>
                                                            </div>
                                                        </div>

                                                        <div class="divLicenseInfo" style="margin-top: 20px; width: 91%;">
                                                            <asp:GridView ID="gvSatelliteLocation" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                                CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None"
                                                                OnRowDataBound="gvSatelliteLocation_RowDataBound">
                                                                <AlternatingRowStyle BackColor="White" />
                                                                <Columns>
                                                                    <asp:TemplateField HeaderText="Street ">
                                                                        <ItemStyle />
                                                                        <EditItemTemplate>
                                                                            <asp:UpdatePanel ID="upSatelliteLocation" runat="server">
                                                                                <Triggers>
                                                                                    <asp:PostBackTrigger ControlID="btnSatelliteLocationUpdate" />
                                                                                </Triggers>
                                                                                <ContentTemplate>
                                                                                    <div>
                                                                                        <table class="grid-heading">
                                                                                            <tr>
                                                                                                <td style="width: 147px;">
                                                                                                    <span id="lblApprovalAgency">123 Test Street</span>
                                                                                                </td>
                                                                                                <td style="width: 208px;">
                                                                                                    <span id="lblSchoolCode">Sacramento</span>
                                                                                                </td>
                                                                                                <td style="width: 66px;">
                                                                                                    <span id="lblExpDate">California</span>
                                                                                                </td>
                                                                                                <td style="width: 66px;">
                                                                                                    <span id="lblzipco">California</span>
                                                                                                </td>

                                                                                                <td></td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </div>
                                                                                    <div class="divGridEdit">
                                                                                        <p class="addNewDiv">
                                                                                            <span>Edit Previous Address</span>
                                                                                        </p>
                                                                                        <table class="tblApplReqForm5 wthtop20" style="width: 96%;">
                                                                                            <tr>
                                                                                                <td style="vertical-align: middle; width: 130px;" class="txtalgnrgt">
                                                                                                    <label class="input-label required">
                                                                                                        Street :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td colspan="5">
                                                                                                    <asp:TextBox ID="txtPreviousAddEdit" runat="server" Width="482px" CssClass="calWidth us_street"
                                                                                                        MaxLength="500"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td></td>
                                                                                                <td colspan="6">
                                                                                                    <asp:TextBox ID="TextBoxEdit" runat="server" Width="482px" CssClass="calWidth us_street"
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
                                                                                                    <asp:TextBox ID="txtPreviousCityEdit" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                                                                                                        Width="124px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                                </td>
                                                                                                <td class="txtalgnrgt" style="width: 52px;">
                                                                                                    <label class="input-label required">
                                                                                                        State :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td style="width: 106px;">
                                                                                                    <asp:DropDownList ID="ddlPreviousAddStateEdit" runat="server" Width="98px"
                                                                                                        CssClass="inputTextbox"
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
                                                                                                    <asp:TextBox ID="txtPreviousAddzipEdit" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                                                                        CssClass="tooltip zip_us calWidth" Width="127px" MaxLength="500" title="Enter valid Zip eg: 
XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>


                                                                                        </table>
                                                                                        <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                                            <span class="fltrt">
                                                                                                <asp:Button ID="btnSatelliteLocationUpdate"
                                                                                                    CssClass="buttonGreen medium" runat="server" Text="Update"
                                                                                                    CausesValidation="true"
                                                                                                    OnClick="btnSatelliteLocationUpdate_Click" />
                                                                                                <asp:LinkButton ID="lnkSatelliteLocationCancelUpdate" CssClass="secondary medium 
bottom buttonalignment"
                                                                                                    runat="server"
                                                                                                    OnClick="lnkSatelliteLocationCancelUpdate_Click">Cancel</asp:LinkButton></span>
                                                                                        </div>
                                                                                    </div>
                                                                                </ContentTemplate>
                                                                            </asp:UpdatePanel>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblInfoPStreet" runat="server" Text="123 Test Street"></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="City">
                                                                        <ItemStyle />
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblInfoPcity" runat="server" Text="Sacramento"></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="State">
                                                                        <ItemStyle />
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblInfoPState" runat="server" Text="California"></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Zip">
                                                                        <ItemStyle />
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblInfoPZip" runat="server" Text="94203"></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField ItemStyle-Width="60px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                                                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                                                                        <ItemTemplate>
                                                                            <span class="fltrt AfterApproved">
                                                                                <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" CommandArgument="1"
                                                                                    runat="server"
                                                                                    RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit"
                                                                                    ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                                    OnClick="lnkSatelliteLocationEdit_Click" />
                                                                                <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                                    CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                                                                    OnClientClick="javascript:return confirm('Are you sure you want to delete?')"
                                                                                    OnClick="lnkSatelliteLocationDelete_Click" /></span>
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



                                                        <%--<div id="divVerifyMailingAddressBtn" runat="server" style="padding: 10px;">
                                                            <span class="fltrt" style="margin-right: 50px;">
                                                                <asp:Button ID="btnVerifyMailingAddress" CssClass="btn-success btn-xs" runat="server"
                                                                    OnClick="btnVerifyMailingAddress_Click" Text="Verify Address" />
                                                            </span>
                                                        </div>
                                                        <div id="divVerifyMailingAddressPnl" runat="server" visible="false" class="address-box">
                                                            <div>
                                                                <span class="fltrt">
                                                                    <asp:ImageButton ID="imgbtnCloseVerifyMailingAddress" 
ImageUrl="~/App_Themes/Theme1/images/close-icon.png"
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
                                                                                <asp:Label ID="lblUnverifiedMailingAdd" runat="server" Style="display: block; position: relative; 
top: 21px;"></asp:Label>
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
                                                        </div>--%>
                                                        <div class="clear">
                                                        </div>
                                                        <%--<table class=" tblApplReqForm5">
                                                           
                                                            <tr>
                                                                <td colspan="6">
                                                                    <table class="tblApplReqForm5">
                                                                        <tr>
                                                                            <td class="txtalgnrgt" style="width: 145px;"></td>
                                                                            <td></td>
                                                                            <td class="txtalgnrgt" style="width: 160px;"></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4">
                                                                                <b>8.&nbsp;&nbsp;Email Address :</b>
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
                                                                                <br />
                                                                                <span>Email address must be provided by law, if you have one. </span>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                    <table class="tblLiveScanApp tblLiveScanApp1" width="100%">
                                                                        <tr>
                                                                            <td style="width: 480px; padding-left: 0px;">
                                                                                <b>9.&nbsp;&nbsp;Do you have a website?</b>
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
                                                                                    If yes, please provide URL -->
                                                                                </label>
                                                                            </td>
                                                                            <td class="cursorpointer">
                                                                                <asp:TextBox ID="txtWebsite" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"
                                                                                    MaxLength="150"></asp:TextBox>
                                                                                <br />
                                                                                <span>eg: http://www.example.com</span>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>--%>
                                                    </fieldset>
                                    <div class="address-box posFixed" id="divEMail" runat="server" visible="false" style="min-height: 30px; width: 87%; margin: 15px auto;">
                                                        <span class="notok"></span>
                                                        <div class="error_header">
                                                            <asp:Label ID="lblErrorPnl1" runat="server" Text=""></asp:Label>

                                                        </div>
                                                        <div class="" style="margin: 0 auto; width: 300px; line-height: 30px">
                                                            <%--<table class="padding-table" style="margin: 0 auto;">
                                                                <tr>
                                                                    <td colspan="4" align="center">
                                                                        <asp:Button ID="btnProceed" Text="Yes" runat="server" Style="outline: 0;" CssClass="buttonGreen 
small"
                                                                            OnClick="btnYes_Click" />
                                                                        <asp:Button ID="btnProceedCancel" Text="No" runat="server" Style="outline: 0;" CssClass="secondary 
small"
                                                                            OnClick="btnNo_Click" />
                                                                    </td>
                                                                </tr>
                                                            </table>--%>
                                                            <style>
                                                                .padding-table td {
                                                                    padding: 4px;
                                                                }
                                                            </style>
                                                        </div>
                                                    </div>
                                     <div class="readinstrucn">
                                                        <asp:CheckBox ID="chkManSection1" runat="server" Text="I have read the instructions." />
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
                                            <span>School Eligibility</span> </span>
                                        </div>
                                        <fieldset class="flsNewApplReqForm flsNewApplReqForm2" style="text-align: justify;">
                                            <asp:Literal ID="ltrErrorMsgChildSuppInfoEdit" runat="server"></asp:Literal>
                                            <br />
                                            <asp:CheckBox ID="CheckBox10" runat="server" Text="The school and massage program(s) are approved and/or accredited by at least one agency as defined by 
                                                            California Business and Professions Code section 4601. Please list all approval and/or accrediting agencies below." />


                                            <div class="divLicenseInfon divaddnew AfterApproved" id="divAddbtnApprovalAgency"
                                                runat="server">
                                                <span style="float: right; margin-right: 10px;">
                                                    <asp:Button ID="btnApprovalAgencyAddNew" CssClass="buttonGreen small" runat="server"
                                                        Text="Add" CausesValidation="true" OnClick="btnApprovalAgencyAddNew_Click" />
                                                </span>
                                            </div>
                                            <asp:Literal ID="ltrApprovalAgency" runat="server"></asp:Literal>
                                            <div class="divLicenseInfo" id="divAddApprovalAgency" runat="server" visible="false">
                                                <p class="addNewDiv">
                                                    <span>Add Approval Agency</span>
                                                </p>
                                                <table class="tblApplReqForm5 wthtop20" style="width: 99%;">
                                                    <tr>
                                                        <td class="txtalgnrgt tdwidth1">
                                                            <label class="input-label required">
                                                                Approval/Accrediting Agency :
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlAddApprovalAgency" runat="server" CssClass="inputTextbox">
                                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                <asp:ListItem Value="A1">Agency 1</asp:ListItem>
                                                                <asp:ListItem Value="A2">Agency 2</asp:ListItem>
                                                                <asp:ListItem Value="A3">Agency 3</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>

                                                        <td class="txtalgnrgt tdwidth2">
                                                            <label class="input-label">
                                                                School Code # :
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtAddSchoolCodeNo" runat="server" CssClass="inputTextbox" MaxLength="15"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="txtalgnrgt">
                                                            <label class="input-label">
                                                                Expiration Date :
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtAddExpirationDate" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calender"></asp:TextBox>
                                                        </td>

                                                        <td></td>
                                                    </tr>
                                                </table>
                                                <table class="tblApplReqForm5 wthtop20 divLicenseInfo" style="width: 100%; width: 100%; border-bottom: medium none; border-right: medium none; border-left: medium none;">
                                                    <tr>
                                                        <td colspan="6" style="padding: 0px ! important;">
                                                            <div>
                                                                <p class="addNewDiv">
                                                                    <span>Approval Agency Supporting Documentation</span>
                                                                </p>
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="txtalgnrgt" style="width: 180px;">
                                                            <label class="input-label required">
                                                                Document Name :
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtappagenDocNAme" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td class="txtalgnrgt" style="width: 128px;">
                                                            <label class="input-label required">
                                                                Document Type :
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlAppAgencSup" OnSelectedIndexChanged="ddlAppAgencSup_SelectedIndexChanged" AutoPostBack="true" runat="server" CssClass="inputTextbox">
                                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                <asp:ListItem Value="1">Approval Letter</asp:ListItem>
                                                                <asp:ListItem Value="2">Certificate</asp:ListItem>
                                                                <asp:ListItem Value="3">Site Visit Report</asp:ListItem>
                                                                <asp:ListItem Value="4">Other (specify)</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr id="trSclElgOtherDocumentType" runat="server" visible="false">
                                                        <td></td>
                                                        <td></td>
                                                        <td class="txtalgnrgt" style="width: 135px;">
                                                            <label class="input-label">
                                                                Other Document Type :
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtSclElgOtherDocmentType" Width="167px" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="txtalgnrgt">
                                                            <label class="input-label required">
                                                                Document :
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:FileUpload ID="FileUpload76" runat="server" />
                                                        </td>
                                                        <td colspan="3">
                                                            <asp:Button ID="Button83" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                        <td></td>
                                                    </tr>

                                                </table>

                                                <div class="address-box posFixed" id="dvErrApprovalAgency" runat="server" visible="false" style="min-height: 30px; width: 87%; margin: 15px auto;">
                                                    <span class="notok"></span>
                                                    <div class="error_header">
                                                        <asp:Label ID="lblErrApprovalAgen" runat="server" Text=""></asp:Label>

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
                                                        <asp:Button ID="btnApprovalAgencyAddNewSave" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnApprovalAgencyAddNewSave_Click" />
                                                        <asp:LinkButton ID="lnkApprovalAgencyAddNewCancel" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server" OnClick="lnkApprovalAgencyAddNewCancel_Click">Cancel</asp:LinkButton></span>
                                                </div>
                                            </div>
                                            <div class="divLicenseInfo">
                                                <asp:GridView ID="gvApprovalAgency" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                    CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None"
                                                    OnRowDataBound="gvApprovalAgency_RowDataBound">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Approval/Accrediting Agency">
                                                            <ItemStyle />
                                                            <EditItemTemplate>
                                                                <asp:UpdatePanel ID="upApprovalAgency2" runat="server">
                                                                    <Triggers>
                                                                        <asp:PostBackTrigger ControlID="btnApprovalAgencyUpdate" />
                                                                    </Triggers>
                                                                    <ContentTemplate>
                                                                        <div>
                                                                            <table class="grid-heading">
                                                                                <tr>
                                                                                    <td style="width: 147px;">
                                                                                        <span id="lblApprovalAgency">Agency 1</span>
                                                                                    </td>
                                                                                    <td style="width: 208px;">
                                                                                        <span id="lblSchoolCode">SCH001</span>
                                                                                    </td>
                                                                                    <td style="width: 66px;">
                                                                                        <span id="lblExpDate">02/04/2016</span>
                                                                                    </td>

                                                                                    <td></td>
                                                                                </tr>
                                                                            </table>
                                                                        </div>
                                                                        <div class="divGridEdit">
                                                                            <p class="addNewDiv">
                                                                                <span>Edit Approval Agency</span>
                                                                            </p>
                                                                            <table class="tblApplReqForm5 wthtop20" style="width: 96%;">
                                                                                <tr>
                                                                                    <td class="txtalgnrgt tdwidth1">
                                                                                        <label class="input-label required">
                                                                                            App./Accrediting Agency :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:DropDownList ID="ddlAddApprovalAgencyEdit" runat="server" CssClass="inputTextbox">
                                                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                                            <asp:ListItem Value="A1">Agency 1</asp:ListItem>
                                                                                            <asp:ListItem Value="A2">Agency 2</asp:ListItem>
                                                                                            <asp:ListItem Value="A3">Agency 3</asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                    <td class="txtalgnrgt tdwidth2">
                                                                                        <label class="input-label">
                                                                                            School Code :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="txtSchoolCodeEdit" runat="server" CssClass="inputTextbox" MaxLength="15"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt">
                                                                                        <label class="input-label required">
                                                                                            Expiration Date :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="txtExpirationDateEdit" runat="server" CssClass="inputTextbox calender"></asp:TextBox>
                                                                                    </td>

                                                                                </tr>

                                                                            </table>
                                                                            <div class="address-box posFixed" id="dvEditErApprovalAgency" runat="server" visible="false" style="min-height: 30px; width: 87%; margin: 15px auto;">
                                                                                <span class="notok"></span>
                                                                                <div class="error_header">
                                                                                    <asp:Label ID="lblErrorEditErApprovalAgency" runat="server" Text=""></asp:Label>

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
                                                                                    <asp:Button ID="btnApprovalAgencyUpdate"
                                                                                        CssClass="buttonGreen medium" runat="server" Text="Update" CausesValidation="true"
                                                                                        OnClick="btnApprovalAgencyUpdate_Click" />
                                                                                    <asp:LinkButton ID="lnkApprovalAgencyCancelUpdate" CssClass="secondary medium bottom buttonalignment"
                                                                                        runat="server" OnClick="lnkApprovalAgencyCancelUpdate_Click">Cancel</asp:LinkButton></span>
                                                                            </div>
                                                                        </div>
                                                                    </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblApprovalAgencyName" runat="server" Text="Agency 1"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="School Code #">
                                                            <ItemStyle />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblSchoolCode" runat="server" Text="SCH001"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Expiration Date">
                                                            <ItemStyle />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblExpirationDate" runat="server" Text="02/04/2016"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField ItemStyle-Width="60px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                                                            <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                                                            <ItemTemplate>
                                                                <span class="fltrt AfterApproved">
                                                                    <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" CommandArgument="1" runat="server"
                                                                        RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                        OnClick="lnkApprovalAgencyEdit_Click" />
                                                                    <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                        CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?')"
                                                                        OnClick="lnkApprovalAgencyDelete_Click" /></span>
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

                                            <%--<div id="pnlGridDocument" runat="server" class="grid-header" style="visibility: hidden;">
                                                            <table class="index brdr grid mozillapdgnone" id="Table3" style="color: #333333; width: 96%; margin: 10px auto; border-collapse: collapse;"
                                                                cellpadding="5" cellspacing="0">
                                                                <tbody>
                                                                    <tr>
                                                                        <th scope="col">Approval/Accrediting Agency
                                                                        </th>
                                                                        <th scope="col">School Code Number
                                                                        </th>
                                                                        <th scope="col">Expiration Date
                                                                        </th>

                                                                    </tr>
                                                                    <tr class="bordrbtm gridrow" id="trGridRowDoc" runat="server">
                                                                        <td class="InEditModetd">Demo Approval
                                                                        </td>
                                                                        <td>www.website.com
                                                                        </td>
                                                                        <td>school01
                                                                        </td>
                                                                        <=%--                                                                            <td>
                                                                                <a class="hyperlink" target="_blank" href="../../App_Themes/Public/images/Chrysanthemum.jpg">Document Details </a>
                                                                            </td>
                                                                            <td>
                                                                                <span>
                                                                                    <asp:ImageButton ID="imgbtnDocumentEdit" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                                        OnClick="imgbtnDocumentEdit_Click" />
                                                                                    <input id="Image6" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"
                                                                                        type="image"></span>
                                                                            </td>--%=>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>--%>

                                            <table>
                                                <tr style="height: 15px; width: 100%;"></tr>
                                                <tr>

                                                    <td>
                                                        <asp:CheckBox ID="CheckBox11" runat="server" Text="The school and massage program operating under this name and approval/accreditation number(s) listed above are
                                                            not and have not been un-approved by CAMTC. No person who owns, operates, or administers the school owns, operates, or administers or has owned, operated, 
                                                            or administered another school that is or has been un-approved by CAMTC. The address(es) associated with this school are not now and have not been associated with a school that is or has been un-approved by CAMTC." />
                                                    </td>
                                                </tr>
                                            </table>

                                            <table>
                                                <tr style="height: 15px; width: 100%;"></tr>
                                                <tr>

                                                    <td>
                                                        <asp:CheckBox ID="CheckBox12" runat="server" Text="The school offers at least one program clearly identified as a professional massage program that grants students a certificate, diploma, or degree in massage. Other professional education programs that include massage as a component of their programs are not eligible." />
                                                    </td>
                                                </tr>
                                            </table>

                                            <table>
                                                <tr style="height: 15px; width: 100%;"></tr>
                                                <tr>

                                                    <td>
                                                                    <asp:CheckBox ID="CheckBox13" runat="server" Text="Massage program(s) provides an organized plan of study of massage and related subjects for a minimum of 500 supervised clock hours (or credit unit equivalent) containing, at minimum, 64 hours of anatomy and physiology; 13 hours of contraindications; 5 hours of health and hygiene; and 18 hours of business and ethics. 
                                                                        The massage program(s) shall also incorporate appropriate school assessment of student knowledge and skills.
                                                                    " /><b>CAMTC does not accept online or distance learning hours, including but not limited to, externships, homework, and self-study or credits through challenge examinations, achievement tests, or experiential learning.</b>
                                                                    (For programs qualifying as a college or university of the state higher education system, as defined in section 100850 of the Education Code, units must be for academic credit and appear on an official college transcript. Certificates from non-credit adult education classes and programs are inapplicable. Community College degrees and certificates must be approved by the California Community Colleges Chancellor’s Office.)
                                                                </td>
                                                </tr>
                                            </table>

                                            <table>
                                                <tr style="height: 15px; width: 100%;"></tr>
                                                <tr>

                                                    <td>

                                                        <b>Please list all massage programs that meet ALL of the above requirements and for which you are seeking approval. Please DO NOT list programs that are recreational, avocational, or continuing education, or do not meet ALL of the above requirements.</b>
                                                    </td>
                                                </tr>

                                            </table>

                                            <div class="divLicenseInfon divaddnew AfterApproved" id="divAddbtnMassageProgramName"
                                                runat="server">
                                                <span style="float: right; margin-right: 10px;">
                                                    <asp:Button ID="btnMassageProgAddNew" CssClass="buttonGreen small" runat="server"
                                                        Text="Add" CausesValidation="true" OnClick="btnMassageProgAddNew_Click" />
                                                </span>
                                            </div>
                                            <asp:Literal ID="ltrMassageProgName" runat="server"></asp:Literal>

                                            <div class="divLicenseInfo" id="divAddMassageProgramName" runat="server" visible="false">
                                                <p class="addNewDiv">
                                                    <span>Add Massage Program Name</span>
                                                </p>
                                                <table class="tblApplReqForm5 wthtop20" style="width: 96%;">
                                                    <tr>
                                                        <td class="txtalgnrgt tdwidth1">
                                                            <label class="input-label required">
                                                                Massage Program Name :
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtAddMassageProgName" runat="server" CssClass="inputTextbox" MaxLength="15"></asp:TextBox>

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="txtalgnrgt tdwidth2">
                                                            <label class="input-label required">
                                                                Total Number of Program Hours :
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtAddProgrameHours" runat="server" CssClass=" inputTextbox" MaxLength="8">
                                                            </asp:TextBox>
                                                            <asp:RegularExpressionValidator Enable="false" ID="regtxtAddProgrameHours" runat="server"
                                                                Text="*" ErrorMessage="Please enter valid hours completed." ControlToValidate="txtAddProgrameHours"
                                                                Display="None" ForeColor="#FFCCFF" SetFocusOnError="True" ValidationExpression="(\d+(\.\d{1,2})?$)">
                                                            </asp:RegularExpressionValidator>
                                                            <asp:ValidatorCalloutExtender ID="vceHourco" runat="server" TargetControlID="regtxtAddProgrameHours"
                                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>


                                                </table>

                                                <div class="address-box posFixed" id="dvErrMasProgName" runat="server" visible="false" style="min-height: 30px; width: 87%; margin: 15px auto;">
                                                    <span class="notok"></span>
                                                    <div class="error_header">
                                                        <asp:Label ID="lblErrMasProgName" runat="server" Text=""></asp:Label>

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
                                                        <asp:Button ID="btnMassageprogramAddNewSave" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnMassageprogramAddNewSave_Click" />
                                                        <asp:LinkButton ID="lnkMassageprogramAddNewCancel" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server" OnClick="lnkMassageprogramAddNewCancel_Click">Cancel</asp:LinkButton></span>
                                                </div>
                                            </div>

                                            <div class="divLicenseInfo">
                                                <asp:GridView ID="gvMassageProgram" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                    CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None"
                                                    OnRowDataBound="gvMassageProgram_RowDataBound">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Massage Program Name">
                                                            <ItemStyle />
                                                            <EditItemTemplate>
                                                                <asp:UpdatePanel ID="upMassagePrograme" runat="server">
                                                                    <Triggers>
                                                                        <asp:PostBackTrigger ControlID="btnMassageProgameUpdate" />
                                                                    </Triggers>
                                                                    <ContentTemplate>
                                                                        <div>
                                                                            <table class="grid-heading">
                                                                                <tr>
                                                                                    <td style="width: 268px;">
                                                                                        <span id="lblProgrameName">Massage Program 1</span>
                                                                                    </td>
                                                                                    <td style="width: 208px;">
                                                                                        <span id="lblProgramHours">20 </span>
                                                                                    </td>
                                                                                    <td></td>
                                                                                </tr>
                                                                            </table>
                                                                        </div>
                                                                        <div class="divGridEdit">
                                                                            <p class="addNewDiv">
                                                                                <span>Edit Massage Program</span>
                                                                            </p>
                                                                            <table class="tblApplReqForm5 wthtop20" style="width: 96%;">
                                                                                <tr>
                                                                                    <td class="txtalgnrgt tdwidth1">
                                                                                        <label class="input-label required">
                                                                                            Massage Program Name  :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="txtMassageProgNameEdit" runat="server" CssClass="inputTextbox" MaxLength="15"></asp:TextBox>

                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtalgnrgt tdwidth2">
                                                                                        <label class="input-label required">
                                                                                            Total Number of Program Hours  :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="txtProgramHoursEdit" runat="server" CssClass="inputTextbox" MaxLength="15"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>


                                                                            </table>
                                                                            <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                                <span class="fltrt">
                                                                                    <asp:Button ID="btnMassageProgameUpdate"
                                                                                        CssClass="buttonGreen medium" runat="server" Text="Update" CausesValidation="true"
                                                                                        OnClick="btnMassageProgameUpdate_Click" />
                                                                                    <asp:LinkButton ID="lnkMassageProgCancelUpdate" CssClass="secondary medium bottom buttonalignment"
                                                                                        runat="server" OnClick="lnkMassageProgCancelUpdate_Click">Cancel</asp:LinkButton></span>
                                                                            </div>
                                                                        </div>
                                                                    </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblMassageProgrameName" runat="server" Text=""></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Total Number of Program Hours">
                                                            <ItemStyle />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblProgramHours" runat="server" Text=""></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="CAMTC Approved">
                                                            <ItemStyle />
                                                            <ItemTemplate>
                                                                <asp:ImageButton ID="IBCAMTCAPP" runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Program Approved Start">
                                                            <ItemStyle />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblProgAppStartDate" runat="server" Text=""></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Program Approved End">
                                                            <ItemStyle />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblProgAppStartend" runat="server" Text=""></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField ItemStyle-Width="60px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                                                            <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                                                            <ItemTemplate>
                                                                <span class="fltrt AfterApproved">
                                                                    <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" CommandArgument="1" runat="server"
                                                                        RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                        OnClick="lnkMassageprogramEdit_Click" />
                                                                    <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                        CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?')"
                                                                        OnClick="lnkMassageProgramDelete_Click" /></span>
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
                                        <div class="readinstrucn">
                                            <asp:CheckBox ID="chkManApprovedSection2" runat="server" Text="I have read the instructions." />
                                        </div>
                                        <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                            <span class="fltrt">
                                                <asp:Button ID="btnChildSupp" CssClass="buttonGreen medium" runat="server" Text="Save & Next"
                                                    CausesValidation="true" OnClick="btnChildSupp_Click" />
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
                                                                                Please list the TOTAL number of graduates from ALL massage programs for which the school seeks approval. Do not 
include continuing education classes or other programs. Put “0” if the program is new or had no graduates.
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
                                                                            <asp:TextBox ID="txtHeight" runat="server" Width="100px" CssClass="inputTextbox NewAppPersonalTxtbx"
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
                                                                            <asp:TextBox ID="txtWeight" runat="server" Width="100px" CssClass="inputTextbox NewAppPersonalTxtbx"
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
                                                                    <%--<tr>
                                                                        <td style="width: 200px;"><asp:CheckBox ID="CheckBox_IndividualProprietorship" runat="server" Text="Individual/Sole Proprietorship " /></td>
                                                                        <td style="width: 150px;"><asp:CheckBox ID="CheckBox_MarriedCouple" runat="server" Text="Married Couple " /></td>
                                                                          <td style="width: 190px;"><asp:CheckBox ID="CheckBox_Partnership" runat="server" Text="Partnership" /></td>
                                                                    </tr>
                                                                    <tr style="height:20px;"></tr>
                                                                    <tr>
                                                                    <td><asp:CheckBox ID="CheckBox_For_Profit_Corporation" runat="server" Text="For Profit Corporation" /></td>
                                                                        <td><asp:CheckBox ID="CheckBox_NonProfitCorporation" runat="server" Text="Non-Profit Corporation" /></td>
                                                                          <td><asp:CheckBox ID="CheckBoxLiabilityCorporation" runat="server" Text="Limited Liability Corporation" /></td>
                                                                        <td><asp:CheckBox ID="CheckBoxPublicInstitution" runat="server" Text="Public Institution" /></td>

                                                                    </tr>--%>
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

                                                                <div class="divLicenseInfo" id="dvAboutBusinessDocUpSection" runat="server" style="margin-top: 30px; margin-bottom:30px;">

<p class="addNewDiv">
                                                                <span>Proof of Business Documentation</span>
                                                            </p>

<table class="tblApplReqForm5 wthtop20" style="width: 99%;">
    <tr>
        <td class="txtalgnrgt">
            <label class="input-label required">
                Document Name :
            </label>
        </td>
        <td>
            <asp:TextBox ID="txtDocNameAboutBusinessDoc" runat="server"></asp:TextBox>
        </td>
        <td class="txtalgnrgt">
            <label class="input-label required">
                Document Type :
            </label>
        </td>
        <td>
            <asp:DropDownList ID="ddlOwnAboutBusinessDoc" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlOwnAboutBusinessDoc_SelectedIndexChanged" CssClass="inputTextbox">
                <asp:ListItem Value="-1">Select</asp:ListItem>
                <asp:ListItem Value="1">Property Tax Bill</asp:ListItem>
                <asp:ListItem Value="2">Lease Agreement</asp:ListItem>
                <asp:ListItem Value="3">Local Business License</asp:ListItem>
                <asp:ListItem Value="4">Fictitious Business Name (DBA) Filing</asp:ListItem>
                <asp:ListItem Value="5">Other (specify)</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>



<tr id="trAbouttheSchl1" runat="server" visible="false">
                                                                    <td></td>
                                                                    <td></td>
                                                                    <td class="txtalgnrgt" style="width: 135px;">
                                                                        <label class="input-label">
                                                                           Other Document Type :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="TextBox60" Width="167px" runat="server"></asp:TextBox>
                                                                    </td>
                                                                </tr>

    <tr>
        <td class="txtalgnrgt">
            <label class="input-label required">
                Document :
            </label>
        </td>
        <td>
            <asp:FileUpload ID="DocFUAboutBusinessDoc" runat="server" />
        </td>
        <td colspan="3">
            <asp:Button ID="btnUploadAboutBusinessDoc" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
        <td></td>
    </tr>
</table>

<div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                <span class="fltrt">
                                                                    <asp:Button ID="btnSaveAboutBusinessDoc" CssClass="buttonGreen medium"
                                                                        runat="server" Text="Save" CausesValidation="true"  />
                                                                    <asp:LinkButton ID="lblCancelAboutBusinessDoc" CssClass="secondary medium bottom buttonalignment"
                                                                        runat="server">Cancel</asp:LinkButton></span>
                                                            </div>

</div>

                                                                <div class="divLicenseInfo" id="dvAboutOwnershipUpSection" runat="server" style="margin-top: 30px;">

<p class="addNewDiv">
                                                                <span>Proof of Ownership</span>
                                                            </p>

<table class="tblApplReqForm5 wthtop20" style="width: 99%;">
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
                                                                                                <asp:Button ID="btnUploadAboutOwnership" Style="margin-left:10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                                            <td></td>
                                                                                        </tr>
</table>

<div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                <span class="fltrt">
                                                                    <asp:Button ID="btnSaveAboutOwnership" CssClass="buttonGreen medium"
                                                                        runat="server" Text="Save" CausesValidation="true"  />
                                                                    <asp:LinkButton ID="lblCancelAboutOwnership" CssClass="secondary medium bottom buttonalignment"
                                                                        runat="server">Cancel</asp:LinkButton></span>
                                                            </div>

</div>

                                                                <table>
                                                                    <tr>
                                                                        <td style="width: 100%; line-height: 20px;">
                                                                            <b>3. RELATED SCHOOLS</b></br><p style="padding-left: 50px; width: 85%;">If this school or campus shares its name, address, or ownership with another school(s) seeking CAMTC school approval, please list, (NOTE: each campus must submit a separate application).</p>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <table style="width: 95%; margin-top: 10px; margin-left: 50px;">
                                                                    <tr>
                                                                        <td class="6">
                                                                            <%--<asp:TextBox ID="TextBox202" runat="server" style="height: 35px; width: 88%;" TextMode="MultiLine" 
                                                                                CssClass="inputTextbox NewAppPersonalTxtbx" MaxLength="150">
                                                                            </asp:TextBox>--%>

                                                                            <asp:Literal ID="Literal11" runat="server"></asp:Literal>
                                                                            <div class="divLicenseInfon divaddnew" id="divBtnAddNewRelatedSchools" runat="server">
                                                                                <span style="float: right; margin-right: 10px;" class="AfterApproved">
                                                                                    <asp:Button ID="btnAddNewRelatedSchools" CssClass="buttonGreen small" runat="server" Text="Add"
                                                                                        OnClick="btnAddNewRelatedSchools_Click" />
                                                                                </span>
                                                                            </div>
                                                                            <div id="divAddNewRelatedSchools" runat="server" visible="false">
                                                                                <table class="tblApplReqForm5">
                                                                                    <%--<tr>
                                                                        <td colspan="6">
                                                                            <b>Current Place of Work :</b>
                                                                        </td>
                                                                    </tr>--%>
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
                                                                                                        <asp:CheckBox ID="CheckBox58" runat="server" style="margin-left:5px;" Text="Mobile" />
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
                                                                                            CausesValidation="true"  OnClick="btnSaveRelatedSchool_Click" />
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
                                                                                    Province or State :
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
                                                                <div class="divLicenseInfo" style="display: none;">
                                                                    <asp:GridView ID="gvLicenseInfo" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                                        CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None"
                                                                        OnRowDataBound="gvLicenseInfo_RowDataBound">
                                                                        <AlternatingRowStyle BackColor="White" />
                                                                        <Columns>
                                                                            <asp:TemplateField HeaderText="License#">
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
                                                                                                        <td style="width: 147px;">
                                                                                                            <span id="lblCertificationNo">CAMTC.001</span>
                                                                                                        </td>
                                                                                                        <td style="width: 208px;">
                                                                                                            <span id="lblDateofIssue">02/04/2014</span>
                                                                                                        </td>
                                                                                                        <td style="width: 66px;">
                                                                                                            <span id="lblLiState">CA</span>
                                                                                                        </td>
                                                                                                        <td style="width: 38px;">
                                                                                                            <span id="lblCountry">USA</span>
                                                                                                        </td>
                                                                                                        <td class="aligncenter">
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
                                                                                <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                                                                                <ItemTemplate>
                                                                                    <span class="fltrt AfterApproved">
                                                                                        <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" CommandArgument="1" runat="server"
                                                                                            RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                                            OnClick="lnkLicensureInformationEdit_Click" />
                                                                                        <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                                            CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?')"
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
                                                            <div class="divLicenseInfo" id="dvAboutFacilityUpSection" runat="server" style="margin-top: 30px; width:94%;">

<p class="addNewDiv">
                                                                <span>Facility</span>
                                                            </p>

<table class="tblApplReqForm5 wthtop20" style="width: 99%;">
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
                                                                                                <asp:Button ID="btnUploadAboutFacility" Style="margin-left:10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                                            <td></td>
                                                                                        </tr>
</table>

<div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                <span class="fltrt">
                                                                    <asp:Button ID="btnSaveAboutFacility" CssClass="buttonGreen medium"
                                                                        runat="server" Text="Save" CausesValidation="true"  />
                                                                    <asp:LinkButton ID="lblCancelAboutFacility" CssClass="secondary medium bottom buttonalignment"
                                                                        runat="server">Cancel</asp:LinkButton></span>
                                                            </div>

</div>

                                                            <div class="divLicenseInfo" id="dvAboutAdvertisingUpSection" runat="server" style="margin-top: 30px; width:94%;">

<p class="addNewDiv">
                                                                <span>Advertising</span>
                                                            </p>

<table class="tblApplReqForm5 wthtop20" style="width: 99%;">
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
                                                                                                <asp:Button ID="btnUploadAboutAdvertising" Style="margin-left:10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                                            <td></td>
                                                                                        </tr>
</table>

<div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                <span class="fltrt">
                                                                    <asp:Button ID="btnSaveAboutAdvertising" CssClass="buttonGreen medium"
                                                                        runat="server" Text="Save" CausesValidation="true"  />
                                                                    <asp:LinkButton ID="lblCancelAboutAdvertising" CssClass="secondary medium bottom buttonalignment"
                                                                        runat="server">Cancel</asp:LinkButton></span>
                                                            </div>

</div>

                                                            <div class="readinstrucn" style="margin-top: 15px;">
                                                                <asp:CheckBox ID="chkManApprovedSection3" runat="server" Text="I have read the instructions." />
                                                            </div>
                                                            <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                <span class="fltrt">
                                                                    <asp:Button ID="btnLicInfoNext" CssClass="buttonGreen medium" runat="server" Text="Save & Next"
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
                    <asp:Panel ID="PnlTransChecklist" runat="server" Visible="false">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel4">
                                        <ContentTemplate>
                                            <asp:Panel ID="Panel5" runat="server">
                                                <asp:Literal ID="Literal4" runat="server"></asp:Literal>
                                                <div>
                                                    <div class="sectionDiv">
                                                        <span>Transcript Checklist</span>
                                                    </div>
                                                </div>
                                                <fieldset class="flsNewApplReqForm flsCharacterReferences" style="text-align: justify;">
                                                   <b></b>Please check that you have included ALL of the following with the Application for School Approval. 
                                                         
                                                        
                                                        <table class="tblApplReqForm5" style="margin-top: 5px;">
                                                            <tr>

                                                                <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                                                    <b></b>Providing incomplete or misleading information to CAMTC may result in processing delays, denial of your application, disciplinary action, revocation of your approval, or additional processing fees. 

                                                                </td>

                                                            </tr>

                                                        </table>
                                                    <table class="tableborder_trcschk" style="margin-top: 15px;">
                                                        <tr>
                                                            <td style="width: 60px; text-align: center;"><b>Initials</b></td>
                                                            <td><b>Required Items</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">
                                                                <asp:CheckBox ID="chkTranscriptChecklistRequired" runat="server" /></td>
                                                            <td>Sample transcript and massage program addendum, if any, with no additional markings must be provided. Per CAMTC’s
Policies and Procedures for Approval of Schools, transcripts should include at minimum:
                                                                </br>
                                                                <p>
                                                                    (1)	School name, address, telephone number, website, and CAMTC School Approval Code (once
	approved), which shall exactly match information on file at CAMTC.
                                                                </p>
                                                                <br />
                                                                <p>(2)	Heading entitled “Official Transcript.”</p>
                                                                </br>
                                                                <p>(3)	Student’s full legal name and date of birth.</p>
                                                                </br>
                                                                <p>
                                                                    (4)	Date student started program and date student graduated or, for programs longer than 500 hours,
	completed CAMTC requirements, if applicable.
                                                                </p>
                                                                <br />
                                                                <p>
                                                                    (5)	Breakdown of courses completed with total number of supervised clock hours attended and
	passing grades for each course. Courses shall match those listed in the provided syllabi and
	program hour requirement worksheet (included with application).
                                                                </p>
                                                                </br>
                                                                <p>(6)	Total number of supervised clock hours attended for massage program.</p>
                                                                </br>
                                                                <p>(7)	At least one authorized signature with printed name, title, and date.</p>
                                                                </br>
                                                                <p>(8)	Official school seal affixed, embossed, or otherwise attached to transcript.</p>
                                                                </br>
                                                                <p>(9)	Sufficient security measures that uniquely identify the school’s transcripts.</p>
                                                                </br>
                                                                <p>
                                                                    Transcripts from public colleges or universities of the California state higher education system, as
defined in section 100850 of the Education Code, shall meet or exceed standards as determined by
governing laws and regulations.
                                                                </p>
                                                                <div class="dvuploadgrid">
                                                                    <div class="fltlft">
                                                                        <asp:Label ID="lbllistRequiredupload" runat="server" Text="Document : "></asp:Label>
                                                                        <asp:FileUpload ID="fuRequiredupload" runat="server" />
                                                                    </div>
                                                                    <div class="dvuploadclass">
                                                                        <asp:Button ID="btnRequiredupload" runat="server" class="buttonGreen small" Text="Upload Document" />
                                                                    </div>
                                                                </div>
                                                            </td>

                                                        </tr>


                                                        <tr>
                                                            <td style="text-align: center;">
                                                                <asp:CheckBox ID="chkuniquesecurity" runat="server" /></td>
                                                            <td>Sample transcript and massage program addendum, if any, with highlights and descriptions of unique security measures.
                                                                <div class="dvuploadgrid">
                                                                    <div class="fltlft">
                                                                        <asp:Label ID="lbltransrpt" runat="server" Text="Document : "></asp:Label>
                                                                        <asp:FileUpload ID="futrnaspt" runat="server" />
                                                                    </div>
                                                                    <div class="dvuploadclass">
                                                                        <asp:Button ID="btnuploadtransrpt" runat="server" class="buttonGreen small" Text="Upload Document" />
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">
                                                                <asp:CheckBox ID="chkSignatures" runat="server" /></td>
                                                            <td>Signatures, printed names, and titles for all approved signers.
                                                             <div class="dvuploadgrid">
                                                                 <div class="fltlft">
                                                                     <asp:Label ID="lblsign" runat="server" Text="Document : "></asp:Label>
                                                                     <asp:FileUpload ID="fusignature" runat="server" />
                                                                 </div>
                                                                 <div class="dvuploadclass">
                                                                     <asp:Button ID="btnuploadsign" runat="server" class="buttonGreen small" Text="Upload Document" />
                                                                 </div>
                                                             </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">
                                                                <asp:CheckBox ID="chkSamplediploma" runat="server" /></td>
                                                            <td>Sample diploma (NOTE: Diplomas are not accepted in lieu of transcripts as proof of education).
                                                                <div class="dvuploadgrid">
                                                                    <div class="fltlft">
                                                                        <asp:Label ID="lbldiploma" runat="server" Text="Document : "></asp:Label>
                                                                        <asp:FileUpload ID="fudiploma" runat="server" />
                                                                    </div>
                                                                    <div class="dvuploadclass">
                                                                        <asp:Button ID="btnuploaddiploma" runat="server" class="buttonGreen small" Text="Upload Document" />
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">
                                                                <asp:CheckBox ID="chkSampleenvelope" runat="server" /></td>
                                                            <td>Sample envelope from the school in which transcripts will be mailed to CAMTC.
                                                                <div class="dvuploadgrid">
                                                                    <div class="fltlft">
                                                                        <asp:Label ID="lblupSampleenvelope" runat="server" Text="Document : "></asp:Label>
                                                                        <asp:FileUpload ID="fuSampleenvelope" runat="server" />
                                                                    </div>
                                                                    <div class="dvuploadclass">
                                                                        <asp:Button ID="btnuploadSampleenvelope" runat="server" class="buttonGreen small" Text="Upload Document" />
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>


                                                    </table>
                                                    <%--<table style="margin-top: 15px; margin-bottom: 15px; width: 100%;">
                                                        <tr>
                                                            <td align="right">
                                                                <label class="input-label required">
                                                                    Signature :</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox179" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td align="right">
                                                                <label class="input-label required">
                                                                    Date :</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox180" CssClass="calender inputTextbox" placeholder="MM/DD/YYYY"
                                                                    runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table style="margin-top: 15px; margin-bottom: 5px; width: 100%;">
                                                        <tr>
                                                            <td align="right" style="width: 111px;">
                                                                <label class="input-label required">
                                                                    Print Name :</label>
                                                            </td>
                                                            <td style="width: 243px;">
                                                                <asp:TextBox ID="TextBox181" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td align="right">
                                                                <label class="input-label required">
                                                                    Title :</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox182" Style="width: 168px;" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>--%>


                                                </fieldset>
                                                <div class="readinstrucn">
                                                    <asp:CheckBox ID="chkManTransChecklist" runat="server" Text="I have read the instructions." />
                                                </div>
                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                    <div style="float: left;">
                                                    </div>
                                                    <span class="fltrt">
                                                        <asp:Button ID="btnNextTransChkList" ValidationGroup="VGAffidavit" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save & Next" CausesValidation="true" OnClick="btnNextTransChkList_Click" />
                                                        <asp:Button ID="Button21" CssClass="buttonGreen medium" runat="server"
                                                            Visible="false" Text="Submit & Pay" OnClick="btnSaveNextPayment_Click" ValidationGroup="VGApplicationWaiver"
                                                            CausesValidation="true" />
                                                        <asp:LinkButton ID="LinkButton4" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server">Cancel</asp:LinkButton></span>
                                                </div>
                                            </asp:Panel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </asp:Panel>
                    <asp:Panel ID="PnlEnrollAgrChecklist" runat="server" Visible="false">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel5">
                                        <ContentTemplate>
                                            <asp:Panel ID="Panel6" runat="server">
                                                <asp:Literal ID="Literal5" runat="server"></asp:Literal>
                                                <div>
                                                    <div class="sectionDiv">
                                                        <span>Enrollment Agreement Checklist</span>
                                                    </div>
                                                </div>
                                                <fieldset class="flsNewApplReqForm flsCharacterReferences" style="text-align: left;">
                                                    <b></b> Please check that you have included ALL of the following with the Application for School Approval. 
                                                        
                                                        
                                                        <table class="tblApplReqForm5" style="margin-top: 5px;">
                                                            <tr>

                                                                <td style="padding-left: 0px; line-height: 20px; text-align: left;">
                                                                     <b></b> Providing incomplete or misleading information to CAMTC may result in processing delays, denial of your application, disciplinary action, revocation of your approval, or additional processing fees. 

                                                                </td>

                                                            </tr>

                                                        </table>
                                                    <table class="tableborder_trcschk" style="margin-top: 15px;">
                                                        <tr>
                                                            <td style="width: 60px; text-align: center;"><b>Initials</b></td>
                                                            <td><b>Required Items</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">
                                                                <asp:CheckBox ID="chkEnrolAgreement" runat="server" />
                                                            </td>
                                                            <td>Blank enrollment agreement and massage program addendum, if any, must be provided. Per CAMTC’s Policies and
Procedures for Approval of Schools, enrollment agreements should include at minimum:

                                                                </br>
                                                                <p>
                                                                    (1) School name, address, additional addresses where classes will be held, telephone number, and
website.
                                                                </p>
                                                                <br />
                                                                <p>(2)	Student’s full legal name, date of birth, address, email, telephone number, and signature.</p>
                                                                </br>
                                                                <p>(3)	Copy of a current valid government issued photographic identification.</p>
                                                                </br>
                                                                <p>
                                                                    (4)	Title of massage program and total scheduled number of supervised hours received upon
completion.
                                                                </p>
                                                                <br />
                                                                <p>(5)	Program schedule with start date and scheduled completion date.</p>
                                                                </br>
                                                                <p>
                                                                    (6)	All scheduled charges and fees including, as applicable: tuition, registration fee, equipment, lab
supplies, textbooks, educational materials, uniforms, charges paid to an entity other than the
school as required by the program, and any other charge or fee.
                                                                </p>
                                                                </br>
                                                                <p>(7)	Scheduled payment terms.</p>
                                                                </br>
                                                                <p>
                                                                    (8) Clearly visible disclosure statement: “Attendance and/or graduation from a California Massage
Therapy Council approved school does not guarantee certification by CAMTC. Applicants for
certification shall meet all requirements as listed in California Business and Professions Code
sections 4600 et. seq.”
                                                                </p>
                                                                </br>
                                                                <p>
                                                                    (9) Statement directing students to CAMTC for unanswered questions and for filing a complaint: “A
student or any member of the public with questions that have not been satisfactorily answered by
the school or who would like to file a complaint about this school may contact the California
Massage Therapy Council at: One Capitol Mall, Suite 800, Sacramento, CA 95814,
                                                                    <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion27');" class="hyperlink">www.camtc.org</a>, phone (916) 669-5336, or fax (916) 669-5337.”
                                                                </p>
                                                                </br>
                                                                <p>Note: Enrollment agreements from public colleges or universities of the California state higher education system, as defined in section 100850 of the Education Code, and public schools accredited by an agency recognized by the United States Department of Education shall meet or exceed standards as determined by governing laws and regulations.</p>
                                                                <div class="dvuploadgrid">
                                                                    <div class="fltlft">
                                                                        <asp:Label ID="lblEnroAgreement" runat="server" Text="Document : "></asp:Label>
                                                                        <asp:FileUpload ID="fuEnroAgreement" runat="server" />
                                                                    </div>
                                                                    <div class="dvuploadclass">
                                                                        <asp:Button ID="btnupladEnroAgreement" runat="server" class="buttonGreen small" Text="Upload Document" />
                                                                    </div>
                                                                </div>
                                                            </td>

                                                        </tr>




                                                    </table>
                                                    <%--<table style="margin-top: 15px; margin-bottom: 15px; width: 100%;">
                                                        <tr>
                                                            <td align="right">
                                                                <label class="input-label required">
                                                                    Signature :</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox171" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td align="right">
                                                                <label class="input-label required">
                                                                    Date :</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox172" CssClass="calender inputTextbox" placeholder="MM/DD/YYYY"
                                                                    runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table style="margin-top: 15px; margin-bottom: 5px; width: 100%;">
                                                        <tr>
                                                            <td align="right" style="width: 111px;">
                                                                <label class="input-label required">
                                                                    Print Name :</label>
                                                            </td>
                                                            <td style="width: 243px;">
                                                                <asp:TextBox ID="TextBox173" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td align="right">
                                                                <label class="input-label required">
                                                                    Title :</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox174" Style="width: 168px;" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>--%>


                                                </fieldset>
                                                <div class="readinstrucn">
                                                    <asp:CheckBox ID="chkManEnrollAgrChecklist" runat="server" Text="I have read the instructions." />
                                                </div>
                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                    <div style="float: left;">
                                                    </div>
                                                    <span class="fltrt">
                                                        <asp:Button ID="btnNextEnrollChkList" ValidationGroup="VGAffidavit" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save & Next" CausesValidation="true" OnClick="btnNextEnrollChkList_Click" />
                                                        <asp:Button ID="Button23" CssClass="buttonGreen medium" runat="server"
                                                            Visible="false" Text="Submit & Pay" OnClick="btnSaveNextPayment_Click" ValidationGroup="VGApplicationWaiver"
                                                            CausesValidation="true" />
                                                        <asp:LinkButton ID="LinkButton5" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server">Cancel</asp:LinkButton></span>
                                                </div>
                                            </asp:Panel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </asp:Panel>
                    <asp:Panel ID="PnlCoCatChecklist" runat="server" Visible="false">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel6">
                                        <ContentTemplate>
                                            <asp:Panel ID="Panel7" runat="server">
                                                <asp:Literal ID="Literal6" runat="server"></asp:Literal>
                                                <div>
                                                    <div class="sectionDiv">
                                                        <span>Course Catalog Checklist</span>
                                                    </div>
                                                </div>
                                                <fieldset class="flsNewApplReqForm flsCharacterReferences" style="text-align: left;">
                                                    <b></b> Please check that you have included ALL of the following with the Application for School Approval.  
                                                        
                                                        
                                                        <table class="tblApplReqForm5" style="margin-top: 5px;">
                                                            <tr>

                                                                <td style="padding-left: 0px; line-height: 20px; text-align: left;">
                                                                    <b></b> Providing incomplete or misleading information to CAMTC may result in processing delays, denial of your application, disciplinary action, revocation of your approval, or additional processing fees. 

                                                                </td>

                                                            </tr>

                                                        </table>
                                                    <table class="tableborder_trcschk" style="margin-top: 15px;">
                                                        <tr>
                                                            <td style="width: 60px; text-align: center;"><b>Initials</b></td>
                                                            <td><b>Required Items</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;">
                                                                <asp:CheckBox ID="CheckBox14" runat="server" /></td>
                                                            <td>Current course catalog and massage program addendum, if any, must be provided. Per CAMTC’s Policies and
Procedures for Approval of Schools, course catalogs should include at minimum:


                                                                
                                                                <p style="margin-top: 23px;">
                                                                    (1) School name, address, additional addresses where classes will be held, telephone number, website, and CAMTC School Approval Code (once approved). 
                                                                </p>
                                                                <br />
                                                                <p>(2)	Date printed/revised. </p>
                                                                </br>
                                                                <p style="text-align: left;">(3)	Title of massage program(s) and total number of scheduled supervised hours received upon completion. </p>
                                                                </br>
                                                                <p style="text-align: left;">
                                                                    (4)	Program prerequisites, including but not limited to admission requirements, previous training, and language comprehension skills. 
                                                                </p>
                                                                <br />
                                                                <p style="text-align: left;">(5)	Completion and graduation requirements, including but not limited to clock hours to attend, assignments to complete, and assessments to pass. </p>
                                                                </br>
                                                                <p style="text-align: left;">
                                                                    (6)	Transfer credit policy. 
                                                                </p>
                                                                </br>
                                                                <p style="text-align: left;">(7)	Attendance and leave of absence policies. </p>
                                                                </br>
                                                                <p>
                                                                    (8)	Hygiene, dress code, and draping policies. 
                                                                </p>
                                                                </br>
                                                                <p>
                                                                    (9)	If the school admits foreign or ESL students, the catalog shall contain language proficiency information, including the level of English language proficiency required of students and the kind of documentation of proficiency that will be accepted; and whether English language services are provided and, if so, the nature of the service and its cost. The catalog shall also identify whether any instruction will occur in a language other than English and, if so, identify the other language(s) instruction will be provided in, the level of English proficiency required, and the kind of documentation of proficiency that will be accepted. 

                                                                </p>
                                                                </br>
                                                                <p style="text-align: left;">
                                                                    (10) Publication of CAMTC’s Law related to unfair business practices as related to massage.
                                                                </p>
                                                                </br>
                                                                <p style="text-align: left;">
                                                                    (11) Clearly visible disclosure statement: “Attendance and/or graduation from a California Massage Therapy Council approved school does not guarantee certification by CAMTC. Applicants for certification shall meet all requirements as listed in California Business and Professions Code section 4600 et. seq.” 
                                                                </p>
                                                                </br>
                                                                <p>(12) Statement directing students to CAMTC for unanswered questions and for filing a complaint: “A student or any member of the public with questions that have not been satisfactorily answered by the school or who would like to file a complaint about this school may contact the California Massage Therapy Council at One Capitol Mall, Suite 320, Sacramento, CA 95814, <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion27');" class="hyperlink">www.camtc.org</a>, phone (916) 669-5336, or fax (916) 669-5337.”</p>


                                                                <div class="dvuploadgrid">
                                                                    <div class="fltlft">
                                                                        <asp:Label ID="lblCourceCheklist" runat="server" Text="Document : "></asp:Label>
                                                                        <asp:FileUpload ID="fuCourceCheklist" runat="server" />

                                                                    </div>
                                                                    <div class="dvuploadclass">
                                                                        <asp:Button ID="uploadbtnCourceCheklist" runat="server" class="buttonGreen small" Text="Upload Document" />
                                                                    </div>
                                                                </div>
                                                            </td>

                                                        </tr>




                                                    </table>

                                                    <%--<table style="margin-top: 15px; margin-bottom: 15px; width: 100%;">
                                                        <tr>
                                                            <td align="right">
                                                                <label class="input-label required">
                                                                    Signature :</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox175" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td align="right">
                                                                <label class="input-label required">
                                                                    Date :</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox176" CssClass="calender inputTextbox" placeholder="MM/DD/YYYY"
                                                                    runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table style="margin-top: 15px; margin-bottom: 5px; width: 100%;">
                                                        <tr>
                                                            <td align="right" style="width: 111px;">
                                                                <label class="input-label required">
                                                                    Print Name :</label>
                                                            </td>
                                                            <td style="width: 243px;">
                                                                <asp:TextBox ID="TextBox177" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td align="right">
                                                                <label class="input-label required">
                                                                    Title :</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox178" Style="width: 168px;" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>--%>

                                                </fieldset>
                                                <div class="readinstrucn">
                                                    <asp:CheckBox ID="chkManCoCatChecklist" runat="server" Text="I have read the instructions." />
                                                </div>
                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                    <div style="float: left;">
                                                    </div>
                                                    <span class="fltrt">
                                                        <asp:Button ID="btnNextCourseChkList" ValidationGroup="VGAffidavit" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save & Next" CausesValidation="true" OnClick="btnNextCourseChkList_Click" />
                                                        <asp:Button ID="Button25" CssClass="buttonGreen medium" runat="server"
                                                            Visible="false" Text="Submit & Pay" OnClick="btnSaveNextPayment_Click" ValidationGroup="VGApplicationWaiver"
                                                            CausesValidation="true" />
                                                        <asp:LinkButton ID="LinkButton6" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server">Cancel</asp:LinkButton></span>
                                                </div>
                                            </asp:Panel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </asp:Panel>
                    <asp:Panel ID="PnlProHoReqWorksheet" runat="server" Visible="false">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel7">
                                        <ContentTemplate>
                                            <asp:Panel ID="Panel8" runat="server">
                                                <asp:Literal ID="Literal7" runat="server"></asp:Literal>
                                                <div>
                                                    <div class="sectionDiv">
                                                        <span>Curriculum Worksheet</span>
                                                    </div>
                                                </div>
                                                <fieldset class="flsNewApplReqForm flsCharacterReferences">
                                                    <b></b> Please indicate which classes or subjects fulfill the minimum core educational requirements as set forth in CAMTC’s Policies and Procedures for Approval of Schools. 
                                                   
                                                    <table class="tblApplReqForm5" style="margin-top: 5px;">
                                                            <tr>

                                                                <td style="padding-left: 0px; line-height: 20px; text-align: left;">
                                                                    <b></b> Providing incomplete or misleading information to CAMTC may result in processing delays, denial of your application, disciplinary action, revocation of your approval, or additional processing fees.

                                                                </td>

                                                            </tr>

                                                        </table>     
                                                        
                                                    

                                                    <div class="divLicenseInfo">
                                                        <asp:GridView ID="gvProgHrWrkSheet" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                            CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None"
                                                            OnRowDataBound="gvProgHrWrkSheet_RowDataBound">
                                                            <AlternatingRowStyle BackColor="White" />
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Required Course of Study">
                                                                    <ItemStyle />
                                                                    <EditItemTemplate>
                                                                        <asp:UpdatePanel ID="upProgHrWrkSheet" runat="server">
                                                                            <%--<Triggers>
                                                                                <asp:PostBackTrigger ControlID="btnProgHrWrkSheetUpdate" />
                                                                            </Triggers>--%>
                                                                            <ContentTemplate>
                                                                                <div class="divLicenseInfon divaddnew AfterApproved" id="divAddbtnCourseReq"
                                                                                    runat="server">
                                                                                    <span style="float: right; margin-right: 10px;">
                                                                                        <asp:Button ID="btnCourseReqAddNew" CssClass="buttonGreen small" runat="server"
                                                                                            Text="Add" CausesValidation="true" OnClick="btnCourseReqAddNew_Click" />
                                                                                    </span>
                                                                                </div>
                                                                                <asp:Literal ID="ltrCourseReqAddNew" runat="server"></asp:Literal>
                                                                                <div class="divLicenseInfo" id="divAddCourseReq" runat="server" visible="false">
                                                                                    <p class="addNewDiv">
                                                                                        <span>Courses that Fulfill Requirements</span>
                                                                                    </p>
                                                                                    <table class=" tblApplReqForm5 wdtmarauto" style="width: 96%; margin: 0px auto;">
                                                                                        <tr>
                                                                                            <td class="txtalgnrgt">
                                                                                                <label class="input-label">
                                                                                                    Course Title :
                                                                                                </label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:TextBox ID="TextBox63" runat="server" CssClass="tooltip OnlyAlphabet inputTextbox capitalize-text NewAppPersonalTxtbx"
                                                                                                    MaxLength="150" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="txtalgnrgt">
                                                                                                <label class="input-label">
                                                                                                    No. of Hours :
                                                                                                </label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:TextBox ID="TextBox1450" runat="server" CssClass="tooltip OnlyNumeric inputTextbox NewAppPersonalTxtbx"
                                                                                                    MaxLength="3" title="Only numbers are allowed."></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>

                                                                                    <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                                        <span class="fltrt">
                                                                                            <asp:Button ID="btnCourseReqAddNewSave" CssClass="buttonGreen medium"
                                                                                                runat="server" Text="Save" CausesValidation="true" OnClick="btnCourseReqAddNewSave_Click" />
                                                                                            <asp:LinkButton ID="lnkCourseReqAddNewCancel" CssClass="secondary medium bottom buttonalignment"
                                                                                                runat="server" OnClick="lnkCourseReqAddNewCancel_Click">Cancel</asp:LinkButton>
                                                                                        </span>
                                                                                    </div>
                                                                                </div>

                                                                                <div class="divLicenseInfo">
                                                                                    <asp:GridView ID="gvCourseL2" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                                                        CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None"
                                                                                        OnRowDataBound="gvCourseL2_RowDataBound">
                                                                                        <AlternatingRowStyle BackColor="White" />
                                                                                        <Columns>
                                                                                            <asp:TemplateField HeaderText="Course Title">
                                                                                                <ItemStyle />
                                                                                                <EditItemTemplate>
                                                                                                    <asp:UpdatePanel ID="upCourseL2" runat="server">
                                                                                                        <Triggers>
                                                                                                            <asp:PostBackTrigger ControlID="btnCourseL2Update" />
                                                                                                        </Triggers>
                                                                                                        <ContentTemplate>
                                                                                                            <div>
                                                                                                                <table class="grid-heading">
                                                                                                                    <tr>
                                                                                                                        <td style="width: 104px;">
                                                                                                                            <span id="lblCourseTitleL2">Course Title</span>
                                                                                                                        </td>
                                                                                                                        <td style="width: 109px;">
                                                                                                                            <span id="lblCourseHrsL2">No. of Hours</span>
                                                                                                                        </td>

                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </div>
                                                                                                            <div class="divGridEdit">
                                                                                                                <p class="addNewDiv">
                                                                                                                    <span>Course Title</span>
                                                                                                                </p>
                                                                                                                <table class="tblApplReqForm5 wthtop20" style="width: 96%;">
                                                                                                                    <tr>
                                                                                                                        <td class="txtalgnrgt tdwidth1">
                                                                                                                            <label class="input-label required">
                                                                                                                                Course Title :
                                                                                                                            </label>
                                                                                                                        </td>
                                                                                                                        <td style="line-height: 6px;">
                                                                                                                            <asp:TextBox ID="txtCourseTitleL2Edit" runat="server" CssClass="inputTextbox" MaxLength="15"></asp:TextBox>
                                                                                                                        </td>
                                                                                                                        <td class="txtalgnrgt tdwidth2">
                                                                                                                            <label class="input-label">
                                                                                                                                No. of Hours :
                                                                                                                            </label>
                                                                                                                        </td>
                                                                                                                        <td>
                                                                                                                            <asp:TextBox ID="txtCourseHoursL2Edit" runat="server" CssClass="inputTextbox" MaxLength="15"></asp:TextBox>
                                                                                                                        </td>
                                                                                                                    </tr>

                                                                                                                </table>
                                                                                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                                                                    <span class="fltrt">
                                                                                                                        <asp:Button ID="btnCourseL2Update"
                                                                                                                            CssClass="buttonGreen medium" runat="server" Text="Update" CausesValidation="true"
                                                                                                                            OnClick="btnCourseL2Update_Click" />
                                                                                                                        <asp:LinkButton ID="lnkCourseL2CancelUpdate" CssClass="secondary medium bottom buttonalignment"
                                                                                                                            runat="server" OnClick="lnkCourseL2CancelUpdate_Click">Cancel</asp:LinkButton>
                                                                                                                    </span>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </ContentTemplate>
                                                                                                    </asp:UpdatePanel>
                                                                                                </EditItemTemplate>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="lblCourseTitle" runat="server" Text="Title 1"></asp:Label>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="No. of Hours">
                                                                                                <ItemStyle />
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="lblCourseHours" runat="server" Text="10"></asp:Label>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField ItemStyle-Width="60px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                                                                                                <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                                                                                                <ItemTemplate>
                                                                                                    <span class="fltrt AfterApproved">
                                                                                                        <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" CommandArgument="1" runat="server"
                                                                                                            RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                                                            OnClick="lnkCourseTitleHourEdit_Click" />
                                                                                                        <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                                                            CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?')"
                                                                                                            OnClick="lnkCourseTitleHourDelete_Click" /></span>
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




                                                                            </ContentTemplate>
                                                                        </asp:UpdatePanel>
                                                                    </EditItemTemplate>
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblProgHrWrkSheetCourse" runat="server" Text="Anatomy & Physiology"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>

                                                                <asp:TemplateField HeaderText="Minimum Required Course Hours">
                                                                    <ItemStyle />
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblProgHrWrkSheetCourseHr" runat="server" Text="64"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>

                                                                <asp:TemplateField ItemStyle-Width="200px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                                                                    <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                                                                    <ItemTemplate>
                                                                        <span class="fltrt AfterApproved">
                                                                            <asp:LinkButton ID="lnkCoursesRequirementsOpen" CssClass="hyperlink" runat="server" CommandArgument="1"
                                                                                RowIndex='<%# Container.DisplayIndex %>' OnClick="lnkCoursesRequirementsOpen_Click"
                                                                                ToolTip="Open Courses Required" Text="Courses that Fulfill Requirements " />
                                                                        </span>
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

                                                    

                                                    <table class="tblApplReqForm5" style="margin-top: 15px;">
                                                            <tr>

                                                                <td style="padding-left: 0px; line-height: 20px; text-align: left;">

                                                                    <label class="input-label required"><b></b> What is the maximum number of clinic hours performed in the initial 500 hours of your program? </label><asp:TextBox style="width: 75px; margin-left: 10px;"  runat="server" ID="txtcarculam" ></asp:TextBox>

                                                                </td>

                                                            </tr>

                                                        </table>


                                                </fieldset>

                                                <div class="divLicenseInfo" id="dvAboutCurriculumUpSection" runat="server" style="margin-top: 30px;">

<p class="addNewDiv">
                                                                <span>Curriculum Supporting Documentation</span>
                                                            </p>

<table class="tblApplReqForm5 wthtop20" style="width: 99%;">
 <tr>
                                                                                            <td class="txtalgnrgt">
                                                                                                <label class="input-label required">
                                                                                                   Document Name :
                                                                                                </label>
                                                                                            </td>   
                                                                                            <td>
                                                                                                <asp:TextBox ID="txtDocNameAboutCurriculum" runat="server"></asp:TextBox>
                                                                                            </td>
                                                                                            <td class="txtalgnrgt">
                                                                                                <label class="input-label required">
                                                                                                    Document Type :
                                                                                                </label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:DropDownList ID="ddlOwnAboutCurriculum" runat="server" CssClass="inputTextbox">
                                                                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                                                    <asp:ListItem Value="1">Massage Program Calendar</asp:ListItem>
                                                                                                    <asp:ListItem Value="2">Syllabi for Massage Course</asp:ListItem>
                                                                                                    <asp:ListItem Value="3">List of Text Books</asp:ListItem>
                                                                                                    <asp:ListItem Value="4">List of Educational Materials</asp:ListItem>
                                                                                                    <asp:ListItem Value="5">List of Classroom Equipment </asp:ListItem>
                                                                                                    <asp:ListItem Value="6">Curriculum Policies </asp:ListItem>
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
                                                                                                <asp:FileUpload ID="DocFUAboutCurriculum" runat="server" />
                                                                                            </td>
                                                                                            <td colspan="3">
                                                                                                <asp:Button ID="btnUploadAboutCurriculum" Style="margin-left:10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                                            <td></td>
                                                                                        </tr>
</table>

<div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                <span class="fltrt">
                                                                    <asp:Button ID="btnSaveAboutCurriculum" CssClass="buttonGreen medium"
                                                                        runat="server" Text="Save" CausesValidation="true"  />
                                                                    <asp:LinkButton ID="lblCancelAboutCurriculum" CssClass="secondary medium bottom buttonalignment"
                                                                        runat="server">Cancel</asp:LinkButton></span>
                                                            </div>

</div>


                                                <div class="readinstrucn">
                                                    <asp:CheckBox ID="chkManProHoReqWorksheet" runat="server" Text="I have read the instructions." />
                                                </div>
                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                    <div style="float: left;">
                                                    </div>
                                                    <span class="fltrt">
                                                        <asp:Button ID="btnNextProHo" ValidationGroup="VGAffidavit" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save & Next" CausesValidation="true" OnClick="btnNextProHo_Click" />
                                                        <asp:Button ID="Button29" CssClass="buttonGreen medium" runat="server"
                                                            Visible="false" Text="Submit & Pay" OnClick="btnSaveNextPayment_Click" ValidationGroup="VGApplicationWaiver"
                                                            CausesValidation="true" />
                                                        <asp:LinkButton ID="LinkButton7" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server">Cancel</asp:LinkButton></span>
                                                </div>
                                            </asp:Panel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </asp:Panel>
                    <asp:Panel ID="PnlBackChecklist" runat="server" Visible="false">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel3">
                                        <ContentTemplate>
                                            <asp:Panel ID="Panel4" runat="server">
                                                <asp:Literal ID="Literal3" runat="server"></asp:Literal>
                                                <div>
                                                    <div class="sectionDiv">
                                                        <span>Background Checklist</span>
                                                    </div>
                                                </div>
                                                <fieldset class="flsNewApplReqForm flsCharacterReferences" style="text-align: justify;">
                                                     <b>1.</b>&nbsp;ALL owners, administrators, and faculty who are  required to submit an Owner Worksheet, Administrator Qualification Form, 
                                                    or Instructor Qualification Form are also required to submit to a background check. (Current CAMTC certificate holders, those who have submitted a CAMTC 
                                                    background check for another school in the past two years, and employees of public colleges or universities of the California state higher education system, 
                                                    as defined in section 100850 of the Education Code, are exempt from providing a background check.) 
                                                          
                                                        
                                                        <table class="tblApplReqForm5" style="margin-top: 15px;">
                                                            <tr>

                                                                <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                                                    <b>2.</b>&nbsp;A non-refundable $41 fee for each background check must be included with the school’s application fee. 

                                                                </td>

                                                            </tr>

                                                        </table>
                                                    <table class="tblApplReqForm5" style="margin-top: 15px;">
                                                        <tr>

                                                            <td style="padding-left: 0px; line-height: 20px; text-align: left;">
                                                                <b>3.</b>&nbsp;Instructions for completing background checks will be emailed to each individual who is required to complete one once the school application is submitted. The school application is considered incomplete until all background checks are completed. . 

                                                            </td>

                                                        </tr>

                                                    </table>
                                                    <table class="tblApplReqForm5" style="margin-top: 15px;">

                                                        <tr>

                                                            <td style="padding-left: 0px; line-height: 20px; text-align: left;">
                                                                 <b>4.</b>&nbsp;Providing incomplete or misleading information to CAMTC may result in processing delays, denial of your application, disciplinary action, revocation of your approval, or additional processing fees. 

                                                            </td>

                                                        </tr>

                                                    </table>

                                                    

                                                    <div class="divLicenseInfon divaddnew AfterApproved" id="divAddbtnBackgroundCheck"
                                                        runat="server">
                                                        <span style="float: right;  margin-top: 15px; margin-bottom: 15px;">
                                                            <asp:Button ID="btnBackgroundCheckAddNew" CssClass="buttonGreen small" runat="server"
                                                                Text="Add" CausesValidation="true" OnClick="btnBackgroundCheckAddNew_Click" />
                                                        </span>
                                                    </div>

                                                    <asp:Literal ID="ltrBackgroundCheck" runat="server"></asp:Literal>

                                                    <div class="divLicenseInfo" id="divAddBackgroundCheck" style="margin-top: 15px;" runat="server" visible="false">
                                                        <p class="addNewDiv">
                                                            <span>Add Staff</span>
                                                        </p>
                                                        <table class="tblApplReqForm5 wthtop20" style="width: 96%;">
                                                            
                                                             <tr>

                                                            <td style="padding-left: 0px; line-height: 20px; text-align: left;padding-top: 0px !important;" colspan="4">
                                                               <div><p style="padding: 0px 11px 7px 10px; float: left;">By pressing the SAVE button, the individual just entered will receive an email with instructions for completing the Personal Information, Qualification and Declaration Form.</p></div>
                                                

                                                            </td>


                                                        </tr>
                                                            <tr>
                                                                <td class="txtalgnrgt tdwidth1">
                                                                    <label class="input-label required">
                                                                        Last Name :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtBackCheckLastName" runat="server" CssClass="inputTextbox" MaxLength="15"></asp:TextBox>

                                                                </td>

                                                                <td class="txtalgnrgt tdwidth2">
                                                                    <label class="input-label required">
                                                                        First Name :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtBackCheckFirstName" runat="server" CssClass="inputTextbox" MaxLength="15"></asp:TextBox>
                                                                </td>

                                                            </tr>
                                                            <tr>
                                                                <td class="txtalgnrgt tdwidth2">
                                                                    <label class="input-label required" style="line-height: 20px;">
                                                                        Title/ Position &nbsp; &nbsp; &nbsp; <br />(check all that apply)  :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <div class="listbox" style="height: auto; width: 163px;">
                                                                        <asp:CheckBoxList ID="CheckBoxList3" RepeatDirection="Vertical" Style="line-height: 10px;" runat="server">
                                                                            <asp:ListItem>Owner</asp:ListItem>
                                                                            <asp:ListItem>Administrator</asp:ListItem>
                                                                            <asp:ListItem>Instructor</asp:ListItem>
                                                                        </asp:CheckBoxList>
                                                                    </div>
                                                                </td>
                                                                <td class="txtalgnrgt tdwidth2">
                                                                    <label class="input-label required">
                                                                        Email :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtaddstaffEmail" runat="server" CssClass="inputTextbox" MaxLength="15"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txtalgnrgt" style="width: 320px;">
                                                                    <label class="input-label required">
                                                                        Background Check Required :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <asp:RadioButtonList ID="rblBackgroundChekReq" RepeatDirection="Horizontal" runat="server">
                                                                        <asp:ListItem>Yes</asp:ListItem>
                                                                        <asp:ListItem>No</asp:ListItem>
                                                                    </asp:RadioButtonList>

                                                                </td>
                                                                <td></td>
                                                                <td></td>
                                                            </tr>
                                                        </table>
                                                        <table style="width: 96%; margin-left: 50px;">
                                                            <tr>


                                                                <td class="txtalgnrgt">
                                                                    <label class="input-label required">
                                                                        If No, Reason Why? :
                                                                    </label>
                                                                </td>
                                                                <td style="line-height: 38px;">
                                                                    <asp:RadioButtonList ID="RadioButtonList2" RepeatDirection="Vertical" runat="server">
                                                                        <asp:ListItem>CAMTC#</asp:ListItem>
                                                                        <asp:ListItem>Submitted for another school</asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                    <%--<asp:CheckBox ID="chkCAMTC" runat="server" Text="CAMTC#" />
                                                                    --%> 




                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtchkCAMTC" runat="server" CssClass="inputTextbox" Style="float: right; margin-right: 50px; width: 249px;">

                                                                    </asp:TextBox>
                                                                    <br />
                                                                    <asp:TextBox ID="txtchkSubmitted" Style="width: 251px; margin-left: 18px; margin-top: 10px;" runat="server" CssClass="inputTextbox"></asp:TextBox>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <%--<tr>

                                                                <td></td>
                                                                <td>
                                                                    <asp:CheckBox ID="chkSubmittedforanother" runat="server" Text="Submitted for another school" />
                                                                    <asp:TextBox ID="txtchkSubmitted" Style="width: 251px; margin-left: 37px; margin-top: 10px;" runat="server" CssClass="inputTextbox"></asp:TextBox></td>
                                                            </tr>--%>
                                                            <tr>
                                                                <td style="height: 15px;"></td>
                                                            </tr>

                                                        </table>
                                                        <div class="address-box posFixed" id="dvErrAddStaff" runat="server" visible="false" style="min-height: 30px; width: 87%; margin: 15px auto;">
                                                        <span class="notok"></span>
                                                        <div class="error_header">
                                                            <asp:Label ID="lblErrAddStaff" runat="server" Text=""></asp:Label>

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
                                                                <asp:Button ID="btnBackgroundCheckAddNewSave"  CssClass="buttonGreen medium"
                                                                    runat="server" Text="Save" CausesValidation="true" OnClick="btnBackgroundCheckAddNewSave_Click" />
                                                                <asp:LinkButton ID="lnkBackgroundCheckAddNewCancel" CssClass="secondary medium bottom buttonalignment"
                                                                    runat="server" OnClick="lnkBackgroundCheckAddNewCancel_Click">Cancel</asp:LinkButton></span>
                                                        </div>
                                                    </div>

                                                    <div class="divLicenseInfo" style="display: none;">
                                                        <asp:GridView ID="gvBackgroundCheck" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                            CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None"
                                                            OnRowDataBound="gvBackgroundCheck_RowDataBound">
                                                            <AlternatingRowStyle BackColor="White" />
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Information">
                                                                    <ItemStyle />
                                                                    <EditItemTemplate>
                                                                        <asp:UpdatePanel ID="upBackgroundCheck2" runat="server">
                                                                            <Triggers>
                                                                                <asp:PostBackTrigger ControlID="btnBackgroundCheckUpdate" />
                                                                            </Triggers>
                                                                            <ContentTemplate>
                                                                                <div>
                                                                                    <table class="grid-heading">
                                                                                        <tr>
                                                                                            <td style="width: 147px;">
                                                                                                <span id="lblBackgroundCheckLastName">Last Name</span>
                                                                                            </td>
                                                                                            <td style="width: 208px;">
                                                                                                <span id="lblBackgroundCheckFirstName">First Name</span>
                                                                                            </td>

                                                                                            <td style="width: 208px;">
                                                                                                <span id="lblBackgroundCheckPosition">Title/ Position</span>
                                                                                            </td>
                                                                                            <td style="width: 66px;">
                                                                                                <span id="lblBackgroundCheckRequerd">Background Check Required</span>
                                                                                            </td>

                                                                                            <td><span id="lblBackgroundCheckReason">If No, Reason Why?</span></td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </div>
                                                                                <div class="divGridEdit">
                                                                                    <p class="addNewDiv">
                                                                                        <span>Edit Approval Agency</span>
                                                                                    </p>
                                                                                    <table class="tblApplReqForm5 wthtop20" style="width: 96%;">
                                                                                        <tr>
                                                                                            <td class="txtalgnrgt tdwidth1">
                                                                                                <label class="input-label required">
                                                                                                    Last name  :
                                                                                                </label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:TextBox ID="txtBackCheckLastNameEdit" runat="server" CssClass="inputTextbox" MaxLength="15"></asp:TextBox>

                                                                                            </td>
                                                                                            <td class="txtalgnrgt tdwidth2">
                                                                                                <label class="input-label">
                                                                                                    First Name :
                                                                                                </label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:TextBox ID="txtBackCheckFirstNameEdit" runat="server" CssClass="inputTextbox" MaxLength="15"></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="txtalgnrgt">
                                                                                                <label class="input-label required">
                                                                                                    Title/ Position :
                                                                                                </label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:TextBox ID="txtBackCheckTitleEdit" runat="server" CssClass="inputTextbox calender"></asp:TextBox>
                                                                                            </td>

                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="txtalgnrgt tdwidth2">
                                                                                                <label class="input-label">
                                                                                                    Background Check Required :
                                                                                                </label>
                                                                                            </td>
                                                                                            <td>

                                                                                                <asp:RadioButtonList ID="rblBackgroundChekReqEdit" RepeatDirection="Horizontal" runat="server">
                                                                                                    <asp:ListItem>Yes</asp:ListItem>
                                                                                                    <asp:ListItem>No</asp:ListItem>
                                                                                                </asp:RadioButtonList>

                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>

                                                                                            <td class="txtalgnrgt tdwidth2">
                                                                                                <label class="input-label">
                                                                                                    If No, Reason Why? :
                                                                                                </label>
                                                                                            </td>
                                                                                            <td colspan="6">
                                                                                                <asp:CheckBox ID="chkCAMTCEdit" runat="server" Text="CAMTC#" />
                                                                                                <asp:TextBox ID="txtchkCAMTCEdit" runat="server" CssClass="inputTextbox" Style="width: 253px; margin-left: 142px;"></asp:TextBox>
                                                                                                <br />
                                                                                                <asp:CheckBox ID="chkSubmittedforanotherEdit" runat="server" Text="Submitted for another school" />
                                                                                                <asp:TextBox ID="txtchkSubmittedEdit" Style="width: 251px; margin-left: 33px;" runat="server" CssClass="inputTextbox"></asp:TextBox>


                                                                                            </td>
                                                                                        </tr>

                                                                                    </table>
                                                                                    <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                                        <span class="fltrt">
                                                                                            <asp:Button ID="btnBackgroundCheckUpdate"
                                                                                                CssClass="buttonGreen medium" runat="server" Text="Update" CausesValidation="true"
                                                                                                OnClick="btnBackgroundCheckUpdate_Click" />
                                                                                            <asp:LinkButton ID="lnkBackgroundCheckCancelUpdate" CssClass="secondary medium bottom buttonalignment"
                                                                                                runat="server" OnClick="lnkBackgroundCheckCancelUpdate_Click">Cancel</asp:LinkButton></span>
                                                                                    </div>
                                                                                </div>
                                                                            </ContentTemplate>
                                                                        </asp:UpdatePanel>
                                                                    </EditItemTemplate>
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblBackgroundCheckLastName" runat="server" Text="Last Name"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="First Name">
                                                                    <ItemStyle />
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblBackgroundCheckFirstName" runat="server" Text="First Name"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Title/ Position ">
                                                                    <ItemStyle />
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblBackgroundCheckPosition" runat="server" Text="Title"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>

                                                                <asp:TemplateField HeaderText="Background Check Required ">
                                                                    <ItemStyle />
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblBackgroundCheckRequerd" runat="server" Text="Yes"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>

                                                                <asp:TemplateField HeaderText="If No, Reason Why?">
                                                                    <ItemStyle />
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblBackgroundCheckReason" runat="server" Text="No Reason"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>

                                                                <asp:TemplateField ItemStyle-Width="60px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                                                                    <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                                                                    <ItemTemplate>
                                                                        <span class="fltrt AfterApproved">
                                                                            <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" CommandArgument="1" runat="server"
                                                                                RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                                OnClick="lnkBackgroundCheckEdit_Click" />
                                                                            <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                                CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?')"
                                                                                OnClick="lnkBackgroundChecDelete_Click" /></span>
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


                                                    <div id="Div27" runat="server" class="grid-header">
                                                        <table class="index brdr grid mozillapdgnone" id="Table3" style="color: #333333; width: 100%; margin: 10px auto; border-collapse: collapse;"
                                                            cellpadding="5" cellspacing="0">
                                                            <tbody>
                                                                <tr>
                                                                    <th scope="col" style="width: 120px;">Last Name
                                                                    </th>
                                                                    <th scope="col" style="width: 120px;">First Name
                                                                    </th>
                                                                    <th scope="col" style="width: 190px;">Title/ Position 
                                                                    </th>
                                                                    <th scope="col" style="width: 110px; text-align: center;">Background Check Required  
                                                                    </th>
                                                                    <th scope="col" style="width: 139px; text-align: center;">If No,  Reason Why?   </th>
                                                                    <th scope="col" style="width: 60px;">Status</th>
                                                                    <th scope="col" style="width: 70px;">Declaration</th>
                                                                    <th scope="col" style="width: 100px; text-align: center;">Action</th>
                                                                </tr>

                                                                <tr class="bordrbtm gridrow" id="tr7" runat="server">
                                                                    <td class="InEditModetd" style="border-bottom: 1px solid rgb(222, 222, 222);">Last name
                                                                    </td>
                                                                    <td>First Name
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label3" runat="server" Text="Owner, Administrator"></asp:Label>
                                                                    </td>
                                                                    <td style="text-align: center;">
                                                                        <asp:Label ID="Label12" runat="server" Text="Yes"></asp:Label>
                                                                    </td>
                                                                    <td style="text-align: center;">
                                                                        <asp:Label ID="Label13" runat="server" Text="CAMTC001"></asp:Label>
                                                                    </td>
                                                                    <td style="text-align: center;">
                                                                        <asp:ImageButton ID="ImageButton9" CssClass="imgDelete"
                                                                            runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/StatusYes.png" /></td>
                                                                    <td style="text-align: center;">
                                                                        <asp:ImageButton ID="ImageButton8" CssClass="imgDelete"
                                                                            runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/StatusYes.png" /></td>
                                                                    <td>

                                                                        <span class="fltrt AfterApproved">
                                                                            <asp:ImageButton ID="imgbtnRelatedSchoolEdit" CssClass="imgDelete"
                                                                                runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" />
                                                                            <asp:ImageButton ID="imgBtnRelatedSchoolDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                                ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?')" /></span>
                                                                    </td>




                                                                </tr>

                                                                <tr class="bordrbtm gridrow" id="tr1" runat="server">
                                                                    <td class="InEditModetd" style="border-bottom: 1px solid rgb(222, 222, 222);">Last name
                                                                    </td>
                                                                    <td>First Name
                                                                    </td>
                                                                    <td style="text-align: left;">
                                                                        <asp:Label ID="Label4" runat="server" Text="Owner"></asp:Label>
                                                                    </td>
                                                                    <td style="text-align: center;">
                                                                        <asp:Label ID="Label11" runat="server" Text="Yes"></asp:Label>
                                                                    </td>
                                                                    <td style="text-align: center;">
                                                                        <asp:Label ID="Label14" runat="server" Text="School Name"></asp:Label>
                                                                    </td>
                                                                    <td style="text-align: center;">
                                                                        <asp:ImageButton ID="ImageButton10" CssClass="imgDelete"
                                                                            runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/StatusNo.png" /></td>
                                                                    <td style="text-align: center;">
                                                                        <asp:ImageButton ID="ImageButton11" CssClass="imgDelete"
                                                                            runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/StatusNo.png" /></td>
                                                                    <td>

                                                                        <span class="fltrt AfterApproved">
                                                                            <asp:ImageButton ID="ImageButton12" CssClass="imgDelete"
                                                                                runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" />
                                                                            <asp:ImageButton ID="ImageButton13" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                                ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?')" /></span>
                                                                    </td>
                                                                </tr>
                                                                <tr class="bordrbtm gridrow" id="tr3" runat="server">
                                                                    <td class="InEditModetd" style="border-bottom: 1px solid rgb(222, 222, 222);">Last name
                                                                    </td>
                                                                    <td>First Name
                                                                    </td>
                                                                    <td style="text-align: left;">
                                                                        <asp:Label ID="Label5" runat="server" Text="Owner, Administrator, Instructor"></asp:Label>
                                                                    </td>
                                                                    <td style="text-align: center;">
                                                                        <asp:Label ID="Label10" runat="server" Text="Yes"></asp:Label>
                                                                    </td>
                                                                    <td style="text-align: center;">
                                                                        <asp:Label ID="Label15" runat="server" Text="CAMTC001"></asp:Label>
                                                                    </td>

                                                                    <td style="text-align: center;">
                                                                        <asp:ImageButton ID="ImageButton14" CssClass="imgDelete"
                                                                            runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/StatusYes.png" /></td>
                                                                    <td style="text-align: center;">
                                                                        <asp:ImageButton ID="ImageButton15" CssClass="imgDelete"
                                                                            runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/StatusYes.png" /></td>
                                                                    <td>

                                                                        <span class="fltrt AfterApproved">
                                                                            <asp:ImageButton ID="ImageButton16" CssClass="imgDelete"
                                                                                runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" />
                                                                            <asp:ImageButton ID="ImageButton17" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                                ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?')" /></span>
                                                                    </td>
                                                                </tr>
                                                                <tr class="bordrbtm gridrow" id="tr4" runat="server">
                                                                    <td class="InEditModetd" style="border-bottom: 1px solid rgb(222, 222, 222);">Last name
                                                                    </td>
                                                                    <td>First Name
                                                                    </td>
                                                                    <td style="text-align: left;">
                                                                        <asp:Label ID="Label6" runat="server" Text="Owner, Administrator, Instructor"></asp:Label>
                                                                    </td>
                                                                    <td style="text-align: center;">
                                                                        <asp:Label ID="Label9" runat="server" Text="No"></asp:Label>
                                                                    </td>
                                                                    <td style="text-align: center;">
                                                                        <asp:Label ID="Label16" runat="server" Text="CAMTC001"></asp:Label>
                                                                    </td>
                                                                    <td style="text-align: center;">
                                                                        <asp:ImageButton ID="ImageButton18" CssClass="imgDelete"
                                                                            runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/StatusNo.png" /></td>
                                                                    <td style="text-align: center;">
                                                                        <asp:ImageButton ID="ImageButton19" CssClass="imgDelete"
                                                                            runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/StatusNo.png" /></td>
                                                                    <td>

                                                                        <span class="fltrt AfterApproved">
                                                                            <asp:ImageButton ID="ImageButton20" CssClass="imgDelete"
                                                                                runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" />
                                                                            <asp:ImageButton ID="ImageButton21" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                                ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?')" /></span>
                                                                    </td>

                                                                </tr>
                                                                <tr class="bordrbtm gridrow" id="tr5" runat="server">
                                                                    <td class="InEditModetd" style="border-bottom: 1px solid rgb(222, 222, 222);">Last name
                                                                    </td>
                                                                    <td>First Name
                                                                    </td>
                                                                    <td style="text-align: left;">
                                                                        <asp:Label ID="Label7" runat="server" Text="Owner, Administrator, Instructor"></asp:Label>
                                                                    </td>
                                                                    <td style="text-align: center;">
                                                                        <asp:Label ID="Label8" runat="server" Text="Yes"></asp:Label>
                                                                    </td>
                                                                    <td style="text-align: center;">
                                                                        <asp:Label ID="Label17" runat="server" Text="CAMTC001"></asp:Label>
                                                                    </td>

                                                                    <td style="text-align: center;">
                                                                        <asp:ImageButton ID="ImageButton22" CssClass="imgDelete"
                                                                            runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/StatusYes.png" /></td>
                                                                    <td style="text-align: center;">
                                                                        <asp:ImageButton ID="ImageButton23" CssClass="imgDelete"
                                                                            runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/StatusYes.png" /></td>
                                                                    <td>

                                                                        <span class="fltrt AfterApproved">
                                                                            <asp:ImageButton ID="ImageButton24" CssClass="imgDelete"
                                                                                runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" />
                                                                            <asp:ImageButton ID="ImageButton25" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                                ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?')" /></span>
                                                                    </td>
                                                                </tr>

                                                            </tbody>
                                                        </table>
                                                    </div>

                                                    <table style="width: 100%;">
                                                        <tr style="float: right;" id="btnstaffpay_visible" runat="server">
                                                            <td><asp:Button ID="btnStaffPay"  OnClick="btnStaffPay_Click"  Visible="false" CssClass="buttonGreen small" style="margin-left: 15px;" runat="server"  Text="Pay" /></td>
                                                        </tr>
                                                        <tr style="float: right;">
                                                            
                                                            <td style="width: 162px; margin-left: 10px; padding-left: 45px;">Total “Yes” : 
                                                                <asp:TextBox ID="TextBox104"  Style="width:67px !important" CssClass="tooltip OnlyAlphabet inputTextbox capitalize-text NewAppPersonalTxtbx"
                                                                    runat="server"></asp:TextBox>

                                                            </td>
                                                            <td>Amount Due : 
                                                                <asp:TextBox ID="TextBox106" Width="148px" CssClass="tooltip OnlyAlphabet inputTextbox capitalize-text NewAppPersonalTxtbx"
                                                                    runat="server" placeholder="(Total “Yes” x $41 = )"></asp:TextBox>
                                                            </td>
                                                            </tr>
                                                        
                                                    </table>


                                                    
                                                    <table style="margin-top: 45px; margin-bottom: 15px; width: 91%; display: none;">
                                                        <tr>
                                                            <td align="right">
                                                                <label class="input-label required">
                                                                    Signature :</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox154" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td align="right">
                                                                <label class="input-label required">
                                                                    Date :</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox183" CssClass="calender inputTextbox" placeholder="MM/DD/YYYY"
                                                                    runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table style="margin-top: 15px; margin-bottom: 5px; width: 100%; display: none;">
                                                        <tr>
                                                            <td align="right" style="width: 100px;">
                                                                <label class="input-label required">
                                                                    Print Name :</label>
                                                            </td>
                                                            <td style="width: 197px;">
                                                                <asp:TextBox ID="TextBox184" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td align="right" style="width: 83px;">
                                                                <label class="input-label required">
                                                                    Title :</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox185" Style="width: 170px;" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table style="margin-top: 15px; margin-bottom: 5px; width: 98%; display:none;">
                                                        <tr>
                                                            <td>
                                                                <span>Do you want to send all individuals to TalentWise that has not been sent till now?</span>
                                                            </td>
                                                            <td style="width: 122px; padding-left: 18px;">
                                                                <asp:RadioButtonList ID="rblTalentWise" RepeatDirection="Horizontal" runat="server"
                                                                    AutoPostBack="true" OnSelectedIndexChanged="rblTalentWise_OnSelectedIndexChanged">
                                                                    <asp:ListItem Text="Yes" Value="1" Selected="False"></asp:ListItem>
                                                                    <asp:ListItem Text="No" Value="0" Selected="True"></asp:ListItem>
                                                                </asp:RadioButtonList></td>
                                                            <td>
                                                                <asp:Button ID="btnTalentWise" CssClass="buttonGreen medium" Enabled="false"
                                                                    runat="server" Text="Send to TalentWise" /></td>
                                                        </tr>
                                                    </table>
                                                    
                                                </fieldset>

                                                <div class="divLicenseInfo" id="dvAboutStaffUpSection" runat="server" style="margin-top: 30px; width:94%;">

<p class="addNewDiv">
                                                                <span>Staffing Policies and Procedures</span>
                                                            </p>

<table class="tblApplReqForm5 wthtop20" style="width: 99%;">
 <tr>
                                                                                            <td class="txtalgnrgt">
                                                                                                <label class="input-label required">
                                                                                                   Document Name :
                                                                                                </label>
                                                                                            </td>   
                                                                                            <td>
                                                                                                <asp:TextBox ID="txtDocNameAboutStaff" runat="server"></asp:TextBox>
                                                                                            </td>
                                                                                            <td class="txtalgnrgt">
                                                                                                <label class="input-label required">
                                                                                                    Document Type :
                                                                                                </label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:DropDownList ID="ddlOwnAboutStaff" runat="server" CssClass="inputTextbox">
                                                                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                                                    <asp:ListItem Value="1">Hiring Policies</asp:ListItem>
                                                                                                    <asp:ListItem Value="2">Training Policies</asp:ListItem>
                                                                                                    <asp:ListItem Value="3">Evaluating Policies (including students)</asp:ListItem>
                                                                                                    <asp:ListItem Value="4">Disciplining Policies</asp:ListItem>
                                                                                                    <asp:ListItem Value="5">Massage Program Staff and Faculty</asp:ListItem>
                                                                                                    <asp:ListItem Value="6">Meeting and/or Training Policies</asp:ListItem>
                                                                                                    <asp:ListItem Value="7">Minutes and Attendance Records </asp:ListItem>
                                                                                                    <asp:ListItem Value="8">Student-Teacher Ratio Policy</asp:ListItem>
                                                                                                    <asp:ListItem Value="9">Student-Teacher Class Ratio</asp:ListItem>
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
                                                                                                <asp:FileUpload ID="DocFUAboutStaff" runat="server" />
                                                                                            </td>
                                                                                            <td colspan="3">
                                                                                                <asp:Button ID="btnUploadAboutStaff" Style="margin-left:10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                                            <td></td>
                                                                                        </tr>
</table>



</div>

                                                <div class="readinstrucn">
                                                    <asp:CheckBox ID="chkManBackChecklist" runat="server" Text="I have read the instructions." />
                                                </div>

                                                
                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                    <div style="float: left;">
                                                    </div>
                                                    <span class="fltrt">
                                                        <asp:Button ID="btnPayNow" CssClass="buttonGreen medium" OnClick="btnStaffPay_Click" runat="server"  Text="Enter Payment" />
                                                        <asp:Button ID="btnsubappforContct" CssClass="buttonGreen medium" runat="server"  Visible="false" Text="Submit Application" />
                                                        <asp:Button ID="btnNextBackList" Visible="false" ValidationGroup="VGAffidavit" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnNextBackList_Click" />
                                                        <asp:Button ID="btnsaveSclContct" ValidationGroup="VGAffidavit" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnsaveSclContct_Click" />
                                                        <asp:Button ID="Button27" CssClass="buttonGreen medium" runat="server"
                                                            Visible="false" Text="Submit & Pay" OnClick="btnSaveNextPayment_Click" ValidationGroup="VGApplicationWaiver"
                                                            CausesValidation="true" />
                                                        <asp:LinkButton ID="lnkContactStaffCancel" OnClick="lnkContactStaffCancel_Click" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server">Cancel</asp:LinkButton></span>
                                                </div>

                                                <div id="payment_stafftab" visible="false" runat="server" style="border: 1px solid rgb(222, 222, 222);margin-top: 10px;width: 98.5%;margin-left: 5px;margin-bottom: 5px;" >
                                                 
                                                    <div>
                                                        <div class="sectionDiv">
                                                            <span>Payment</span>
                                                        </div>
                                                    </div>



                                                    <fieldset class="flsNewApplReqForm flsNCBTMBEI">
                                                        <div>

                                                            <div>
                                                                <table class="tblApplReqForm5" style="margin-left: 140px;">
                                                                    <tr>
                                                                        <td align="right">
                                                                            <label class="input-label required">
                                                                                Payment Method :</label>
                                                                        </td>
                                                                        <td>&nbsp;<asp:DropDownList ID="ddlStaffPaymentMethod" AutoPostBack="true" runat="server"
                                                                            Style="width: 158px; margin-left: 6px; height: 27px;" OnSelectedIndexChanged="ddlStaffPaymentMethod_SelectedIndexChanged">
                                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                            <asp:ListItem Value="1">Check</asp:ListItem>
                                                                            <asp:ListItem Value="2">Money Order</asp:ListItem>
                                                                            <asp:ListItem Value="3">Credit / Debit Card</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        </td>
                                                                    </tr>


                                                                    <tr id="trstaffchck1" runat="server" visible="false">
                                                                        <td align="right">
                                                                            <label class="input-label">Check Number :</label></td>
                                                                        <td>&nbsp;<asp:TextBox ID="TextBox4" CssClass="OnlyNumeric" Style="width: 145px; margin-left: 6px;" runat="server"
                                                                            AutoPostBack="true"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr id="trstaffchck2" runat="server" visible="false">
                                                                        <td align="right">
                                                                            <label class="input-label">Name on Check :</label></td>
                                                                        <td>&nbsp;<asp:TextBox ID="TextBox5" CssClass="" Style="width: 145px; margin-left: 6px;" runat="server"
                                                                            AutoPostBack="true"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr id="trstaffmonyorder" runat="server" visible="false">
                                                                        <td align="right">
                                                                            <label class="input-label">Money Order Number :</label></td>
                                                                        <td>&nbsp;<asp:TextBox ID="TextBox17" CssClass="OnlyNumeric" Style="width: 145px; margin-left: 6px;" runat="server"
                                                                            AutoPostBack="true"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right">
                                                                            <label class="input-label required">
                                                                                Application Fees :</label>
                                                                        </td>
                                                                        <td>$&nbsp;<asp:TextBox ID="TextBox24" Style="width: 145px;" runat="server"
                                                                            Text="750" Enabled="false"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right">
                                                                            <label class="input-label">
                                                                                Background Check Fee :
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <%--<div id="show_details"  runat="server" onclick="">Show Details</div>--%>
                                                                            <asp:Button ID="btnStaffShowDetails" Style="border: medium none; background-color: white; text-decoration: underline;"
                                                                                runat="server" Text="Show Details" OnClick="btnStaffShowDetails_Click"></asp:Button>
                                                                            <asp:Button ID="btnStaffHideDetials" Style="border: medium none; background-color: white; text-decoration: underline;"
                                                                                runat="server" Text="Hide Details" OnClick="btnStaffHideDetials_Click" Visible="false"></asp:Button>
                                                                        </td>
                                                                    </tr>
                                                                    <tr id="showstaffdetils1" runat="server" visible="false">
                                                                        <td align="right">
                                                                            <label class="input-label">John Doe :</label></td>
                                                                        <td>$&nbsp;<asp:TextBox ID="TextBox25" CssClass="OnlyNumeric" Style="width: 145px;" runat="server"
                                                                            AutoPostBack="true" Text="41"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr id="Staffshowdetils2" runat="server" visible="false">
                                                                        <td align="right">
                                                                            <label class="input-label">Jane Doe :</label></td>
                                                                        <td>$&nbsp;<asp:TextBox ID="TextBox34" CssClass="OnlyNumeric" Style="width: 145px;" runat="server"
                                                                            Text="41" AutoPostBack="true"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right">
                                                                            <label class="input-label">
                                                                                Number of Certificate :</label>
                                                                        </td>
                                                                        <td style="padding-left: 6px !important;">&nbsp;<asp:TextBox ID="TextBox37" CssClass="OnlyNumeric" Style="width: 145px;"
                                                                            runat="server"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right">
                                                                            <label class="input-label">
                                                                                Additional Certificate Fee :</label>
                                                                        </td>
                                                                        <td style="padding: 4px; text-align: center;">$&nbsp;<asp:TextBox ID="TextBox38" CssClass="OnlyNumeric" Style="width: 145px;"
                                                                            runat="server" Enabled="false" Text="45"></asp:TextBox>&nbsp;&nbsp;($&nbsp;15.00 per copy)
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td align="right">
                                                                            <label class="input-label">
                                                                                Total Fees :</label>
                                                                        </td>
                                                                        <td>$&nbsp;<asp:TextBox ID="TextBox39" Text="877" Style="width: 145px;" runat="server"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>

                                                                <table class="tblApplReqForm5" style="display: none;">

                                                                    <tr>
                                                                        <td align="right">
                                                                            <label class="input-label required">
                                                                                Application Fees :</label>
                                                                        </td>
                                                                        <td>$&nbsp;750.00
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right">
                                                                            <label class="input-label required">
                                                                                Background Check Fee</label>
                                                                        </td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right">
                                                                            <label class="input-label required">John Doe :</label></td>
                                                                        <td>$&nbsp;41.00
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right">
                                                                            <label class="input-label required">Jane Doe :</label></td>
                                                                        <td>$&nbsp;41.00
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right">
                                                                            <label class="input-label required">
                                                                                Certificate Fee :</label>
                                                                        </td>
                                                                        <td>$&nbsp;45.00 &nbsp; ($&nbsp;15.00 per copy)
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right">
                                                                            <label class="input-label required">
                                                                                Total Fees :</label>
                                                                        </td>
                                                                        <td>$&nbsp;877.00
                                                                        </td>
                                                                    </tr>

                                                                </table>

                                                                <table id="tblStaffPaymentShekharHide" style="display: none;">
                                                                    <tr>
                                                                        <td align="right">
                                                                            <label class="input-label required">
                                                                                Application Fees :</label>
                                                                        </td>
                                                                        <td style="padding: 4px; text-align: center;">$&nbsp;<asp:TextBox ID="TextBox40" Style="width: 145px;" runat="server"
                                                                            Text="750" Enabled="false"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right">
                                                                            <label class="input-label required">
                                                                                Please enter the number of additional certiﬁcates below :</label>
                                                                        </td>
                                                                        <td style="padding: 4px; text-align: center;">&nbsp;&nbsp;
                                                                        <asp:TextBox ID="txtStaffNumberOfAdditinolCerti" CssClass="OnlyNumeric" Style="width: 145px;" runat="server"
                                                                            AutoPostBack="true"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right">
                                                                            <label class="input-label required">
                                                                                Additional Certificate Amount :</label>
                                                                        </td>
                                                                        <td style="padding: 4px; text-align: center;">$&nbsp;<asp:TextBox ID="txtStaffAdditionalCertificateAmt" CssClass="OnlyNumeric" Style="width: 145px;"
                                                                            runat="server" Enabled="false"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right">
                                                                            <label class="input-label required">
                                                                                Total Fees :</label>
                                                                        </td>
                                                                        <td style="padding: 4px; text-align: center;">$&nbsp;<asp:TextBox ID="TextBox43" Style="width: 145px;" runat="server"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>


                                                    </fieldset>
                                                    <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                        <span class="fltrt">
                                                       <asp:Button ID="btnPaySubmit" CssClass="buttonGreen medium" OnClick="btnStaffPay_Click"  runat="server"  Text="Submit & Pay" />
                                                        <asp:Button ID="btnPayCancel" CssClass="buttonGreen medium" OnClick="btnStaffPay_Click" runat="server"  Text="Cancel" />
                                                       </span>
                                                            </div>




                                                        <%--<asp:LinkButton ID="cancel_staffPayment"  CssClass="secondary medium bottom buttonalignment"
                                                            runat="server">Cancel</asp:LinkButton></span>--%>
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