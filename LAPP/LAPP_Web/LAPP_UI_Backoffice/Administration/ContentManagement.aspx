<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="ContentManagement.aspx.cs" Inherits="LAPP_UI_Backoffice_Administration_ContentManagement" %>


<%@ Register Src="../../Module/UI_Backoffice/Administration/ucContentManagement.ascx" TagName="ucContentManagement" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    <div class="clearb">
    </div>
    <div class="main" style="position: relative">
        <div class="container primary-content ">
            <div class="clear">
            </div>
            <h3>Content
            </h3>
            <div class="clearb">
            </div>
            <div id="dashboard-panels">
                <div class="relative-box ">
                    <div class="dynamic-panels ui-sortable" style="">
                        <div id="Cashflow" class=" clearfix">
                            <uc1:ucContentManagement ID="ucContentManagement1" runat="server" />
                            &nbsp;<div class="ribbon" style="width: 100%">
                                <div class="holder peel-shadows Individual" style="width: 98.4%; margin-top: -15px;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>

        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        function BeginRequestHandler(sender, args) {
            try {

                ShowLoader();


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
</asp:Content>


