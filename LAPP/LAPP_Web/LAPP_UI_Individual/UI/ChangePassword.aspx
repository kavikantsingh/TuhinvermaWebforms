<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Individual/MasterPage/ApplicantMaster.Master"
    AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="NVBMT_Public.UI.Settings" %>

<%@ Register Src="~/Module/UI_Individual/Setting/ucChangePassword.ascx" TagName="ucChangePassword"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <script>
     function RemoveElement(e) {
         $(e).remove();
     }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucChangePassword ID="ucChangePassword1" runat="server" />
      <link href="../../App_Themes/Public/jquery-ui/css/start/jquery-ui-1.9.2.custom.css?"
        rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        function BeginRequestHandler(sender, args) {
            try {
                ShowLoader();
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

        $(function () {

            //tooltip start
//            $(".tooltip").tooltip({
//                position: {
//                    my: "left top",
//                    at: "right+5 top-5"
//                }
//            });
        });
    </script>
</asp:Content>
