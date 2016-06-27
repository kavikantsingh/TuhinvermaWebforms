<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="Configuration.aspx.cs" Inherits="LAPP_UI_Backoffice_Administration_Configuration" %>

<%@ Register Src="~/Module/UI_Backoffice/Administration/ucUserTask.ascx" TagName="ucUserTask"
    TagPrefix="uc8" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register Src="../../Module/UI_Backoffice/Administration/ucCodes.ascx" TagName="ucCodes" TagPrefix="uc1" %>
<%@ Register Src="../../Module/UI_Backoffice/Administration/ucConfiguration_Page.ascx" TagName="ucConfiguration_Page"
    TagPrefix="uc1" %>
 
<%@ Register Src="../../Module/UI_Backoffice/Administration/ucDocumentType.ascx" TagName="ucDocumentType"
    TagPrefix="uc3" %>
<%@ Register Src="../../Module/UI_Backoffice/Administration/ucStatus_Code.ascx" TagName="ucStatus_Code"
    TagPrefix="uc4" %>
<%@ Register Src="../../Module/UI_Backoffice/Administration/uclapp_application_deficiency_reason.ascx"
    TagName="uclapp_application_deficiency_reason" TagPrefix="uc5" %>
<%@ Register Src="~/Module/UI_Backoffice/Administration/ucApplicationFee.ascx" TagName="ucApplicationFee"
    TagPrefix="uc6" %>
<%@ Register Src="~/Module/UI_Backoffice/Administration/ucTransactionFeeConfig.ascx" TagName="ucTransactionFeeConfig"
    TagPrefix="uc7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../../App_Themes/Theme1/css/Codes.css?" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Theme1/css/UserAccount.css?" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Theme1/jpicker/css/jPicker-1.1.6.min.css?" rel="stylesheet"
        type="text/css" />
    <link href="../../App_Themes/Theme1/jpicker/css/jPicker-1.1.6.css?" rel="stylesheet"
        type="text/css" />
    <link rel="Stylesheet" type="text/css" href="../../App_Themes/Theme1/jpicker/jPicker.css?" />
    <script src="../../App_Themes/Theme1/jpicker/jpicker-1.1.6.min.js" type="text/javascript"></script>
    <script src="../../App_Themes/Theme1/js/jquery.mask.min.js?" type="text/javascript"></script>
    <link href="../../App_Themes/Theme1/css/NewButton.css?" rel="stylesheet" type="text/css" />

    <script>
        $(function () {
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liAdministration').addClass('active');

        });
    </script>
    <style>
        .message.showDivMsg {
            width: 90% !important;
            margin: 0 auto !important;
        }

        .BoldName {
            display: block;
            line-height: 27px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <div class="clearb">
    </div>
    <div class="main" style="position: relative">
        <div class="container primary-content ">
            <div>
                <h3 style="float: left;">
                    Configuration</h3>
            </div>
            <div class="clear">
            </div>
            <div id="dashboard-panels">
                <div class="relative-box ">
                    <div class="dynamic-panels ui-sortable" style="">
                        <div id="Cashflow" class=" clearfix">
                            <asp:TabContainer ID="TabContainer1" runat="server" CssClass="fancy fancy-green" AutoPostBack="true" OnActiveTabChanged="TabContainer1_ActiveTabChanged">
                                <asp:TabPanel ID="tbpnCodes" Enabled="true" TabIndex="1" runat="server">
                                    <HeaderTemplate>
                                        Codes
                                    </HeaderTemplate>
                                    <ContentTemplate>
                                        <uc1:ucCodes ID="ucCodes1" runat="server" />
                                    </ContentTemplate>
                                </asp:TabPanel>
                                <asp:TabPanel ID="tbpnDocumentType" Enabled="true" TabIndex="2" runat="server">
                                    <HeaderTemplate>
                                        Upload Document List
                                    </HeaderTemplate>
                                    <ContentTemplate>
                                        <uc3:ucDocumentType ID="ucDocumentType1" runat="server" />
                                    </ContentTemplate>
                                </asp:TabPanel>
                                <asp:TabPanel ID="tbpnStatusColor" Enabled="true" TabIndex="3" runat="server">
                                    <HeaderTemplate>
                                        Application Status Color
                                    </HeaderTemplate>
                                    <ContentTemplate>
                                        <uc4:ucStatus_Code ID="ucStatus_Code1" runat="server" />
                                    </ContentTemplate>
                                </asp:TabPanel>
                                <asp:TabPanel ID="tbpnDeficiencyReason" Enabled="true" TabIndex="4" runat="server">
                                    <HeaderTemplate>
                                        Deficiency Reason
                                    </HeaderTemplate>
                                    <ContentTemplate>
                                        <uc5:uclapp_application_deficiency_reason ID="uclapp_application_deficiency_reason1"
                                            runat="server" />
                                    </ContentTemplate>
                                </asp:TabPanel>
                                <asp:TabPanel ID="tbpnManual" Enabled="true" runat="server" TabIndex="5">
                                    <HeaderTemplate>
                                        Application Configuration
                                    </HeaderTemplate>
                                    <ContentTemplate>
                                      Page is loading..Please wait....                                  
                                    </ContentTemplate>
                                </asp:TabPanel>
                                <asp:TabPanel ID="tbpnApplicationFee" Enabled="true" runat="server">
                                    <HeaderTemplate>
                                        Application Fee
                                    </HeaderTemplate>
                                    <ContentTemplate>
                                        <uc6:ucApplicationFee ID="ucApplicationFee1" runat="server" />
                                        <uc7:ucTransactionFeeConfig ID="ucTransactionFeeConfig1" runat="server" />
                                    </ContentTemplate>
                                </asp:TabPanel>
                                <asp:TabPanel ID="tbpnUserTask" Enabled="true" runat="server">
                                    <HeaderTemplate>
                                        User Task
                                    </HeaderTemplate>
                                    <ContentTemplate>
                                        <uc8:ucUserTask ID="ucUserTask1" runat="server" />
                                    </ContentTemplate>
                                </asp:TabPanel>
                            </asp:TabContainer>
                        </div>
                    </div>
                </div>
            </div>
            <div class="holder peel-shadows Individual" style="width: 98.4%; margin-top: -4px;">
            </div>
        </div>
    </div>
    <script src="../../App_Themes/Theme1/jpicker/jquery-1.4.4.min.js" type="text/javascript"></script>
    <script src="../../App_Themes/Theme1/jpicker/jpicker-1.1.6.min.js" type="text/javascript"></script>
    <script>
        function InitiatePage() {
            Color();


        }
        function Color() {

            $('.Multiple').jPicker();
        }

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


