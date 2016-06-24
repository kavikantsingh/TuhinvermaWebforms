<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" EnableEventValidation="false" ValidateRequest="false" AutoEventWireup="true" CodeFile="ContentManagement_Ankit.aspx.cs"
    Inherits="LAPP_UI_Backoffice_Administration_ContentManagement_Ankit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liAdministration').addClass('active');
        });
    </script>
    <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css" />
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

                            <div id="ShowContent" runat="server">
                                <div class="userHide searchBoxhidden">
                                    <div class="clear">
                                        <div class="close" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
                                        </div>
                                    </div>
                                    <fieldset class="PermitSearch" style="position: relative">
                                        <div class="clearb">
                                        </div>
                                        <asp:UpdatePanel ID="upDropdown" UpdateMode="Conditional" runat="server">
                                            <ContentTemplate>
                                                <table class="SearchTable" align="center">
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <asp:DropDownList ID="ddlPage" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlPage_Change">
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td style="width: 20px;">&nbsp;</td>
                                                            <td>
                                                                <asp:DropDownList ID="ddlPageModuleTabsSubModule" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlPageModuleTabsSubModule_Change">
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td style="width: 20px;">&nbsp;</td>
                                                            <td>
                                                                <asp:DropDownList ID="ddlPageTabSection" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlPageTabSection_Change">
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td style="width: 20px;">&nbsp;</td>
                                                            <td>
                                                                <asp:DropDownList ID="ddlContentType" runat="server">
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td style="width: 20px;">&nbsp;</td>
                                                            <td>
                                                                <span class="fltrt">
                                                                    <input id="btnSearch" class="buttonGreen small" value="Search" type="button" />
                                                                    &nbsp;
                                                        <input id="btnCancel" class="secondary small" value="Cancel" type="button" />
                                                                </span>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>

                                        <div class="clearb">
                                        </div>
                                    </fieldset>
                                </div>
                                <div class="clear"></div>
                                <div class="gridUpperDiv">
                                    <%--<a class="down_arrow"></a>
                                    <span class="fltlt">
                                        <asp:LinkButton ID="LinkButton1" CssClass="" runat="server">Show All</asp:LinkButton>
                                    </span>--%>
                                    <div class="fltrt rightIcon">
                                        <a title="find" href="javascript:void()" onclick="javascript:showDivSlide('.userHide');hideDivSlide('.searchBbutton');">
                                            <img src="../../App_Themes/Theme1/images/search_icon.png" /></a>
                                    </div>
                                </div>

                                <div id="Datatable" class="brdr">
                                    <div class="brdr radius pdng5">
                                        <asp:Repeater ID="rptContent" OnItemCommand="rptContent_ItemCommand" runat="server">
                                            <HeaderTemplate>
                                                <table id="example" class="display" cellspacing="0" width="100%">
                                                    <thead>
                                                        <tr>
                                                            <th>Page</th>
                                                            <th>Tab/SubPage</th>
                                                            <th>Section</th>
                                                            <th>Content Type</th>
                                                            <th>Content Item#</th>
                                                            <th>Content Desc</th>
                                                            <th>Effective Date</th>
                                                            <th>End Desc</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tr>
                                                    <td>Page Name <%# Eval("Id") %></td>
                                                    <td>Sub Page <%# Eval("Id") %></td>
                                                    <td>Section <%# Eval("Id") %></td>
                                                    <td>Content Type <%# Eval("Id") %></td>
                                                    <td>Content Item#</td>
                                                    <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                    <td>06/09/2016</td>
                                                    <td>06/09/2017</td>
                                                    <td>
                                                        <asp:ImageButton ID="imgDelete" CssClass="imgDelete" runat="server" ToolTip="EditRow" CommandName="EditRow"
                                                            CommandArgument='<%#Eval("Id") %>' ImageUrl="~/App_Themes/Theme1/images/edit.png" />
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                </tbody>
                                                </table>
                                            </FooterTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>

                            <div id="EditContent" runat="server" class="brdr">
                                <div class="brdr radius pdng5">
                                    <div class="pdng5" style="padding: 15px 0px 15px 0px;">
                                        <table style="margin: 0 auto; width: 60%;">
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Content Name :</label>
                                                </td>
                                                <td align="left">
                                                    <asp:TextBox ID="txtContentNameGrid" Enabled="false" runat="server" Style="width: 200px;"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label required">
                                                        Content Text :</label>
                                                </td>
                                                <td align="left">
                                                    <asp:TextBox ID="txtContentTextGrid" runat="server" TextMode="MultiLine" Style="width: 455px; height: 100px; margin-top: 10px;"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="toolBar clear" style="">
                                        <span class="fltrt">
                                            <asp:Button ID="btnSaveContentGrid" CssClass="buttonGreen medium" runat="server"
                                                Text="Save" OnClick="btnSaveContentGrid_Click" />
                                            <asp:Button ID="btnCancelContentGrid" runat="server" CssClass="secondary medium "
                                                Text="Cancel" OnClick="btnCancelContentGrid_Click" />
                                        </span>
                                    </div>
                                </div>
                            </div>

                            &nbsp;
                            <div class="ribbon" style="width: 100%">
                                <div class="holder peel-shadows Individual" style="width: 98.4%; margin-top: -15px;">
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">

        $(document).ready(function () {

            $('#example').DataTable();

        });

    </script>

</asp:Content>


