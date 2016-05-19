<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDocumentManagement.ascx.cs" Inherits="Module_Administration_ucDocumentManagement" %>
<style>
    .blockheader {
        height: 30px;
        background-color: #E5EDF2;
        width: 99.1%;
        border: 1px solid rgb(221, 227, 236);
        border-radius: 2px;
        color: rgb(89, 89, 89);
        font-size: 15px;
        font-weight: bold;
        padding-left: 5px;
        margin: 15px 0px -3px auto;
    }

    .heading {
        font-weight: bold;
    }
</style>
<div class="get-started-content" style="padding-bottom: 40px;">
    <div id="divAddNewbutton" runat="server" class="divLicenseInfon divaddnew">
        <span style="float: left; margin-right: 10px; margin-left: 10px;">
            <h4>Document Management</h4>
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
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                First Name :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtFirstName" Style="width: 178px !important;"
                                runat="server" CssClass="inputTextbox" MaxLength="14"></asp:TextBox>
                        </td>
                        <td align="right" style="vertical-align: middle; width: 137px;">
                            <label>
                                Last Name :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtLastName" Style="width: 178px !important;"
                                runat="server" CssClass="inputTextBox" MaxLength="50"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                SS # :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtSSN" Style="width: 178px !important;" runat="server"
                                CssClass="inputTextBox ssn" MaxLength="50"></asp:TextBox>
                        </td>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                Certificate # :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtLicenseNumber" Style="width: 178px !important;"
                                runat="server" CssClass="inputTextBox" MaxLength="50"></asp:TextBox>
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
            <asp:GridView ID="gvIndividualMainGrid" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                CssClass="index brdr radius mrgnTp4 pdng2 grid" Width="100%" CellPadding="5"
                ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Last Name">
                        <EditItemTemplate>
                            <div class="divGridEdit" style="border: 1px solid rgb(232, 232, 232) !important; width: 75%; margin: 0px auto;">
                                <p style="font-size: 15px; font-weight: bold; width: 99%; margin: 0px auto; background-color: aliceblue; height: 25px; padding-top: 5px;">
                                    <span>Document(s)</span>
                                </p>
                                <div class="clear textBoxAlign" style="padding-bottom: 40px;">
                                    <div>
                                        <div class="blockheader" style="margin: 15px 0px -3px auto;">
                                            <p style="padding-top: 7px;">
                                                <span>Licensee : </span>
                                            </p>
                                        </div>
                                        <div>
                                            <div id="DivMsgLicensee">
                                            </div>
                                        </div>
                                        <div runat="server" id="divGridView" visible="true" class="">
                                            <div class="divLicenseInfo">
                                                <asp:GridView ID="gvDocuments" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                    CssClass="index brdr radius mrgnTp4 pdng2 grid" RowStyle-CssClass="bordrbtm gridrow"
                                                    AllowPaging="true" PagerSettings-PageButtonCount="6" GridLines="None" AllowSorting="true"
                                                    PagerStyle-CssClass="pager_style" PageSize="10" Width="100%" CellPadding="5"
                                                    ForeColor="#333333">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Document Name">
                                                            <ItemStyle CssClass="InEditModetd" />
                                                            <EditItemTemplate>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <%# Eval("File_Name")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Document Type">
                                                            <ItemStyle />
                                                            <ItemTemplate>
                                                                <%# Eval("File_Type")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Link">
                                                            <ItemStyle />
                                                            <ItemTemplate>
                                                                <asp:HyperLink ID="hlkURL" CssClass="documentdetail" Target="_blank" runat="server"
                                                                    NavigateUrl='<%# Eval("ENcriptedFileID") %>'> Document Detail </asp:HyperLink>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <EmptyDataTemplate>
                                                        <div style="width: 100%; height: 20px; border: 0px; padding: 3px">
                                                            No record found.
                                                        </div>
                                                    </EmptyDataTemplate>
                                                </asp:GridView>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="blockheader" style="margin: 15px 0px -3px auto;">
                                            <p style="padding-top: 7px;">
                                                <span>New School Application : </span>
                                            </p>
                                        </div>
                                        <div class="divLicenseInfo">
                                            <asp:GridView ID="gvNewApplication" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                CssClass="index brdr radius mrgnTp4 pdng2 grid" RowStyle-CssClass="bordrbtm gridrow"
                                                AllowPaging="true" PagerSettings-PageButtonCount="6" GridLines="None" AllowSorting="true"
                                                PagerStyle-CssClass="pager_style" PageSize="10" Width="100%" CellPadding="5"
                                                ForeColor="#333333">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Document Name">
                                                        <ItemStyle CssClass="InEditModetd" />
                                                        <ItemTemplate>
                                                            <%# Eval("File_Name")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Document Type">
                                                        <ItemStyle />
                                                        <ItemTemplate>
                                                            <%# Eval("File_Type")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Link">
                                                        <ItemStyle />
                                                        <ItemTemplate>
                                                            <asp:HyperLink ID="hlkURL" CssClass="documentdetail" Target="_blank" runat="server"
                                                                NavigateUrl='<%# Eval("ENcriptedFileID") %>'> Document Detail </asp:HyperLink>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <EmptyDataTemplate>
                                                    <div style="width: 100%; height: 20px; border: 0px; padding: 3px">
                                                        No record found.
                                                    </div>
                                                </EmptyDataTemplate>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="blockheader" style="margin: 15px 0px -3px auto;">
                                            <p style="padding-top: 7px;">
                                                <span>Transfer Application : </span>
                                            </p>
                                        </div>
                                        <div class="divLicenseInfo">
                                            <asp:GridView ID="gvTransferApplication" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                CssClass="index brdr radius mrgnTp4 pdng2 grid" RowStyle-CssClass="bordrbtm gridrow"
                                                AllowPaging="true" PagerSettings-PageButtonCount="6" GridLines="None" AllowSorting="true"
                                                PagerStyle-CssClass="pager_style" PageSize="10" Width="100%" CellPadding="5"
                                                ForeColor="#333333">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Document Name">
                                                        <ItemStyle CssClass="InEditModetd" />
                                                        <ItemTemplate>
                                                            <%# Eval("File_Name")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Document Type">
                                                        <ItemStyle />
                                                        <ItemTemplate>
                                                            <%# Eval("File_Type")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Link">
                                                        <ItemStyle />
                                                        <ItemTemplate>
                                                            <asp:HyperLink ID="hlkURL" CssClass="documentdetail" Target="_blank" runat="server"
                                                                NavigateUrl='<%# Eval("ENcriptedFileID") %>'> Document Detail </asp:HyperLink>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <EmptyDataTemplate>
                                                    <div style="width: 100%; height: 20px; border: 0px; padding: 3px">
                                                        No record found.
                                                    </div>
                                                </EmptyDataTemplate>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="blockheader" style="margin: 15px 0px -3px auto;">
                                            <p style="padding-top: 7px;">
                                                <span>Renewals : </span>
                                            </p>
                                        </div>
                                        <div class="divLicenseInfo">
                                            <asp:GridView ID="gvRenewals" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                CssClass="index brdr radius mrgnTp4 pdng2 grid" RowStyle-CssClass="bordrbtm gridrow"
                                                AllowPaging="true" PagerSettings-PageButtonCount="6" GridLines="None" AllowSorting="true"
                                                PagerStyle-CssClass="pager_style" PageSize="10" Width="100%" CellPadding="5"
                                                ForeColor="#333333">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Document Name">
                                                        <ItemStyle CssClass="InEditModetd" />
                                                        <ItemTemplate>
                                                            <%# Eval("File_Name")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Document Type">
                                                        <ItemStyle />
                                                        <ItemTemplate>
                                                            <%# Eval("File_Type")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Link">
                                                        <ItemStyle />
                                                        <ItemTemplate>
                                                            <asp:HyperLink ID="hlkURL" CssClass="documentdetail" Target="_blank" runat="server"
                                                                NavigateUrl='<%# Eval("ENcriptedFileID") %>'> Document Detail </asp:HyperLink>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <EmptyDataTemplate>
                                                    <div style="width: 100%; height: 20px; border: 0px; padding: 3px">
                                                        No record found.
                                                    </div>
                                                </EmptyDataTemplate>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="blockheader" style="margin: 15px 0px -3px auto;">
                                            <p style="padding-top: 7px;">
                                                <span>Temporary Application : </span>
                                            </p>
                                        </div>
                                        <div class="divLicenseInfo">
                                            <asp:GridView ID="gvTemporaryApplication" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                CssClass="index brdr radius mrgnTp4 pdng2 grid" RowStyle-CssClass="bordrbtm gridrow"
                                                AllowPaging="true" PagerSettings-PageButtonCount="6" GridLines="None" AllowSorting="true"
                                                PagerStyle-CssClass="pager_style" PageSize="10" Width="100%" CellPadding="5"
                                                ForeColor="#333333">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Document Name">
                                                        <ItemStyle CssClass="InEditModetd" />
                                                        <ItemTemplate>
                                                            <%# Eval("File_Name")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Document Type">
                                                        <ItemStyle />
                                                        <ItemTemplate>
                                                            <%# Eval("File_Type")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Link">
                                                        <ItemStyle />
                                                        <ItemTemplate>
                                                            <asp:HyperLink ID="hlkURL" CssClass="documentdetail" Target="_blank" runat="server"
                                                                NavigateUrl='<%# Eval("ENcriptedFileID") %>'> Document Detail </asp:HyperLink>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <EmptyDataTemplate>
                                                    <div style="width: 100%; height: 20px; border: 0px; padding: 3px">
                                                        No record found.
                                                    </div>
                                                </EmptyDataTemplate>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="blockheader" style="margin: 15px 0px -3px auto;">
                                            <p style="padding-top: 7px;">
                                                <span>Duplicate/Replacement : </span>
                                            </p>
                                        </div>
                                        <div class="divLicenseInfo">
                                            <asp:GridView ID="gvDuplicateLicense" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                CssClass="index brdr radius mrgnTp4 pdng2 grid" RowStyle-CssClass="bordrbtm gridrow"
                                                AllowPaging="true" PagerSettings-PageButtonCount="6" GridLines="None" AllowSorting="true"
                                                PagerStyle-CssClass="pager_style" PageSize="10" Width="100%" CellPadding="5"
                                                ForeColor="#333333">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Document Name">
                                                        <ItemStyle CssClass="InEditModetd" />
                                                        <ItemTemplate>
                                                            <%# Eval("File_Name")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Document Type">
                                                        <ItemStyle />
                                                        <ItemTemplate>
                                                            <%# Eval("File_Type")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Link">
                                                        <ItemStyle />
                                                        <ItemTemplate>
                                                            <asp:HyperLink ID="hlkURL" CssClass="documentdetail" Target="_blank" runat="server"
                                                                NavigateUrl='<%# Eval("ENcriptedFileID") %>'> Document Detail </asp:HyperLink>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <EmptyDataTemplate>
                                                    <div style="width: 100%; height: 20px; border: 0px; padding: 3px">
                                                        No record found.
                                                    </div>
                                                </EmptyDataTemplate>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                                <div class="toolBar" style="padding: 10px; margin: 7px;">
                                    <span class="fltrt">
                                        <asp:LinkButton ID="btnDocumentClose" CssClass="secondary medium bottom" runat="server"
                                            OnClick="btnDocumentClose_Click">Close</asp:LinkButton></span>
                                </div>
                            </div>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <%# Eval("Last_Name") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="First Name">
                        <ItemTemplate>
                            <%# Eval("First_Name") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="License #">
                        <ItemTemplate>
                            <%# Eval("License_Number")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Action" HeaderStyle-CssClass="aligncenter" ItemStyle-CssClass="aligncenter">
                        <ItemTemplate>
                            <itemstyle width="150px;" />
                            <span>
                                <asp:LinkButton ID="lnkViewDocument" CommandArgument='<%# Eval("Individual_Id") %>'
                                    RowIndex='<%# Container.DisplayIndex %>' runat="server" OnClick="lnkViewDocument_Click">View Document</asp:LinkButton>
                            </span>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div style="width: 100%; height: 20px; border: 0px; padding: 3px">
                        No record found.
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
    </div>
</div>

