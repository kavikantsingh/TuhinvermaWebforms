<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="Role.aspx.cs" Inherits="LAPP_UI_Backoffice_Administration_Role" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<%@ Register Src="../../Module/UI_Backoffice/Administration/ucRole.ascx" tagname="ucRole" tagprefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        $(function () {
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liAdministration').addClass('active');
        });
    </script>
    <asp:UpdatePanel ID="upPanel" runat="server" UpdateMode="Always">
        <ContentTemplate>
            
            <uc1:ucRole ID="ucRole1" runat="server" />
            
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


