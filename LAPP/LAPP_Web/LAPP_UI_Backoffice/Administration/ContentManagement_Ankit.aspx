<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/MainPage.master" EnableEventValidation="false" ValidateRequest="false" AutoEventWireup="true" CodeFile="ContentManagement_Ankit.aspx.cs"
    Inherits="LAPP_UI_Backoffice_Administration_ContentManagement_Ankit" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<%@ Register Src="~/Module/UI_Backoffice/PagerControl.ascx" TagPrefix="uc1" TagName="PagerControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {

            $('.calender').datepicker({
                inline: true,
                changeMonth: true,
                changeYear: true, maxDate: "-18Y",
                yearRange: "1900:+nn"

            });
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

                                        <div style="width: 100%">
                                            <asp:UpdatePanel ID="upDropdown" UpdateMode="Conditional" runat="server">
                                                <ContentTemplate>
                                                    <div style="float: left; width: 15%">
                                                        <table class="SearchTable" align="left">
                                                            <tbody>
                                                                <tr>
                                                                    <td style="width: 20px;">&nbsp;</td>
                                                                    <td style="width: 20px;">&nbsp;</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <div style="float: left; width: 60%">
                                                        <table class="SearchTable" align="left">
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
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                            <div style="float: left; width: 20%">
                                                <table class="SearchTable" align="left">
                                                    <tbody>
                                                        <tr>
                                                            <td style="width: 20px;">&nbsp;</td>
                                                            <td>
                                                                <span class="fltrt">
                                                                    <asp:Button ID="btnSearch" runat="server" CssClass="buttonGreen small" Text="Search" OnClick="btnSearch_Click" />
                                                                    &nbsp;
                                                                    <asp:Button ID="btnCancel" runat="server" CssClass="secondary small" Text="Cancel" OnClick="btnCancel_Click" />
                                                                </span>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>

                                        <div class="clearb">
                                        </div>
                                    </fieldset>
                                </div>
                                <div class="clear"></div>
                                <div class="gridUpperDiv">
                                    <a class="down_arrow"></a>
                                    <span class="fltlt">
                                        <asp:LinkButton ID="lnkShowAll" CssClass="" runat="server" OnClick="lnkShowAll_Click">Show All</asp:LinkButton>
                                    </span>
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
                                                        <tr style="color: White; background-color: #0D83DD; border-style: None; font-weight: bold;">
                                                            <th>Content Item Code</th>
                                                            <th>Content Item#</th>
                                                            <th>Content Description</th>
                                                            <th>Effective Date</th>
                                                            <th>End Date</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("ContentItemLkCode") %></td>
                                                    <td><%# Eval("ContentItemHash") %></td>
                                                    <td><%# Eval("ContentItemLkDesc") %></td>
                                                    <td><%# Convert.ToDateTime(Eval("EffectiveDate")).ToString("MM/dd/yyyy").Replace("-", "/") %></td>
                                                    <td><%# Convert.ToDateTime(Eval("EndDate")).ToString("MM/dd/yyyy").Replace("-", "/") %></td>
                                                    <td>
                                                        <input type="image" id="imgDelete" class='<%#Eval("ContentItemLkId") %>' onclick="showStuff(this); return false" src="/App_Themes/Theme1/images/edit.png" alt="Submit">
                                                    </td>
                                                </tr>

                                                <tr id='<%#Eval("ContentItemLkId") %>' style="display: none;">
                                                    <td colspan='6'>
                                                        <div class="pdng5" style="padding: 15px 0px 15px 0px; width: 100%;">

                                                            <table style="margin: 0 auto; width: 100%;">
                                                                <tr>
                                                                    <td align="right">
                                                                        <label class="input-label required">
                                                                            Effective Date :</label>
                                                                    </td>
                                                                    <td align="left">
                                                                        <asp:TextBox ID="txtEffectiveDate" ReadOnly="true" CssClass="inputTextbox calender" Text='<%# Convert.ToDateTime(Eval("EffectiveDate")).ToString("MM/dd/yyyy").Replace("-", "/") %>' runat="server"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right">
                                                                        <label class="input-label required">
                                                                            End Date :</label>
                                                                    </td>
                                                                    <td align="left">
                                                                        <asp:TextBox ID="txtEndDate" ReadOnly="true" CssClass="inputTextbox calender" Text='<%# Convert.ToDateTime(Eval("EndDate")).ToString("MM/dd/yyyy").Replace("-", "/") %>' runat="server"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right">
                                                                        <label class="input-label required">
                                                                            Content Text :</label>
                                                                    </td>
                                                                    <td align="left">
                                                                        <asp:HiddenField ID="hdnContentItemLkId" Value='<%# Eval("ContentItemLkId") %>' runat="server" />
                                                                        <asp:HiddenField ID="hdnContentItemHash" Value='<%# Eval("ContentItemHash") %>' runat="server" />
                                                                        <CKEditor:CKEditorControl ID="txtContentTextGrid" Text='<%# Eval("ContentItemLkDesc")%>' runat="server"></CKEditor:CKEditorControl>
                                                                    </td>
                                                                </tr>
                                                            </table>

                                                        </div>
                                                        <div class="toolbar clear" style="">
                                                            <span class="fltrt">
                                                                <asp:Button ID="btnUpdate" runat="server" Text="Save" CommandArgument='<%#Eval("ContentItemLkId") %>' CssClass="buttongreen medium" CommandName="UpdateRow" />
                                                                <input id="btnCancel" type="button" name='<%#Eval("ContentItemLkId") %>' value="Cancel" class="secondary medium" onclick="hideStuff(this); return false" />
                                                            </span>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                </tbody>
                                                </table>
                                            </FooterTemplate>
                                        </asp:Repeater>

                                        <uc1:PagerControl ID="PagerControl1" runat="server" />

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

        function showStuff(id) {
            var val = $(id).attr('class');
            document.getElementById(val).style.display = 'table-row';
        }

        function hideStuff(id) {
            var val = $(id).attr('name');
            document.getElementById(val).style.display = 'none';
        }

        //function doStuff(id) {

        //    var val = $(id).attr('title');
        //    var index = $(id).attr('name');
        //    var key = $("#hdnKey").val();

        //    //$("ContentPlaceHolder1_rptContent_txtEffectiveDate_" + index).val()
        //    //$("ContentPlaceHolder1_rptContent_txtEffectiveDate_" + index).val()
        //    //$("ContentPlaceHolder1_rptContent_txtEffectiveDate_" + index).val()

        //    ShowLoader();

        //    $.ajax({
        //        url: "http://96.31.91.68/lappws/api/Content/ContentUpdateContentInfo/" + key,
        //        type: "POST",
        //        data: JSON.stringify({

        //            FirstName: $("#txtFirstName").val(),
        //            MiddleName: $("#txtMiddleName").val(),
        //            LastName: $("#txtLastName").val(),
        //            DateofBirth: $("#txtDOB").val(),
        //            Email: $("#txtEmail").val(),
        //            SchoolName: $("#txtSchoolName").val()

        //        }),

        //        contentType: 'application/json; charset=utf-8',

        //        success: function (data) {
        //            if (data.Status) {

        //                document.getElementById(val).style.display = 'none';
        //            }
        //            else {
        //                alert(data.Message);
        //            }
        //        },
        //        error: function () {
        //            $('#error_validation').show();
        //            alert("Oops! Something went wrong.");
        //        },
        //        complete: function () {
        //            HideLoader();
        //        }
        //    });

        //}

    </script>

    <script type="text/javascript">
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


