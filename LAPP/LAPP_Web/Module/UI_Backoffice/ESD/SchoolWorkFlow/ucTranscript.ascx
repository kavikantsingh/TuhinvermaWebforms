<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucTranscript.ascx.cs" Inherits="Module_UI_Backoffice_ESD_SchoolWorkFlow_ucTranscript" %>
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

                                            <li runat="server" clientidmode="Static" class="actived" id="li_Transcript_Checklist">
                                                <asp:Button ID="btnTransCheck" runat="server" Text="Transcript" CssClass="btnlimenu" OnClick="btnTransCheck_Click" />
                                                <span class="spnStatusImage statusimgalgn">
                                                    <asp:ImageButton ID="imgTransCheck" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                        ImageUrl="~/App_Themes/Theme1/images/check_icon.png" OnClick="btnTransCheck_Click" /></span>
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
                    <asp:Panel ID="PnlTransChecklist" runat="server" Visible="true">
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
                                                                    
                                                        
                                                        <table class="tblApplReqForm5" style="margin-top: 15px;">
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
defined in Section 100850 of the Education Code, shall meet or exceed standards as determined by
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
                                                <td>Sample transcript and massage program addendum, if any, with highlights and descriptions for unique
security measures.
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
                </div>
            </div>
        </div>
    </div>
</div>
