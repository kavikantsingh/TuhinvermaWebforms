<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucSchoolWorkflowCourseCatalog.ascx.cs" Inherits="Module_UI_Backoffice_ESD_SchoolWorkFlow_ucSchoolWorkflowCourseCatalog" %>
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


                                                        <li runat="server" clientidmode="Static" class="actived" id="li_Course_Catalog_Checklist">
                                                            <asp:Button ID="btnCourCataCheck" runat="server" Text="Course Catalog" CssClass="btnlimenu" OnClick="btnCourCataCheck_Click" />
                                                            <span class="spnStatusImage statusimgalgn">
                                                                <asp:ImageButton ID="imgCourCataCheck" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                                    ImageUrl="~/App_Themes/Theme1/images/button_cross.png" OnClick="btnCourCataCheck_Click" /></span>
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

                    <asp:Panel ID="PnlCoCatChecklist" runat="server">
                        <asp:UpdatePanel runat="server" ID="UpdatePanel6">
                            <ContentTemplate>
                                <asp:Panel ID="Panel7" runat="server">
                                    <asp:Literal ID="Literal6" runat="server"></asp:Literal>
                                    <div>
                                        <div class="sectionDiv">
                                            <span>Course Catalog</span>
                                        </div>
                                    </div>
                                    <fieldset class="flsNewApplReqForm flsCharacterReferences" style="text-align: left;">
                                                    <b></b>Please include all the following:
                                                        
                                                        <table class="tblApplReqForm5" style="margin-top: 5px;">
                                                            <tr>

                                                                <td style="padding-left: 0px; line-height: 20px; text-align: left;">
                                                                    <b></b>Providing incomplete or misleading information to CAMTC may result in processing delays, denial of your application, disciplinary action, revocation of your approval, or additional processing fees. 

                                                                </td>

                                                            </tr>

                                                        </table>
                                                    <table class="tableborder_trcschk" style="margin-top: 15px;">
                                                        <tr>
                                                            <td><b>Required Items</b></td>
                                                        </tr>
                                                        <tr>

                                                            <td>1. Current course catalog must be provided. Per CAMTC’s Policies and Procedures for Approval of Schools, 
                                                                course catalogs should include at minimum:

                                                                <br />
                                                                <ul style="list-style-type: circle;">
                                                                    <li>
                                                                        <p>
                                                                            School name, address, additional addresses where classes will be held, telephone number, website, 
                                                                                    and CAMTC School Approval Code (once approved). 
                                                                        </p>
                                                                    </li>
                                                                    <li>
                                                                        <p>Date printed/revised. </p>
                                                                    </li>
                                                                    <li>
                                                                        <p>Title of massage program(s) and total number of scheduled supervised hours received upon completion. </p>
                                                                    </li>
                                                                    <li>
                                                                        <p style="text-align: left;">
                                                                            Program prerequisites, including but not limited to admission requirements, previous training, and language comprehension skills. 
                                                                        </p>
                                                                    </li>
                                                                    <li>
                                                                        <p style="text-align: left;">Completion and graduation requirements, including but not limited to clock hours to attend, assignments to complete, and assessments to pass. </p>
                                                                    </li>
                                                                    <li>
                                                                        <p style="text-align: left;">
                                                                            Transfer credit policy. 
                                                                        </p>
                                                                    </li>
                                                                    <li>
                                                                        <p style="text-align: left;">Attendance and leave of absence policies. </p>
                                                                    </li>
                                                                    <li>
                                                                        <p>
                                                                            Hygiene, dress code, and draping policies. 
                                                                        </p>
                                                                    </li>
                                                                    <li>
                                                                        <p>
                                                                            If the school admits foreign or ESL students, the catalog shall contain language proficiency information, including the level of English language proficiency required of students and the kind of documentation of proficiency that will be accepted; and whether English language services are provided and, if so, the nature of the service and its cost. The catalog shall also identify whether any instruction will occur in a language other than English and, if so, identify the other language(s) instruction will be provided in, the level of English proficiency required, and the kind of documentation of proficiency that will be accepted. 

                                                                        </p>
                                                                    </li>
                                                                    <li>
                                                                        <p style="text-align: left;">
                                                                            Publication of CAMTC’s Law related to unfair business practices as related to massage.
                                                                        </p>
                                                                    </li>
                                                                    <li>
                                                                        <p style="text-align: left;">
                                                                            Clearly visible disclosure statement: “Attendance and/or graduation from a California Massage Therapy Council approved school does not guarantee certification by CAMTC. Applicants for certification shall meet all requirements as listed in California Business and Professions Code section 4600 et. seq.” 
                                                                        </p>
                                                                    </li>

                                                                    <li>
                                                                        <p>Statement directing students to CAMTC for unanswered questions and for filing a complaint: “A student or any member of the public with questions that have not been satisfactorily answered by the school or who would like to file a complaint about this school may contact the California Massage Therapy Council at One Capitol Mall, Suite 800, Sacramento, CA 95814, www.camtc.org, phone (916) 669-5336, or fax (916) 669-5337.”</p>
                                                                    </li>
                                                                </ul>

                                                                <br />




                                                                <div class="dvuploadgrid">
                                                                    <div class="fltlft">
                                                                        <label class="input-label required">
                                                                                Document :
                                                                            </label>
                                                                        <asp:FileUpload ID="fuCourceCheklist" runat="server" />

                                                                    </div>
                                                                    <div class="dvuploadclass">
                                                                        <asp:Button ID="uploadbtnCourceCheklist" runat="server" class="buttonGreen small" Text="Upload Document" />
                                                                    </div>
                                                                </div>
                                                            </td>

                                                        </tr>

                                                        <tr>

                                                            <td>2. Massage program addendum, if any.
                                                             <div class="dvuploadgrid">
                                                                 <div class="fltlft">
                                                                     <asp:Label ID="lblCatMsgPrg" runat="server" Text="Document : "></asp:Label>
                                                                     
                                                                     <asp:FileUpload ID="fuCouCatMsgProg" runat="server" />
                                                                 </div>
                                                                 <div class="dvuploadclass">
                                                                     <asp:Button ID="btnUpdCouCatMsgProg" runat="server" class="buttonGreen small" Text="Upload Document" />
                                                                 </div>
                                                             </div>
                                                            </td>
                                                        </tr>


                                                    </table>

                                                    
                                                </fieldset>
                                    <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                    <div style="float: left;">
                                                    </div>
                                                    <span class="fltrt">
                                                        <asp:Button ID="btnNextCourseChkList" ValidationGroup="VGAffidavit" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnNextCourseChkList_Click" />
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
                    </div>
            </div>
        </div>
    </div>
</div>