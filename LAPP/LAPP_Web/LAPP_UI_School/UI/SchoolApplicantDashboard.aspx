<%@ Page Title="Applicant Dashboard" Language="C#" MasterPageFile="~/LAPP_UI_School/MasterPage/SchoolApplicantMaster.Master"
    AutoEventWireup="true" CodeFile="SchoolApplicantDashboard.aspx.cs" Inherits="NVBMT_Public.UI.ApplicantDashboard" %>

<%@ Register Src="~/Module/UI_School/ApplicantDashboard.ascx" TagName="ApplicantDashboard"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../App_Themes/Public/css/dashboard.css?" rel="stylesheet" type="text/css" />
    <script src="../../App_Themes/Public/js/jquery.mask.min.js" type="text/javascript"></script>
    <style>
        .QAgrid tr td:first-child
        {
            text-align: right;
            padding-right: 3px;
        }
        .QAgrid tr:last-child td:first-child
        {
            text-align: right;
            padding-right: 3px;
            padding-top: 10px;
        }
        .index tbody td, .index tfoot td
        {
            border: 0px;
        }
        .index tbody th
        {
            padding-left: 8px;
        }
        .index tbody tr td
        {
            padding-left: 8px;
        }
    </style>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ApplicantDashboard ID="ApplicantDashboard1" runat="server" />
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
