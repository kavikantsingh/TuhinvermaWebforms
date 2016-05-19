<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true"
    CodeFile="RoutingLog.aspx.cs" Inherits="RoutingLog" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="~/Module/UI_Backoffice/Establisment/ucRoutingLog.ascx" TagName="ucRoutingLog"
    TagPrefix="uc1" %>
<%@ Register Src="~/Module/UI_Backoffice/Establisment/ucRoutingLogListView.ascx" TagName="ucRoutingLogListView"
    TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../App_Themes/Theme1/js/jquery.mask.min.js" type="text/javascript"></script>
    <script src="../../App_Themes/Theme1/Expandables/expand.js" type="text/javascript"></script>
    <script src="../../Validation/TextboxFormating.js"></script>
    <script>
        $(function () {
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liSchool').addClass('active');

        });
    </script>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <link type="text/css" href="https://developers.google.com/maps/documentation/javascript/examples/default.css"
        rel="stylesheet" />
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
    <style>
        .mapmaindiv {
            width: 100%;
            height: 600px;
            margin: 0 auto;
            background: #FFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="clearb">
    </div>
    <div class="main boardinfo">
        <div class="container primary-content ">
            <div class="clearb">
            </div>
            <h3 style="float: left;">Route Log</h3>
            <div class="clearb">
            </div>
            <div class="userHide searchBoxhidden">
                <div class="clear">
                    <div class="close" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
                    </div>
                </div>
                <!------#############################################-Permit Search control start#####################################################---------------->
                <fieldset class="PermitSearch" style="position: relative">
                    <legend></legend>
                    <table class="SearchTable boardinfo" align="center">
                        <tbody>
                            <tr>
                                <td>
                                    <label>
                                        Last Inspection Date :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtLastInspectionDate" Style="width: 178px !important;"
                                        runat="server" CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" MaxLength="10"></asp:TextBox>
                                </td>
                                <td>
                                    <label>
                                        Inspection Status :</label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlInspectionStatus" runat="server" Style="float: left; width: 141px;">
                                        <asp:ListItem Text="Please Select" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="Corporation" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Partnership" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="Firm" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="Sole Proprietorship" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="Utility Company" Value="5"></asp:ListItem>
                                        <asp:ListItem Text="Government" Value="6"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>
                                        Address Information :</label>
                                </td>
                                <td colspan="3">
                                    <asp:CheckBox ID="chkAddressInfo" runat="server"></asp:CheckBox>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div style="width: 90%; margin: 0 auto;">
                        <span class="fltrt">
                            <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search" />
                            <%--<a id="btnSearchCancel" class="secondary small " href="javascript:void()" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
                            Cancel</a>--%>
                            <asp:LinkButton ID="btnSearchCancel" CssClass="secondary small" runat="server" Text="Cancel"></asp:LinkButton>
                        </span>
                    </div>
                </fieldset>
            </div>
            <!----------Search panel end--------------->
            <!---grid upper---->
            <!---grid upper end--->
            <div class="primary-column ">
                <div id="dashboard-panels ">
                    <div class="relative-box peel-shadows">
                        <div class="dynamic-panels ui-sortable" style="">
                            <div id="Cashflow" class="dashboard-panel clearfix rounded">
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
                                <div class="get-started-content textBoxAlign">
                                    <asp:TabContainer ID="TabContainer1" runat="server" AutoPostBack="true" CssClass="fancy fancy-green"
                                        ActiveTabIndex="0" OnActiveTabChanged="TabContainer1_ActiveTabChanged">
                                        <asp:TabPanel ID="tbListView" runat="server">
                                            <HeaderTemplate>
                                                List View
                                            </HeaderTemplate>
                                            <ContentTemplate>
                                                <uc2:ucRoutingLogListView ID="ucRoutingLogListView1" runat="server" />
                                            </ContentTemplate>
                                        </asp:TabPanel>
                                        <asp:TabPanel ID="tpRoute" runat="server">
                                            <HeaderTemplate>
                                                Map View
                                            </HeaderTemplate>
                                            <ContentTemplate>
                                                <uc1:ucRoutingLog ID="ucRoutingLog1" runat="server" />
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
    </div>
    <!--
    ********************************
    Start
    Update Panel Request Handler
    Javascript Method on Update
    ********************************
    -->
    <script type="text/javascript">
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
                yearRange: "1920:2013",
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
        }

    </script>
    <!--
    ********************************
    END
    Update Panel Request Handler
    Javascript Method on Update
    ********************************
    -->
</asp:Content>
