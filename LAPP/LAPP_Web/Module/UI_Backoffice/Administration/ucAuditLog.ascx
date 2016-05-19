<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucAuditLog.ascx.cs" Inherits="Module_Administration_ucAuditLog" %>
<style>
    .colWidh1
    {
    }
    
    .colWidh2
    {
    }
    
    .heading
    {
        font-weight: bold;
    }
    .mrgn
    {
        margin-top: 4px !important;
        width: 135px;
    }
</style>
<div class="get-started-content" style="padding-bottom: 40px;">
    <div id="divAddNewbutton" runat="server" class="divLicenseInfon divaddnew">
        <span style="float: left; margin-right: 10px; margin-left: 10px;">
            <h4>
                Audit Log</h4>
        </span>
    </div>
    <div class="clear">
    </div>
    <div class="userHide searchBoxhidden">
        <div class="clear">
            <div class="close" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
            </div>
        </div>
        <fieldset class="PermitSearch" style="position: relative">
            <legend></legend>
            <table class="SearchTable boardinfo" align="center" style="height: 70px;">
                <tbody>
                    <tr>
                        <td align="right" style="vertical-align: middle; width: 137px;">
                            <label>
                                Severity :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:DropDownList ID="ddlSeverity" Style="width: 189px;" CssClass="DropdownList"
                                runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Information</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                Log ID :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtLogID" Style="width: 181px !important;" runat="server" CssClass="inputTextBox"
                                MaxLength="50"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="vertical-align: middle; width: 137px;">
                            <label>
                                Application :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:DropDownList ID="ddlApplication" Style="width: 189px;" CssClass="DropdownList"
                                runat="server">
                            </asp:DropDownList>
                        </td>
                        <td align="right" style="vertical-align: middle; width: 137px;">
                            <label>
                                Category :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:DropDownList ID="ddlCategory" Style="width: 189px;" CssClass="DropdownList"
                                runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Screening</asp:ListItem>
                                <asp:ListItem>Notify</asp:ListItem>
                                <asp:ListItem>Audit</asp:ListItem>
                                <asp:ListItem>Task</asp:ListItem>
                                <asp:ListItem>Payment</asp:ListItem>
                                <asp:ListItem>Report</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                User Name :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtUserName" Style="width: 181px !important;" runat="server" CssClass="inputTextbox"
                                MaxLength="14"></asp:TextBox>
                        </td>
                        <td align="right" style="vertical-align: middle; width: 137px;">
                            <label>
                                Message :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtMessage" Style="width: 181px !important;" runat="server" CssClass="inputTextbox"
                                MaxLength="14"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                Time From :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtReadyDate" Style="width: 181px !important;" runat="server" CssClass="inputTextBox"
                                MaxLength="50"></asp:TextBox>
                        </td>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                Time To :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtT0" Style="width: 181px !important;" runat="server" CssClass="inputTextBox"
                                MaxLength="50"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                Title :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:DropDownList ID="ddlTitle" Style="width: 189px;" CssClass="DropdownList" runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Application Save</asp:ListItem>
                                <asp:ListItem>Message Sent</asp:ListItem>
                                <asp:ListItem>Application Submitted</asp:ListItem>
                                <asp:ListItem>License Renewed</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="right" style="vertical-align: middle;" colspan="2">
                        </td>
                    </tr>
                </tbody>
            </table>
            <div style="width: 90%; margin: 0 auto;">
                <span class="fltrt">
                    <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search"
                        OnClick="btnSearch_Click" ValidationGroup="vgSerch" CausesValidation="true" />
                    <asp:LinkButton ID="btnSearchCancel" CssClass="secondary small" runat="server" Text="Cancel"
                        OnClick="btnSearchCancel_Click"></asp:LinkButton>
                </span>
            </div>
        </fieldset>
    </div>
    <div class="clear">
    </div>
    <div class="gridUpperDiv">
        <a class="down_arrow"></a><span class="fltlt">
            <asp:LinkButton ID="lnkShowAll" CssClass="" runat="server" OnClick="lnkArchive_Click">Show All</asp:LinkButton>
        </span>
        <div class="fltrt rightIcon">
            <a title="find" href="javascript:void()" onclick="javascript:showDivSlide('.userHide');hideDivSlide('.searchBbutton');">
                <img src="../../App_Themes/Theme1/images/search_icon.png" /></a>
        </div>
    </div>
    <div runat="server" id="divGridView" visible="true" class="">
        <div class="divLicenseInfo">
            <asp:GridView ID="gvAuditLog" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                CssClass="index brdr radius mrgnTp4 pdng2 grid" Width="100%" CellPadding="5"
                OnRowDataBound="gvAuditLog_RowDataBound" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="#">
                        <ItemStyle />
                        <EditItemTemplate>
                            <div class="divGridEdit" style="border: 1px solid rgb(232, 232, 232) !important;
                                width: 90%; margin: 0px auto;">
                                <p style="font-size: 15px; font-weight: bold; width: 99%; margin: 0px auto; background-color: aliceblue;
                                    height: 25px; padding-top: 5px;">
                                    <span>
                                        <asp:Label ID="lblLogNoEdit" runat="server" Text="Label"></asp:Label>
                                    </span>
                                </p>
                                <div class="clear">
                                </div>
                                <table style="margin: 5px auto; width: 95%; padding: 5px;">
                                    <tr>
                                        <td align="left" class="colWidh1" style="padding: 5px;" colspan="2">
                                            <b style="font-size: 14px;">
                                                <asp:Label ID="lblLogNoEdit2" runat="server" Text="Label"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="colWidh1" style="padding: 5px; width: 215px;">
                                            <label class="heading input-label">
                                                Timestamp :</label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblTimestampEdit" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="colWidh1" style="padding: 5px;">
                                            <label class="heading input-label">
                                                Application :</label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblApplicationEdit" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="colWidh1" style="padding: 5px;">
                                            <label class="heading input-label">
                                                User Name :</label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblUsernameEdit" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="colWidh1" style="padding: 5px;">
                                            <label class="heading input-label">
                                                Severity:</label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblSeverityEdit" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="colWidh1" style="padding: 5px;">
                                            <label class="heading input-label ">
                                                Title :</label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblTitleEdit" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="colWidh1" style="padding: 5px;">
                                            <label class="heading input-label ">
                                                Category :</label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblCategoryEdit" runat="server" Text="Audit"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="colWidh1" style="padding: 5px;">
                                            <label class="heading input-label ">
                                                Message :</label>
                                        </td>
                                        <td>
                                            <span></span>
                                            <asp:Label ID="lblMessageEdit" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="colWidh1" style="padding: 5px;">
                                            <label class="heading input-label">
                                                Request Url :</label>
                                        </td>
                                        <td>
                                            <a runat="server" id="RequestUrl" target="_blank">
                                                <asp:Label ID="lblRequestUrl" runat="server" Text=""></asp:Label></a>
                                            <%----%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="colWidh1" style="padding: 5px;">
                                            <label class="heading input-label">
                                                Request Url Referrer :</label>
                                        </td>
                                        <td>
                                            <a runat="server" id="RequestUrlReferrer" target="_blank">
                                                <asp:Label ID="lblRequestUrlReferrer" runat="server" Text=""></asp:Label></a>
                                            <%--<asp:Label ID="lblRequestUrlReferrer" runat="server" Text=""></asp:Label>--%></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="colWidh1" style="padding: 5px;">
                                            <label class="heading input-label">
                                                Request Browser| Type | Version :</label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblRequestBrowser" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="colWidh1" style="padding: 5px;">
                                            <label class="heading input-label">
                                                User Agent :</label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblUserAgent" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="colWidh1" style="padding: 5px;">
                                            <label class="heading input-label">
                                                User Host Addresss :</label>
                                        </td>
                                        <td>
                                            <span></span>
                                            <asp:Label ID="lblUserHostAddresss" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="colWidh1" style="padding: 5px;">
                                            <label class="heading input-label">
                                                User Host Name :</label>
                                        </td>
                                        <td>
                                            <span></span>
                                            <asp:Label ID="lblUserHostName" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="colWidh1" style="padding: 5px;">
                                            <label class="heading input-label">
                                                Details :</label>
                                        </td>
                                        <td>
                                            <span></span>
                                            <asp:Label ID="lblDetails" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                <div class="toolBar" style="padding: 10px; margin: 10px;">
                                    <span class="fltrt">
                                        <asp:LinkButton ID="lnkLogClose" CssClass="secondary medium bottom" runat="server"
                                            OnClick="lnkLogClose_Click">Close</asp:LinkButton></span>
                                </div>
                            </div>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <%-- <%# Eval("College_Name")%>--%>
                            <asp:LinkButton ID="lnkLogNo" runat="server" RowIndex='<%# Container.DisplayIndex %>'
                                CommandArgument="1" OnClick="lnkLogNo_Click">2774999</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Timestamp">
                        <ItemStyle />
                        <ItemTemplate>
                            <asp:Label ID="lblTimestamp" runat="server" Text=""></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Application">
                        <ItemStyle />
                        <ItemTemplate>
                            <asp:Label ID="lblApplication" runat="server" Text=""></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Severity">
                        <ItemStyle />
                        <ItemTemplate>
                            <asp:Label ID="lblSeverity" runat="server" Text=""></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="User Name">
                        <ItemStyle />
                        <ItemTemplate>
                            <asp:Label ID="lblUserName" runat="server" Text=""></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Title">
                        <%--   <ItemStyle HorizontalAlign="Center" />--%>
                        <ItemTemplate>
                            <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category">
                        <ItemStyle />
                        <ItemTemplate>
                            <asp:Label ID="lblCategory" runat="server" Text=""></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div style="width: 100%; height: 50px; border: 0px; padding: 3px">
                        No record found !!
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
    </div>
</div>
