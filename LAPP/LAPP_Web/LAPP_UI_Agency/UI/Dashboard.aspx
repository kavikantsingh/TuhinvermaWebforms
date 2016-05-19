<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Agency/MasterPages/ApplicantMaster.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="LAPP_UI_Agency_UI_Dashboard" %>

<%@ Register Src="~/Module/UI_Agency/ucDashboard.ascx" TagName="ucDashboard"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../App_Themes/Agency/css/dashboard.css?" rel="stylesheet" type="text/css" />
    <script src="../../App_Themes/Agency/js/jquery.mask.min.js" type="text/javascript"></script>
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
 
        $('.inputTextbox').attr('autocomplete', 'off');
        $('.calWidth').attr('autocomplete', 'off');
        $('input[type="text"]').attr('autocomplete', 'off');
        $('select').attr('autocomplete', 'off');
        $('textarea').attr('autocomplete', 'off');
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucDashboard ID="ucDashboard1" runat="server" />
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
            InitiateMasking();
            InitiateOnlyAlphabet();
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

