<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SchoolOwnAdmin.aspx.cs" MasterPageFile="~/LAPP_UI_School/MasterPage/SchoolOwnAdmin.master" Inherits="LAPP_UI_School_UI_SchoolOwnAdmin" %>
<%@ Register Src="~/Module/UI_School/ucOwnAdminDashboard.ascx" TagName="ucOwnAdminDashboard"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../App_Themes/Public/css/dashboard.css?" rel="stylesheet" type="text/css" />
    <script src="../../App_Themes/Public/js/jquery.mask.min.js" type="text/javascript"></script>
    <script>
        function RemoveElement(e) {
            $(e).remove();
        }
        $('.zip_us').mask("99999-9999");
        $('.phone_us').mask('(000) 000-0000');

        $('.OnlyAlphabet').keydown(function (e) {
            if (e.keyCode != 9) {

                var key = e.keyCode;
                if (!((key == 8) || (key == 32) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
                    e.preventDefault();
                }
            }
        });

        $('.inputTextbox').attr('autocomplete', 'off');
        $('.calWidth').attr('autocomplete', 'off');
        $('input[type="text"]').attr('autocomplete', 'off');
        $('select').attr('autocomplete', 'off');
        $('textarea').attr('autocomplete', 'off');
    </script>
    <style>
        .QAgrid tr td:first-child {
            text-align: right;
            padding-right: 3px;
        }

        .brdr1 td {
            border: 1px solid #CDCDCD;
        }

        .QAgrid tr:last-child td:first-child {
            text-align: right;
            padding-right: 3px;
            padding-top: 10px;
        }

        .index tbody td, .index tfoot td {
            border: 0px;
        }

        .index tbody th {
            padding-left: 8px;
        }

        .index tbody tr td {
            padding-left: 8px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <uc1:ucOwnAdminDashboard ID="ucMemberDashboard1" runat="server" />
    </div>
    <style>
        .error {
            background-color: pink;
        }

        #error-container {
            width: 90%;
            margin: 0 auto;
            text-align: left;
        }

        #progressbar li.active:before, #progressbar li.active:after {
            background: #27AE60;
            color: white;
        }

        #error-container ul {
            max-width: 514px;
            margin: 0px auto 20px auto;
            border: 1px solid #F6AEAE;
            padding: 10px 30px;
            border-radius: 5px;
            background: #FFF2F2;
        }

            #error-container ul li {
                color: red;
            }

        .error {
            background: rgb(255, 241, 241) !important;
            border: 1px solid red !important;
        }
    </style>
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
        function onUpdate() {
            $('.zip_us').mask("99999-9999");
            $('.phone_us').mask('(000) 000-0000');
            $('.inputTextbox').attr('autocomplete', 'off');
            $('.calWidth').attr('autocomplete', 'off');
            $('input[type="text"]').attr('autocomplete', 'off');
            $('select').attr('autocomplete', 'off');
            $('textarea').attr('autocomplete', 'off');
            function InitiateOnlyAlphabet() {
                $('.OnlyAlphabet').keydown(function (e) {
                    if (e.keyCode != 9) {

                        var key = e.keyCode;
                        if (!((key == 8) || (key == 32) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
                            e.preventDefault();
                        }
                    }
                });
            }
            $("input.us_street").blur(function () {
                OnStreetChange(this);
            });
            InitiateOnlyAlphabet();
            try {
                $('.calender').datepicker({
                    inline: true,
                    altFormat: 'DD,MM, yy',
                    changeMonth: true,
                    changeYear: true //, minDate: "0"


                });
            } catch (e) {
            }
            try {
                $('.calenderDOB').datepicker({
                    inline: true,
                    changeMonth: true,
                    changeYear: true, maxDate: "-18Y",
                    yearRange: "1900:+nn"

                });
            } catch (e) {
            }
            try { StartSearch(); } catch (e) {
            }
            try {
                StartSearchBranchResp(); StartSearchBranchPrincipal(); StartSearchCompanyPrincipal(); StartSearch();
            }
            catch (e) {

            }

            try { $('.phone_us').mask('(000) 000-0000'); } catch (e) {
            }
        }
        function ShowLoader() {
            $('.loader2').css('display', 'block');

        }
        function HideLoader() {
            $('.loader2').css('display', 'none');
            $('.loader2').slideUp('fast');
        }
        jQuery.fn.center = function () {

            this.css("position", "absolute");
            this.css("top", Math.max(0, (($(window).height() - $(this).outerHeight()) / 2) +
                                                $(window).scrollTop()) + "px");
            this.css("left", Math.max(0, (($(window).width() - $(this).outerWidth()) / 2) +
                                                $(window).scrollLeft()) + "px");
            return this;
        }
    </script>
</asp:Content>

