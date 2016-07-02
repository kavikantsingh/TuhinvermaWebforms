<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="School1.aspx.cs" Inherits="SchoolInfo1" %>

<%@ Register Src="~/Module/UI_Backoffice/SchoolInfo/ucSchoolInfo.ascx" TagPrefix="uc1" TagName="ucSchoolInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
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
    <script type="text/javascript">
        var key = '<%=Session["Key"]%>';

    </script>
    <script src="../../App_Themes/Theme1/js/ebsoft-loader.js" type="text/javascript"></script>
    <script src="../../Scripts/angular.js" type="text/javascript"></script>
    <script src="../../Scripts/ag-grid.min.js" type="text/javascript"></script>
    <script src="../../Js/app.js" type="text/javascript"></script>
    <script src="../../Js/Controllers/SchoolInfoController.js" type="text/javascript"></script>
    <script src="../../Js/Services/SchoolInfoServices.js" type="text/javascript"></script>
    <link href="../../App_Themes/Theme1/css/NewButton.css" rel="stylesheet" type="text/css" />
    <script src="../../App_Themes/Theme1/js/jquery.mask.min.js" type="text/javascript"></script>
    <script src="../../App_Themes/Theme1/Expandables/expand.js" type="text/javascript"></script>
    <script src="../../Validation/FormValidation.js" type="text/javascript"></script>
    <link href="../../App_Themes/Theme1/css/Individual.css?" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Theme1/css/IndividualDetails.css?" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Agency/css/OnlineApplication.css?" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Agency/css/searchPanel.css?" rel="stylesheet" type="text/css" />

    <link href="../../App_Themes/Theme1/css/IndividualDetails.css?" rel="stylesheet" type="text/css" />

    <style>
        .error {
            background: #ffebeb !important;
        }

        .ag-blue .ag-header, .ag-blue .ag-no-scrolls .ag-header-container {
            background-color: #0D83DD !important;
        }
    </style>
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

    <div ng-app="LAPP" ng-controller="SchoolController" class="container primary-content ">
        

        <div class="container primary-content ">
            <br />
            <br />
            <div class="clearb">
            </div>
            <div class="clearb" id="divVCRO" style="display: none;" runat="server">
                <asp:LinkButton ID="lnkbt" runat="server"></asp:LinkButton>
            </div>
            <div class="userHide searchBoxhidden" style="display: block !important" id="pnlSearch" runat="server">

                <div class="container primary-content ">
                    <h3 style="float: left;">School
                    </h3>
                    <div class="clearb">
                    </div>
                    <div class="clearb" id="div1" style="display: none;" runat="server">
                        <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
                    </div>
                    <%--search box start--%>
                    <div class="userHide searchBoxhidden" style="display: block !important" id="Div2" runat="server">
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
                                                School :</label>
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
                                            <table style="margin-top: -12px; border-spacing: 2px; border-collapse: separate;">
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
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <div style="width: 90%; margin: 0 auto;">
                                <span class="fltrt">
                                    <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search" />

                                    <asp:LinkButton ID="btnSearchCancel" CssClass="secondary small" runat="server" Text="Cancel"></asp:LinkButton>
                                </span>
                            </div>
                        </fieldset>
                        <!------#############################################-Permit Search control End#####################################################---------------->
                    </div>
                    <%--search box end--%>

                    <div class="clearb">
                    </div>
                    <div class="main" style="position: relative">
                    </div>
                </div>
            </div>
        </div>




        <%--main box start--%>
        <div class="main" style="position: relative">

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
                                <asp:LinkButton ID="btnClearFilter" runat="server" Text="show all"></asp:LinkButton></span>
                            <div class="clear">
                            </div>
                            <div id="Dl1" class="activity-list">
                                <div id="recent-activity" class="activity-list">
                                    <div>
                                        <div data-ag-grid="providerGrid" class="ag-blue" style="color: #000; height: 300px;"></div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!------>
                        <div class="buttonConttrol" style="text-align: center;">
                        </div>
                        <!------>
                    </div>
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                    <!------#############################################-left member list end #####################################################---------------->
                </div>
                <div class="primary-column span-24" style="width: 600px;">
                    <div class="clear">
                    </div>

                    <div class="clear">

                        <asp:HiddenField ID="hidIndividualid" ClientIDMode="Static" runat="server" />
                    </div>
                    <div id="dashboard-panels">
                        <div class="relative-box ">
                            <div class="dynamic-panels ui-sortable" style="">
                                <div id="Cashflow" class=" clearfix">
                                    <div class="gridUpperDiv">
                                        <span class="fltlt" style="display: none">
                                            <asp:LinkButton ID="lnkArchive" CssClass="button small gray narrow pill-left" runat="server">Archive</asp:LinkButton>
                                            <asp:LinkButton ID="lnkDelete" runat="server" CssClass="button small gray narrow pill-right">Delete</asp:LinkButton>
                                        </span>
                                        <div class="fltrt rightIcon">
                                            <asp:Button ID="btnNewMember" CssClass="button medium save green  pdng10" runat="server"
                                                Text="New Member" Visible="false" />

                                            <asp:ImageButton ID="btnPrint" runat="server" ImageUrl="~/App_Themes/Theme1/images/search_icon.png" />
                                            <a title="Print" href="javascript:void(null);" onclick="javascript:toggleDiv('.divPrint');">
                                                <img src="../../App_Themes/Theme1/images/Printer_Blue.png" /></a>
                                            <div id="Div3" runat="server" style="display: none" class="divPrint">
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
                                                        <asp:Button ID="Button3" Width="125px" runat="server" Text="Email Pocket Card" placeholder="joe@email.com"
                                                            CssClass="buttonGreen small" Style="display: none;" />
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                            <a title="comment" href="javascript:void(null);" onclick="showDiv('.popComment');">
                                                <img src="../../App_Themes/Theme1/images/comment_icon.png" /></a>
                                            <a title="Document Upload" style="margin-left: 0px;" href="#">
                                                <img src="../../App_Themes/Theme1/images/Document_Upload.png" /></a>
                                        </div>
                                    </div>

                                    <div>
                                        <h4 class="" style="font-size: 16px; font-weight: bold; padding: 10px 13px;">School Details 
                                                        <span class="fltrt"></span>
                                        </h4>
                                    </div>

                                    <div id="divButtonList" class="tabBtnBorder">
                                        <asp:Button ID="btnGeneral" Enabled="true" runat="server" Text="School Info" CssClass="tab_activeBtn" />
                                        <asp:Button ID="btnPersonal" runat="server" Text="Eligibility" CssClass="tabBtn" />
                                        <asp:Button ID="btnAddress" runat="server" Text="About" CssClass="tabBtn" />
                                        <asp:Button ID="btnStaff" runat="server" Text="Staff" CssClass="tabBtn" />


                                        <asp:Button ID="btnEmployment" runat="server" Text="School Xref" CssClass="tabBtn" />
                                        <asp:Button ID="btnApplicationData" runat="server" Text="Staff Xref" CssClass="tabBtn" />
                                        <asp:Button ID="btnCertificate" runat="server" Text="Transcript" CssClass="tabBtn" />
                                        <asp:Button ID="btnPSD" runat="server" Text="Enrollment Agreement" CssClass="tabBtn" />


                                        <asp:Button ID="btnComplaint" runat="server" Text="Complaint" CssClass="tabBtn" />


                                        <asp:Button ID="btnDOJFBI" runat="server" Text="Course Catalog" CssClass="tabBtn" />
                                        <asp:Button ID="btnDeficiency" runat="server" Text="Curriculum" CssClass="tabBtn" />

                                        <asp:Button ID="btnFinance" runat="server" Text="Fees" CssClass="tabBtn" />
                                        <asp:Button ID="btnNotes" runat="server" Text="Notes" CssClass="tabBtn" />
                                        <asp:Button ID="btnInvestigateNotes" runat="server" Text="Investigative Notes" CssClass="tabBtn" />
                                        <asp:Button ID="btnMiscDocument" runat="server" Text="Documents" CssClass="tabBtn" />

                                    </div>

                                    <div class="demo">
                                        <div>
                                            <h4 class="" style="font-size: 16px; font-weight: bold; padding: 10px 13px;">
                                                <span class="fltrt">
                                                    <asp:ImageButton ID="imgbtnOpenDetail" ToolTip="Hide" runat="server"
                                                        ImageUrl="~/App_Themes/Theme1/Expandables/minus.png" />
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
                                                        <asp:DropDownList ID="ddlAppStatus" runat="server" Style="width: 160px;">
                                                        </asp:DropDownList>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="clear"></div>

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
                                                            <td style="width: 135px;">School Approval Date :
                                                            </td>
                                                            <td>01/01/2016
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
                                                    <table class="IndividualTbl" style="display: none;">
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

                                    </div>
                                    <div>
                                        <div id="error_validation" class="address-box posFixed" style="display: none; color: red; margin-top: 0px; border-radius: 5px;"></div>
                                    </div>
                                    <div id="divPanelList" style="border: 1px solid rgb(222, 222, 222); margin-top: 10px;">
                                    </div>


                                </div>
                            </div>
                        </div>

                    </div>
                    <uc1:ucSchoolInfo runat="server" ID="ucSchoolInfo" />
                </div>

            </div>

        </div>
        <%--main box end--%>
    </div>
</asp:Content>
