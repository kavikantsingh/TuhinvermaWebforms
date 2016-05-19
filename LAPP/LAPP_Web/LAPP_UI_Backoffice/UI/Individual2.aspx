<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/1Column.master" AutoEventWireup="true" CodeFile="Individual2.aspx.cs" Inherits="LAPP_UI_Backoffice_UI_Individual2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucAddress.ascx" TagName="ucAddress" TagPrefix="uc1" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucIndividual.ascx" TagName="ucIndividual"
    TagPrefix="uc4" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucLicense.ascx" TagName="ucLicense" TagPrefix="uc5" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucName.ascx" TagName="ucName" TagPrefix="uc6" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucNotes.ascx" TagName="ucNotes" TagPrefix="uc7" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucApplication.ascx" TagName="ucApplication" TagPrefix="uc3" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucTask.ascx" TagName="ucTask" TagPrefix="uc3" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucDucuments.ascx" TagName="ucDucuments" TagPrefix="uc2" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucLicense.ascx" TagName="ucLicenseMain"
    TagPrefix="uc9" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucBoardPacket.ascx" TagName="ucBoardPacket"
    TagPrefix="uc10" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucGeneralInfo.ascx" TagName="ucGeneralInfo"
    TagPrefix="uc11" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucFinancial.ascx" TagName="ucFinancial" TagPrefix="uc12" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucAdvRoster.ascx" TagName="ucAdvRoster" TagPrefix="uc13" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucViewLists.ascx" TagName="ucViewLists" TagPrefix="uc14" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucRecertification.ascx" TagName="ucRecertification"
    TagPrefix="uc15" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucCityReportSearches.ascx" TagName="ucCityReportSearches"
    TagPrefix="uc16" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucPSD.ascx" TagName="ucPSD" TagPrefix="uc17" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucDeficiency.ascx" TagName="ucDeficiency"
    TagPrefix="uc18" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucEducation.ascx" TagName="ucEducation" TagPrefix="uc19" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucAKA.ascx" TagName="ucAKA" TagPrefix="uc20" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script src="../../App_Themes/Theme1/js/jquery.mask.min.js" type="text/javascript"></script>
    <script src="../../App_Themes/Theme1/Expandables/expand.js" type="text/javascript"></script>
    <script src="../../App_Themes/Theme1/js/jquery.mask.min.js" type="text/javascript"></script>
    <link href="../../App_Themes/Theme1/jquery-ui/css/start/jquery-ui-1.9.2.custom.css"
        rel="stylesheet" type="text/css" />
    <script src="../../Validation/TextboxFormating.js" type="text/javascript"></script>
    <script src="../../Validation/FormValidation.js" type="text/javascript"></script>
    <link href="../../App_Themes/Theme1/css/NewButton.css" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Theme1/css/IndividualDetails2.css?" rel="stylesheet" type="text/css" />
    <!--[if IE]>
<link href="../../../App_Themes/Theme1/css/ie8.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../../../App_Themes/Theme1/css/ieAll.css" />
	<![endif]-->

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
            $('#liIndividual').addClass('active');

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
                url: '../Ajax_handler/IndividualProfileImage.ashx?saveFile=true&name=' + file.name + '&IndividualId=' + $('#hidIndividualId').val() + '&Documenttype=0&DocumentTypeName=Profile',
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
    <style>
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
    </style>
    <style type="text/css">
        @-moz-document url-prefix() {
            .expinputfirefox {
                color: red;
            }

            a.medium {
                padding: 11px 10px 6px !important;
            }

            .link-next-prev {
                padding: 9px 10px 7px 10px !important;
            }
        }
    </style>
    <link href="../../App_Themes/Theme1/tabs/tabs2.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MidContent" runat="server">
    <div class="get-started-content">
        <asp:UpdatePanel runat="server" ID="upPnlCertificateApp">
            <ContentTemplate>
                <div>
                    <div class="clear">
                    </div>
                    <div class="userHide searchBoxhidden" style="display: block !important" id="pnlSearch" runat="server">
                        <div class="clear">
                            <%--<div class="close" style="display: none;" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
                        </div>--%>
                        </div>
                        <!------#############################################-Permit Search control start#####################################################---------------->
                        <fieldset class="PermitSearch" style="position: relative">
                            <legend></legend>
                            <asp:Panel ID="defaultbtn" runat="server" DefaultButton="btnSearch">
                                <div id="divAdvanceSearch" runat="server" visible="false">
                                    <table style="height: 255px;">
                                        <tr>
                                            <td align="right">
                                                <label>
                                                    Search By Name :</label>
                                            </td>
                                            <td colspan="5">
                                                <asp:TextBox ID="txtSearchByName" ClientIDMode="Static" runat="server" Style="width: 446px  !important;" CssClass="inputTextbox" MaxLength="50"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 160px;">
                                                <label>
                                                    ID # :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtIDNo" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td align="right" style="width: 160px;">
                                                <label>
                                                    Certificate # :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtCertificateNo" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td align="right" style="width: 200px;">
                                                <label>
                                                    Cert Type :</label>
                                            </td>
                                            <td>
                                                <asp:DropDownList Style="width: 143px !important;" ID="DropDownList1"
                                                    runat="server">
                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label>
                                                    Last Name :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="inputTextbox capitalize-text"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td align="right">
                                                <label>
                                                    First Name :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="inputTextbox capitalize-text"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td align="right">
                                                <label>
                                                    Middle Name :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox3" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label>
                                                    AKAs :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox4" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td align="right">
                                                <label>
                                                    CDL # (or CID) :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox5" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td align="right">
                                                <label>
                                                    Date of Birth :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox6" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label>
                                                    Current Address :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox7" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td align="right">
                                                <label>
                                                    Mailing Address :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox8" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td align="right">
                                                <label>
                                                    SSN (Last 4) :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox9" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label>
                                                    Certificate Status :</label>
                                            </td>
                                            <td>
                                                <asp:DropDownList Style="width: 143px !important;" ID="ddlRecordStatus"
                                                    runat="server">
                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                    <asp:ListItem Value="2">Active</asp:ListItem>
                                                    <asp:ListItem Value="0">Archive</asp:ListItem>
                                                    <asp:ListItem Value="1">Delete</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td align="right">
                                                <label>
                                                    Date of Status :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox10" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td align="right">
                                                <label>
                                                    Date Applied (or re-Applied) :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox11" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label>
                                                    Work Location :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox12" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td align="right">
                                                <label>
                                                    Business Name :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox13" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td align="right">
                                                <label>
                                                    Work Status :</label>
                                            </td>
                                            <td>
                                                <asp:DropDownList Style="width: 143px !important;" ID="DropDownList2"
                                                    runat="server">
                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label>
                                                    School Attended :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox14" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td align="right">
                                                <label>
                                                    Date Attended :</label>
                                            </td>
                                            <td colspan="3">
                                                <asp:TextBox ID="TextBox15" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div id="divBasicSearch" runat="server">
                                    <table style="height: 200px; margin: 0 auto;">
                                        <tr>
                                            <td align="right">
                                                <label>
                                                    Search By Name :</label>
                                            </td>
                                            <td colspan="5">
                                                <asp:TextBox ID="txtSearchByName2" ClientIDMode="Static" runat="server" Style="width: 446px  !important;" CssClass="inputTextbox" MaxLength="50"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 135px;">
                                                <label>
                                                    ID # :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtIDNo2" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td align="right" style="width: 160px;">
                                                <label>
                                                    Certificate # :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtCertificateNo2" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>

                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label>
                                                    Last Name :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtLastName" runat="server" CssClass="inputTextbox capitalize-text"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td align="right">
                                                <label>
                                                    First Name :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtFirstName" runat="server" CssClass="inputTextbox capitalize-text"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label>
                                                    Phone Number :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox16" runat="server" CssClass="inputTextbox capitalize-text"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td align="right">
                                                <label>
                                                    Email Address :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox17" runat="server" CssClass="inputTextbox capitalize-text"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label>
                                                    Date of Birth :</label>
                                            </td>
                                            <td colspan="3">
                                                <asp:TextBox ID="TextBox18" runat="server" placeholder="MM/DD/YYYY" CssClass="inputTextbox calenderDOB capitalize-text"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label>
                                                    Address :</label>
                                            </td>
                                            <td colspan="3">
                                                <asp:TextBox ID="txtMiddleName" runat="server" Style="width: 446px  !important;" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>

                                        </tr>
                                    </table>
                                </div>
                                <div style="width: 90%; margin: 0 auto;">
                                    <span class="fltrt">
                                        <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search"
                                            OnClick="btnSearch_Click" />
                                        <asp:Button ID="btnAdvanceSearch" CssClass="btn-info small" runat="server" Text="Advance Search"
                                            OnClick="btnAdvanceSearch_Click" />
                                        <asp:LinkButton ID="btnSearchCancel" CssClass="secondary small" runat="server" Text="Cancel"
                                            OnClick="btnSearchCancel_Click"></asp:LinkButton>
                                    </span>
                                </div>
                            </asp:Panel>
                        </fieldset>
                        <!------#############################################-Permit Search control End#####################################################---------------->
                    </div>
                    <div id="pnlIndividualGrid" runat="server" visible="false">
                        <div class="clear">
                        </div>
                        <div class="gridUpperDiv">
                            <a class="down_arrow"></a><span class="fltlt">
                                <asp:LinkButton ID="lnkArchive" CssClass="button small gray narrow pill-left" runat="server">Archive</asp:LinkButton><%--OnClick="lnkArchive_Click"--%>
                                <asp:LinkButton ID="lnkDelete" runat="server" CssClass="button small gray narrow pill-right">Delete</asp:LinkButton><%--  OnClick="lnkDelete_Click"--%>
                            </span>
                            <div class="fltrt rightIcon">
                                <%--<a title="find" href="javascript:void(null);" onclick="javascript:showDivSlide('.userHide');hideDivSlide('.searchBbutton');">
                                    <img src="../../App_Themes/Theme1/images/search_icon.png" /></a>--%>
                                <asp:ImageButton ID="btnPrint" runat="server" ImageUrl="~/App_Themes/Theme1/images/search_icon.png"
                                    OnClick="imgbtnSearch_Click" />
                                <a title="Print" href="javascript:void(null);" onclick="javascript:toggleDiv('.divPrint');">
                                    <img src="../../App_Themes/Theme1/images/Printer_Blue.png" /></a>
                                <div id="DivPrint" runat="server" style="display: none" class="divPrint">
                                    <asp:UpdatePanel ID="upPrint" runat="server">
                                        <ContentTemplate>
                                            <h4 class="fltlft">Print
                                            </h4>
                                            <span class="close fltrt" onclick="javascript:toggleDiv('.divPrint');"></span>
                                            <div class="clear">
                                            </div>
                                            <asp:Button ID="btnApplicantsResume" Width="125px" runat="server" Text="Print Resume"
                                                CssClass="buttonGreen small" Style="display: none;" />
                                            <div class="clear">
                                                &nbsp;
                                            </div>
                                            <asp:Button ID="Button9" Width="125px" runat="server" Text="Print Board Packet" CssClass="buttonGreen small" />
                                            <div class="clear">
                                                &nbsp;
                                            </div>
                                            <asp:Button ID="btnEmailPocketCard" Width="125px" runat="server" Text="Email Pocket Card"
                                                CssClass="buttonGreen small" Style="display: none;" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <a title="comment" href="javascript:void(null);" onclick="showDiv('.popComment');">
                                    <img src="../../App_Themes/Theme1/images/comment_icon.png" /></a>
                            </div>
                        </div>
                        <div class="clear">
                        </div>
                        <asp:Literal ID="ltrMainMessage" runat="server"></asp:Literal>
                        <div class="gvDivUpr">
                            <div id="divEditMode" runat="server" visible="false">
                                <div class="clear">
                                </div>
                                <div id="divVerifiy" runat="server">
                                    <div class="applicationform">
                                        <div class="divmain">
                                            <div class="demo">
                                                <h4 class="" style="font-size: 16px; font-weight: bold; padding: 10px 13px; border-top: 1px solid rgb(221, 221, 221);">Individual Details <span class="fltrt">
                                                    <asp:ImageButton ID="imgbtnOpenDetail" ToolTip="Show" runat="server" ImageUrl="~/App_Themes/Theme1/Expandables/minus.png"
                                                        OnClick="imgbtnOpenDetail_Click" />
                                                </span>
                                                </h4>
                                                <asp:Panel ID="pnlIndividuaDetail" runat="server">
                                                    <div class="IndividuaDetail" style="border-top: 1px solid rgb(221, 221, 221);">
                                                        <div class="divindv">
                                                            <div class="brandytest">
                                                                <table class="IndividualTbl">
                                                                    <tr>
                                                                        <td class="Individualwidth1">
                                                                            <label class="hed">
                                                                                <b>Individual</b>
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <b>
                                                                                <asp:Literal ID="ltrIndividual1" runat="server"></asp:Literal>
                                                                            </b>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>File #
                                                                        </td>
                                                                        <td>CAMTC0001
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Address
                                                                        </td>
                                                                        <td>
                                                                            <asp:Literal ID="ltraddress" runat="server"></asp:Literal>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Phone
                                                                        </td>
                                                                        <td>
                                                                            <asp:Literal ID="ltrPhone" runat="server"></asp:Literal>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <hr />
                                                                <table class="IndividualTbl">
                                                                    <tr>
                                                                        <td>Massage Therapy Pending Certification<span class="indfnt">
                                                                            <label>
                                                                                10/01/2013</label>
                                                                            &nbsp;-
                                                                                    <label>
                                                                                        9/30/2014</label></span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Massage Therapy Certificate Expired <span class="indfnt">
                                                                            <label>
                                                                                10/01/2012</label>
                                                                            &nbsp;-
                                                                                    <label>
                                                                                        9/30/2013</label></span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Massage Therapy Certificate Renewed <span class="indfnt">
                                                                            <label>
                                                                                10/01/2011</label>
                                                                            &nbsp;-
                                                                                    <label>
                                                                                        9/30/2012</label></span>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                            <div class="incompletetaskDiv">
                                                                <table class="IndividualTbl">
                                                                    <tr>
                                                                        <td>
                                                                            <label>
                                                                                <b>Incomplete Task</b>
                                                                            </label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Child Support Task
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Affidavit of Certification
                                                                        </td>
                                                                    </tr>


                                                                    <tr>
                                                                        <td>Recertification Fee Task
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Recertification Form Task
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <div class="UnpaidInvoice">
                                                            <table class="IndividualTbl">
                                                                <tr style="font-size: 12px;">
                                                                    <td colspan="2">
                                                                        <label class="hed">
                                                                            <b>Unpaid Invoice</b>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="UnpaidInwdth1">
                                                                        <label class="lblp">
                                                                            Late Fee
                                                                        </label>
                                                                    </td>
                                                                    <td class="UnpaidInwdth2">
                                                                        <label class="lblp">
                                                                            $250
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <label class="lblp">
                                                                            Certification Fee
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <label class="lblp">
                                                                            $150
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <label class="lblp">
                                                                            Recertification Fee
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <label class="lblp">
                                                                            $148.5
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                            </div>
                                            <%--<span style="display: none">
                                                        <asp:Button ID="btnActiveTab" ClientIDMode="Static" runat="server" OnClick="btnActiveTab_Click" />
                                                    </span>--%>
                                            <asp:TabContainer ID="TabContainer1" runat="server" CssClass="fancy fancy-green"
                                                ActiveTabIndex="0">
                                                <asp:TabPanel ID="tbpnlGeneralInfo" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        General Info
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <uc11:ucGeneralInfo ID="ucGeneralInfo1" runat="server" />
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlPersonalInfo" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        Personal Info
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <asp:UpdatePanel ID="upPersonalInfo" runat="server">
                                                            <ContentTemplate>
                                                                <uc4:ucIndividual ID="ucIndividual1" runat="server" />
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlAddress" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        Address
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <asp:UpdatePanel ID="upAddress" runat="server">
                                                            <ContentTemplate>
                                                                <uc1:ucAddress ID="ucAddress" runat="server" />
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlFinancial" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        Financial Info
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <asp:UpdatePanel ID="upFinancial" runat="server">
                                                            <ContentTemplate>
                                                                <uc12:ucFinancial ID="ucFinancial1" runat="server" />
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlName" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        Name
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <asp:UpdatePanel ID="upName" runat="server">
                                                            <ContentTemplate>
                                                                <uc6:ucName ID="ucName" runat="server" />
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlEducation" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        Education
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <asp:UpdatePanel ID="upEducation" runat="server">
                                                            <ContentTemplate>
                                                                <%--<uc19:uceducation id="ucEducation1" runat="server" />--%>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlAdvRoster" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        Employment Info
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <asp:UpdatePanel ID="upAdvRoster" runat="server">
                                                            <ContentTemplate>
                                                                <uc13:ucAdvRoster ID="ucAdvRoster1" runat="server" />
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlViewList" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        View Lists
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <asp:UpdatePanel ID="upViewLists" runat="server">
                                                            <ContentTemplate>
                                                                <uc14:ucViewLists ID="ucViewLists1" runat="server" />
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlApplication" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        Application Data
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <asp:UpdatePanel ID="upApplication" runat="server">
                                                            <ContentTemplate>
                                                                <uc3:ucApplication ID="ucApplication" runat="server" />
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlCertificate" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        Certificate
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <asp:UpdatePanel ID="upCertificate" runat="server">
                                                            <ContentTemplate>
                                                                <uc5:ucLicense runat="server" ID="ucLicense" />
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlRecertification" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        Recertification
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <asp:UpdatePanel ID="upRecertification" runat="server">
                                                            <ContentTemplate>
                                                                <uc15:ucRecertification ID="ucRecertification1" runat="server" />
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlCityReports" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        City/Reports/Searches
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <asp:UpdatePanel ID="upBoard" runat="server">
                                                            <ContentTemplate>
                                                                <uc16:ucCityReportSearches ID="ucCityReportSearches1" runat="server" />
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlPSD" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        PSD
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <asp:UpdatePanel ID="upPSD" runat="server">
                                                            <ContentTemplate>
                                                                <uc17:ucPSD ID="ucPSD1" runat="server" />
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlDeficiency" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        Deficiency
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <asp:UpdatePanel ID="upDeficiency" runat="server">
                                                            <ContentTemplate>
                                                                <uc18:ucDeficiency ID="ucDeficiency1" runat="server" />
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlNotes" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        Notes
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <asp:UpdatePanel ID="upNotes" runat="server">
                                                            <ContentTemplate>
                                                                <uc7:ucNotes ID="ucNotes" runat="server" />
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlTask" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        Task
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <asp:UpdatePanel ID="upTask" runat="server">
                                                            <ContentTemplate>
                                                                <uc3:ucTask ID="ucTask" runat="server" />
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlDocument" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        Documents
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <asp:UpdatePanel ID="upDocuments" runat="server">
                                                            <ContentTemplate>
                                                                <uc2:ucDucuments ID="ucDocuments" runat="server" />
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlAKA" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        AKA
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <asp:UpdatePanel ID="upAKA" runat="server">
                                                            <ContentTemplate>
                                                                <uc20:ucAKA ID="ucAKA1" runat="server" />
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                            </asp:TabContainer>
                                        </div>
                                        <div class="toolBar" style="padding: 10px;" runat="server" id="PnalApprovebtn">
                                            <span class="fltlft">
                                                <a title="Previous" class="link-next-prev btn-info btn-sm" href="javascript:doPostBack" class="link-next-prev btn-info btn-sm">Previous</a>
                                                <a title="Previous" class="link-next-prev btn-info btn-sm" href="javascript:doPostBack" class="link-next-prev btn-info btn-sm">Next</a>
                                            </span>
                                            <span class="fltrt">
                                                <asp:LinkButton ID="lnkClose2" CssClass="secondary medium bottom buttonalignment"
                                                    runat="server" OnClick="lnkCloseApplication_Click">Close Individual</asp:LinkButton></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="divGridRow" runat="server">
                                <table class="index  grid" cellspacing="0" cellpadding="5" id="gvIndividual2" style="color: #333333; width: 100%; border-collapse: collapse;">
                                    <tbody>
                                        <tr>
                                            <th scope="col" style="text-decoration: underline;">
                                                <a href="javascript:void();" style="color: #fff;">Last Name</a>
                                            </th>
                                            <th scope="col" style="text-decoration: underline;">
                                                <a href="javascript:void();" style="color: #fff;">First Name</a>
                                            </th>
                                            <th scope="col" style="text-decoration: underline;">
                                                <a href="javascript:void();" style="color: #fff;">Certificate No</a>
                                            </th>
                                            <th scope="col">Action
                                            </th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="javascript:void(0)"></a>
                                                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="imgbtnEdit3_Click">Blachly</asp:LinkButton>
                                            </td>
                                            <td>

                                                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="imgbtnEdit3_Click">Nancy</asp:LinkButton>
                                            </td>
                                            <td>NVBMT.0040
                                            </td>
                                            <td style="text-align: center; width: 40px;">
                                                <span>
                                                    <asp:ImageButton ID="imgbtnEdit1" runat="server" OnClick="imgbtnEdit1_Click" ImageUrl="~/App_Themes/Theme1/images/edit.png" />
                                                    <div class="statusicon" style="background: #ddd;">
                                                    </div>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr style="background-color: White;">
                                            <td>

                                                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="imgbtnEdit3_Click">Cooper</asp:LinkButton>
                                            </td>
                                            <td>

                                                <asp:LinkButton ID="LinkButton6" runat="server" OnClick="imgbtnEdit3_Click">Lisa</asp:LinkButton>
                                            </td>
                                            <td>NVBMT.0039
                                            </td>
                                            <td style="text-align: center;">
                                                <span>
                                                    <asp:ImageButton ID="imgbtnEdit2" runat="server" OnClick="imgbtnEdit2_Click" ImageUrl="~/App_Themes/Theme1/images/edit.png" />
                                                    <div class="statusicon" style="background: #ddd;">
                                                    </div>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>

                                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="imgbtnEdit3_Click">Verma</asp:LinkButton>
                                            </td>
                                            <td>

                                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="imgbtnEdit3_Click">Tuhin</asp:LinkButton>
                                            </td>
                                            <td>NVBMT.0038
                                            </td>
                                            <td style="text-align: center;">
                                                <span>
                                                    <asp:ImageButton ID="imgbtnEdit3" runat="server" OnClick="imgbtnEdit3_Click" ImageUrl="~/App_Themes/Theme1/images/edit.png" />
                                                    <div class="statusicon" style="background: #ddd;">
                                                    </div>
                                                </span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <script type="text/javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        function BeginRequestHandler(sender, args) {
            try {
                //alert('aa');
                ShowLoader();
                //alert('hi');
                onUpdate();

            }
            catch (e) {
            }
        }

        function EndRequestHandler(sender, args) {
            try {
                HideLoader();
                onUpdate();
            }
            catch (e) {
            }
        }
        function MaskCalender() {

            $('.calender').datepicker({
                inline: true,
                altFormat: 'DD,MM, yy',
                changeMonth: true,
                changeYear: true //, minDate: "0"

            }); $('.calender').mask("99/99/9999");
        }
        function MaskCalenderDOB() {

            $('.calenderDOB').datepicker({

                constrainInput: true, inline: true,
                changeMonth: true,
                changeYear: true, minDate: "-100Y", maxDate: "-18Y",
                yearRange: "1950:+nn"

            }); $('.calenderDOB').mask("99/99/9999");
        }
        function MaskSSN() {

            $('.ssn').mask('999-99-9999'); $('.calender').mask("99/99/9999"); $('.zip_us').mask("99999-9999");
        }
        function MaskPhone() {

            $('.phone_us').mask('(000) 000-0000');
        }
        function onUpdate() {
            InitiateOnlyAlphabet();
            InitiateOnlyNumeric();
            InitiateCalender();
            InitiateMasking();
            InitiateTooltip();

        }



    </script>
</asp:Content>

