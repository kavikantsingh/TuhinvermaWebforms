<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true"
    CodeFile="EmailListQuery.aspx.cs" Inherits="EmailListQuery" %>

<%@ Register Src="~/Module/UI_Backoffice/Reports/ucEmailListQuery.ascx" TagName="ucEmailListQuery"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(function () {
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liReports').addClass('active');

        });
    </script>
    <script>
        //        $(document).ready(function () {
        //            //SetMiddleCenter(e);

        //        }); function hideDiv(e) {
        //            $(e).slideUp();

        //        }
        function toggleDiv(e) {
            $(e).toggle();
            $('div.closePrint').click(function () {
                $(e).toggle();
            });
        }
    </script>
    <style>
        .divPrint
        {
            z-index: 9999;
            display: block;
            top: 38px;
            right: 0px;
            border-top-left-radius: 0px;
            border-top-right-radius: 0px;
            border-bottom-right-radius: 5px;
            border-bottom-left-radius: 5px;
            border-color: rgb(98, 143, 199);
            position: absolute;
            min-height: 45px;
            border: 1px solid rgb(98, 143, 199);
            background: #E7F5FF;
            padding: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="upEmailListQueryPanel" runat="server">
        <ContentTemplate>
            <div class="clearb">
            </div>
            <div class="main" style="position: relative">
                <br />
                <div class="container primary-content ">
                    <div class="clear">
                    </div>
                    <div id="dashboard-panels">
                        <div class="relative-box ">
                            <div class="dynamic-panels ui-sortable" style="">
                                <div id="Cashflow" class=" clearfix">
                                    <uc1:ucEmailListQuery ID="ucEmailListQuery1" runat="server" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
