<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/1Column.master" AutoEventWireup="true" CodeFile="ApplicationFee.aspx.cs" Inherits="LAPP_UI_Backoffice_Administration_ApplicationFee" %>


<%@ Register Src="../../Module/UI_Backoffice/Administration/ucApplicationFee.ascx" TagName="ucApplicationFee" TagPrefix="uc1" %>


<%@ Register Src="../../Module/UI_Backoffice/Administration/ucTransactionFeeConfig.ascx" TagName="ucTransactionFeeConfig" TagPrefix="uc2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MidContent" runat="server">

    <script>
        $(function () {
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liAdministration').addClass('active');

        });
    </script>
    <script>
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        function BeginRequestHandler(sender, args) {
            try {
                //alert('aa');
                ShowLoader();
                //alert('hi');


            }
            catch (e) {
            }
        }

        function EndRequestHandler(sender, args) {
            try {
                HideLoader();

            }
            catch (e) {
            }
        }

    </script>

    <uc1:ucApplicationFee ID="ucApplicationFee1" runat="server" />
    <uc2:ucTransactionFeeConfig ID="ucTransactionFeeConfig1" runat="server" />
</asp:Content>
