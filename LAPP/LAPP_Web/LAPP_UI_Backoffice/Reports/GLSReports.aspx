<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/1Column.master" AutoEventWireup="true"
    CodeFile="GLSReports.aspx.cs" Inherits="GLSReports" %>

<%@ Register src="~/Module/UI_Backoffice/Reports/ucDynamicQuery.ascx" tagname="ucDynamicQuery" tagprefix="uc1" %>

<%--<%@ Register Src="../Modules/Report/ucQueryReport.ascx" TagName="ucQueryReport" TagPrefix="uc1" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="MidContent" runat="server">
      <script src="../App_Themes/Theme1/js/jquery.mask.min.js" type="text/javascript"></script>
   
    <script>
        $(function () {
            //Navigation
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liReports').addClass('active');

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

 
    }

   
    </script>
    <link href="../App_Themes/Theme1/css/IndividualDetails.css?" rel="stylesheet" type="text/css" />
  
    <uc1:ucDynamicQuery ID="ucDynamicQuery1" runat="server" />
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
            InitiateOnlyAlphabet();
            InitiateOnlyNumeric();
            InitiateMasking();
             


            //Grid event
            //gridEvent();

            //Masking section
            $('.phone_us').mask('(000) 000-0000');
            $('.ssn').mask('999-99-9999');

 
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
    </script>
    <script>
        function SelectheaderCheckboxes(headerchk, gv) {
            // alert('hi');
            //debugger
            var gvcheck = document.getElementById(gv);
            // alert(gvcheck);
            var i;
            if (headerchk.checked) {
                for (i = 0; i < gvcheck.rows.length; i++) {
                    var inputs = gvcheck.rows[i].getElementsByTagName('input');
                    inputs[0].checked = true;
                }
            }
            else {
                for (i = 0; i < gvcheck.rows.length; i++) {
                    var inputs = gvcheck.rows[i].getElementsByTagName('input');
                    inputs[0].checked = false;
                }
            }
        }

    </script>
</asp:Content>
