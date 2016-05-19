<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucESDSclInfoComplaint.ascx.cs"
    Inherits="Module_UI_Backoffice_ESD_ucESDSclInfoComplaint" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<link href="../../App_Themes/Theme1/css/NewButton.css" rel="stylesheet" type="text/css" />
<script src="../../App_Themes/Theme1/js/jquery.mask.min.js" type="text/javascript"></script>
<script src="../../App_Themes/Theme1/Expandables/expand.js" type="text/javascript"></script>
<script>
    window.onload = function () {
        showDivSlide('.userHide');
    };
    function toggleDiv(e) {
        $(e).toggle();
        $('span.close').click(function () {
            $(e).toggle();
        });
    }
    $(function () {
        //Navigation
        $('.nav-mainlinks li').each(function () {
            $(this).removeClass('active');
        });
        $('#liPSD').addClass('active');

        //Masking
        $('.phone_us').mask('(000) 000-0000');
        $('.ssn').mask('999-99-9999');

        //For Date of Birth jquery calender
        $('.calenderDOB').datepicker({
            inline: true,
            changeMonth: true,
            changeYear: true, maxDate: "-18Y",
            yearRange: "1900:+nn"

        });
    });
</script>
<script>
    function RemoveElement(e) {
        $(e).remove();
    }

    function ShowChildMessage(msg, type) {
        $('#MsgDivUploadAll').html(BuildValidationMessage(msg, type)); HideLoader();
    } function ShowChildMessageDiv(element, msg, type) {
        $(element).html(BuildValidationMessage(msg, type)); HideLoader();
    }
    function UploadImage(input) {
        var ext = input.files[0].name.split('.').pop().toLowerCase();
        if ($.inArray(ext, ['bmp', 'png', 'jpg', 'jpeg', 'gif']) == -1) {
            alert('Please upload only BMP, JPG, GIF or PNG photos.');
        }
        else {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#IndvidualimgProfile').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }

            sendProfilePic(input.files[0]);
        }
    }

    function sendProfilePic(file) {
        ShowLoader();
        $.ajax({
            type: 'post',
            url: '../../Ajax_Handler/IndividualProfileImage.ashx?saveFile=true&name=' + file.name + '&IndividualId=' + $('#hidIndividualId').val() + '&Documenttype=0&DocumentTypeName=Profile',
            data: file,
            async: true,
            success: function () {
                $('#IndvidualimgProfile').attr('src', $('#hidPermanentUrl').val() + "&v=2.333" + file.name); HideLoader();
            },
            xhrFields: {

            },
            processData: false,
            contentType: false// file.type
        });
    }
</script>
<link href="../../App_Themes/Theme1/css/IndividualDetails.css?" rel="stylesheet" type="text/css" />
<!--[if lte IE 7]>
<style type="text/css">
h2 a, .demo {position:relative; height:1%}
</style>
<![endif]-->
<!--[if lte IE 6]>
<script type="text/javascript">
   try { document.execCommand( "BackgroundImageCache", false, true); } catch(e) {};
</script>
<![endif]-->
<!--[if !lt IE 6]><!-->
<script type="text/javascript">
    function UpdatePanel_Function_Individual() {

        $("h4.expand").toggler({ method: "slideFadeToggle" });
    }
    //<!--        --><![CDATA[        //><!--
    $(function () {
        // --- Using the default options:
        //$("h2.expand").toggler();
        // --- Other options:
        //$("h2.expand").toggler({method: "toggle", speed: 0});
        $("h4.expand").toggler({ method: "slideFadeToggle" });
        // $("h2.expand").toggler({speed: "fast"});
        //$("h2.expand").toggler({method: "fadeToggle"});
        //$("h2.expand").toggler({method: "slideFadeToggle"});    
        //$("#content").expandAll({ trigger: "h4.expand", ref: "div.demo", localLinks: "p.top a" });
    });
    //--><!]]>
</script>
<!--<![endif]-->
<link href="../../App_Themes/Theme1/css/Individual.css?" rel="stylesheet" type="text/css" />
<style>
    a.medium {
        padding: 8px 10px 6px 10px;
    }

    a.small {
        position: relative;
        top: 0px;
    }

    .link-next-prev {
        cursor: pointer;
        text-decoration: none;
        padding: 7px 10px;
    }

        .link-next-prev:hover {
            text-decoration: none;
        }

    .demo .expand a.open:link, .demo .expand a.open:visited {
        font-size: 16px;
        font-weight: bold;
    }

    .demo .expand a, .demo .expand a:active, .demo .expand a:focus {
        font-size: 16px;
        font-weight: bold;
    }

    .tdnum {
        width: 18px;
        font-weight: bold;
        vertical-align: top;
    }


    div.divPrint {
        position: absolute;
        z-index: 9999;
        background: #EEEEEE;
        top: 40px;
        padding: 10px;
        right: 6px;
        line-height: 8px;
        border: 1px solid #D5A2A2;
        border-top: 0px;
        box-shadow: -1px 4px 8px #000;
    }

    .fancy-green .ajax__tab_header {
        cursor: pointer;
        border: 1px solid #4297D7;
        color: #EAF5F7;
        font-weight: bold;
        background: #FFF none repeat scroll 0% 0% !important;
        margin: 0px;
        float: left;
    }

    .histdiv {
        border: 1px solid rgb(221, 221, 221);
        padding: 10px 0px !important;
        margin-top: 10px;
    }

    body {
        font-family: helvatica,sans-serif;
        line-height: 22px;
    }

    .sectionDiv {
        height: 30px;
        background-color: #D6D3D3;
        line-height: 30px;
        padding-left: 10px;
        font-size: 14px;
        font-weight: bold;
    }

    .flsApplReqForm {
        border: 1px solid #EAEAEA;
        width: 95%;
        margin: 10px auto 0px;
    }

    fieldset {
        border: 0px none !important;
    }

    .flsParentNewApplReqForm {
        border: 1px solid #EAEAEA;
        width: 95%;
        margin: 10px auto 0px;
    }

    .wdtmarauto {
        width: 96%;
        margin: 0px auto;
    }

    table.tblApplReqForm5 {
        line-height: 33px;
    }

    .address-box {
        position: relative;
        margin-top: -110px;
        min-height: 100px;
        background-color: #FBF4F4;
        padding: 12px;
        border: 1px solid rgba(255, 5, 28, 0.4);
        top: 2px;
        z-index: 1;
    }

    .tblApplReqForm5 td {
        padding: 10px 0px 0px !important;
    }

    .divaddnew {
        height: 33px;
    }

    .divLicenseInfo {
        margin: 3px auto;
        width: 98%;
        border: 1px solid #EEE;
    }

    .addNewDiv {
        text-align: center;
        height: 28px;
        line-height: 25px;
        background-color: #F9F9F9;
        font-weight: bold;
    }

    .grid-header-other-name .index tr th {
        height: 25px !important;
        padding: 0px 0px 0px 3px !important;
        line-height: 25px;
    }

    .readinstrucn {
        padding-left: 20px;
        margin-bottom: 20px;
        margin-top: 20px;
    }

    .flsNewApplReqForm {
        border: 1px solid #EAEAEA;
        width: 95%;
        margin: 10px auto 0px;
    }

    hr {
        display: block;
        height: 1px;
        border-width: 1px 0px 0px;
        border-style: solid none none;
        border-color: #CCC -moz-use-text-color -moz-use-text-color;
        -moz-border-top-colors: none;
        -moz-border-right-colors: none;
        -moz-border-bottom-colors: none;
        -moz-border-left-colors: none;
        border-image: none;
        margin: 1em 0px;
        padding: 0px;
    }

    .grid-heading {
        width: 100%;
        background-color: #DDD;
        font-weight: bold;
    }

    .index tbody td {
        padding: 4px 3px;
    }

    .listbox {
        width: 215px;
        height: 170px;
        overflow-x: hidden;
        overflow-y: scroll;
        border: 1px solid #DDD;
        padding: 8px;
    }

    .gvDivUpr {
        color: #000;
        font-family: Arial,Helvetica,sans-serif;
        font-size: 12px;
        font-style: normal;
        font-variant: normal;
        font-weight: normal;
        letter-spacing: normal;
        text-align: left;
        text-indent: 0px;
        text-transform: none;
        white-space: normal;
        word-spacing: 0px;
    }

    .tableborder_trcschk td {
        border: 1px solid #DEDEDE;
        padding: 5px;
    }

    table {
        border-collapse: collapse;
        border-spacing: 0px;
    }

    .flsLiveScanApp {
        border: 1px solid #EAEAEA;
        width: 95%;
        margin: 10px auto 0px;
    }

    .history .tblApplReqForm5 td {
        padding: 2px 0px 0px 0px !important;
    }

    .history .tblApplReqForm5 .grid td {
        padding: 0px 0px 0px 4px !important;
    }
</style>
<style type="text/css">
    @-moz-document url-prefix() {
        .expinputfirefox {
            color: red;
        }

        a.medium {
            padding: 10px 10px 6px 10px;
        }

        .link-next-prev {
            padding: 9px 10px 7px 10px !important;
        }
    }

    .txtalgnrgt {
        text-align: right;
    }

    .colsp td {
        vertical-align: baseline;
        padding-top: 5px !important;
    }

    .sitevisite {
        text-align: center;
        background-color: rgb(236, 234, 234);
        padding: 0px !important;
        border-top: 1px solid rgb(216, 216, 216);
        border-bottom: 1px solid rgb(216, 216, 216);
    }
</style>
<style>
    .docmtbtn:hover {
        color: white !important;
    }

    .blockheader {
        height: 30px;
        background-color: #E5EDF2;
        width: 99.1%;
        border: 1px solid #DDE3EC;
        border-radius: 2px;
        color: #595959;
        font-size: 15px;
        font-weight: bold;
        padding-left: 5px;
        margin: 10px auto;
    }

    .inputTextBox {
        width: 198px !important;
    }

    .pop_ctr {
        list-style: outside none none;
        background-color: #FFF;
        width: 135px;
    }

        .pop_ctr li {
            background-color: #FFF;
            border-bottom: 1px solid rgb(222, 222, 222);
            padding: 2px 8px;
            border-left: 1px solid #dedede;
            border-right: 1px solid #dedede;
            cursor: pointer;
        }

    #Pop {
        position: absolute;
        z-index: 9;
        top: 73px;
        display: none;
    }

    #Pop1 {
        position: absolute;
        z-index: 9;
        top: 73px;
        display: none;
    }

    #Pop2 {
        position: absolute;
        z-index: 9;
        top: 73px;
        display: none;
    }

    .pop-up {
        position: absolute;
        z-index: 9;
        top: 73px;
    }

    .close_btn_pop {
        color: #FFF;
        float: right;
        margin-top: -15px;
        background-color: black;
        border-radius: 50%;
        border: 1px solid #dedede;
        width: 21px;
        text-align: center;
        font-size: 13px;
        cursor: pointer;
    }

        .close_btn_pop:hover {
            background-color: white;
            color: red;
        }

    .pop_ctr li:hover {
        background-color: #0D83DD;
        color: white;
    }

    .pop_ctr1 {
        list-style: outside none none;
        background-color: #FFF;
        width: 135px;
    }

        .pop_ctr1 li {
            background-color: #FFF;
            border-bottom: 1px solid rgb(222, 222, 222);
            padding: 2px 8px;
            border-left: 1px solid #dedede;
            border-right: 1px solid #dedede;
            cursor: pointer;
        }

    .pop-up1 {
        position: absolute;
        z-index: 9;
        top: 73px;
    }

    .pop_ctr1 li:hover {
        background-color: #0D83DD;
        color: white;
    }

    .pop_ctr3 {
        list-style: outside none none;
        background-color: #FFF;
        width: 135px;
    }

        .pop_ctr3 li {
            background-color: #FFF;
            border-bottom: 1px solid rgb(222, 222, 222);
            padding: 2px 8px;
            border-left: 1px solid #dedede;
            border-right: 1px solid #dedede;
            cursor: pointer;
        }

    .pop-up3 {
        position: absolute;
        z-index: 9;
        top: 73px;
    }

    .pop_ctr3 li:hover {
        background-color: #0D83DD;
        color: white;
    }

    .form-table tr td {
        padding: 4px 0px 4px 0px;
    }

    .form-table tr .xtrapdgnone {
        padding: 0px 0px 0px 0px;
    }

    .inputDropDown {
        width: 206px;
    }

    .status-heading {
        padding: 4px 0px 4px 16px;
        font-size: 14px;
        background: rgb(176, 234, 232) none repeat scroll 0% 0%;
    }

    .mrgntp4 {
        padding-bottom: 4px;
        margin-top: 4px;
    }

    .pdgtp4 {
        padding-bottom: 4px;
        margin-top: 8px;
    }

    .pdgbtm4 {
        padding-bottom: 4px;
    }
</style>

<div id="divPanelList1" style="width: 100%;">
    <div class="sectionDiv">
        <span>Complaints</span>
    </div>
    <fieldset class="flsApplReqForm flsApplReqForm5">
        <table class="index brdr grid" border="1" cellspacing="0" cellpadding="5" id="TableSclInfoPrevScl"
            style="width: 100%; margin-left: 0px; border: 1px solid #ddd; margin-top: 10px;">
            <tbody>
                <tr>
                    <th style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Received</th>
                    <th style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Anonymous</th>
                    <th style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Actionable</th>
                    <th style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Law Enforcement</th>
                    <th style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Sexual Assualt</th>
                    <th style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Admin Action</th>
                    <th style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Resolved</th>
                    <th style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Attachments</th>
                    <th style="padding-left: 0px; text-align: center;">Action
                    </th>
                </tr>
                <tr>
                    <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">12/26/2016</td>
                    <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Y</td>
                    <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">N</td>
                    <asp:ImageButton ID="imgEmail" runat="server" OnClick="imgEmail_Click" Width="22px"
                        ImageUrl="~/App_Themes/Theme1/images/1443263723_mail-icon.png" Style="display: none;" />
                    <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">N</td>
                    <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">N</td>
                    <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">N</td>
                    <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">01/24/2016</td>
                    <td style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">
                        <asp:ImageButton ID="imgDOC1" runat="server" OnClick="imgDOC1_Click" ToolTip="Document" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" />
                        <div id="AddDocm1" visible="false" style="border: 1px solid rgb(212, 216, 219); margin: 11px auto auto; width: 60%; float: right; z-index: 9; position: absolute; right: 15px; background-color: white;"
                            runat="server">
                            <asp:Button ID="Button1" OnClick="Button1_Click" CssClass="close_btn_pop" runat="server" Text="x" />

                            <div class="blockheader" style="margin: 0px 0px -3px auto;">
                                <p style="padding-top: 7px;">
                                    <span>Add Document   </span>
                                </p>
                            </div>
                            <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
                                <tr>
                                    <td style="width: 140px;" align="right">
                                        <label class="input-label">
                                            Document Name :</label>
                                    </td>
                                    <td align="left">

                                        <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox16" runat="server"></asp:TextBox>
                                    </td>

                                </tr>
                                <tr>
                                    <td colspan="2" style="height: 5px;"></td>
                                </tr>

                                <tr>
                                    <td align="right">
                                        <label class="input-label">Document :</label></td>
                                    <td align="left">
                                        <asp:FileUpload ID="FileUpload14" runat="server" />
                                        <asp:Button ID="Button26" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                                            Text="Upload" />
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td align="left">
                                        <asp:Button ID="Button27" class="buttonGreen small" runat="server" Text="Save" /></td>
                                </tr>
                            </table>
                        </div>
                    </td>
                    <td align="center" valign="middle" style="padding-top: 0px ! important; text-align: center; width: 60px;">
                        <span>
                            <asp:ImageButton ID="ImageButton5" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" />
                            <input type="image" id="imgBtnOProgramNameDelete" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"></span>
                    </td>
                </tr>
                <tr style="border-top: 1px solid #dedede;">
                    <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">01/13/2016</td>
                    <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">N</td>
                    <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Y</td>
                    <asp:ImageButton ID="ImageButton2" runat="server" OnClick="imgEmail_Click" Width="22px"
                        ImageUrl="~/App_Themes/Theme1/images/1443263723_mail-icon.png" Style="display: none;" />
                    <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Y</td>
                    <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Y</td>
                    <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Y</td>
                    <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">03/20/2016</td>
                    <td style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">
                        <asp:ImageButton ID="imgDOC2" runat="server" OnClick="imgDOC2_Click1" ToolTip="Document" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" />
                        <div id="AddDocm2" visible="false" style="border: 1px solid rgb(212, 216, 219); margin: 11px auto auto; width: 60%; float: right; z-index: 9; position: absolute; right: 15px; background-color: white;"
                            runat="server">
                            <asp:Button ID="Button3" OnClick="Button2_Click" CssClass="close_btn_pop" runat="server" Text="x" />

                            <div class="blockheader" style="margin: 0px 0px -3px auto;">
                                <p style="padding-top: 7px;">
                                    <span>Add Documen</span>
                                </p>
                            </div>
                            <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
                                <tr>
                                    <td style="width: 140px;" align="right">
                                        <label class="input-label">
                                            Document Name :</label>
                                    </td>
                                    <td align="left">

                                        <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>

                                </tr>
                                <tr>
                                    <td colspan="2" style="height: 5px;"></td>
                                </tr>

                                <tr>
                                    <td align="right">
                                        <label class="input-label">Document :</label></td>
                                    <td align="left">
                                        <asp:FileUpload ID="FileUpload2" runat="server" />
                                        <asp:Button ID="Button4" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                                            Text="Upload" />
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td align="left">
                                        <asp:Button ID="Button5" class="buttonGreen small" runat="server" Text="Save" /></td>
                                </tr>
                            </table>
                        </div>
                    </td>
                    <td align="center" valign="middle" style="padding-top: 0px ! important; text-align: center; width: 60px;">
                        <asp:ImageButton ID="ImageButton1" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" />
                        <input type="image" id="imgBtnOProgramNameDelete2" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"></span>
                    </td>
                </tr>
            </tbody>
        </table>
        <table class="tblApplReqForm5" style="width: 100%;">
            <tr>
                <td>
                    <span class="AfterApproved" style="float: right;">
                        <asp:Button CssClass="buttonGreen small" runat="server" ID="Button6" Text="Add" />
                    </span>
                </td>
            </tr>
        </table>
        <table class="tblApplReqForm5" style="width: 98%; margin-top: 15px;">
            <tr>
                <td class="txtalgnrgt" align="right" style="width: 25%;">
                    <label class="input-label">Nonactionable :</label>
                </td>
                <td colspan="3">
                    <asp:CheckBox ID="chkUnaction" runat="server" /></td>
            </tr>
            <tr>
                <td class="txtalgnrgt" align="right">
                    <label class="input-label">Anonymous :</label>
                </td>
                <td colspan="3">
                    <asp:CheckBox ID="chkAnonymous" runat="server" /></td>
            </tr>
            <tr>
                <td class="txtalgnrgt" align="right">
                    <label class="input-label">Administrative Action :</label>
                </td>
                <td colspan="3">
                    <asp:CheckBox ID="chkAdminAction" runat="server" /></td>
            </tr>
            <tr>
                <td align="right" style="width: 25%;">
                    <label class="input-label">Date Received :</label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="txtnameDate" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calender"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 25%;">
                    <label class="input-label">Resolution Date :</label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="txtResolutionDate" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calender"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="txtalgnrgt">
                    <label class="input-label">
                        Reported by :
                    </label>
                </td>
                <td colspan="3">
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="DropdownList" title="Select Complaint Type">
                        <asp:ListItem Value="1">Law Enforcement</asp:ListItem>
                        <asp:ListItem Value="2">City/County Personnel</asp:ListItem>
                        <asp:ListItem Value="3">Business</asp:ListItem>
                        <asp:ListItem Value="4">Victim</asp:ListItem>
                        <asp:ListItem Value="5">Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right" class="txtalgnrgt">
                    <label class="input-label">
                        Complaint Type :
                    </label>
                </td>
                <td colspan="3">
                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="DropdownList" title="Select Complaint Type">
                        <asp:ListItem Value="-1">Select</asp:ListItem>
                        <asp:ListItem Selected="True" Value="1">Sexual Assault</asp:ListItem>
                        <asp:ListItem Value="2">Prostitution Related Activity</asp:ListItem>
                        <asp:ListItem Value="3">Substantially Related Criminal Activity</asp:ListItem>
                        <asp:ListItem Value="4">Unprofessional Conduct</asp:ListItem>
                        <asp:ListItem Value="5">Fraudulent</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right" class="txtalgnrgt">
                    <label class="input-label">
                        Document Type :
                    </label>
                </td>
                <td colspan="3">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="DropdownList" title="Select Complaint Type">
                        <asp:ListItem Value="-1" Selected="True">Select</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="txtalgnrgt" style="width: 125px;">
                    <label class="input-label">
                        Document :
                    </label>
                </td>
                <td style="width: 182px;">
                    <asp:FileUpload ID="FileUpload79" runat="server" />
                </td>
                <td>
                    <asp:Button ID="Button87" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                <td></td>
            </tr>
            <tr>
                <td class="txtalgnrgt" valign="top">
                    <label class="input-label">
                        Notes :
                    </label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox5" TextMode="MultiLine" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"
                        Style="width: 517px !important; height: 120px;" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                </td>
            </tr>
        </table>
    </fieldset>
    <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
        <span class="fltrt">
            <asp:Button ID="btnSaveAboutBusinessDoc" CssClass="buttonGreen medium"
                runat="server" Text="Save" CausesValidation="true" />
            <asp:LinkButton ID="lblCancelAboutBusinessDoc" CssClass="secondary medium bottom buttonalignment"
                runat="server">Cancel</asp:LinkButton></span>
    </div>
</div>
