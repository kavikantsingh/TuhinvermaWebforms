<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true"
    CodeFile="LicensePrintQueue.aspx.cs" Inherits="LicensePrintQueue" %>

<%@ Register Src="~/Module/UI_Backoffice/Commands/ucLicensePrintQueue.ascx" TagName="ucLicensePrintQueue"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../Validation/TextboxFormating.js" type="text/javascript"></script>
    <script src="../../Validation/FormValidation.js" type="text/javascript"></script>
    <script src="../../App_Themes/Theme1/js/jquery.mask.min.js"></script>
    <script>
        $(function () {
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liAdministration').addClass('active');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="upMemberPanel" runat="server">
        <ContentTemplate>
            <div class="main" style="position: relative">
                <div class="container primary-content ">
                    <div class="clear">
                    </div>
                    <div id="dashboard-panels">
                        <div class="relative-box ">
                            <div class="dynamic-panels ui-sortable" style="">
                                <div id="Cashflow" class=" clearfix">
                                    <div class="clearb">
                                        <uc1:ucLicensePrintQueue ID="ucLicensePrintQueue1" runat="server" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
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

        }

    </script>
    <!--
    ********************************
    END
    Update Panel Request Handler
    Javascript Method on Update
    ********************************
    -->
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
