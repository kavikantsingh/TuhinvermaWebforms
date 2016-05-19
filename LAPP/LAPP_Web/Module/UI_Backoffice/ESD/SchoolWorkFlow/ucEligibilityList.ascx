<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucEligibilityList.ascx.cs" Inherits="Module_UI_Backoffice_ESD_SchoolWorkFlow_ucEligibilityList" %>
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


                                            <li runat="server" clientidmode="Static" class="actived" id="li_Student_Eligibility_List" style="">
                                                <asp:Button ID="btnStudentElgList" runat="server" Text="Student Eligibility List" OnClick="btnStudentElgList_Click" CssClass="btnlimenu" />
                                                <span class="spnStatusImage statusimgalgn">
                                                    <asp:ImageButton ID="ImageButton37" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                        ImageUrl="~/App_Themes/Theme1/images/check_icon.png" /></span>
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
                    <asp:Panel ID="pnlStudentEligibilityList" runat="server" Visible="true">
                        <asp:UpdatePanel runat="server" ID="UpdatePanel12">
                            <ContentTemplate>
                                <asp:Panel ID="Panel21" runat="server">
                                    <div>
                                        <div class="sectionDiv">
                                            <span>Student Eligibility List</span>
                                        </div>

                                        <fieldset class="flsParentNewApplReqForm flsParentNewApplReqForm1">
                                            <p>
                                                <b>&nbsp;&nbsp;Upload Student Transcript:</b>
                                            </p>
                                            <asp:Literal ID="Literal32" runat="server"></asp:Literal>



                                            <div id="MsgUplodTranscript">
                                            </div>
                                            <div style="width: 100%;">
                                                <div style="">
                                                    <table class=" tblApplReqForm5 wdtmarauto">
                                                        <tr>
                                                            <td class="txtalgnrgt" style="width: 115px;">
                                                                <label class="input-label required">
                                                                    Last Name :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtUSTLastName" runat="server" CssClass="tooltip OnlyAlphabet inputTextbox capitalize-text NewAppPersonalTxtbx" title="Only A-Z characters are allowed."></asp:TextBox>
                                                            </td>

                                                            <td class="txtalgnrgt" style="width: 115px;">
                                                                <label class="input-label required">
                                                                    First Name :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtUSTFirstName" runat="server" CssClass="tooltip OnlyAlphabet inputTextbox capitalize-text NewAppPersonalTxtbx" title="Only A-Z characters are allowed."></asp:TextBox>
                                                            </td>

                                                        </tr>
                                                        <tr>

                                                            <td class="txtalgnrgt" style="width: 115px;">
                                                                <label class="input-label">
                                                                    Middle Name :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtUSTMiddleName" runat="server" CssClass="tooltip OnlyAlphabet inputTextbox capitalize-text NewAppPersonalTxtbx" title="Only A-Z characters are allowed."></asp:TextBox>
                                                            </td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="txtalgnrgt" style="width: 58px;">
                                                                <label class="input-label required">
                                                                    DOB  :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtUSTDOB" Style="width: 86px;" CssClass="calender inputTextbox" placeholder="MM/DD/YYYY"
                                                                    runat="server"></asp:TextBox>
                                                            </td>
                                                            <td class="txtalgnrgt" style="width: 158px;">
                                                                <label class="input-label">
                                                                    Last 4 SSN  :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtUSTSSN" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx ssn"
                                                                    MaxLength="11" Style="width: 120px;" placeholder="XXX-XX-XXXX"></asp:TextBox>
                                                            </td>

                                                        </tr>
                                                        <tr>

                                                            <td class="txtalgnrgt">
                                                                <label class="input-label required">
                                                                    PDF of Transcript :
                                                                </label>
                                                            </td>
                                                            <td colspan="2">
                                                                <asp:TextBox ID="txtpdfTrns" Width="335px" runat="server" CssClass="tooltip OnlyAlphabet inputTextbox capitalize-text NewAppPersonalTxtbx" title="Only A-Z characters are allowed."></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:FileUpload ID="FUPDFTRNS" runat="server" /></td>

                                                        </tr>
                                                        <tr>

                                                            <td></td>
                                                            <td></td>
                                                            <td align="right">
                                                                <asp:Button ID="btnFilUpldEList" Style="margin-right: 15px;" runat="server" class="buttonGreen medium" Text="Upload" /></td>
                                                            <td>
                                                                <asp:LinkButton ID="lblClearElist" Style="margin-left: 7px;" CssClass="secondary medium"
                                                                    runat="server">Clear</asp:LinkButton></td>
                                                        </tr>
                                                    </table>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <p style="margin-top: 25px; margin-bottom: 25px; text-align: justify;">Note: CAMTC requires that you provide the Name, Birthdate, and Last 4 Digits of Social Security Number for all CAMTC applicants for whom you are mailing official transcripts. As added security against potential fraud and to expedite transcript processing, you may upload a pdf version of the transcript(S) you are mailing. You still must postal mail a hard copy of all official transcripts to CAMTC. CAMTC will acknowledge receipt of the transcript via email to the school's designated contact.</p>
                                                            </td>
                                                        </tr>
                                                    </table>

                                                </div>
                                            </div>

                                            <p>
                                                <b>&nbsp;&nbsp;Student Transcript Upload History:</b>
                                            </p>
                                            <div style="width: 97%;" class="searchBoxhidden">
                                                <div style="">
                                                    <table class=" tblApplReqForm5 wdtmarauto">
                                                        <tr>
                                                            <td></td>
                                                            <td></td>
                                                            <td class="txtalgnrgt" style="width: 115px;">
                                                                <label class="input-label required">
                                                                    Last Name :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox44" runat="server" CssClass="tooltip OnlyAlphabet inputTextbox capitalize-text NewAppPersonalTxtbx" title="Only A-Z characters are allowed."></asp:TextBox>
                                                            </td>

                                                            <td class="txtalgnrgt" style="width: 115px;">
                                                                <label class="input-label required">
                                                                    First Name :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox45" runat="server" CssClass="tooltip OnlyAlphabet inputTextbox capitalize-text NewAppPersonalTxtbx" title="Only A-Z characters are allowed."></asp:TextBox>
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td></td>
                                                            <td class="txtalgnrgt" style="width: 115px;">
                                                                <label class="input-label">
                                                                    Middle Name :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox49" runat="server" CssClass="tooltip OnlyAlphabet inputTextbox capitalize-text NewAppPersonalTxtbx" title="Only A-Z characters are allowed."></asp:TextBox>
                                                            </td>
                                                            <td></td>
                                                            <td></td>

                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td></td>

                                                            <td></td>
                                                            <td></td>

                                                            <td align="right">
                                                                <asp:Button ID="Button28" Style="margin-right: 10px;" runat="server" class="buttonGreen  medium" Text="Search" /></td>
                                                            <td>
                                                                <asp:LinkButton ID="LinkButton1" Style="margin-left: 7px;" CssClass="secondary medium"
                                                                    runat="server">Clear</asp:LinkButton></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>


                                            <div id="paneltranscriptcamtc" style="margin-top: 30px;">

                                                <table class="index brdr grid" border="1" cellspacing="0" cellpadding="5" id="paneltranscriptcamtctable"
                                                    style="width: 100%; border: 1px solid #ddd;">
                                                    <tbody>
                                                        <tr>
                                                            <th style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Name ( Last, First and Middle )
                                                            </th>
                                                            <th style="border-right: 1px solid #ddd; width: 200px; padding-left: 5px !important; padding-top: 0px !important;">Data Uploaded</th>
                                                            <th style="padding-left: 0px; border-right: 1px solid #ddd; text-align: center;">File Sent
                                                            </th>
                                                        </tr>
                                                        <tr>
                                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Smith Job Bob
                                                            </td>
                                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">02-03-2006
                                                            </td>
                                                            <td align="center" valign="middle" style="padding-top: 0px ! important; width: 60px;"><a style="cursor: pointer;" class="hyperlink">Document.pdf</a>

                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Name 2
                                                            </td>
                                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">24-03-2006
                                                            </td>
                                                            <td align="center" valign="middle" style="padding-top: 0px ! important; width: 60px;"><a style="cursor: pointer;" class="hyperlink">Document.pdf</a>

                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>




                                            </div>


                                            <p style="margin-top: 25px;">
                                                <b>&nbsp;&nbsp;Student Transcript Summary:</b>
                                            </p>
                                            <div style="width: 100%;">
                                                <div style="">
                                                    <table class=" tblApplReqForm5 wdtmarauto">
                                                        <tr>
                                                            <td style="width: 484px;"><a onclick="studentlistF1()" style="cursor: pointer;" class="hyperlink">Total Number of Student Transcripts Uploaded to CAMTC : </a></td>
                                                            <td>1234</td>
                                                        </tr>
                                                        <tr>
                                                            <td><a onclick="studentlistF2()" style="cursor: pointer;" class="hyperlink">Number of Active CMT Certificate Holder Listing this School as part of their Education :</a></td>
                                                            <td>777</td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>



                                            <div id="Lasthiperlink" style="display: none; margin-top: 20px;">

                                                <table class="index brdr grid" border="1" cellspacing="0" cellpadding="5" id="Table4"
                                                    style="width: 100%; border: 1px solid #ddd;">
                                                    <tbody>
                                                        <tr>
                                                            <th style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Name ( Last, First and Middle )
                                                            </th>
                                                            <th style="border-right: 1px solid #ddd; width: 200px; padding-left: 5px !important; padding-top: 0px !important;">CAMTC Certificate No.</th>

                                                        </tr>
                                                        <tr>
                                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;"><a target="_blank" href="https://www.camtc.org/" style="cursor: pointer;" class="hyperlink">Annyone,Doona</a>
                                                            </td>
                                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">00001
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;"><a target="_blank" href="https://www.camtc.org/" style="cursor: pointer;" class="hyperlink">Name2</a>
                                                            </td>
                                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">00002
                                                            </td>

                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </fieldset>
                                        <div class="clear">
                                        </div>

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
