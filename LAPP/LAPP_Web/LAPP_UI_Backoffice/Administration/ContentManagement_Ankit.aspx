<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" AutoEventWireup="true" CodeFile="ContentManagement_Ankit.aspx.cs"
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

                            <div class="userHide searchBoxhidden">
                                <div class="clear">
                                    <div class="close" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
                                    </div>
                                </div>
                                <fieldset class="PermitSearch" style="position: relative">
                                    <div class="clearb">
                                    </div>
                                    <table class="SearchTable" align="center">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <select style="width: 200px" id="ddlPage">
                                                        <option value="">-- Select Page -- </option>
                                                    </select>
                                                </td>
                                                <td style="width: 20px;">&nbsp;</td>
                                                <td>
                                                    <select style="width: 200px" id="ddlSubPage">
                                                        <option value="">-- Select Page Tab/Sub Page -- </option>
                                                    </select>
                                                </td>
                                                <td style="width: 20px;">&nbsp;</td>
                                                <td>
                                                    <select style="width: 200px" id="ddlPageSection">
                                                        <option value="">-- Select Page/Tab Section Name -- </option>
                                                    </select>
                                                </td>
                                                <td style="width: 20px;">&nbsp;</td>
                                                <td>
                                                    <select style="width: 200px" id="ddlContentType">
                                                        <option value="">-- Select Content Type -- </option>
                                                    </select>
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
                                    <div class="clearb">
                                    </div>
                                </fieldset>
                            </div>

                            <div class="clear">
                            </div>

                            <div class="gridUpperDiv">
                                <a class="down_arrow"></a><span class="fltlt">
                                    <asp:LinkButton ID="LinkButton1" CssClass="" runat="server">Show All</asp:LinkButton>
                                </span>
                                <div class="fltrt rightIcon">
                                    <a title="find" href="javascript:void()" onclick="javascript:showDivSlide('.userHide');hideDivSlide('.searchBbutton');">
                                        <img src="../../App_Themes/Theme1/images/search_icon.png" /></a>
                                </div>
                            </div>

                            <div id="Datatable" class="brdr">
                                <div class="brdr radius pdng5">

                                    <%--GridView here--%>

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
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a class="editRecord" href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                            <tr>
                                                <td>Page Name 1</td>
                                                <td>Sub Page 1</td>
                                                <td>Section 1</td>
                                                <td>Content Type 1</td>
                                                <td>Content Item#</td>
                                                <td>Content Desc : Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </td>
                                                <td>06/09/2016</td>
                                                <td>06/09/2017</td>
                                                <td><a href="#">Edit</a></td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <%--GridView here--%>
                                </div>
                            </div>

                            <div id="EditContent" style="display: none" class="brdr">
                                <div class="brdr radius pdng5">
                                    <%--Edit here--%>

                                    <%--Edit here--%>
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

            $(".editRecord").click(function () {

                $("#Datatable").hide();
                $("#EditContent").show();

                //Show Edit page : Take ID as parameter and Call WebAPI to populate the data into the textfield and show.

            });

        });

    </script>

</asp:Content>


