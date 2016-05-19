<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucSchoolWorkflowCurriculum.ascx.cs" Inherits="Module_UI_Backoffice_ESD_SchoolWorkFlow_ucSchoolWorkflowCurriculum" %>
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



                                                        <li runat="server" clientidmode="Static" class="actived" id="li_Program_Hour_Requirement_Worksheet">
                                                            <asp:Button ID="btnProgHourReqWork" runat="server" Text="Curriculum" CssClass="btnlimenu" OnClick="btnProgHourReqWork_Click" />
                                                            <span class="spnStatusImage statusimgalgn">
                                                                <asp:ImageButton ID="imgProgHourReqWork" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                                    ImageUrl="~/App_Themes/Theme1/images/button_cross.png" OnClick="btnProgHourReqWork_Click" /></span>
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

                    <asp:Panel ID="PnlProHoReqWorksheet" runat="server">
                        <asp:UpdatePanel runat="server" ID="UpdatePanel7">
                            <ContentTemplate>
                                <asp:Panel ID="Panel8" runat="server">
                                    <asp:Literal ID="Literal7" runat="server"></asp:Literal>
                                    <div>
                                        <div class="sectionDiv">
                                            <span>Curriculum</span>
                                        </div>
                                    </div>

                                    <fieldset class="flsNewApplReqForm flsCharacterReferences">
                                        <b></b>Please indicate which classes or subjects fulfill the minimum core educational requirements as set forth in CAMTC’s Policies and Procedures for Approval of Schools. 
                                      <table class="tblApplReqForm5" style="margin-top: 5px;">
                                          <tr>

                                              <td style="padding-left: 0px; line-height: 20px; text-align: left;">
                                                  <b></b>Providing incomplete or misleading information to CAMTC may result in processing delays, denial of your application, disciplinary action, revocation of your approval, or additional processing fees.

                                              </td>

                                          </tr>

                                      </table> 
                                            
                                      <div class="divLicenseInfo" style="width: 100%; margin-top: 22px;">
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

                                                                <label class="input-label required">
                                                                    <b></b>What is the maximum number of clinic hours performed in the initial 
                                                                        500 hours of your program (cannot exceed 75 hours)?
                                                                </label>
                                                                <asp:TextBox Style="width: 75px; margin-left: 10px;" runat="server" ID="txtcarculam"
                                                                    OnTextChanged="txtcarculam_TextChanged" AutoPostBack="true" CssClass="OnlyNumeric">
                                                                </asp:TextBox>

                                                            </td>

                                                        </tr>
                                                        <tr id="trClinicHour" runat="server" visible="false">
                                                            <td>
                                                                <div class="error_header" style="background-color: rgb(254, 234, 234); padding-top: 7px; border: 1px solid rgb(254, 193, 193);">
                                                            <asp:Label ID="lblClinicHour" runat="server" Text="Maximum number of clinic hours cannot exceed 75 hours."></asp:Label>

                                                        </div>
                                                            </td>
                                                        </tr>

                                                    </table>
                                                    
                                    </fieldset>

                                    <div class="divLicenseInfo" id="dvAboutCurriculumUpSection" runat="server" style="margin-top: 30px; width: 95%;">

                                                    <p class="addNewDiv">
                                                        <span>Curriculum Supporting Documentation</span>
                                                    </p>

                                                    <%--<table class="tblApplReqForm5 wthtop20" style="width: 99%;">
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
                                                                <asp:Button ID="btnUploadAboutCurriculum" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                            <td></td>
                                                        </tr>
                                                    </table>--%>
                                                    <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left:10px;border: 1px solid rgb(222, 222, 222);">
                                                                        <tr>
                                                                            <td class="txtalgnrgt" style="padding-bottom: 15px ! important;width: 195px;">
                                                                                <label class="input-label required">
                                                                                    Massage Program Calendar :
                                                                                </label>
                                                                            </td>
                                                                            <td style="width:190px;">
                                                                                <asp:FileUpload ID="FUMassProgCal" runat="server" />
                                                                            </td>
                                                                            <td colspan="3">
                                                                                <asp:Button ID="btnMassProgCal" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        </table>
                                                                    <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left:10px; border: 1px solid rgb(222, 222, 222);">
                                                                        <tr>
                                                                            <td class="txtalgnrgt" style="padding-bottom: 15px ! important;width: 195px;">
                                                                                <label class="input-label required">
                                                                                   Syllabi for Massage Course :
                                                                                </label>
                                                                            </td>
                                                                            <td style="width:190px;">
                                                                                <asp:FileUpload ID="FUSyllMassCour" runat="server" />
                                                                            </td>
                                                                            <td colspan="3">
                                                                                <asp:Button ID="btnSyllMassCour" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        </table>
                                                                    <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left:10px; border: 1px solid rgb(222, 222, 222);">
                                                                        <tr>
                                                                            <td class="txtalgnrgt" style="width:195px;padding-bottom: 15px ! important;">
                                                                                <label class="input-label required">
                                                                                    List of Textbooks :
                                                                                </label>
                                                                            </td>
                                                                            <td style="width:190px;">
                                                                                <asp:FileUpload ID="FUListText" runat="server" />
                                                                            </td>
                                                                            <td colspan="3">
                                                                                <asp:Button ID="btnListOfText" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        </table>
                                                                    <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left:10px; border: 1px solid rgb(222, 222, 222);">
                                                                        <tr>
                                                                            <td class="txtalgnrgt" style="padding-bottom: 15px ! important; width:195px;">
                                                                                <label class="input-label required">
                                                                                    List of Educational Materials :
                                                                                </label>
                                                                            </td>
                                                                            <td style="width:190px;">
                                                                                <asp:FileUpload ID="FUListEduMat" runat="server" />
                                                                            </td>
                                                                            <td colspan="3">
                                                                                <asp:Button ID="btnListEduMat" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        </table>
                                                    <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left:10px; border: 1px solid rgb(222, 222, 222);">
                                                                        <tr>
                                                                            <td class="txtalgnrgt" style="padding-bottom: 15px ! important; width:195px;">
                                                                                <label class="input-label required">
                                                                                    List of Classroom Equipment :
                                                                                </label>
                                                                            </td>
                                                                            <td style="width:190px;">
                                                                                <asp:FileUpload ID="FUListClassEqu" runat="server" />
                                                                            </td>
                                                                            <td colspan="3">
                                                                                <asp:Button ID="btnListClassEqu" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        </table>
                                                    <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left:10px; border: 1px solid rgb(222, 222, 222);">
                                                                        <tr>
                                                                            <td class="txtalgnrgt" style="padding-bottom: 15px ! important; width:195px;">
                                                                                <label class="input-label required">
                                                                                    Curriculum Review Policy :
                                                                                </label>
                                                                            </td>
                                                                            <td style="width:190px;">
                                                                                <asp:FileUpload ID="FUCureRevPol" runat="server" />
                                                                            </td>
                                                                            <td colspan="3">
                                                                                <asp:Button ID="btnCureRevPol" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        </table>
                                                    <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left:10px; border: 1px solid rgb(222, 222, 222);">
                                                                        <tr>
                                                                            <td class="txtalgnrgt" style="padding-bottom: 15px ! important; width:195px;">
                                                                                <label class="input-label required">
                                                                                    Hygiene & Dress Code Policies :
                                                                                </label>
                                                                            </td>
                                                                            <td style="width:190px;">
                                                                                <asp:FileUpload ID="FUHygDreCode" runat="server" />
                                                                            </td>
                                                                            <td colspan="3">
                                                                                <asp:Button ID="btnHygDreCode" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
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
                                                                                <asp:TextBox ID="txtDocNameCurr" runat="server"></asp:TextBox>
                                                                            </td>
                                                                            <td class="txtalgnrgt">
                                                                                <label class="input-label required">
                                                                                    Document Type :
                                                                                </label>
                                                                            </td>
                                                                            <td>
                                                                                <asp:DropDownList ID="ddlCurOther" Width="154px" runat="server" AutoPostBack="true"  CssClass="inputTextbox">
                                                                                    <asp:ListItem Value="-1">Other (Specify)</asp:ListItem>
                                                                                    
                                                                                </asp:DropDownList>
                                                                            </td>
                                                                        </tr>
                                                                        <tr id="tr14" runat="server">
                                                                    <td></td>
                                                                    <td></td>
                                                                    <td class="txtalgnrgt" style="width: 135px;">
                                                                        <label class="input-label">
                                                                            Other Document Type :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtCurrOtherDoc"  runat="server"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                        <tr>
                                                                            <td class="txtalgnrgt" style="width: 195px; padding-bottom: 15px ! important;">
                                                                                <label class="input-label">
                                                                                    Document :
                                                                                </label>
                                                                            </td>
                                                                            <td style="width:190px;">
                                                                                <asp:FileUpload ID="FileUpload95" runat="server" />
                                                                            </td>
                                                                            <td >
                                                                                <asp:Button ID="Button104" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                            <td></td>
                                                                        </tr>
                                                                    </table>

                                                    <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                        <span class="fltrt">
                                                            <asp:Button ID="btnSaveAboutCurriculum" CssClass="buttonGreen medium"
                                                                runat="server" Text="Save" CausesValidation="true" />
                                                            <asp:LinkButton ID="lblCancelAboutCurriculum" CssClass="secondary medium bottom buttonalignment"
                                                                runat="server">Cancel</asp:LinkButton></span>
                                                    </div>

                                                </div>
                                    <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                    <div style="float: left;">
                                                    </div>
                                                    <span class="fltrt">
                                                        <asp:Button ID="btnNextProHo" ValidationGroup="VGAffidavit" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnNextProHo_Click" />
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
                </div>
            </div>
        </div>
    </div>
</div>
