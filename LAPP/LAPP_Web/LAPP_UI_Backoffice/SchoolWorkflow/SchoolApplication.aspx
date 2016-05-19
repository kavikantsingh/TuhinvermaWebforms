<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="SchoolApplication.aspx.cs" Inherits="LAPP_UI_Backoffice_SchoolWorkflow_SchoolApplication" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="~/Module/UI_Backoffice/Establisment/ucBranches.ascx" TagName="ucBranches" TagPrefix="uc1" %>
<%@ Register Src="~/Module/UI_Backoffice/Establisment/ucInspection.ascx" TagName="ucInspection"
    TagPrefix="uc3" %>
<%@ Register Src="~/Module/UI_Backoffice/Establisment/ucEstablishment.ascx" TagName="ucEstablishment"
    TagPrefix="uc4" %>



<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucAddress.ascx" TagName="ucAddress" TagPrefix="uc1" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucIndividual.ascx" TagName="ucIndividual"
    TagPrefix="uc4" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucLicense.ascx" TagName="ucLicense" TagPrefix="uc5" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucName.ascx" TagName="ucName" TagPrefix="uc6" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucNotes.ascx" TagName="ucNotes" TagPrefix="uc7" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucLog.ascx" TagName="ucLog" TagPrefix="uc23" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucCorrespondence.ascx" TagName="ucCorrespondence" TagPrefix="uc24" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucApplication.ascx" TagName="ucApplication" TagPrefix="uc3" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucTask.ascx" TagName="ucTask" TagPrefix="uc3" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucDucuments.ascx" TagName="ucDucuments" TagPrefix="uc2" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/UcInvestigativeDoc.ascx" TagName="UcInvestigativeDoc" TagPrefix="uc25" %>
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
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucDOJ.ascx" TagName="ucDOJ" TagPrefix="uc22" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucDeficiency.ascx" TagName="ucDeficiency"
    TagPrefix="uc18" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucEducation.ascx" TagName="ucEducation" TagPrefix="uc19" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucAKA.ascx" TagName="ucAKA" TagPrefix="uc20" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucImport.ascx" TagPrefix="uc1" TagName="ucImport" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucVerification.ascx" TagPrefix="uc1" TagName="ucVerification" %>
<%@ Register Src="~/Module/UI_Backoffice/Individual/ucAuthorization.ascx" TagPrefix="uc1" TagName="ucAuthorization" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

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
            $('#liESD').addClass('active');

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
        body { font-family: helvatica,sans-serif; line-height: 22px;}

.sectionDiv {height: 30px;background-color: #D6D3D3;line-height: 30px;padding-left: 10px;font-size: 14px;font-weight: bold;}
.flsApplReqForm {border: 1px solid #EAEAEA; width: 95%; margin: 10px auto 0px;}
 fieldset { border: 0px none !important;}
.flsParentNewApplReqForm { border: 1px solid #EAEAEA; width: 95%;margin: 10px auto 0px;}
.wdtmarauto { width: 96%; margin: 0px auto;}
table.tblApplReqForm5 {line-height: 33px;}
.address-box {position: relative; margin-top: -110px; min-height: 100px;background-color: #FBF4F4;padding: 12px;border: 1px solid rgba(255, 5, 28, 0.4); top: 2px;z-index: 1;}
.tblApplReqForm5 td { padding: 10px 0px 0px !important;}
.divaddnew {height: 33px;}
.divLicenseInfo {margin: 3px auto;width: 98%;border: 1px solid #EEE;}
.addNewDiv {text-align: center;height: 28px;line-height: 25px; background-color: #F9F9F9;font-weight: bold;}     
.grid-header-other-name .index tr th {height: 25px !important;padding: 0px 0px 0px 3px !important;line-height: 25px;} 
.readinstrucn { padding-left: 20px; margin-bottom: 20px;margin-top: 20px;}
.flsNewApplReqForm {border: 1px solid #EAEAEA; width: 95%; margin: 10px auto 0px;}
hr {    display: block;height: 1px;border-width: 1px 0px 0px; border-style: solid none none;border-color: #CCC -moz-use-text-color -moz-use-text-color;-moz-border-top-colors: none;-moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none; margin: 1em 0px; padding: 0px;}
.grid-heading {width: 100%; background-color: #DDD; font-weight: bold;}
.index tbody td {padding: 4px 3px;}
.listbox { width: 215px; height: 170px; overflow-x: hidden; overflow-y: scroll;border: 1px solid #DDD; padding: 8px;}
.gvDivUpr {color: #000;font-family: Arial,Helvetica,sans-serif;font-size: 12px; font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;text-align: left;text-indent: 0px; text-transform: none; white-space: normal;word-spacing: 0px;}
.tableborder_trcschk td {border: 1px solid #DEDEDE;padding: 5px;}
table { border-collapse: collapse; border-spacing: 0px;}
.flsLiveScanApp{border: 1px solid #EAEAEA;width: 95%;margin: 10px auto 0px;}
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="upMemberPanel" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="container primary-content ">
                <h3 style="float: left;">School
                </h3>
                <div class="clearb">
                </div>
                <div class="clearb" id="divVCRO" style="display: none;" runat="server">
                    <asp:LinkButton ID="lnkbt" runat="server"></asp:LinkButton>
                </div>
                <div class="userHide searchBoxhidden" style="display: block !important" id="pnlSearch" runat="server">
                    <div class="clear">
                        <div class="close" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
                        </div>
                    </div>
                    <!------#############################################-Permit Search control start#####################################################---------------->
                    <fieldset class="PermitSearch" style="position: relative">
                        <legend></legend>
                        <table class="SearchTable boardinfo" align="center" style="border-spacing: 2px; border-collapse: separate;">
                            <tbody>
                                <tr>
                                    <td align="right" style="width: 51px;">
                                        <label>
                                            School :</label></p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtEstablishment" Style="width: 178px !important;"
                                            runat="server" CssClass="inputTextbox OnlyAlphabet" MaxLength="10"></asp:TextBox>
                                    </td>
                                    <td align="right" style="width: 112px;">
                                        <label>
                                            School ID :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtEstablishmentId" runat="server" Style="width: 190px !important;"
                                            CssClass="inputTextbox" MaxLength="50"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4">
                                        <table style="margin-top: -12px;border-spacing: 2px; border-collapse: separate;">
                                            <tr>
                                                <td align="right" style="vertical-align: middle; width: 48px;">
                                                    <label style="margin-top: 9px;">
                                                        Street :
                                                    </label>
                                                </td>
                                                <td colspan="5">
                                                    <asp:TextBox ID="txtAddress1" runat="server" Style="margin-top: 9px; width: 499px"
                                                        CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label>
                                                        City :
                                                    </label>
                                                </td>
                                                <td style="width: 151px;">
                                                    <asp:TextBox ID="txtCity" runat="server" CssClass="calWidth us_street OnlyAlphabet" Width="124px" MaxLength="500"></asp:TextBox>
                                                </td>
                                                <td align="right" style="width: 52px;">
                                                    <label>
                                                        State :
                                                    </label>
                                                </td>
                                                <td style="width: 106px;">
                                                    <asp:DropDownList ID="ddlState" runat="server" Width="98px" CssClass="inputTextbox">
                                                        <asp:ListItem>Nevada</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td align="right" style="width: 47px;">
                                                    <label>
                                                        Zip :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtZip" runat="server" CssClass="tooltip zip_us calWidth" placeholder="xxxxx-xxxx or xxxxx" Width="98px" title="Enter valid Zip eg: XXXXX-XXXX or XXXXX" MaxLength="500"></asp:TextBox>
                                                </td>
                                            </tr>
                                </tr>
                        </table>
                        </td> </tr> </tbody> </table>
                        <div style="width: 90%; margin: 0 auto;">
                            <span class="fltrt">
                                <asp:Button ID="btnSearch" CssClass="buttonGreen small" OnClick="btnSearch_Click" runat="server" Text="Search" />
                                <%--<a id="btnSearchCancel" class="secondary small " href="javascript:void()" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
                            Cancel</a>--%>
                                <asp:LinkButton ID="btnSearchCancel" CssClass="secondary small" runat="server" Text="Cancel"></asp:LinkButton>
                            </span>
                        </div>
                    </fieldset>
                    <!------#############################################-Permit Search control End#####################################################---------------->
                </div>
                <div class="clearb">
                </div>
                <div class="main" style="position: relative; display:none;">
                    <div class="container primary-content ">
                        <div class="span-180 span-13 home-sidebar append-1">
                            <%--<div class="rounded-container peel-shadows">
                                <div class="content clearfix">
                                    <h4 style="margin: 0px 0px;">Schools List
                                    </h4>
                                    <div>
                                        <p style="word-spacing: 8px; font-size: 14px; text-align: center; font-family: aldhabi; line-height: 21px;">
                                            <a href="javascript:void(0)">A</a> <a href="javascript:void(0)">B</a> <a href="javascript:void(0)">C</a> <a href="javascript:void(0)">D</a> <a href="javascript:void(0)">E</a>
                                            <a href="javascript:void(0)">G</a> <a href="javascript:void(0)">H</a> <a href="javascript:void(0)">I</a> <a href="javascript:void(0)">J</a> <a href="javascript:void(0)">K</a>
                                            <a href="javascript:void(0)">L</a> <a href="javascript:void(0)">M</a> <a href="javascript:void(0)">N</a> <a href="javascript:void(0)">O</a> <a href="javascript:void(0)">P</a>
                                            <a href="javascript:void(0)">Q</a> <a href="javascript:void(0)">R</a> <a href="javascript:void(0)">S</a> <a href="javascript:void(0)">T</a> <a href="javascript:void(0)">U</a>
                                            <a href="javascript:void(0)">V</a> <a href="javascript:void(0)">W</a> <a href="javascript:void(0)">X</a> <a href="javascript:void(0)">Y</a> <a href="javascript:void(0)">Z</a>
                                        </p>
                                    </div>
                                    <div class="clear">
                                    </div>
                                    <!------>
                                    <dl id="Dl1" class="activity-list">
                                        <div id="recent-activity" class="activity-list">
                                            <div>
                                                <table class="index grid" cellspacing="0" cellpadding="4" id="gvCompanyList" style="color: #333333; border-collapse: collapse;">
                                                    <tbody>
                                                        <tr>
                                                            <th scope="col">School
                                                            </th>
                                                            <th scope="col">Action
                                                            </th>
                                                        </tr>
                                                        <tr style="background-color: White;">
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21027 - ebsc">eduloka</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl05$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="3" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21026 - No Company">No Company</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl06$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="4" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr style="background-color: White;">
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21025 - ROGER C. BANGHART, CONSULTANT">ROGER C.
                                                                    BANGHART, CONSULTANT</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl07$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="5" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21024 - BUREAU OF LAND MANAGEMENT - NV, RENO">BUREAU
                                                                    OF LAND MANAGEMENT - NV, RENO</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl08$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="6" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr style="background-color: White;">
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21023 - DIRECTIONAL PROJECT SUPPORT, INC.">DIRECTIONAL
                                                                    PROJECT SUPPORT, INC.</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl09$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="7" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21022 - U.S. FOREST SERVICE - CA, VALLEJO">U.S.
                                                                    FOREST SERVICE - CA, VALLEJO</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl10$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="8" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr style="background-color: White;">
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21021 - WJA DESIGN COLLABORATIVE PLLC">WJA DESIGN
                                                                    COLLABORATIVE PLLC</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl11$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="9" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21020 - MOHLIN &amp; COMPANY">MOHLIN &amp; COMPANY</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl12$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="10" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr style="background-color: White;">
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21019 - MSC ENGINEERS, INC.">MSC ENGINEERS, INC.</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl13$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="11" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21018 - Applied Pavement Technology">Applied Pavement
                                                                    Technology</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl14$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="12" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr style="background-color: White;">
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21017 - JEHN ENGINEERING - CO">JEHN ENGINEERING
                                                                    - CO</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl15$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="13" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21016 - ALTA Land Survey">ALTA Land Survey</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl16$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="14" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr style="background-color: White;">
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21015 - STAR CONSULTING OF AZ, INC.">STAR CONSULTING
                                                                    OF AZ, INC.</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl17$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="15" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21014 - STAR CONSULTING OF AZ, INC.">STAR CONSULTING
                                                                    OF AZ, INC.</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl18$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="16" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr style="background-color: White;">
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21013 - LUNDSTROM ENGINEERING &amp; SURVEYING, INC.">LUNDSTROM ENGINEERING &amp; SURVEYING, INC...</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl19$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="17" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21012 - NUCLEAR SAFETY ASSOCIATES - TN">NUCLEAR
                                                                    SAFETY ASSOCIATES - TN</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl20$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="18" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr style="background-color: White;">
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21011 - KAZAKHMYS AKYOGAY LLC">KAZAKHMYS AKYOGAY
                                                                    LLC</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl21$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="19" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <style>
                                                .disablePager {
                                                    color: #fff !important;
                                                    background: #6370CC !important;
                                                    text-decoration: none;
                                                }
                                            </style>
                                            <table>
                                                <tbody>
                                                    <tr class="pager_style">
                                                        <td colspan="4">
                                                            <table>
                                                                <tbody>
                                                                    <tr>
                                                                        <td></td>
                                                                        <td>
                                                                            <input type="submit" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$PagerControl1$rptPager$ctl00$lnkPager"
                                                                                value="1" id="ContentPlaceHolder1_ucFirm_Page1_PagerControl1_rptPager_lnkPager_0"
                                                                                disabled="disabled" class="aspNetDisabled disablePager">
                                                                        </td>
                                                                        <td>
                                                                            <input type="submit" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$PagerControl1$rptPager$ctl01$lnkPager"
                                                                                value="2" id="ContentPlaceHolder1_ucFirm_Page1_PagerControl1_rptPager_lnkPager_1">
                                                                        </td>
                                                                        <td>
                                                                            <input type="submit" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$PagerControl1$rptPager$ctl02$lnkPager"
                                                                                value="3" id="ContentPlaceHolder1_ucFirm_Page1_PagerControl1_rptPager_lnkPager_2">
                                                                        </td>
                                                                        <td>
                                                                            <input type="submit" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$PagerControl1$rptPager$ctl03$lnkPager"
                                                                                value="4" id="ContentPlaceHolder1_ucFirm_Page1_PagerControl1_rptPager_lnkPager_3">
                                                                        </td>
                                                                        <td>
                                                                            <input type="submit" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$PagerControl1$rptPager$ctl04$lnkPager"
                                                                                value="5" id="ContentPlaceHolder1_ucFirm_Page1_PagerControl1_rptPager_lnkPager_4">
                                                                        </td>
                                                                        <td>
                                                                            <input type="submit" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$PagerControl1$rptPager$ctl05$lnkPager"
                                                                                value="6" id="ContentPlaceHolder1_ucFirm_Page1_PagerControl1_rptPager_lnkPager_5">
                                                                        </td>
                                                                        <td>
                                                                            <input type="submit" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$PagerControl1$rptPager$ctl06$lnkPager"
                                                                                value="7" id="ContentPlaceHolder1_ucFirm_Page1_PagerControl1_rptPager_lnkPager_6">
                                                                        </td>
                                                                        <td>
                                                                            <input type="submit" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$PagerControl1$lnkPagerLast"
                                                                                value=">>" id="ContentPlaceHolder1_ucFirm_Page1_PagerControl1_lnkPagerLast">
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </dl>
                                </div>
                                <!------>
                                <div class="buttonConttrol" style="text-align: center;">
                                    <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$btnFirst" id="ContentPlaceHolder1_ucFirm_Page1_btnFirst"
                                        title="First" rowindex="" src="../../App_Themes/Theme1/images/button-first.png">
                                    <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$btnPrev" id="ContentPlaceHolder1_ucFirm_Page1_btnPrev"
                                        title="Previous" rowindex="" src="../../App_Themes/Theme1/images/button-prev.png">
                                    <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$btnNext" id="ContentPlaceHolder1_ucFirm_Page1_btnNext"
                                        title="Next" rowindex="" src="../../App_Themes/Theme1/images/button-next.png">
                                    <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$btnLast" id="ContentPlaceHolder1_ucFirm_Page1_btnLast"
                                        title="Last" rowindex="" src="../../App_Themes/Theme1/images/button-last.png">
                                </div>
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$hidEditIndex" id="ContentPlaceHolder1_ucFirm_Page1_hidEditIndex">
                            </div>--%>
                            <asp:HiddenField ID="hidEditIndex" runat="server" />
                            <!------#############################################-left member list end #####################################################---------------->
                        </div>
                        <div class="primary-column span-24" style="width: 600px;">
                            <div class="clear">
                            </div>
                            <div>
                            </div>
                            <div class="clear">
                            </div>
                            <div id="dashboard-panels">
                                <div class="relative-box ">
                                    <div class="dynamic-panels ui-sortable" style="">
                                        <div id="Cashflow" class=" clearfix">
                                            <div class="gridUpperDiv">
                                                <a class="down_arrow"></a>
                                                <%--<span class="fltlt">
                                                    <asp:LinkButton ID="lnkArchive" CssClass="button small gray narrow pill-left" runat="server">Archive</asp:LinkButton>
                                                    <asp:LinkButton ID="lnkDelete" runat="server" CssClass="button small gray narrow pill-right">Delete</asp:LinkButton>
                                                </span>--%>
                                                <div class="fltrt rightIcon">
                                                    <%--<asp:Button ID="btnNewMember" CssClass="button medium save green  pdng10" runat="server"
                                                        Text="New Member" />--%>
                                                    <a title="find" href="javascript:void()" onclick="javascript:showDivSlide('.userHide');hideDivSlide('.searchBbutton');">
                                                        <img src="../../App_Themes/Theme1/images/search_icon.png" /></a>
                                                    <%--<asp:ImageButton ID="btnPrint" runat="server" ImageUrl="~/App_Themes/Theme1/images/Printer_Blue.png"
                                        OnClick="btnPrint_Click" />--%>
                                                    <%--<a title="Print" href="javascript:void()" onclick="javascript:toggleDiv('.divPrint');">
                                                        <img src="../../App_Themes/Theme1/images/Printer_Blue.png" /></a>--%>
                                                    <div id="DivPrint" runat="server" style="display: none" class="divPrint">
                                                        <asp:UpdatePanel ID="upPrint" runat="server">
                                                            <ContentTemplate>
                                                                <h4 class="fltlft">Print
                                                                </h4>
                                                                <span class="close fltrt"></span>
                                                                <div class="clear">
                                                                </div>
                                                                <asp:Button ID="btnApplicantsResume" Width="120px" runat="server" Text="Print Resume"
                                                                    CssClass="buttonGreen small" />
                                                                <br />
                                                                <%--<asp:Button ID="btnPocketCard" Width="120px" runat="server" Text="Print Pocket Card"
                                                    CssClass="buttonGreen small" OnClick="btnPocketCard_Click" />--%>
                                                                <asp:HyperLink ID="hlPrintPocketCard" runat="server" Text="Print Pocket Card" CssClass="buttonGreen small"
                                                                    NavigateUrl="~/UI/DownloadPocketCard.aspx?MemberId=" Target="_blank"></asp:HyperLink>
                                                                <br />
                                                                <asp:Button ID="btnEmailPocketCard" Width="120px" runat="server" Text="Email Pocket Card"
                                                                    CssClass="buttonGreen small" />
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </div>
                                                    <%--<a title="comment" href="javascript:void()" onclick="showDiv('.popComment');">
                                                        <img src="../../App_Themes/Theme1/images/comment_icon.png" /></a>--%>
                                                </div>
                                            </div>
                                            <asp:TabContainer ID="TabContainer1" runat="server" CssClass="fancy fancy-green"
                                                ActiveTabIndex="0">
                                                <asp:TabPanel ID="tbpnlEstablishment" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        School
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <uc4:ucEstablishment ID="ucEstablishment1" runat="server" />
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlBranches" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        Branches
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <uc1:ucBranches ID="ucBranches1" runat="server" />
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlInpection" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        Inspection
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                        <uc3:ucInspection ID="ucInspection1" runat="server" />
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                                <asp:TabPanel ID="tbpnlContact" Enabled="true" runat="server">
                                                    <HeaderTemplate>
                                                        Contact
                                                    </HeaderTemplate>
                                                    <ContentTemplate>
                                                    </ContentTemplate>
                                                </asp:TabPanel>
                                            </asp:TabContainer>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="main" style="position: relative">
                    <asp:Panel ID="pnlMainPanel" runat="server" Visible="false">
                        <div class="container primary-content ">
                            <div class="span-180 span-13 home-sidebar append-1">
                                <div class="rounded-container peel-shadows" style="display:none;">
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
                                <div class="rounded-container peel-shadows">
                                <div class="content clearfix">
                                    <h4 style="margin: 0px 0px;">Schools List
                                    </h4>
                                    <div>
                                        <p style="word-spacing: 8px; font-size: 14px; text-align: center; font-family: aldhabi; line-height: 21px;">
                                            <a href="javascript:void(0)">A</a> <a href="javascript:void(0)">B</a> <a href="javascript:void(0)">C</a> <a href="javascript:void(0)">D</a> <a href="javascript:void(0)">E</a>
                                            <a href="javascript:void(0)">G</a> <a href="javascript:void(0)">H</a> <a href="javascript:void(0)">I</a> <a href="javascript:void(0)">J</a> <a href="javascript:void(0)">K</a>
                                            <a href="javascript:void(0)">L</a> <a href="javascript:void(0)">M</a> <a href="javascript:void(0)">N</a> <a href="javascript:void(0)">O</a> <a href="javascript:void(0)">P</a>
                                            <a href="javascript:void(0)">Q</a> <a href="javascript:void(0)">R</a> <a href="javascript:void(0)">S</a> <a href="javascript:void(0)">T</a> <a href="javascript:void(0)">U</a>
                                            <a href="javascript:void(0)">V</a> <a href="javascript:void(0)">W</a> <a href="javascript:void(0)">X</a> <a href="javascript:void(0)">Y</a> <a href="javascript:void(0)">Z</a>
                                        </p>
                                    </div>
                                    <div class="clear">
                                    </div>
                                    <!------>
                                    <dl id="Dl1" class="activity-list">
                                        <div id="recent-activity" class="activity-list">
                                            <div>
                                                <table class="index grid" cellspacing="0" cellpadding="4" id="gvCompanyList" style="color: #333333; border-collapse: collapse;">
                                                    <tbody>
                                                        <tr>
                                                            <th scope="col">School
                                                            </th>
                                                            <th scope="col">Action
                                                            </th>
                                                        </tr>
                                                        <tr style="background-color: White;">
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21027 - ebsc">eduloka</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl05$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="3" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21026 - No Company">No Company</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl06$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="4" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr style="background-color: White;">
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21025 - ROGER C. BANGHART, CONSULTANT">ROGER C.
                                                                    BANGHART, CONSULTANT</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl07$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="5" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21024 - BUREAU OF LAND MANAGEMENT - NV, RENO">BUREAU
                                                                    OF LAND MANAGEMENT - NV, RENO</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl08$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="6" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr style="background-color: White;">
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21023 - DIRECTIONAL PROJECT SUPPORT, INC.">DIRECTIONAL
                                                                    PROJECT SUPPORT, INC.</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl09$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="7" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21022 - U.S. FOREST SERVICE - CA, VALLEJO">U.S.
                                                                    FOREST SERVICE - CA, VALLEJO</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl10$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="8" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr style="background-color: White;">
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21021 - WJA DESIGN COLLABORATIVE PLLC">WJA DESIGN
                                                                    COLLABORATIVE PLLC</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl11$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="9" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21020 - MOHLIN &amp; COMPANY">MOHLIN &amp; COMPANY</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl12$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="10" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr style="background-color: White;">
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21019 - MSC ENGINEERS, INC.">MSC ENGINEERS, INC.</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl13$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="11" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21018 - Applied Pavement Technology">Applied Pavement
                                                                    Technology</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl14$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="12" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr style="background-color: White;">
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21017 - JEHN ENGINEERING - CO">JEHN ENGINEERING
                                                                    - CO</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl15$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="13" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21016 - ALTA Land Survey">ALTA Land Survey</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl16$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="14" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr style="background-color: White;">
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21015 - STAR CONSULTING OF AZ, INC.">STAR CONSULTING
                                                                    OF AZ, INC.</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl17$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="15" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21014 - STAR CONSULTING OF AZ, INC.">STAR CONSULTING
                                                                    OF AZ, INC.</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl18$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="16" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr style="background-color: White;">
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21013 - LUNDSTROM ENGINEERING &amp; SURVEYING, INC.">LUNDSTROM ENGINEERING &amp; SURVEYING, INC...</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl19$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="17" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21012 - NUCLEAR SAFETY ASSOCIATES - TN">NUCLEAR
                                                                    SAFETY ASSOCIATES - TN</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl20$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="18" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                        <tr style="background-color: White;">
                                                            <td style="width: 250px;">
                                                                <span style="display: block" title="21011 - KAZAKHMYS AKYOGAY LLC">KAZAKHMYS AKYOGAY
                                                                    LLC</span>
                                                            </td>
                                                            <td align="center" style="width: 40px;">
                                                                <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$gvCompanyList$ctl21$imgBtnEdit"
                                                                    id="imgBtnEdit" rowindex="19" src="../../App_Themes/Theme1/images/edit.png">
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <style>
                                                .disablePager {
                                                    color: #fff !important;
                                                    background: #6370CC !important;
                                                    text-decoration: none;
                                                }
                                            </style>
                                            <table>
                                                <tbody>
                                                    <tr class="pager_style">
                                                        <td colspan="4">
                                                            <table>
                                                                <tbody>
                                                                    <tr>
                                                                        <td></td>
                                                                        <td>
                                                                            <input type="submit" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$PagerControl1$rptPager$ctl00$lnkPager"
                                                                                value="1" id="ContentPlaceHolder1_ucFirm_Page1_PagerControl1_rptPager_lnkPager_0"
                                                                                disabled="disabled" class="aspNetDisabled disablePager">
                                                                        </td>
                                                                        <td>
                                                                            <input type="submit" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$PagerControl1$rptPager$ctl01$lnkPager"
                                                                                value="2" id="ContentPlaceHolder1_ucFirm_Page1_PagerControl1_rptPager_lnkPager_1">
                                                                        </td>
                                                                        <td>
                                                                            <input type="submit" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$PagerControl1$rptPager$ctl02$lnkPager"
                                                                                value="3" id="ContentPlaceHolder1_ucFirm_Page1_PagerControl1_rptPager_lnkPager_2">
                                                                        </td>
                                                                        <td>
                                                                            <input type="submit" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$PagerControl1$rptPager$ctl03$lnkPager"
                                                                                value="4" id="ContentPlaceHolder1_ucFirm_Page1_PagerControl1_rptPager_lnkPager_3">
                                                                        </td>
                                                                        <td>
                                                                            <input type="submit" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$PagerControl1$rptPager$ctl04$lnkPager"
                                                                                value="5" id="ContentPlaceHolder1_ucFirm_Page1_PagerControl1_rptPager_lnkPager_4">
                                                                        </td>
                                                                        <td>
                                                                            <input type="submit" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$PagerControl1$rptPager$ctl05$lnkPager"
                                                                                value="6" id="ContentPlaceHolder1_ucFirm_Page1_PagerControl1_rptPager_lnkPager_5">
                                                                        </td>
                                                                        <td>
                                                                            <input type="submit" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$PagerControl1$rptPager$ctl06$lnkPager"
                                                                                value="7" id="ContentPlaceHolder1_ucFirm_Page1_PagerControl1_rptPager_lnkPager_6">
                                                                        </td>
                                                                        <td>
                                                                            <input type="submit" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$PagerControl1$lnkPagerLast"
                                                                                value=">>" id="ContentPlaceHolder1_ucFirm_Page1_PagerControl1_lnkPagerLast">
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </dl>
                                </div>
                                <!------>
                                <div class="buttonConttrol" style="text-align: center;">
                                    <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$btnFirst" id="ContentPlaceHolder1_ucFirm_Page1_btnFirst"
                                        title="First" rowindex="" src="../../App_Themes/Theme1/images/button-first.png">
                                    <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$btnPrev" id="ContentPlaceHolder1_ucFirm_Page1_btnPrev"
                                        title="Previous" rowindex="" src="../../App_Themes/Theme1/images/button-prev.png">
                                    <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$btnNext" id="ContentPlaceHolder1_ucFirm_Page1_btnNext"
                                        title="Next" rowindex="" src="../../App_Themes/Theme1/images/button-next.png">
                                    <input type="image" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$btnLast" id="ContentPlaceHolder1_ucFirm_Page1_btnLast"
                                        title="Last" rowindex="" src="../../App_Themes/Theme1/images/button-last.png">
                                </div>
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$ucFirm_Page1$hidEditIndex" id="ContentPlaceHolder1_ucFirm_Page1_hidEditIndex">
                            </div>
                                <asp:HiddenField ID="HiddenField1" runat="server" />
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
                                                        <div id="Div1" runat="server" style="display: none" class="divPrint">
                                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                <ContentTemplate>
                                                                    <h4 class="fltlft">Print
                                                                    </h4>
                                                                    <span class="close fltrt" onclick="javascript:toggleDiv('.divPrint');"></span>
                                                                    <div class="clear">
                                                                    </div>
                                                                    <asp:Button ID="Button1" Width="125px" runat="server" Text="Print Resume"
                                                                        CssClass="buttonGreen small" Style="display: none;" />
                                                                    <div class="clear">
                                                                        &nbsp;
                                                                    </div>
                                                                    <asp:Button ID="Button2" Width="125px" runat="server" Text="Print Board Packet" CssClass="buttonGreen small" />
                                                                    <div class="clear">
                                                                        &nbsp;
                                                                    </div>
                                                                    <asp:Button ID="Button3" Width="125px" runat="server" Text="Email Pocket Card"
                                                                        CssClass="buttonGreen small" Style="display: none;" />
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </div>
                                                        <a title="comment" href="javascript:void(null);" onclick="showDiv('.popComment');">
                                                            <img src="../../App_Themes/Theme1/images/comment_icon.png" /></a>
                                                    </div>
                                                </div>

                                                <div>
                                                    <h4 class="" style="font-size: 16px; font-weight: bold; padding: 10px 13px;">School Details 
                                                        <span class="fltrt"></span>
                                                    </h4>
                                                </div>

                                                <div id="divButtonList" class="tabBtnBorder">
                                                    <asp:Button ID="btnGeneral" Enabled="true" runat="server" Text="Instructions" OnClick="btnGeneral_Click" CssClass="tab_activeBtn" />
                                                    <asp:Button ID="btnPersonal" Enabled="false" runat="server" Text="School Information" OnClick="btnPersonal_Click" CssClass="tabBtn" />
                                                    <asp:Button ID="btnAddress" Enabled="false" runat="server" Text="School Eligibility" OnClick="btnAddress_Click" CssClass="tabBtn" />
                                                    <asp:Button ID="btnFinancial" Enabled="false" runat="server" Text="About the School" OnClick="btnFinancial_Click" CssClass="tabBtn" />
                                                    <asp:Button ID="btnName" Enabled="false" runat="server" Text="Transcript" OnClick="btnName_Click" CssClass="tabBtn"/>
                                                    <asp:Button ID="btnEducation" Enabled="false" runat="server" Text="Enrollment Agreement" OnClick="btnEducation_Click" CssClass="tabBtn"/>
                                                    <asp:Button ID="btnEmployment" Enabled="false" runat="server" Text="Course Catalog" OnClick="btnEmployment_Click" CssClass="tabBtn"/>
                                                    <asp:Button ID="btnApplicationData" Enabled="false" runat="server" Text="Curriculum" OnClick="btnApplicationData_Click" CssClass="tabBtn"/>
                                                    <asp:Button ID="btnCertificate" Enabled="false" runat="server" Text="Staff" OnClick="btnCertificate_Click" CssClass="tabBtn"/>


                                                   <%--<asp:Button ID="btnPSD" Enabled="false" runat="server" Text="Enrollment Agreement" OnClick="btnPSD_Click" CssClass="tabBtn"/>
                                                    <asp:Button ID="btnDOJFBI" Enabled="false" runat="server" Text="Course Catalog" OnClick="btnDOJFBI_Click" CssClass="tabBtn"/>
                                                    <asp:Button ID="btnDeficiency" Enabled="false" runat="server" Text="Program Hour Requirement" OnClick="btnDeficiency_Click" CssClass="tabBtn"/>
                                                    <asp:Button ID="btnNotes" Enabled="false" runat="server" Text="Fees" OnClick="btnNotes_Click" CssClass="tabBtn"/>
                                                  --%>  
                                                   <%-- <asp:Button ID="btnLog" Enabled="false" runat="server" Text="Log" OnClick="btnLog_Click" CssClass="tabBtn"/>
                                                    <asp:Button ID="btnCorrespondence" Enabled="false" runat="server" Text="Correspondence" OnClick="btnCorrespondence_Click" CssClass="tabBtn"/>
                                                    <asp:Button ID="btnMiscDocument" Enabled="false" runat="server" Text="Misc Document" OnClick="btnMiscDocument_Click" CssClass="tabBtn"/>
                                                    <asp:Button ID="btnInvestigativeDoc" Enabled="false" runat="server" Text="Investigative Doc" OnClick="btnInvestigativeDoc_Click" CssClass="tabBtn"/>
                                                    <asp:Button ID="btnVerification" Enabled="false" runat="server" Text="Verification" OnClick="btnVerification_Click" CssClass="tabBtn"/>
                                                    <asp:Button ID="btnAuthorization" Enabled="false" runat="server" Text="Authorization" OnClick="btnAuthorization_Click" CssClass="tabBtn"/>
                                                    <asp:Button ID="btnViewLists" Enabled="false" runat="server" Text="View Lists" OnClick="btnViewLists_Click" CssClass="tabBtn"/>
                                                    <asp:Button ID="btnCityReportsSearches" Enabled="false" runat="server" Text="City/Reports/Searches" OnClick="btnCityReportsSearches_Click" CssClass="tabBtn"/>
                                                    <asp:Button ID="btnImport" Enabled="false" runat="server" Text="Import" OnClick="btnImport_Click" CssClass="tabBtn"/>--%>

                                                </div>

                                                <div class="demo">
                                                    <div>
                                                        <h4 class="" style="font-size: 16px; font-weight: bold; padding: 10px 13px;">
                                                            <span class="fltrt">
                                                                <asp:ImageButton ID="imgbtnOpenDetail" ToolTip="Hide" runat="server" 
                                                                    ImageUrl="~/App_Themes/Theme1/Expandables/minus.png" OnClick="imgbtnOpenDetail_Click" />
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
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                    <asp:Panel ID="pnlIndividuaDetail" runat="server" Visible="true">
                                                        <div class="IndividuaDetail">
                                                            <div class="divindv">
                                                                <div class="brandytest">
                                                                    <table class="IndividualTbl">
                                                                        <tr>
                                                                            <td colspan="2"><b>School Details</b></td>
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
                                                                            <td>ID # :
                                                                            </td>
                                                                            <td>PSD1
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Mailing Address :
                                                                            </td>
                                                                            <td>
                                                                                <asp:Literal ID="ltraddress" runat="server"></asp:Literal>
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
                                                                            <td>School@inlumon.com
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                    <hr />
                                                                    <table class="IndividualTbl" style="display:none;">
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
                                                                <div class="incompletetaskDiv">
                                                                    <table class="IndividualTbl">
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
                                                            </div>
                                                        </div>
                                                    </asp:Panel>
                                                </div>

                                                <div id="divPanelList" style="border: 1px solid rgb(222, 222, 222); margin-top: 10px;">
                                                    <asp:Panel ID="pnlGeneralInfo" Enabled="true"  Visible="true"  runat="server">

                                                        
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

                                                                    <b>1. Have you read ALL of the                                                                         
                                                                        <%--<asp:LinkButton ID="lnkQues1" CssClass="hyperlink" runat="server" OnClick="lnkQues1_Click">
                                                                            Application Instructions
                                                                        </asp:LinkButton>--%>
                                                                        <a target="_blank" href="https://www.camtc.org/" onclick="changeItemState()" class="hyperlink">Application Instructions
                                                                        </a>
                                                                        ?
                                                                    </b>

                                                                    <br />
                                                                    <p>
                                                                        &nbsp;&nbsp;PLEASE READ the Policies and Procedures for Approval of Schools before continuing the 
                                                                        application process. Providing incomplete or misleading information to the California Massage 
                                                                        Therapy Council ("CAMTC") may result in processing delays, denial of your application for school 
                                                                        approval, disciplinary action, revocation of school approval, or additional processing fees.
                                                                    </p>
                                                                </td>
                                                                <td></td>
                                                                <td align="left" style="width: 110px;" class="cursorpointer">
                                                                    <p>
                                                                        <asp:RadioButtonList ID="rblQuestionEdit1" Enabled="false" AutoPostBack="true" runat="server"
                                                                            RepeatDirection="Horizontal" OnSelectedIndexChanged="rblQuestionEdit1_OnSelectedIndexChanged">
                                                                            <asp:ListItem Value="1">Yes</asp:ListItem>
                                                                            <asp:ListItem Value="0">No</asp:ListItem>
                                                                        </asp:RadioButtonList>
                                                                    </p>
                                                                </td>
                                                            </tr>

                                                            <tr>
                                                                <td colspan="2">
                                                                    <br />
                                                                    <b>
                                                                        <p style="font-size: 13px;">
                                                                            (The Yes and No button is enabled only after you have clicked on the Application Instruction link above and read the instructions.) 
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

                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlPersonalInfo" Enabled="true"  Visible="false" runat="server">
                                                        
                                                        
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
                                                                            <label class="input-label">
                                                                                School Telephone :
                                                                            </label>
                                                                        </td>
                                                                        <td style="width: 180px;">
                                                                            <asp:TextBox ID="txtSchoolTel" runat="server" Style="width: 170px;" CssClass="phone_us"
                                                                                autocomplete="off"
                                                                                MaxLength="14"></asp:TextBox>
                                                                        </td>
                                                                        <td colspan="6">
                                                                            <asp:CheckBox ID="CheckBox57" Style="margin-left:10px;" Text="Mobile" runat="server" /></td>
                                                                        
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
                                                                        <asp:TextBox ID="txtSclInfoPrevSclName" Style="width: 308px;" runat="server" CssClass="tooltip OnlyAlphabet inputTextbox NewAppPersonalTxtbx"
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
                                                                     Text="Verify Address" />
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
                                                            <td class="txtalgnrgt" style="width: 124px;">
                                                                <label class="input-label required">
                                                                    Primary Number :
                                                                </label>
                                                            </td>
                                                            <td style="width: 151px;">
                                                                <asp:TextBox ID="txtDirectorTel" runat="server" CssClass="phone_us" autocomplete="off"
                                                                    Width="170px" MaxLength="14"></asp:TextBox>

                                                            </td>
                                                            <td style="text-align: left;">
                                                                <asp:CheckBox ID="CheckBox15" runat="server" Text="Mobile" /></td>
                                                            <tr>
                                                                <td class="txtalgnrgt" style="width: 124px;">
                                                                    <label class="input-label required">
                                                                        Secondary Number :
                                                                    </label>
                                                                </td>
                                                                <td style="width: 151px;">
                                                                    <asp:TextBox ID="TextBox142" runat="server" CssClass="phone_us" autocomplete="off"
                                                                        Width="170px" MaxLength="14"></asp:TextBox>

                                                                </td>
                                                                <td style="text-align: left;">
                                                                    <asp:CheckBox ID="CheckBox16" runat="server" Text="Mobile" /></td>
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

                                                    <asp:Panel ID="pnlAddress" Enabled="true"  Visible="false" runat="server">
                                                        
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
                                                                        <asp:DropDownList ID="ddlAddApprovalAgency" style="width: 144px ! important;" runat="server" CssClass="inputTextbox">
                                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                            <asp:ListItem Value="A1">Agency 1</asp:ListItem>
                                                                            <asp:ListItem Value="A2">Agency 2</asp:ListItem>
                                                                            <asp:ListItem Value="A3">Agency 3</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </td>

                                                                    <td class="txtalgnrgt tdwidth2">
                                                                        <label class="input-label required">
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
                                                                <tr>
                                                                                            <td colspan="6" style="padding: 0px 10px !important;">
                                                                                        <hr>
                                                                                    </td>

                                                                                        </tr>

                                                                                        <tr>
                                                                                            <td class="txtalgnrgt">
                                                                                                <label class="input-label required">
                                                                                                   Document Name :
                                                                                                </label>
                                                                                            </td>   
                                                                                            <td>
                                                                                                <asp:TextBox ID="TextBox434" runat="server"></asp:TextBox>
                                                                                            </td>
                                                                                            <td class="txtalgnrgt">
                                                                                                <label class="input-label required">
                                                                                                    Document Type :
                                                                                                </label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:DropDownList ID="DropDownList25" style="width: 144px ! important;" runat="server" CssClass="inputTextbox">
                                                                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                                                    <asp:ListItem Value="1">Driver License</asp:ListItem>
                                                                                                    <asp:ListItem Value="2">Passport</asp:ListItem>
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
                                                                                                <asp:FileUpload ID="FileUpload76" runat="server" />
                                                                                            </td>
                                                                                            <td colspan="3">
                                                                                                <asp:Button ID="Button83" Style="margin-left:10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                                            <td></td>
                                                                                        </tr>

                                                            </table>
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
                                                                    <asp:CheckBox ID="CheckBox13" runat="server" Text="Massage program(s) provides an organized plan of study of massage and related subjects for a minimum of 500 supervised clock hours (or credit unit equivalent) containing, at minimum,
                                                                     64 hours of anatomy and physiology; 13 hours of contraindications; 
                                                                    5 hours of health and hygiene; and 18 hours of business and ethics. The massage program(s) shall also incorporate appropriate school assessment of student 
knowledge and skills. CAMTC does not accept online or distance learning hours, including but not limited to, externships, homework, and self-study or credits through challenge examinations, achievement tests, or experiential learning." />
                                                                </td>
                                                            </tr>
                                                        </table>

                                                        <table>
                                                            <tr style="height: 15px; width: 100%;"></tr>
                                                            <tr>

                                                                <td>

                                                                    <b>Please list all massage programs that meet ALL of the above requirements and for which you are seeking
                                                                        approval. Please DO NOT list programs that are recreational, avocational, or continuing education, or do not meet ALL
                                                                        of the above requirements.</b>
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
                                                                                                    <label class="input-label">
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
                                                                            <asp:Label ID="lblMassageProgrameName" runat="server" Text="Program Name1"></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Total Number of Program Hours">
                                                                        <ItemStyle />
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblProgramHours" runat="server" Text="20"></asp:Label>
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
                                                            <asp:Button ID="btnChildSupp" CssClass="buttonGreen medium" runat="server" Text="Save"
                                                                CausesValidation="true" OnClick="btnChildSupp_Click" />
                                                            <asp:LinkButton ID="lnkCancelCSD" CssClass="secondary medium bottom buttonalignment"
                                                                runat="server" OnClick="lnkCancelCSD_Click">Cancel</asp:LinkButton></span>
                                                    </div>
                                                </div>









                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlFinancial" Enabled="true" Visible="false"  runat="server">
                                                        
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
                                                                                Estimated Graduates for CURRENT Calendar Year :
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
                                                                                Graduates for PREVIOUS Calendar Year :
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
                                                                                                <asp:DropDownList ID="ddlOwnAboutBusinessDoc" runat="server" CssClass="inputTextbox">
                                                                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                                                    <asp:ListItem Value="1">Property Tax Bill</asp:ListItem>
                                                                                                    <asp:ListItem Value="2">Lease Agreement</asp:ListItem>
                                                                                                    <asp:ListItem Value="3">Local Business License</asp:ListItem>
                                                                                                    <asp:ListItem Value="4">Fictitious Business Name (DBA) Filing</asp:ListItem>
                                                                                                    <asp:ListItem Value="5">Other (specify)</asp:ListItem>
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
                                                                                                <asp:FileUpload ID="DocFUAboutBusinessDoc" runat="server" />
                                                                                            </td>
                                                                                            <td colspan="3">
                                                                                                <asp:Button ID="btnUploadAboutBusinessDoc" Style="margin-left:10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
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
                                                                                                        <asp:TextBox ID="TextBox2" runat="server" style= "width:518px !important;" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                    </td>

                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>

                                                                                    <tr>
                                                                                        <td colspan="6">
                                                                                            <table class="tblApplReqForm5">
                                                                                                <tr style="margin-left: -134px; margin-bottom: 10px; float: left;">
                                                                                                    <td class="txtalgnrgt" style="width: 245px;">
                                                                                                        <label class="input-label required">
                                                                                                            Primary Contact First Name :
                                                                                                        </label>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:TextBox ID="TextBox65" Style="width: 170px !important;" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                    </td>
                                                                                                    <td class="txtalgnrgt" style="width: 170px;">
                                                                                                        <label class="input-label required">
                                                                                                            Primary Contact Last Name :
                                                                                                        </label>
                                                                                                    </td>
                                                                                                    <td >
                                                                                                        <asp:TextBox ID="TextBox66" runat="server" style="width: 170px !important;" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
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
                                                                                        <td colspan="5">
                                                                                            <asp:TextBox ID="TextBox6" runat="server" Width="518px" CssClass="calWidth us_street"
                                                                                                MaxLength="500"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td></td>
                                                                                        <td colspan="5">
                                                                                            <asp:TextBox ID="TextBox7" runat="server" Width="518px" style="margin-top: 10px; margin-bottom: 10px;" CssClass="calWidth us_street"
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
                                                                                            <asp:TextBox ID="TextBox8" runat="server" Width="133px" CssClass="tooltip OnlyAlphabet calWidth"
                                                                                                MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                        </td>
                                                                                        <td class="txtalgnrgt" style="width: 52px;">
                                                                                            <label class="input-label required">
                                                                                                State :
                                                                                            </label>
                                                                                        </td>
                                                                                        <td style="width: 140px;">
                                                                                            <asp:DropDownList ID="DropDownList1" runat="server"  style="width:105px !important;" CssClass="inputTextbox"
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
                                                                                                Width="125px" CssClass="tooltip zip_us calWidth" MaxLength="500" title="Enter valid Zip eg: XXXXX-XXXX or XXXXX"></asp:TextBox>
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
                                                                                                        <asp:TextBox ID="TextBox11" runat="server"  style="width: 168px !important;" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td class="txtalgnrgt">
                                                                                                        <label class="input-label required">
                                                                                                            Email :
                                                                                                        </label>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:TextBox ID="TextBox12" style="width: 88% !important;" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"></asp:TextBox>
                                                                                                    </td>
                                                                                                    <td class="txtalgnrgt"></td>
                                                                                                    <td>
                                                                                                        <div id="div26" runat="server" style="width: 100%; float: right;">
                                                                                                            <span class="fltrt">
                                                                                                                <asp:Button ID="btnverifyaddress" CssClass="btn-success btn-xs" runat="server"
                                                                                                                     Text="Verify Address" />
                                                                                                            </span>
                                                                                                        </div>
                                                                                                    </td>
                                                                                                </tr>

                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
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
                                                                                                                                    <asp:TextBox ID="txtRelatedSchoolBusinessContactEdit" Style="width: 146px !important;" runat="server"
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
                                                                                                                            Width="458px" CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td></td>
                                                                                                                    <td colspan="5">
                                                                                                                        <asp:TextBox ID="txtRelatedSchoolStreet2Edit" runat="server" Width="458px" CssClass="calWidth us_street"
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
                                                                                                                        <asp:DropDownList ID="ddlRelatedSchoolStateEdit" runat="server" style="width:105px !important;" CssClass="inputTextbox"
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
                                                                                                                            Width="83px" CssClass="tooltip zip_us calWidth" MaxLength="500" title="Enter valid Zip eg: XXXXX-XXXX or XXXXX"></asp:TextBox>
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
                                                                                                                                <td class="txtalgnrgt" style="width: 178px;">
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
                                                                             <p style="padding-left: 50px; width: 90%;">If this school offers educational program(s) other than massage, please list :</p>
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
                                                                                        <asp:TextBox ID="txtOtherProgramNameEdit" Style="width: 295px !important;" runat="server" CssClass="tooltip OnlyAlphabet inputTextbox NewAppPersonalTxtbx"
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

                                                            <div class="divLicenseInfo" id="dvAboutFacilityUpSection" runat="server" style="margin-top: 30px;">

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

                                                            <div class="divLicenseInfo" id="dvAboutAdvertisingUpSection" runat="server" style="margin-top: 30px;">

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
                                                                    <asp:Button ID="btnLicInfoNext" CssClass="buttonGreen medium" runat="server" Text="Save"
                                                                        CausesValidation="true" />
                                                                    <asp:LinkButton ID="lnkCancelLiceInfo" CssClass="secondary medium bottom buttonalignment"
                                                                        runat="server" >Cancel</asp:LinkButton></span>
                                                            </div>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                </div>   


                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlName" Enabled="true"  Visible="false" runat="server">
                                                        
                                                        <div>
                                                    <div class="sectionDiv">
                                                        <span>Transcript Checklist</span>
                                                    </div>
                                                </div>
                                                <fieldset class="flsNewApplReqForm flsCharacterReferences" style="text-align: justify;">
                                                    <b>1. </b>Please initial that you have included ALL of the following with the Application for School Approval. 
                                                        
                                                        
                                                        <table class="tblApplReqForm5" style="margin-top: 15px;">
                                                            <tr>

                                                                <td style="padding-left: 0px; line-height: 20px; text-align: justify;">
                                                                    <b>2. </b>Providing incomplete or misleading information to the California Massage Therapy Council ("CAMTC") may result in processing delays, denial of your application, disciplinary action, revocation of your approval, or additional processing fees. 

                                                                </td>

                                                            </tr>

                                                        </table>
                                                    <table class="tableborder_trcschk" style="margin-top: 15px;">
                                                        <tr>
                                                            <td style="width: 60px; text-align: center;"><b>Initials</b></td>
                                                            <td><b>Required Items</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;vertical-align: baseline;">
                                                                <asp:CheckBox ID="chkTranscriptChecklistRequired" runat="server" /></td>
                                                            <td>Sample transcript and massage program addendum, if any, with no additional markings. Per CAMTC’s
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
                                                    


                                                </fieldset>
                                                <div class="readinstrucn">
                                                    <asp:CheckBox ID="chkManTransChecklist" runat="server" Text="I have read the instructions." />
                                                </div>
                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                    <div style="float: left;">
                                                    </div>
                                                    <span class="fltrt">
                                                        <asp:Button ID="btnNextTransChkList" ValidationGroup="VGAffidavit" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnNextTransChkList_Click" />
                                                        <asp:Button ID="Button21" CssClass="buttonGreen medium" runat="server"
                                                            Visible="false" Text="Submit & Pay" OnClick="btnSaveNextPayment_Click" ValidationGroup="VGApplicationWaiver"
                                                            CausesValidation="true" />
                                                        <asp:LinkButton ID="LinkButton4" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server">Cancel</asp:LinkButton></span>
                                                </div>

                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlEducation" Enabled="true" Visible="false"  runat="server">
                                                       

                                                        <div>
                                                    <div class="sectionDiv">
                                                        <span>Enrollment Agreement Checklist</span>
                                                    </div>
                                                </div>
                                                <fieldset class="flsNewApplReqForm flsCharacterReferences" style="text-align: left;">
                                                    <b>1.</b> Please initial that you have included ALL of the following with the Application for School Approval. 
                                                        
                                                        
                                                        <table class="tblApplReqForm5" style="margin-top: 15px;">
                                                            <tr>

                                                                <td style="padding-left: 0px; line-height: 20px; text-align: left;">
                                                                    <b>2.</b> Providing incomplete or misleading information to the California Massage Therapy Council ("CAMTC") may result in processing delays, denial of your application, disciplinary action, revocation of your approval, or additional processing fees. 

                                                                </td>

                                                            </tr>

                                                        </table>
                                                    <table class="tableborder_trcschk" style="margin-top: 15px;">
                                                        <tr>
                                                            <td style="width: 60px; text-align: center;"><b>Initials</b></td>
                                                            <td><b>Required Items</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;vertical-align: baseline;">
                                                                <asp:CheckBox ID="CheckBox1" runat="server" />
                                                            </td>
                                                            <td>Blank enrollment agreement and massage program addendum, if any. Per CAMTC’s Policies and
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
Massage Therapy Council at: One Capitol Mall, Suite 320, Sacramento, CA 95814,
                                                                    <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion27');" class="hyperlink">www.camtc.org</a>, phone (916) 669-5336, or fax (916) 669-5337.”
                                                                </p>
                                                                </br>
                                                                <p>Note: Enrollment agreements from public colleges or universities of the California state higher education system, as defined in section 100850 of the Education Code, shall meet or exceed standards as determined by governing laws and regulations.</p>
                                                                <div class="dvuploadgrid">
                                                                    <div class="fltlft">
                                                                        <asp:Label ID="Label3" runat="server" Text="Document : "></asp:Label>
                                                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                                                    </div>
                                                                    <div class="dvuploadclass">
                                                                        <asp:Button ID="Button4" runat="server" class="buttonGreen small" Text="Upload Document" />
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
                                                    <asp:CheckBox ID="CheckBox2" runat="server" Text="I have read the instructions." />
                                                </div>
                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                    <div style="float: left;">
                                                    </div>
                                                    <span class="fltrt">
                                                        <asp:Button ID="Button5" ValidationGroup="VGAffidavit" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save & Next" CausesValidation="true" OnClick="btnNextEnrollChkList_Click" />
                                                        <asp:Button ID="Button6" CssClass="buttonGreen medium" runat="server"
                                                            Visible="false" Text="Submit & Pay" OnClick="btnSaveNextPayment_Click" ValidationGroup="VGApplicationWaiver"
                                                            CausesValidation="true" />
                                                        <asp:LinkButton ID="LinkButton1" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server">Cancel</asp:LinkButton></span>
                                                </div>


                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlAdvRoster" Enabled="true"  Visible="false" runat="server">
                                                       
                                                        <div>
                                                    <div class="sectionDiv">
                                                        <span>Course Catalog Checklist</span>
                                                    </div>
                                                </div>
                                                <fieldset class="flsNewApplReqForm flsCharacterReferences" style="text-align: left;">
                                                    <b>1.</b> Please initial that you have included ALL of the following with the Application for School Approval.  
                                                        
                                                        
                                                        <table class="tblApplReqForm5" style="margin-top: 15px;">
                                                            <tr>

                                                                <td style="padding-left: 0px; line-height: 20px; text-align: left;">
                                                                    <b>2.</b> Providing incomplete or misleading information to the California Massage Therapy Council ("CAMTC") may result in processing delays, denial of your application, disciplinary action, revocation of your approval, or additional processing fees. 

                                                                </td>

                                                            </tr>

                                                        </table>
                                                    <table class="tableborder_trcschk" style="margin-top: 15px;">
                                                        <tr>
                                                            <td style="width: 60px; text-align: center;"><b>Initials</b></td>
                                                            <td><b>Required Items</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;vertical-align: baseline;">
                                                                <asp:CheckBox ID="CheckBox3" runat="server" /></td>
                                                            <td>Current course catalog and massage program addendum, if any. Per CAMTC’s Policies and
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
                                                                    (9)	If the school admits foreign or ESL students, the catalog shall contain language proficiency information, including the level of English language proficiency required of students and the kind of documentation of proficiency that will be accepted; and whether English language services are provided and, if so, the nature of the service and its cost. The catalog shall also identify whether any instruction will occur in a language other than English and, if so, identify the other language(s) 

instruction will be provided in, the level of English proficiency required, and the kind of documentation of proficiency that will be accepted.

                                                                </p>
                                                                </br>
                                                                <p style="text-align: left;">
                                                                    (10) Publication of CAMTC’s Law related to unfair business practices as related to massage.
                                                                </p>
                                                                </br>
                                                                <p style="text-align: left;">
                                                                    (11) Clearly visible disclosure statement: “Attendance and/or graduation from a California Massage

Therapy Council approved school does not guarantee certification by CAMTC. Applicants for certification shall meet all requirements as listed in California Business and Professions Code section 4600 et. seq.”
                                                                </p>
                                                                </br>
                                                                <p>(12) Statement directing students to CAMTC for unanswered questions and for filing a complaint: “A student or any member of the public with questions that have not been satisfactorily answered by the school or who would like to file a complaint about this school may contact the California Massage Therapy Council at One Capitol Mall, Suite 320, Sacramento, CA 95814, <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion27');" class="hyperlink">www.camtc.org</a>, phone (916) 669-5336, or fax (916) 669-5337.”</p>


                                                                <div class="dvuploadgrid">
                                                                    <div class="fltlft">
                                                                        <asp:Label ID="Label4" runat="server" Text="Document : "></asp:Label>
                                                                        <asp:FileUpload ID="FileUpload2" runat="server" />

                                                                    </div>
                                                                    <div class="dvuploadclass">
                                                                        <asp:Button ID="Button7" runat="server" class="buttonGreen small" Text="Upload Document" />
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
                                                    <asp:CheckBox ID="CheckBox4" runat="server" Text="I have read the instructions." />
                                                </div>
                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                    <div style="float: left;">
                                                    </div>
                                                    <span class="fltrt">
                                                        <asp:Button ID="Button8" ValidationGroup="VGAffidavit" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save & Next" CausesValidation="true" OnClick="btnNextCourseChkList_Click" />
                                                        <asp:Button ID="Button9" CssClass="buttonGreen medium" runat="server"
                                                            Visible="false" Text="Submit & Pay" OnClick="btnSaveNextPayment_Click" ValidationGroup="VGApplicationWaiver"
                                                            CausesValidation="true" />
                                                        <asp:LinkButton ID="LinkButton2" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server">Cancel</asp:LinkButton></span>
                                                </div>
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlApplication" Enabled="true"  Visible="false" runat="server">
                                                        <div>
                                                    <div class="sectionDiv">
                                                        <span>Program Hour Requirement Worksheet</span>
                                                    </div>
                                                </div>
                                                <fieldset class="flsNewApplReqForm flsCharacterReferences">
                                                    <b>1.</b> Please indicate which classes or subjects fulfill the minimum core educational requirements as set forth in CAMTC’s Policies and Procedures for Approval of Schools. 
                                                        
                                                        <table class="tblApplReqForm5" style="margin-top: 15px;">
                                                            <tr>

                                                                <td style="padding-left: 0px; line-height: 20px; text-align: left;">
                                                                    <b>2.</b> Providing incomplete or misleading information to the California Massage Therapy Council ("CAMTC") may result in processing delays, denial of your application, disciplinary action, revocation of your approval, or additional processing fees. 
                                                                </td>

                                                            </tr>

                                                        </table>
                                                    <%--<table class="tableborder_trcschk" style="margin-top: 15px;">
                                                        <tr>
                                                            <td style="width: 160px; text-align: center;"><b>Required Course </br>of Study</b></td>
                                                            <td style="width: 120px; text-align: center;"><b>Minimum Required Course Hours</b></td>
                                                            <td style="text-align: center;"><b>Courses that Fulfill Requirements </b></br>
        Provide Course Title and Number of Hours Counting

towards Required Course Hours


                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Anatomy & Physiology</td>
                                                            <td>64</td>
                                                            <td></td>

                                                        </tr>
                                                        <tr>
                                                            <td>Contraindications</td>
                                                            <td>13</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Health & Hygiene</td>
                                                            <td>5</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Business & Ethics</td>
                                                            <td>18</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td><b>TOTAL</b></td>
                                                            <td><b>100</b></td>
                                                            <td></td>
                                                        </tr>
                                                    </table>
                                                    <table class="tableborder_trcschk" style="width: 100%;">
                                                        <tr>
                                                            <td></td>
                                                            <td>This Checklist.</td>
                                                        </tr>

                                                    </table>--%>

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

                                                    <%--<table style="margin-top: 15px; margin-bottom: 15px; width: 100%;">
                                                        <tr>
                                                            <td align="right">
                                                                <label class="input-label required">
                                                                    Signature :</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox167" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td align="right">
                                                                <label class="input-label required">
                                                                    Date :</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox168" CssClass="calender inputTextbox" placeholder="MM/DD/YYYY"
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
                                                                <asp:TextBox ID="TextBox169" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td align="right">
                                                                <label class="input-label required">
                                                                    Title :</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox170" Style="width: 168px;" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>--%>
                                                    <table class="tblApplReqForm5" style="margin-top: 15px;">
                                                            <tr>

                                                                <td style="padding-left: 0px; line-height: 20px; text-align: left;">
                                                                    <b>3.</b> What is the maximum number of clinic hours performed in the initial 500 hours of your program? <asp:TextBox style="width: 75px; margin-left: 10px;"  runat="server" ID="txtcarculam" ></asp:TextBox>

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
                                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnNextProHo_Click" />
                                                        <asp:Button ID="Button29" CssClass="buttonGreen medium" runat="server"
                                                            Visible="false" Text="Submit & Pay" OnClick="btnSaveNextPayment_Click" ValidationGroup="VGApplicationWaiver"
                                                            CausesValidation="true" />
                                                        <asp:LinkButton ID="LinkButton7" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server">Cancel</asp:LinkButton></span>
                                                </div>
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlCertificate" Enabled="true" Visible="false"  runat="server">
                                                        




                                                        <div>
                                                    <div class="sectionDiv">
                                                        <span>Background Checklist</span>
                                                    </div>
                                                </div>
                                                <fieldset class="flsNewApplReqForm flsCharacterReferences" style="text-align: justify;">
                                                    <b>1.</b>&nbsp;ALL owners, administrators, and faculty required to submit an Owner Worksheet, Administrator Qualification Form, or Instructor Qualification Form are required to a submit a background check. (Current CAMTC certificate holders, those who have submitted a CAMTC background check for another school in the past two years, and employees of public colleges or universities of the California state higher education system, as defined in Section 100850 of the Education Code, are exempt from providing a background check.) 
                                                        
                                                        
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
                                                                <b>3.</b>&nbsp;Instructions for submitting background checks will be emailed to each individual once the school application has been processed. The school application is considered incomplete until all background checks are complete. 

                                                            </td>

                                                        </tr>

                                                    </table>
                                                    <table class="tblApplReqForm5" style="margin-top: 15px;">

                                                        <tr>

                                                            <td style="padding-left: 0px; line-height: 20px; text-align: left;">
                                                                <b>4.</b>&nbsp;Providing incomplete or misleading information to the California Massage Therapy Council ("CAMTC") may result in processing delays, denial of your application, disciplinary action, revocation of your approval, or additional processing fees. 

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
                                                                <td class="txtalgnrgt tdwidth1">
                                                                    <label class="input-label required">
                                                                        Last Name :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtBackCheckLastName" style="width: 175px ! important;" runat="server" CssClass="inputTextbox" MaxLength="15"></asp:TextBox>

                                                                </td>

                                                                <td class="txtalgnrgt tdwidth2">
                                                                    <label class="input-label required">
                                                                        First Name :
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtBackCheckFirstName" style="width: 175px ! important;" runat="server" CssClass="inputTextbox" MaxLength="15"></asp:TextBox>
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
                                                                    <asp:TextBox ID="txtaddstaffEmail" runat="server" style="width: 175px ! important;" CssClass="inputTextbox" MaxLength="15"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txtalgnrgt" style="width: 190px;">
                                                                    <label class="input-label required">
                                                                        Background Check Required :
                                                                    </label>
                                                                </td>
                                                                <td style="padding-top: 0px ! important;">
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
                                                                    <asp:TextBox ID="txtchkCAMTC" runat="server" CssClass="inputTextbox" Style="float: right; margin-right: 50px; width: 249px !important;">

                                                                    </asp:TextBox>
                                                                    <br />
                                                                    <asp:TextBox ID="txtchkSubmitted" Style="width: 247px !important; margin-left: 18px; margin-top: 10px;" runat="server" CssClass="inputTextbox"></asp:TextBox>
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
                                                                    <td class="InEditModetd">Last name
                                                                    </td>
                                                                    <td>First Name
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label5" runat="server" Text="Owner, Administrator"></asp:Label>
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
                                                                    <td class="InEditModetd">Last name
                                                                    </td>
                                                                    <td>First Name
                                                                    </td>
                                                                    <td style="text-align: left;">
                                                                        <asp:Label ID="Label6" runat="server" Text="Owner"></asp:Label>
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
                                                                    <td class="InEditModetd">Last name
                                                                    </td>
                                                                    <td>First Name
                                                                    </td>
                                                                    <td style="text-align: left;">
                                                                        <asp:Label ID="Label7" runat="server" Text="Owner, Administrator, Instructor"></asp:Label>
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
                                                                    <td class="InEditModetd">Last name
                                                                    </td>
                                                                    <td>First Name
                                                                    </td>
                                                                    <td style="text-align: left;">
                                                                        <asp:Label ID="Label8" runat="server" Text="Owner, Administrator, Instructor"></asp:Label>
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
                                                                    <td class="InEditModetd">Last name
                                                                    </td>
                                                                    <td>First Name
                                                                    </td>
                                                                    <td style="text-align: left;">
                                                                        <asp:Label ID="Label17" runat="server" Text="Owner, Administrator, Instructor"></asp:Label>
                                                                    </td>
                                                                    <td style="text-align: center;">
                                                                        <asp:Label ID="Label18" runat="server" Text="Yes"></asp:Label>
                                                                    </td>
                                                                    <td style="text-align: center;">
                                                                        <asp:Label ID="Label19" runat="server" Text="CAMTC001"></asp:Label>
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
                                                            <td><asp:Button ID="btnStaffPay"  OnClick="btnStaffPay_Click"  CssClass="buttonGreen small" style="margin-left: 15px;" runat="server"  Text="Pay" /></td>
                                                        </tr>
                                                        <tr style="float: right;">
                                                            
                                                            <td style="width: 162px; margin-left: 10px; padding-left: 45px;">Total “Yes” : 
                                                                <asp:TextBox ID="TextBox104" style="Width:67px !important" CssClass="tooltip OnlyAlphabet inputTextbox capitalize-text NewAppPersonalTxtbx"
                                                                    runat="server"></asp:TextBox>

                                                            </td>
                                                            <td>Amount Due : 
                                                                <asp:TextBox ID="TextBox106" Width="148px" CssClass="tooltip OnlyAlphabet inputTextbox capitalize-text NewAppPersonalTxtbx"
                                                                    runat="server" placeholder="(Total “Yes” x $41 = )"></asp:TextBox>
                                                            </td>
                                                            </tr>
                                                        
                                                    </table>


                                                    <div id="payment_stafftab" visible="false" runat="server" style="border: 1px solid rgb(222, 222, 222); margin-top: 10px;" >
                                                        






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

                                                                
                                                                <tr id="trstaffchck1" runat="server" visible="false" >
                                                                    <td align="right">
                                                                        <label class="input-label">Check Number :</label></td>
                                                                    <td>&nbsp;<asp:TextBox ID="TextBox4" CssClass="OnlyNumeric" Style="width: 145px; margin-left:6px;" runat="server"
                                                                        AutoPostBack="true"  ></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr id="trstaffchck2" runat="server" visible="false">
                                                                    <td align="right">
                                                                        <label class="input-label">Name on Check :</label></td>
                                                                    <td>&nbsp;<asp:TextBox ID="TextBox5" CssClass="" Style="width: 145px;margin-left:6px;" runat="server"
                                                                        AutoPostBack="true"  ></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr id="trstaffmonyorder" runat="server" visible="false">
                                                                    <td align="right">
                                                                        <label class="input-label">Money Order Number :</label></td>
                                                                    <td>&nbsp;<asp:TextBox ID="TextBox17" CssClass="OnlyNumeric" Style="width: 145px;margin-left:6px;" runat="server"
                                                                        AutoPostBack="true"  ></asp:TextBox>
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
                                                                        <asp:Button ID="btnStaffShowDetails" Style="border: medium none;background-color: white;
text-decoration: underline;" runat="server" Text="Show Details" OnClick="btnStaffShowDetails_Click" ></asp:Button>
                                                                        <asp:Button ID="btnStaffHideDetials" Style="border: medium none;background-color: white;
text-decoration: underline;" runat="server" Text="Hide Details" OnClick="btnStaffHideDetials_Click" Visible="false" ></asp:Button>
                                                                    </td>
                                                                </tr>
                                                                <tr id="showstaffdetils1" runat="server" visible="false" >
                                                                    <td align="right">
                                                                        <label class="input-label">John Doe :</label></td>
                                                                    <td>$&nbsp;<asp:TextBox ID="TextBox25" CssClass="OnlyNumeric" Style="width: 145px;" runat="server"
                                                                        AutoPostBack="true"  Text="41"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr id="Staffshowdetils2" runat="server" visible="false">
                                                                    <td align="right">
                                                                        <label class="input-label">Jane Doe :</label></td>
                                                                    <td>$&nbsp;<asp:TextBox ID="TextBox34" CssClass="OnlyNumeric" Style="width: 145px;" runat="server"
                                                                        Text="41" AutoPostBack="true" ></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right">
                                                                        <label class="input-label">
                                                                            Number of Certificate :</label>
                                                                    </td>
                                                                    <td style="padding-left: 6px !important;">&nbsp;<asp:TextBox ID="TextBox37" CssClass="OnlyNumeric" Style="width: 145px;"
                                                                        runat="server" ></asp:TextBox>
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
                                                                            AutoPostBack="true" ></asp:TextBox>
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






















                                                        <%--<asp:LinkButton ID="cancel_staffPayment"  CssClass="secondary medium bottom buttonalignment"
                                                            runat="server">Cancel</asp:LinkButton></span>--%>
                                                    </div>
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

                                                <div class="divLicenseInfo" id="dvAboutStaffUpSection" runat="server" style="margin-top: 30px;">

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

<div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                <span class="fltrt">
                                                                    <asp:Button ID="btnSaveAboutStaff" CssClass="buttonGreen medium"
                                                                        runat="server" Text="Save" CausesValidation="true"  />
                                                                    <asp:LinkButton ID="lblCancelAboutStaff" CssClass="secondary medium bottom buttonalignment"
                                                                        runat="server">Cancel</asp:LinkButton></span>
                                                            </div>

</div>


                                                <div class="readinstrucn">
                                                    <asp:CheckBox ID="chkManBackChecklist" runat="server" Text="I have read the instructions." />
                                                </div>
                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                    <div style="float: left;">
                                                    </div>
                                                    <span class="fltrt">
                                                        <asp:Button ID="btnPayNow" CssClass="buttonGreen medium" runat="server"  Text="Pay Now" />
                                                        <asp:Button ID="btnPaySubmitApplication" CssClass="buttonGreen medium" runat="server" Text="Pay and Submit Application" />
                                                        <asp:Button ID="btnsubappforContct" CssClass="buttonGreen medium" runat="server"  Visible="false" Text="Submit Application" />
                                                        <asp:Button ID="btnNextBackList" ValidationGroup="VGAffidavit" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnNextBackList_Click" />
                                                        <asp:Button ID="Button27" CssClass="buttonGreen medium" runat="server"
                                                            Visible="false" Text="Submit & Pay" OnClick="btnSaveNextPayment_Click" ValidationGroup="VGApplicationWaiver"
                                                            CausesValidation="true" />
                                                        <asp:LinkButton ID="LinkButton3" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server">Cancel</asp:LinkButton></span>
                                                </div>












                                                        
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlPSD" Enabled="true" Visible="false"  runat="server">
                                                        
                                                <asp:Literal ID="Literal5" runat="server"></asp:Literal>
                                                <div>
                                                    <div class="sectionDiv">
                                                        <span>Enrollment Agreement Checklist</span>
                                                    </div>
                                                </div>
                                                <fieldset class="flsNewApplReqForm flsCharacterReferences" style="text-align: left;">
                                                    <b>1.</b> Please initial that you have included ALL of the following with the Application for School Approval. 
                                                        
                                                        
                                                        <table class="tblApplReqForm5" style="margin-top: 15px;">
                                                            <tr>

                                                                <td style="padding-left: 0px; line-height: 20px; text-align: left;">
                                                                    <b>2.</b> Providing incomplete or misleading information to the California Massage Therapy Council ("CAMTC") may result in processing delays, denial of your application, disciplinary action, revocation of your approval, or additional processing fees. 

                                                                </td>

                                                            </tr>

                                                        </table>
                                                    <table class="tableborder_trcschk" style="margin-top: 15px;">
                                                        <tr>
                                                            <td style="width: 60px; text-align: center;"><b>Initials</b></td>
                                                            <td><b>Required Items</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;vertical-align: baseline;">
                                                                <asp:CheckBox ID="chkEnrolAgreement" runat="server" />
                                                            </td>
                                                            <td>Blank enrollment agreement and massage program addendum, if any. Per CAMTC’s Policies and
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
Massage Therapy Council at: One Capitol Mall, Suite 320, Sacramento, CA 95814,
                                                                    <a href="http://www.camtc.org" target="_blank" onclick="javascript:EnableTb('.txtQestion27');" class="hyperlink">www.camtc.org</a>, phone (916) 669-5336, or fax (916) 669-5337.”
                                                                </p>
                                                                </br>
                                                                <p>Note: Enrollment agreements from public colleges or universities of the California state higher education system, as defined in section 100850 of the Education Code, shall meet or exceed standards as determined by governing laws and regulations.</p>
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
                                                    


                                                </fieldset>
                                                <div class="readinstrucn">
                                                    <asp:CheckBox ID="chkManEnrollAgrChecklist" runat="server" Text="I have read the instructions." />
                                                </div>
                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                    <div style="float: left;">
                                                    </div>
                                                    <span class="fltrt">
                                                        <asp:Button ID="btnNextEnrollChkList" ValidationGroup="VGAffidavit" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnNextEnrollChkList_Click" />
                                                        <asp:Button ID="Button23" CssClass="buttonGreen medium" runat="server"
                                                            Visible="false" Text="Submit & Pay" OnClick="btnSaveNextPayment_Click" ValidationGroup="VGApplicationWaiver"
                                                            CausesValidation="true" />
                                                        <asp:LinkButton ID="LinkButton5" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server">Cancel</asp:LinkButton></span>
                                                </div>


                                                    </asp:Panel>


                                                    <asp:Panel ID="pnlDOJ" Enabled="true" Visible="false"  runat="server">
                                                       
                                                        <asp:Literal ID="Literal6" runat="server"></asp:Literal>
                                                <div>
                                                    <div class="sectionDiv">
                                                        <span>Course Catalog Checklist</span>
                                                    </div>
                                                </div>
                                                <fieldset class="flsNewApplReqForm flsCharacterReferences" style="text-align: left;">
                                                    <b>1.</b> Please initial that you have included ALL of the following with the Application for School Approval.  
                                                        
                                                        
                                                        <table class="tblApplReqForm5" style="margin-top: 15px;">
                                                            <tr>

                                                                <td style="padding-left: 0px; line-height: 20px; text-align: left;">
                                                                    <b>2.</b> Providing incomplete or misleading information to the California Massage Therapy Council ("CAMTC") may result in processing delays, denial of your application, disciplinary action, revocation of your approval, or additional processing fees. 

                                                                </td>

                                                            </tr>

                                                        </table>
                                                    <table class="tableborder_trcschk" style="margin-top: 15px;">
                                                        <tr>
                                                            <td style="width: 60px; text-align: center;"><b>Initials</b></td>
                                                            <td><b>Required Items</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: center;vertical-align: baseline;">
                                                                <asp:CheckBox ID="CheckBox14" runat="server" /></td>
                                                            <td>Current course catalog and massage program addendum, if any. Per CAMTC’s Policies and
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
                                                                    (9)	If the school admits foreign or ESL students, the catalog shall contain language proficiency information, including the level of English language proficiency required of students and the kind of documentation of proficiency that will be accepted; and whether English language services are provided and, if so, the nature of the service and its cost. The catalog shall also identify whether any instruction will occur in a language other than English and, if so, identify the other language(s) 

instruction will be provided in, the level of English proficiency required, and the kind of documentation of proficiency that will be accepted.

                                                                </p>
                                                                </br>
                                                                <p style="text-align: left;">
                                                                    (10) Publication of CAMTC’s Law related to unfair business practices as related to massage.
                                                                </p>
                                                                </br>
                                                                <p style="text-align: left;">
                                                                    (11) Clearly visible disclosure statement: “Attendance and/or graduation from a California Massage

Therapy Council approved school does not guarantee certification by CAMTC. Applicants for certification shall meet all requirements as listed in California Business and Professions Code section 4600 et. seq.”
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

                                                    

                                                </fieldset>
                                                <div class="readinstrucn">
                                                    <asp:CheckBox ID="chkManCoCatChecklist" runat="server" Text="I have read the instructions." />
                                                </div>
                                                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                    <div style="float: left;">
                                                    </div>
                                                    <span class="fltrt">
                                                        <asp:Button ID="btnNextCourseChkList" ValidationGroup="VGAffidavit" CssClass="buttonGreen medium"
                                                            runat="server" Text="Save" CausesValidation="true"  />
                                                        <asp:Button ID="Button25" CssClass="buttonGreen medium" runat="server"
                                                            Visible="false" Text="Submit & Pay"  ValidationGroup="VGApplicationWaiver"
                                                            CausesValidation="true" />
                                                        <asp:LinkButton ID="LinkButton6" CssClass="secondary medium bottom buttonalignment"
                                                            runat="server">Cancel</asp:LinkButton></span>
                                                </div>
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlDeficiency" Enabled="true" Visible="false"  runat="server">
                                                        
<asp:Literal ID="Literal7" runat="server"></asp:Literal>
                                                

                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlNotes" Enabled="true"  Visible="false" runat="server">
                                                        
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlLog" Enabled="true" Visible="false"  runat="server">
                                                        <uc23:ucLog ID="ucLog1" runat="server" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlCorrespondence" Enabled="true" Visible="false"  runat="server">
                                                        <uc24:ucCorrespondence ID="ucCorrespondence1" runat="server" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlDocument" Enabled="true" Visible="false"  runat="server">
                                                        <uc2:ucDucuments ID="UcDucuments1" runat="server" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlInvestigativeDoc" Enabled="true" Visible="false"  runat="server">
                                                        <uc25:UcInvestigativeDoc ID="UcInvestigativeDoc1" runat="server" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlVerification" Enabled="true" Visible="false" runat="server">
                                                        <uc1:ucVerification runat="server" ID="ucVerification1" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlAuthorization" Enabled="true" Visible="false" runat="server">
                                                        <uc1:ucAuthorization runat="server" ID="ucAuthorization1" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlViewList" Enabled="true" Visible="false" runat="server">
                                                        <uc14:ucViewLists ID="ucViewLists2" runat="server" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlCityReports" Enabled="true" Visible="false" runat="server">
                                                        <uc16:ucCityReportSearches ID="ucCityReportSearches2" runat="server" />
                                                    </asp:Panel>

                                                    <asp:Panel ID="pnlImport" Enabled="true" Visible="false" runat="server">
                                                        <uc1:ucImport runat="server" ID="ucImport1" />
                                                    </asp:Panel>
                                                </div>

                                                <span style="display: none">
                                                    <asp:Button ID="btnActiveTab" ClientIDMode="Static" runat="server" OnClick="btnActiveTab_Click" />
                                                </span>
                                                <asp:TabContainer ID="TabContainer2" runat="server" CssClass="fancy fancy-green"
                                                    ActiveTabIndex="0" Visible="false">
                                                    <asp:TabPanel ID="tbpnlGeneralInfo" Enabled="true" runat="server">
                                                        <HeaderTemplate>
                                                            General
                                                        </HeaderTemplate>
                                                        <ContentTemplate>
                                                            <uc11:ucGeneralInfo ID="ucGeneralInfo1" runat="server" />
                                                        </ContentTemplate>
                                                    </asp:TabPanel>
                                                    <asp:TabPanel ID="tbpnlPersonalInfo" Enabled="true" runat="server">
                                                        <HeaderTemplate>
                                                            Personal
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
                                                            Financial
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
                                                                    <uc19:ucEducation ID="ucEducation1" runat="server" />
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </ContentTemplate>
                                                    </asp:TabPanel>
                                                    <asp:TabPanel ID="tbpnlAdvRoster" Enabled="true" runat="server">
                                                        <HeaderTemplate>
                                                            Employment
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
                                                    <asp:TabPanel ID="tbpnlDOJ" Enabled="true" runat="server">
                                                        <HeaderTemplate>
                                                            DOJ/FBI
                                                        </HeaderTemplate>
                                                        <ContentTemplate>
                                                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                                <ContentTemplate>
                                                                    <uc22:ucDOJ ID="ucDOJ" runat="server" />
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
                                                    <asp:TabPanel ID="tbpnlLog" Enabled="true" runat="server">
                                                        <HeaderTemplate>
                                                            Log
                                                        </HeaderTemplate>
                                                        <ContentTemplate>
                                                            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                                <ContentTemplate>
                                                                    <uc23:ucLog ID="ucLog" runat="server" />
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </ContentTemplate>
                                                    </asp:TabPanel>
                                                    <asp:TabPanel ID="tbpnlCorrespondence" Enabled="true" runat="server">
                                                        <HeaderTemplate>
                                                            Correspondence
                                                        </HeaderTemplate>
                                                        <ContentTemplate>
                                                            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                                                <ContentTemplate>
                                                                    <uc24:ucCorrespondence ID="ucCorrespondence" runat="server" />
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </ContentTemplate>
                                                    </asp:TabPanel>
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
                                                    <asp:TabPanel ID="tbpnlDocument" Enabled="true" runat="server">
                                                        <HeaderTemplate>
                                                            Misc Document
                                                        </HeaderTemplate>
                                                        <ContentTemplate>
                                                            <asp:UpdatePanel ID="upDocuments" runat="server">
                                                                <ContentTemplate>
                                                                    <uc2:ucDucuments ID="ucDocuments" runat="server" />
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </ContentTemplate>
                                                    </asp:TabPanel>
                                                    <asp:TabPanel ID="tbpnlInvestigativeDoc" Enabled="true" runat="server">
                                                        <HeaderTemplate>
                                                            Investigative Doc
                                                        </HeaderTemplate>
                                                        <ContentTemplate>
                                                            <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                                                <ContentTemplate>
                                                                    <uc25:UcInvestigativeDoc ID="UcInvestigativeDoc" runat="server" />
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </ContentTemplate>
                                                    </asp:TabPanel>
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


                                                    <asp:TabPanel ID="tbpnlVerification" Enabled="true" runat="server">
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
                                                    </asp:TabPanel>
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

