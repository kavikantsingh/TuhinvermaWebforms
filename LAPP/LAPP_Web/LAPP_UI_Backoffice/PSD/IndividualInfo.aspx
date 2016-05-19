<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="IndividualInfo.aspx.cs" Inherits="LAPP_UI_Backoffice_PSD_IndividualInfo" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucAddress.ascx" TagName="ucAddress" TagPrefix="uc1" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucDucuments.ascx" TagName="ucDucuments" TagPrefix="uc2" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucApplication.ascx" TagName="ucApplication" TagPrefix="uc3" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucTask.ascx" TagName="ucTask" TagPrefix="uc3" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucIndividual.ascx" TagName="ucIndividual" TagPrefix="uc4" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucLicense.ascx" TagName="ucLicense" TagPrefix="uc5" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucName.ascx" TagName="ucName" TagPrefix="uc6" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucNotes.ascx" TagName="ucNotes" TagPrefix="uc7" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucLicense.ascx" TagName="ucLicenseMain" TagPrefix="uc9" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucBoardPacket.ascx" TagName="ucBoardPacket" TagPrefix="uc10" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucGeneralInfo.ascx" TagName="ucGeneralInfo" TagPrefix="uc11" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucFinancial.ascx" TagName="ucFinancial" TagPrefix="uc12" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucAdvRoster.ascx" TagName="ucAdvRoster" TagPrefix="uc13" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucViewLists.ascx" TagName="ucViewLists" TagPrefix="uc14" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucRecertification.ascx" TagName="ucRecertification" TagPrefix="uc15" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucAdvRoster.ascx" TagName="ucAdvRoster" TagPrefix="uc15" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucCityReportSearches.ascx" TagName="ucCityReportSearches" TagPrefix="uc16" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucPSD.ascx" TagName="ucPSD" TagPrefix="uc17" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucDeficiency.ascx" TagName="ucDeficiency" TagPrefix="uc18" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucEducation.ascx" TagName="ucEducation" TagPrefix="uc19" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucAKA.ascx" TagName="ucAKA" TagPrefix="uc20" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucImport.ascx" TagName="ucImport" TagPrefix="uc21" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucVerification.ascx" TagName="ucVerification" TagPrefix="uc22" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucAuthorization.ascx" TagName="ucAuthorization" TagPrefix="uc23" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucCorrespondence.ascx" TagName="ucCorrespondence" TagPrefix="uc24" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucDOJ.ascx" TagName="ucDOJ" TagPrefix="uc25" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/UcInvestigativeDoc.ascx" TagName="ucInvestDoc" TagPrefix="uc26" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucNote.ascx" TagName="ucNote" TagPrefix="uc29" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucPSDMNotes.ascx" TagName="ucPSDMNotes" TagPrefix="uc30" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucComplaint.ascx" TagName="ucComplaint" TagPrefix="uc31" %>
<%@ Register Src="~/Module/UI_Backoffice/PSD/ucPSDDoSubinOpposition.ascx.ascx" TagPrefix="ucDSO" TagName="ucPSDDoSubinOpposition" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
        span#ContentPlaceHolder1_TabContainer1_tbpnlRecertification_tab {
            margin-top: 5px;
            display: block;
            float: left;
        }

        span#ContentPlaceHolder1_TabContainer1_tbpnlCityReports_tab {
            margin-top: 5px;
            display: block;
            float: left;
        }

        span#ContentPlaceHolder1_TabContainer1_tbpnlNotes_tab {
            margin-top: 5px;
            display: inline;
            float: none;
        }

        span#ContentPlaceHolder1_TabContainer1_tbpnlCorr_tab {
            float: left;
            margin-top: 5px;
            display: block;
        }

        span#ContentPlaceHolder1_TabContainer1_tbpnlDOJ_tab {
            float: left;
            margin-top: 5px;
            display: block;
        }

        span#ContentPlaceHolder1_TabContainer1_tbpnlTask_tab {
            margin-top: 5px;
            display: block;
            float: left;
        }

        span#ContentPlaceHolder1_TabContainer1_tbpnlDocument_tab {
            margin-top: 5px;
            display: block;
            float: left;
        }

        span#ContentPlaceHolder1_TabContainer1_tbpnlPSD_tab {
            margin-top: 5px;
            display: block;
            float: left;
        }

        span#ContentPlaceHolder1_TabContainer1_tbpnlDeficiency_tab {
            margin-top: 5px;
            display: block;
            float: left;
        }

        span#ContentPlaceHolder1_TabContainer1_tbpnlAKA_tab {
            margin-top: 5px;
            display: block;
            float: left;
        }

        span#ContentPlaceHolder1_TabContainer1_tbpnlViewList_tab {
            margin-top: 5px;
            display: block;
            float: left;
        }

        span#ContentPlaceHolder1_TabContainer1_tbpnlCityReports_tab {
            margin-top: 5px;
            display: block;
            float: left;
        }

        span#ContentPlaceHolder1_TabContainer1_tbpnlImport_tab {
            margin-top: 5px;
            display: block;
            float: left;
        }

        span#ContentPlaceHolder1_TabContainer1_tbpnlVerification_tab {
            margin-top: 5px;
            display: block;
            float: left;
        }

        span#ContentPlaceHolder1_TabContainer1_tbpnlAuthorization_tab {
            margin-top: 5px;
            display: block;
            float: left;
        }

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
            padding: 10px 0px 31px 15px !important;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="upMemberPanel" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="container primary-content ">
                <br />
                <br />
                <div class="clearb">
                </div>
                <div class="clearb" id="divVCRO" style="display: none;" runat="server">
                    <asp:LinkButton ID="lnkbt" runat="server"></asp:LinkButton>
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
                                                Authorized Representative First Name :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox8" runat="server" CssClass="inputTextbox capitalize-text"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label>
                                                Authorized Representative Last Name :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox10" runat="server" CssClass="inputTextbox capitalize-text"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td></td>
                                        <td></td>
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
                                                <asp:TextBox ID="TextBox6" runat="server" CssClass="inputTextbox calenderDOB"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label>
                                                    Phone Number :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox21" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td align="right">
                                                <label>
                                                    Website :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox22" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label>
                                                    Address :</label>
                                            </td>
                                            <td colspan="3">
                                                <asp:TextBox ID="TextBox7" runat="server" Style="width: 446px  !important;" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                            <%--<td align="right">
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
                                        </td>--%>
                                            <td align="right">
                                                <label>
                                                    SS # (Last 4) :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox9" runat="server" CssClass="inputTextbox"
                                                    MaxLength="4"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label>
                                                    City :</label>
                                            </td>
                                            <td colspan="5">
                                                <asp:TextBox ID="TextBox20" runat="server" CssClass="inputTextbox"
                                                    MaxLength="50"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label>
                                                    Certificate Status :</label>
                                            </td>
                                            <td colspan="3">
                                                <asp:DropDownList Style="width: 143px !important;" ID="ddlRecordStatus"
                                                    runat="server">
                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                    <asp:ListItem Value="2">Active</asp:ListItem>
                                                    <asp:ListItem Value="0">Archive</asp:ListItem>
                                                    <asp:ListItem Value="1">Delete</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <%--<td align="right">
                                            <label>
                                                Date of Status :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox10" runat="server" CssClass="inputTextbox calender"
                                                MaxLength="50"></asp:TextBox>
                                        </td>--%>
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
                                                <asp:TextBox ID="TextBox15" runat="server" CssClass="inputTextbox calender"
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
                                            <asp:TextBox ID="TextBox16" runat="server" CssClass="inputTextbox phone_us"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label>
                                                Email Address :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox17" runat="server" CssClass="inputTextbox "
                                                MaxLength="50"></asp:TextBox>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label>
                                                Date of Birth :</label>
                                        </td>
                                        <td colspan="3">
                                            <asp:TextBox ID="TextBox18" runat="server" placeholder="MM/DD/YYYY" CssClass="inputTextbox calenderDOB"
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
                                    <tr>
                                        <td align="right">
                                            <label>
                                                Business Name :</label>
                                        </td>
                                        <td colspan="3">
                                            <asp:TextBox ID="TextBox19" runat="server" CssClass="inputTextbox"
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
                <div class="clearb">
                </div>
                <div class="main" style="position: relative">
                    <asp:Panel ID="pnlMainPanel" runat="server" Visible="false">
                        <div class="container primary-content ">
                            <div class="span-180 span-13 home-sidebar append-1">
                                <div class="rounded-container peel-shadows">
                                    <div class="content clearfix">
                                        <!------#############################################-left member list start#####################################################---------------->
                                        <h4 style="margin: 0px 0px; float: left">Search Results
                                        </h4>
                                        <span class="fltrt">
                                            <asp:Button ID="btnPrintBoardPacket" Visible="false" runat="server" CssClass="buttonGreen small"
                                                Text="Print Board Packet" />
                                            <asp:LinkButton ID="btnClearFilter" runat="server" Text="show all" OnClick="btnClearFilter_Click"></asp:LinkButton></span>
                                        <div class="clear">
                                        </div>
                                        <dl id="Dl1" class="activity-list">
                                            <div id="recent-activity" class="activity-list">
                                                <div>
                                                    <script>
                                                        $(function () {
                                                            $('#HeaderCheck').change(function () {

                                                                if ($(this).is(':checked')) {
                                                                    $('.rowCheck').prop('checked', true);
                                                                }
                                                                else {
                                                                    $('.rowCheck').prop('checked', false);
                                                                }

                                                            });
                                                        });
                                                    </script>
                                                    <asp:GridView ID="gvIndividualMainGrid" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                        CssClass="index brdr radius mrgnTp4 pdng2 grid" Width="100%" CellPadding="5"
                                                        ForeColor="#333333" GridLines="None">
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="Last Name">
                                                                <ItemTemplate>
                                                                    <a href="javascript:void(0)">
                                                                        <%# Eval("Last_Name") %></a>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="First Name">
                                                                <ItemTemplate>
                                                                    <a href="javascript:void(0)">
                                                                        <%# Eval("First_Name") %></a>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Certificate #">
                                                                <ItemTemplate>
                                                                    <%# Eval("License_Number")%>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="" ItemStyle-Width="40px">
                                                                <ItemTemplate>
                                                                    <span>
                                                                        <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" CommandArgument='<%# Eval("Individual_Id") %>'
                                                                            runat="server" RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                            OnClick="imgbtnEdit_Click" ClientIDMode="Static" />
                                                                        <div class="statusicon" id="statusdiv" style='<%# "background:#"+Eval("Color_Code")%>'
                                                                            runat="server">
                                                                        </div>
                                                                    </span>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                        <EmptyDataTemplate>
                                                            <div style="width: 100%; height: 200px; border: 0px; padding: 3px">
                                                                No record found.
                                                            </div>
                                                        </EmptyDataTemplate>
                                                    </asp:GridView>
                                                </div>
                                            </div>
                                        </dl>
                                    </div>
                                    <!------>
                                    <div class="buttonConttrol" style="text-align: center;">
                                        <%--<asp:ImageButton ID="btnFirst" CommandArgument="" ToolTip="First" runat="server"
                                ImageUrl="~/App_Themes/Theme1/images/button-first.png" RowIndex="" />
                            <asp:ImageButton ID="btnPrev" CommandArgument="" ToolTip="Previous" runat="server"
                                ImageUrl="~/App_Themes/Theme1/images/button-prev.png" RowIndex="" />
                            <asp:ImageButton ID="btnNext" CommandArgument="" ToolTip="Next" runat="server" ImageUrl="~/App_Themes/Theme1/images/button-next.png"
                                RowIndex="" />
                            <asp:ImageButton ID="btnLast" CommandArgument="" ToolTip="Last" runat="server" ImageUrl="~/App_Themes/Theme1/images/button-last.png"
                                RowIndex="" />--%>
                                    </div>
                                    <!------>
                                </div>
                                <asp:HiddenField ID="hidEditIndex" runat="server" />
                                <!------#############################################-left member list end #####################################################---------------->
                            </div>
                            <div class="primary-column span-24" style="width: 600px;">
                                <div class="clear">
                                </div>
                                <div>
                                </div>
                                <div class="clear">
                                    <%--<asp:HiddenField ID="hidIndividualId" ClientIDMode="Static" runat="server" />--%>
                                    <asp:HiddenField ID="hidIndividualid" ClientIDMode="Static" runat="server" />
                                </div>
                                <div id="dashboard-panels">
                                    <div class="relative-box ">
                                        <div class="dynamic-panels ui-sortable" style="">
                                            <div id="Cashflow" class=" clearfix">
                                                <div class="gridUpperDiv">
                                                    <a class="down_arrow"></a><span class="fltlt">
                                                        <asp:LinkButton ID="lnkArchive" CssClass="button small gray narrow pill-left" runat="server"
                                                            OnClick="lnkArchive_Click">Archive</asp:LinkButton>
                                                        <asp:LinkButton ID="lnkDelete" runat="server" CssClass="button small gray narrow pill-right"
                                                            OnClick="lnkDelete_Click">Delete</asp:LinkButton>
                                                    </span>
                                                    <div class="fltrt rightIcon">
                                                        <asp:Button ID="btnNewMember" CssClass="button medium save green  pdng10" runat="server"
                                                            Text="New Member" OnClick="btnNewMember_Click" Visible="false" />
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
                                                                    <asp:Button ID="Button1" Width="125px" runat="server" Text="Print Board Packet" CssClass="buttonGreen small" />
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

                                                <div>
                                                    <h4 class="" style="font-size: 16px; font-weight: bold; padding: 10px 13px;">Individual Details 
                                                        <span class="fltrt"></span>
                                                    </h4>
                                                </div>

                                                <div id="divButtonList" class="tabBtnBorder">
                                                    <asp:Button ID="btnGeneralInfo" runat="server" Text="General" OnClick="btnGeneralInfo_Click" CssClass="tab_activeBtn" />
                                                    <asp:Button ID="btnPersonalInfo" runat="server" Text="Personal" OnClick="btnPersonalInfo_Click" CssClass="tabBtn" />
                                                    <asp:Button ID="btnEducation" runat="server" Text="Education" OnClick="btnEducation_Click" CssClass="tabBtn" />
                                                    <asp:Button ID="btnEmploymentInfo" runat="server" Text="Employment" OnClick="btnEmploymentInfo_Click" CssClass="tabBtn" />
                                                    <asp:Button ID="btnApplicationData" runat="server" Text="Application Data" OnClick="btnApplicationData_Click" CssClass="tabBtn" />
                                                    <asp:Button ID="btnNotes" runat="server" Text="Notes" OnClick="btnNotes_Click" CssClass="tabBtn" />

                                                    <asp:Button ID="btnCorrespondence" runat="server" Text="Correspondence" OnClick="btnCorrespondence_Click" CssClass="tabBtn" />
                                                    <asp:Button ID="btnInvestigativeNotes" runat="server" Text="Investigative Notes" OnClick="btnInvestigativeNotes_Click" CssClass="tabBtn" />
                                                    <asp:Button ID="btnDOJFBI" Enabled="false" runat="server" Text="DOJ/FBI" OnClick="btnDOJFBI_Click" CssClass="tabBtn" />
                                                    <asp:Button ID="btnInvestigation" runat="server" Text="Investigative Doc" OnClick="btnInvestigation_Click" CssClass="tabBtn" />
                                                    <asp:Button ID="btnComplaint" runat="server" Text="Complaint" OnClick="btnComplaint_Click" CssClass="tabBtn" />
                                                    <asp:Button ID="btnPSDMNotes" runat="server" Text="PSD Meeting Notes" OnClick="btnPSDMNotes_Click" CssClass="tabBtn" />
                                                    <asp:Button ID="btnMiscDocs" runat="server" Text="Misc Document" OnClick="btnMiscDocs_Click" CssClass="tabBtn" />
                                                    <asp:Button ID="btnDoSubinOpposition" Enabled="false" runat="server" Text="Docs Submitted in Opposition" OnClick="btnDoSubinOpposition_Click" CssClass="tabBtn" />
                                                    <asp:Button ID="btnAddress" runat="server" Visible="false" />
                                                </div>

                                                <div class="demo">
                                                    <div>
                                                        <h4 class="" style="font-size: 16px; font-weight: bold; padding: 10px 13px;">
                                                            <span class="fltrt">
                                                                <asp:ImageButton ID="imgbtnOpenDetail" ToolTip="Hide" runat="server" ImageUrl="~/App_Themes/Theme1/Expandables/minus.png"
                                                                    OnClick="imgbtnOpenDetail_Click" />
                                                            </span>
                                                        </h4>
                                                    </div>
                                                    <div style="padding-top: 5px;">
                                                        <div class="statusrow" id="statusbar" runat="server">
                                                            <div class="colorbox">
                                                                <div class="status" style="width: 65px;">
                                                                    Status  :
                                                                </div>
                                                                <div class="statuscontent" style="width: 225px;">
                                                                    <asp:DropDownList ID="ddlAppStatus" Enabled="false" runat="server" Style="width: 160px;">
                                                                    </asp:DropDownList>
                                                                    <span>At AMG</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                    <asp:Panel ID="pnlIndividuaDetail" runat="server" Visible="true">
                                                        <div class="IndividuaDetail">
                                                            <div class="divindv">
                                                                <div class="brandytest" style="width: 527px;">
                                                                    <table class="IndividualTbl">
                                                                        <tr>
                                                                            <td colspan="2"><b>Individual Details</b></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="Individualwidth1">
                                                                                <label class="hed">
                                                                                    Name :
                                                                                </label>
                                                                            </td>
                                                                            <td>

                                                                                <asp:Literal ID="ltrIndividual1" runat="server"></asp:Literal>

                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>DOB :
                                                                            </td>
                                                                            <td>06/08/1952
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Certificate # :
                                                                            </td>
                                                                            <td>CAMTC0001
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>ID #  :
                                                                            </td>
                                                                            <td>PSD001
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Mailing Address :
                                                                            </td>
                                                                            <td>
                                                                                <asp:Literal Visible="false" ID="ltraddress" runat="server"></asp:Literal>
                                                                                PO Box 472, Sacramento CA 94203
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Home Address :
                                                                            </td>
                                                                            <td>123 Test Street, Sacramento CA 94205 
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Work Location :
                                                                            </td>
                                                                            <td>Test Massage, ABC 1st Avenue, Sacramento CA 94203 
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Primary Phone :
                                                                            </td>
                                                                            <td>
                                                                                <asp:Literal ID="ltrPhone" runat="server"></asp:Literal>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Email Address :
                                                                            </td>
                                                                            <td>school@inlumon.com
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                    <hr />
                                                                    <table class="IndividualTbl" style="height: 106px;">
                                                                        <tr>
                                                                            <td><b>Notes</b></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>This is reference notes 1</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>This is reference notes 2</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>This is reference notes 3</td>
                                                                        </tr>


                                                                    </table>
                                                                </div>
                                                                <div class="incompletetaskDiv" style="display: none;">
                                                                    <table class="IndividualTbl" style="display: none;">
                                                                        <tr>
                                                                            <td>
                                                                                <label>
                                                                                    <b>Deficiency</b>
                                                                                </label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Photo incorrect
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Payment amount not correct
                                                                            </td>
                                                                        </tr>


                                                                        <tr>
                                                                            <td>Livescan ATI
                                                                            </td>
                                                                        </tr>

                                                                    </table>
                                                                    <hr />
                                                                    <table class="IndividualTbl" style="display: none;">
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
                                                                                    $250.00
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
                                                                                    $150.00
                                                                                </label>
                                                                            </td>
                                                                        </tr>

                                                                    </table>
                                                                </div>
                                                            </div>
                                                            <div class="UnpaidInvoice">
                                                                <img style="width: 211px; margin: 0px auto;" src="../../App_Themes/Theme1/images/indiviudal-sample.jpg" />
                                                                <table class="IndividualTbl">
                                                                    <tr>
                                                                        <td><b>Certification Details</b></td>
                                                                    </tr>
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
                                                            <br />

                                                        </div>
                                                    </asp:Panel>
                                                </div>

                                                <div id="divPanelList" style="border: 1px solid rgb(222, 222, 222); margin-top: 10px;">
                                                    <asp:Panel ID="pnlGeneralInfo" Enabled="true" Visible="true" runat="server">
                                                        <uc11:ucGeneralInfo ID="ucGeneralInfo2" runat="server" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlPersonalInfo" Enabled="true" Visible="false" runat="server">
                                                        <uc4:ucIndividual ID="ucIndividual2" runat="server" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlAddress" Enabled="true" Visible="false" runat="server">
                                                        <uc1:ucAddress ID="ucAddress1" runat="server" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlEducation" Enabled="true" Visible="false" runat="server">
                                                        <uc19:ucEducation ID="ucEducation2" runat="server" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlAdvRoster" Enabled="true" Visible="false" runat="server">
                                                        <uc13:ucAdvRoster ID="ucAdvRoster2" runat="server" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlApplication" Enabled="true" Visible="false" runat="server">
                                                        <uc3:ucApplication ID="ucApplication1" runat="server" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlNotes" Enabled="true" Visible="false" runat="server">
                                                        <uc7:ucNotes ID="ucNotes1" runat="server" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlInvestigativeNotes" Enabled="true" Visible="false" runat="server">
                                                        <uc7:ucNotes ID="ucNotes2" runat="server" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlInvestigativeDocs" Enabled="true" Visible="false" runat="server">
                                                        <uc26:ucInvestDoc ID="ucNotes3" runat="server" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlComplaint" Enabled="true" Visible="false" runat="server">
                                                        <uc31:ucComplaint ID="ucComplaint1" runat="server" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlDocument" Enabled="true" Visible="false" runat="server">
                                                        <uc2:ucDucuments ID="UcDucuments1" runat="server" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlDoSubinOpposition" Enabled="true" Visible="false" runat="server">
                                                        <ucDSO:ucPSDDoSubinOpposition runat="server" ID="ucPSDDoSubinOpposition1" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlPSDMeetingNotes" Enabled="true" Visible="false" runat="server">
                                                        <uc30:ucPSDMNotes ID="ucPSDMNotes1" runat="server" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlDOJ" Enabled="true" Visible="false" runat="server">
                                                        <uc25:ucDOJ ID="ucDOJ1" runat="server" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlCorrespondence" Enabled="true" Visible="false" runat="server">
                                                        <uc24:ucCorrespondence ID="ucCorrespondence1" runat="server" />
                                                    </asp:Panel>
                                                </div>

                                                <span style="display: none">
                                                    <asp:Button ID="btnActiveTab" ClientIDMode="Static" runat="server" OnClick="btnActiveTab_Click" />
                                                </span>
                                                <asp:TabContainer ID="TabContainer1" runat="server" CssClass="fancy fancy-green"
                                                    ActiveTabIndex="0" Visible="false">
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
                                                    <asp:TabPanel ID="tbpnlEducation" Enabled="true" runat="server">
                                                        <HeaderTemplate>
                                                            Education
                                                        </HeaderTemplate>
                                                        <ContentTemplate>
                                                            <asp:UpdatePanel ID="upEducation" runat="server">
                                                                <ContentTemplate>
                                                                    <uc19:ucEducation ID="ucEducation1" runat="server" />
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
                                                    <asp:TabPanel ID="tbpnlNote" Enabled="true" runat="server">
                                                        <HeaderTemplate>
                                                            Notes
                                                        </HeaderTemplate>
                                                        <ContentTemplate>
                                                            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                                <ContentTemplate>
                                                                    <uc29:ucNote ID="ucNote1" runat="server" />
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </ContentTemplate>
                                                    </asp:TabPanel>
                                                    <asp:TabPanel ID="tbpnlNotes" Enabled="true" runat="server">
                                                        <HeaderTemplate>
                                                            Investigative Notes
                                                        </HeaderTemplate>
                                                        <ContentTemplate>
                                                            <asp:UpdatePanel ID="upNotes" runat="server">
                                                                <ContentTemplate>
                                                                    <uc7:ucNotes ID="ucNotes" runat="server" />
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </ContentTemplate>
                                                    </asp:TabPanel>
                                                    <asp:TabPanel ID="tbpnlDocument" Enabled="true" runat="server">
                                                        <HeaderTemplate>
                                                            Investigation
                                                        </HeaderTemplate>
                                                        <ContentTemplate>
                                                            <asp:UpdatePanel ID="upDocuments" runat="server">
                                                                <ContentTemplate>
                                                                    <uc2:ucDucuments ID="ucDocuments" runat="server" />
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </ContentTemplate>
                                                    </asp:TabPanel>
                                                    <asp:TabPanel ID="tbpnlDOJ" Enabled="true" runat="server">
                                                        <HeaderTemplate>
                                                            DOJ/FBI
                                                        </HeaderTemplate>
                                                        <ContentTemplate>
                                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                <ContentTemplate>
                                                                    <%--<uc12:ucFinancial ID="ucFinancial2" runat="server" />--%>
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </ContentTemplate>
                                                    </asp:TabPanel>
                                                    <asp:TabPanel ID="tbpnlCorr" Enabled="true" runat="server">
                                                        <HeaderTemplate>
                                                            Correspondence
                                                        </HeaderTemplate>
                                                        <ContentTemplate>
                                                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                                <ContentTemplate>
                                                                    <%--<uc12:ucFinancial ID="ucFinancial3" runat="server" />--%>
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </ContentTemplate>
                                                    </asp:TabPanel>

                                                    <%-- <asp:TabPanel ID="tbpnlFinancial" Enabled="true" runat="server">
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
                                                    </asp:TabPanel>--%>
                                                    <%--<asp:TabPanel ID="tbpnlRecertification" Enabled="true" runat="server">
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
                                                    </asp:TabPanel>--%>

                                                    <%--<asp:TabPanel ID="tbpnlPSD" Enabled="true" runat="server">
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
                                                    </asp:TabPanel>--%>

                                                    <%--<asp:TabPanel ID="tbpnlTask" Enabled="true" runat="server">
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
                                                    </asp:TabPanel>--%>

                                                    <%--  <asp:TabPanel ID="tbpnlAKA" Enabled="true" runat="server">
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
                                                    </asp:TabPanel>--%>


                                                    <%--<asp:TabPanel ID="tbpnlVerification" Enabled="true" runat="server">
                                                        <HeaderTemplate>
                                                            Verification
                                                        </HeaderTemplate>
                                                        <ContentTemplate>
                                                            <asp:UpdatePanel ID="upVerification" runat="server">
                                                                <ContentTemplate>
                                                                    <uc1:ucVerification runat="server" ID="ucVerification" />
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </ContentTemplate>
                                                    </asp:TabPanel>
                                                    <asp:TabPanel ID="tbpnlAuthorization" Enabled="true" runat="server">
                                                        <HeaderTemplate>
                                                            Authorization
                                                        </HeaderTemplate>
                                                        <ContentTemplate>
                                                            <asp:UpdatePanel ID="upAuthorization" runat="server">
                                                                <ContentTemplate>
                                                                    <uc1:ucAuthorization runat="server" ID="ucAuthorization" />
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
                                                    <asp:TabPanel ID="tbpnlImport" Enabled="true" runat="server">
                                                        <HeaderTemplate>
                                                            Import
                                                        </HeaderTemplate>
                                                        <ContentTemplate>
                                                            <asp:UpdatePanel ID="upImport" runat="server">
                                                                <ContentTemplate>
                                                                    <uc1:ucImport runat="server" ID="ucImport" />
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </ContentTemplate>
                                                    </asp:TabPanel>--%>
                                                </asp:TabContainer>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>
                </div>
            </div>
            <!--- comment--->
            <div class="outty sample_data_popup popComment" style="display: none; top: 80.5px; left: 202.5px;">
                <div class="outty_shadow">
                </div>
                <div class="outty_container">
                    <div class="outty_content prepend-top-1 append-1 prepend-1 append-bottom-1 clearfix">
                        <h4 class="titleblue">Comment</h4>
                        <fieldset style="border: 1px solid #ddd; padding: 7px;">
                            <div style="overflow: hidden;">
                                <div>
                                    <asp:Label ID="lblcomment" runat="server" Visible="false" Text="Comment"></asp:Label>
                                </div>
                                <asp:TextBox ID="txtComment" runat="server" Width="98%" Height="60px" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvComment" ValidationGroup="VGComment" ControlToValidate="txtComment"
                                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                    ErrorMessage="Please enter comment."></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="vceComment" runat="server" TargetControlID="rfvComment"
                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                </asp:ValidatorCalloutExtender>
                                <div style="height: 30px">
                                </div>
                                <div class="clear" style="">
                                    <span class="fltrt">
                                        <asp:Button ID="btnSave" CssClass="buttonGreen medium" ValidationGroup="VGComment"
                                            runat="server" Text="Save" />&nbsp;
                                        <input type="button" class="secondary medium BtnPopup" style="height: 31px; right: 2px; position: relative;"
                                            value="Cancel" onclick="javascript: hideDiv('.popComment');"
                                            name="cancel" />
                                    </span>
                                </div>
                                <div class="clear">
                                </div>
                            </div>
                            </span>
                        </fieldset>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script src="../../Validation/TextboxFormating.js" type="text/javascript"></script>
    <script src="../../Validation/FormValidation.js" type="text/javascript"></script>
    <script src="../../App_Themes/Theme1/venobox/js/venobox.min.js" type="text/javascript"></script>
    <link href="../../App_Themes/Theme1/venobox/css/venobox.css" rel="stylesheet" type="text/css" />
    <!--
    ********************************
    Start
    Update Panel Request Handler
    Javascript Method on Update
    ********************************
    -->
    <script type="text/javascript">
        window.onload = function () {
            InitializeAutosearch();
        };
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        //Begin request handler
        function BeginRequestHandler(sender, args) {

            ShowLoader();

            onUpdate();
            BeginScroll();

        }
        //End request handler
        function EndRequestHandler(sender, args) {

            HideLoader();
            onUpdate();
            EndScroll();

        }
        //On Update method for this page
        function onUpdate() {

            InitiateOnlyAlphabet();
            InitiateOnlyNumeric();
            InitiateMasking();
            //For normal jquery calender
            $('.calender').datepicker({
                inline: true,
                altFormat: 'DD,MM, yy',
                changeMonth: true,
                changeYear: true, minDate: "-50Y",
                yearRange: "1950:2023"

            });
            //For Date of Birth jquery calender
            $('.calenderDOB').datepicker({
                inline: true,
                changeMonth: true,
                changeYear: true, maxDate: "-18Y",
                yearRange: "1900:+nn"

            });

            //For Date of Birth with Age Calculater jquery calender
            $("#txtDOB").datepicker({
                changeMonth: true,
                changeYear: true,

                onSelect: function (date) {
                    var dob = $('#txtDOB').datepicker('getDate');
                    var d2 = new Date();
                    var diff = 0;
                    if (dob && d2) {
                        diff = Math.floor((d2.getTime() - dob.getTime()) / 86400000); // ms per day
                    }
                    diff = Math.floor(diff / 365);
                    console.log(diff);
                    $('#txtAge').val(diff);

                }
            });


            //Grid event
            //gridEvent();

            //Masking section
            $('.phone_us').mask('(000) 000-0000');
            $('.ssn').mask('999-99-9999');


            // start***Individual Page*** check fucntion to excute on update panel postback
            if ($.isFunction(UpdatePanel_Function_Individual)) {
                UpdatePanel_Function_Individual();
            }
            // end***Individual Page*** check fucntion to excute on update panel postback

            var wheight = $(window).height() - 100;
            $('.popin').venobox({
                framewidth: '100%',
                frameheight: wheight + 'px',
                frameBorder: '0',
                paddingwidth: '0',
                border: '0',
                marginheight: '0',
                marginwidth: '0',
                numeratio: true,
                infinigall: true
            });

            // initiate autosearch
            InitializeAutosearch();
            $("input.us_street").blur(function () {
                OnStreetChange(this);
            });
        }
        function SetIframeHeight(frmId, height) {
            $(frmId).attr('height', height + 'px');

        }

        function ActiveAllTabs() {
            $('#btnActiveTab').trigger('click');
        }
        function ShowChildMessage(msg, type) {
            $('#MsgDivUploadAll').html(BuildValidationMessage(msg, type)); HideLoader();
        }

        function InitializeAutosearch() {

            // Sets up the multicolumn autocomplete widget.
            $("#txtSearchByName").mcautocomplete({
                // These next two options are what this plugin adds to the autocomplete widget.
                showHeader: true,
                columns: [{
                    name: 'Certification#',
                    width: '150px',
                    valueField: 'Certification_Number'
                }, {
                    name: 'First Name',
                    width: '120px',
                    valueField: 'First_Name'
                }, {
                    name: 'Last Name',
                    width: '120px',
                    valueField: 'Last_Name'
                }],

                // Event handler for when a list item is selected.
                select: function (event, ui) {
                    this.value = (ui.item ? ui.item.First_Name + ' ' + ui.item.Last_Name : '');
                    $('#txtLicenseNumberSearch').val(ui.item ? ui.item.Certification_Number : '');
                    $('#txtFirstNameSearch').val(ui.item ? ui.item.First_Name : '');
                    $('#txtlastNameSaerch').val(ui.item ? ui.item.Last_Name : '');
                    //alert('done');

                    //$('#results').text(ui.item ? 'Selected: ' + ui.item.name + ', ' + ui.item.adminName1 + ', ' + ui.item.countryName : 'Nothing selected, input was ' + this.value);
                    return false;
                },

                // The rest of the options are for configuring the ajax webservice call.
                minLength: 1,
                source: function (request, response) {
                    $.ajax({
                        url: '../../Ajax_Handler/IndividualSearch.ashx',
                        dataType: 'json',
                        // The success event handler will display "No match found" if no items are returned.
                        success: function (data) {
                            var result;
                            //alert(data);
                            result = data.SearchResult;
                            //alert(result);
                            //                        if (!data || data.length === 0 || !data.geonames || data.geonames.length === 0) {
                            //                            result = [{
                            //                                label: 'No match found.'
                            //                            }];
                            //                        } else {
                            //                            result = data.geonames;
                            //                        }
                            response(result);
                        }
                    });
                }
            });
        }

    </script>
    <script>
        $(function () {
            var wheight = $(window).height() - 100;
            $('.popin').venobox({
                framewidth: '100%',
                frameheight: wheight + 'px',
                frameBorder: '0',
                paddingwidth: '0',
                border: '0',
                marginheight: '0',
                marginwidth: '0',
                numeratio: true,
                infinigall: true
            });
        });
    </script>
    <!--
    ********************************
    END
    Update Panel Request Handler
    Javascript Method on Update
    ********************************
    -->
    <!-- Autocomplete Script -->
    <script src="../../Ajax_Handler/autocomplete.js" type="text/javascript"></script>
</asp:Content>

