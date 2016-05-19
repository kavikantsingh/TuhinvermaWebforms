<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucSchoolWorkflowApprovalPrograms.ascx.cs" Inherits="Module_UI_Backoffice_ESD_SchoolWorkFlow_ucSchoolWorkflowApprovalPrograms" %>
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
                                            <li runat="server" clientidmode="Static" class="actived" id="liSection2">
                                                <asp:Button ID="btnSection2" runat="server" Text="School Eligibility" CssClass="btnlimenu"
                                                    OnClick="btnSection2_Click" />
                                                <span class="spnStatusImage statusimgalgn">
                                                    <asp:ImageButton ID="imgSection2" Width="20px" Height="20px" runat="server" ToolTip="Completed"
                                                        ImageUrl="~/App_Themes/Theme1/images/button_cross.png" OnClick="btnSection2_Click" /></span>
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

                    <asp:Panel ID="pnlSection2" runat="server">
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
                                            <asp:CheckBox ID="CheckBox10" runat="server" Text="The school and massage program(s) are approved and/or accredited by at least one agency as defined by California Business and Professions Code section 4601. Please list all approval and/or accrediting agencies below." />
                                            <div class="divLicenseInfon divaddnew AfterApproved" id="divAddbtnApprovalAgency"
                                                runat="server">
                                                <span style="float: right;">
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
                                                                Agency School Code # :
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtAddSchoolCodeNo" Width="120px" runat="server" CssClass="inputTextbox" MaxLength="15"></asp:TextBox>
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
                                                        <td colspan="4"><span style="padding-left: 40px;">Please provide all documentation in your possession that supports this approval/accreditation. </span></td>
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
                                            <div class="divLicenseInfo" style="margin-top: 30px;">
                                                <p class="addNewDiv">
                                                    <span>Additional Approval/Accrediting Agencies</span>
                                                </p>
                                                <div class="divLicenseInfo" id="div29" runat="server" style="margin-top: 30px;">
                                                    <p class="addNewDiv">
                                                        <span>Add Additional Approval Agency</span>
                                                    </p>
                                                    <table class="tblApplReqForm5 wthtop20" style="width: 99%;">
                                                        <tr>
                                                            <td class="txtalgnrgt tdwidth1">
                                                                <label class="input-label">
                                                                    Approval/Accrediting Agency :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="inputTextbox">
                                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                    <asp:ListItem Value="A1">Agency 1</asp:ListItem>
                                                                    <asp:ListItem Value="A2">Agency 2</asp:ListItem>
                                                                    <asp:ListItem Value="A3">Agency 3</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>

                                                            <td class="txtalgnrgt tdwidth2">
                                                                <label class="input-label">
                                                                    Agency School Code # :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox67" Width="120px" runat="server" CssClass="inputTextbox" MaxLength="15"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label">
                                                                    Expiration Date :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox68" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calender"></asp:TextBox>
                                                            </td>

                                                            <td></td>
                                                        </tr>
                                                    </table>
                                                    <table class="tblApplReqForm5 wthtop20 divLicenseInfo" style="width: 100%; width: 100%; border-bottom: medium none; border-right: medium none; border-left: medium none;">
                                                        <tr>
                                                            <td colspan="6" style="padding: 0px ! important;">
                                                                <div>
                                                                    <p class="addNewDiv">
                                                                        <span>Additional Approval Agency Supporting Documentation</span>
                                                                    </p>
                                                                </div>
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td colspan="4"><span style="padding-left: 40px;">Please provide all documentation in your possession that supports this approval/accreditation. </span></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="txtalgnrgt" style="width: 180px;">
                                                                <label class="input-label">
                                                                    Document Name :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox69" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td class="txtalgnrgt" style="width: 128px;">
                                                                <label class="input-label">
                                                                    Document Type :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="DropDownList5" AutoPostBack="true" Width="152px" runat="server" CssClass="inputTextbox">

                                                                    <asp:ListItem Value="0">Other (specify)</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr id="tr13" runat="server">
                                                            <td></td>
                                                            <td></td>
                                                            <td class="txtalgnrgt" style="width: 135px;">
                                                                <label class="input-label">
                                                                    Other Document Type :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox70" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label">
                                                                    Document :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:FileUpload ID="FileUpload77" runat="server" />
                                                            </td>
                                                            <td colspan="3">
                                                                <asp:Button ID="Button84" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                            <td></td>
                                                        </tr>

                                                    </table>

                                                    <div class="address-box posFixed" id="Div31" runat="server" visible="false" style="min-height: 30px; width: 87%; margin: 15px auto;">
                                                        <span class="notok"></span>
                                                        <div class="error_header">
                                                            <asp:Label ID="Label22" runat="server" Text=""></asp:Label>

                                                        </div>
                                                        <div class="" style="margin: 0 auto; width: 300px; line-height: 30px">

                                                            <style>
                                                                .padding-table td {
                                                                    padding: 4px;
                                                                }
                                                            </style>
                                                        </div>
                                                    </div>


                                                </div>
                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                    <span class="fltrt">
                                                        <asp:Button ID="Button85" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnApprovalAgencyAddNewSave_Click" />
                                                        <asp:LinkButton ID="LinkButton3" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server" OnClick="lnkApprovalAgencyAddNewCancel_Click">Cancel</asp:LinkButton></span>
                                                </div>
                                            </div>
                                            <table>
                                                <tr style="height: 15px; width: 100%;"></tr>
                                                <tr>

                                                    <td>
                                                        <asp:CheckBox ID="CheckBox11" runat="server" Text="The school and massage program operating under this name and approval/accreditation number(s) listed above are not and have not been un-approved by CAMTC and there is not currently an action for un-approval or discipline pending before CAMTC.  No person who owns, operates, or administers the school owns, operates, or administers or has owned, operated, or administered another school that is or has been un-approved by CAMTC, or for which an un-approval or disciplinary action is currently pending before CAMTC.  The address(es) associated with this school are not now and have not been associated with a school that is or has been un-approved by CAMTC or currently has an un-approval or disciplinary action pending before CAMTC." />
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
                                                <span style="float: right;">
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
                                                            <asp:TextBox ID="txtAddProgrameHours" OnTextChanged="txtAddProgrameHours_TextChanged" AutoPostBack="true" runat="server" CssClass=" inputTextbox" MaxLength="8">
                                                            </asp:TextBox>

                                                            <asp:RegularExpressionValidator Enable="false" ID="regtxtAddProgrameHours" runat="server"
                                                                Text="*" ErrorMessage="Please enter valid hours completed." ControlToValidate="txtAddProgrameHours"
                                                                Display="None" ForeColor="#FFCCFF" SetFocusOnError="True" ValidationExpression="(\d+(\.\d{1,2})?$)">
                                                            </asp:RegularExpressionValidator>
                                                            <%--<asp:ValidatorCalloutExtender ID="vceHourco" runat="server" TargetControlID="regtxtAddProgrameHours"
                                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                                            </asp:ValidatorCalloutExtender>--%>
                                                        </td>
                                                    </tr>
                                                    <tr id="trTotalProgHour" runat="server" visible="false">
                                                        <td colspan="2">
                                                            <div class="error_header" style="background-color: rgb(254, 234, 234); padding-top: 7px; border: 1px solid rgb(254, 193, 193);">
                                                                <asp:Label ID="lblMaxiClinicHour" runat="server" Text="The hours must be 500 hours or greater. "></asp:Label>

                                                            </div>
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
                                                        <asp:TemplateField HeaderText="Total Number <br/> of Program Hours">
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
                                                                <span class=" AfterApproved">
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
                </div>
            </div>
        </div>
    </div>
</div>
