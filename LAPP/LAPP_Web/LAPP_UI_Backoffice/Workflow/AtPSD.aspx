<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="AtPSD.aspx.cs" Inherits="LAPP_UI_Backoffice_Workflow_AtPsd" %>
<%@ Register Src="~/Module/UI_Backoffice/WorkFlow/ucAtPSD.ascx" TagName="ucAtPSD" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
    display:inline;
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:UpdatePanel ID="upMemberPanel" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="container primary-content ">
                <br />
                <br />
                <div class="clearb">
                </div>
                
                <div class="userHide searchBoxhidden" style="display: block !important;" id="pnlSearch" runat="server">
    <div>
        <div class="clear">
            <%--<div class="close" style="display: none;" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
                        </div>--%>
        </div>
        <fieldset class="PermitSearch" style="position: relative">
            <legend></legend>
            <asp:Panel ID="defaultbtn" runat="server" DefaultButton="btnSearch">
                <div id="divBasicSearch" runat="server">
                                <table style="height: 130px; margin: 0 auto;">
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
                                              Certificate # :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtIDNo2" runat="server" CssClass="inputTextbox"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="right" style="width: 160px;">
                                            <label>
                                                SS # :</label>
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
                                                Status :</label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList1" Width="144px" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label>
                                                PSD Meeting Date :</label>
                                        </td>
                                        <td colspan="3">
                                            <asp:TextBox ID="TextBox1" runat="server" placeholder="MM/DD/YYYY" CssClass="inputTextbox calender"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        

                                    </tr>
                                    
                                </table>
                            </div>
                            <div style="width: 90%; margin: 0 auto;">
                                <span class="fltrt">
                                    <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search"
                                         />
                                    
                                    <asp:LinkButton ID="btnSearchCancel" CssClass="secondary small" runat="server" Text="Cancel"
                                        ></asp:LinkButton>
                                </span>
                            </div>
            </asp:Panel>
        </fieldset>
    </div>
    </div>
                <div class="gridUpperDiv">
                    <a class="down_arrow"></a>
                    <span class="fltlt" style="color:blue;">Show All</span>
                                                    <div class="fltrt rightIcon">
                                                        <asp:Button ID="btnNewMember" CssClass="button medium save green  pdng10" runat="server"
                                                            Text="New Member"  Visible="false" />
                                                       
                                                        <asp:ImageButton ID="btnPrint" runat="server" ImageUrl="~/App_Themes/Theme1/images/search_icon.png"
                                                             />
                                                    </div>
                                                </div>
                <div class="clearb">
                </div>
                <br />
<div class="home-sidebar">
                <div class="get-started-content rounded-container peel-shadows">
        <uc1:ucAtPSD runat="server" ID="ucAtPSD" />
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

    
    <script>
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
                inline: true,
                changeMonth: true,
                changeYear: true, maxDate: "-18Y",
                yearRange: "1900:+nn"

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

