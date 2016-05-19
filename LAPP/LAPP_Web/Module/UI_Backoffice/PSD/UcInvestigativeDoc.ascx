<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UcInvestigativeDoc.ascx.cs" Inherits="Module_UI_Backoffice_PSD_UcInvestigativeDoc" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<style>
    .grid .tblgridName tr {
        border: 0px !important;
    }

    .index tbody .InEditModetd, .index tfoot .InEditModetd {
        border: 0px;
    }
</style>

<div class="clear textBoxAlign" style="padding-bottom: 40px;">
    <div style="border: 1px solid #d4d8db; margin-top: 10px;">
        <div class="blockheader" style="margin: 0px 0px -3px auto;">
            <p style="padding-top: 7px;">
                <span>Add Document   </span>
            </p>
        </div>
        <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
            <tr>
                <td style="width: 140px;" align="right">
                    <label class="input-label">
                        Document Name :</label>
                </td>
                <td>

                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtDocumentName" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">
                        Document Type :</label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlDocumentType" runat="server" CssClass="DropdownList">
                        <asp:ListItem Value="-1">Select</asp:ListItem>
                        <asp:ListItem Value="1">Certificate of Individual </asp:ListItem>
                        <asp:ListItem Value="2">Certification</asp:ListItem>
                        <asp:ListItem Value="3">Recertification</asp:ListItem>
                    </asp:DropDownList>
                </td>

            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">Document :</label></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="btnUploadLicensee" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                        Text="Upload" OnClick="btnBindGridCertificateofCompletion_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div class="brdr radius mrgnTp4 pdng2" style="padding-left: 4px;">
        <table style="width: 90%;">
            <tr>
                <td style="width: 132px;" align="right">
                    <label class="input-label">
                        Document Type :</label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlDocumentTypeSearch" CssClass="DropdownList" runat="server">
                        <asp:ListItem Value="-1">Select</asp:ListItem>
                        <asp:ListItem Value="1">Certificate of Individual </asp:ListItem>
                        <asp:ListItem Value="2">Certification</asp:ListItem>
                        <asp:ListItem Value="3">Recertification</asp:ListItem>
                    </asp:DropDownList>
                </td>

                <td align="right">
                    <label class="input-label">
                        Document Upload Date :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox calender" autocomplete="off" ID="txtDocumentUploadDate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">
                        Document Category :</label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlDocumentCategory" CssClass="DropdownList" runat="server">
                        <asp:ListItem Value="-1">Select</asp:ListItem>
                        <asp:ListItem Value="1">Certificate of Individual </asp:ListItem>
                        <asp:ListItem Value="2">Certification</asp:ListItem>
                        <asp:ListItem Value="3">Recertification</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td colspan="2">
                    <span class="fltrt" style="margin-right: 21px;">
                        <asp:Button ID="btnAKASave" ValidationGroup="VGSchool" CssClass="buttonGreen medium"
                            runat="server" Text="Search" CausesValidation="true" />
                        <asp:LinkButton ID="lnkAKACancel" CssClass="secondary medium bottom buttonalignment"
                            runat="server">Cancel</asp:LinkButton></span>
                </td>
            </tr>
        </table>
    </div>

    <div class="divLicenseInfo">
        <table class="index brdr radius mrgnTp4 pdng2 grid" id="Table3" style="color: #333333; width: 100%; border-collapse: collapse;"
            cellpadding="5" cellspacing="0">
            <tbody>
                <tr>
                    <th scope="col">Document Name
                    </th>
                    <th scope="col">Document Type
                    </th>
                    <th scope="col">Date
                    </th>
                    <th scope="col">Link
                    </th>
                </tr>
                <tr class="bordrbtm gridrow">
                    <td class="InEditModetd">MI1509211123563-78-Individual.jpg
                    </td>
                    <td>Certificate of Individual
                    </td>
                    <td>01/01/2015
                    </td>
                    <td>
                        <a target="_blank" href="../../../App_Themes/Theme1/images/Chrysanthemum.jpg" class="link">Document Details </a>
                    </td>
                </tr>
                <tr class="bordrbtm gridrow">
                    <td class="InEditModetd">MI1509211123563-78-Certification.jpg
                    </td>
                    <td>Certification
                    </td>
                    <td>01/01/2015
                    </td>
                    <td>
                        <a target="_blank" href="../../../App_Themes/Theme1/images/Chrysanthemum.jpg" class="link">Document Details </a>
                    </td>
                </tr>
                <tr class="bordrbtm gridrow">
                    <td class="InEditModetd">MI150921110444-79-Recertification.jpg
                    </td>
                    <td>Recertification
                    </td>
                    <td>01/01/2015
                    </td>
                    <td>
                        <a target="_blank" href="../../../App_Themes/Theme1/images/Chrysanthemum.jpg" class="link">Document Details </a>
                    </td>
                </tr>
            </tbody>
        </table>
        <div style="display: none;">
            <asp:GridView ID="GridView1" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
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
    <div style="display: none;">
        <div runat="server" id="divGridView" visible="true" class="">
            <div class="divLicenseInfo">
                <asp:GridView ID="gvDocuments" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                    CssClass="index brdr radius mrgnTp4 pdng2 grid" RowStyle-CssClass="bordrbtm gridrow"
                    AllowPaging="true" PagerSettings-PageButtonCount="6" GridLines="None" AllowSorting="true"
                    PagerStyle-CssClass="pager_style" PageSize="10" OnPageIndexChanging="gvDocuments_PageIndexChanging"
                    Width="100%" CellPadding="5" ForeColor="#333333">
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
                                <a target="_blank" href="../../../App_Themes/Theme1/images/Chrysanthemum.jpg" class="link">Document Details </a>
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
    <div style="display: none;">
        <div class="blockheader" style="margin: 15px 0px -3px auto;">
            <p style="padding-top: 7px;">
                <span>Certification : </span>
            </p>
        </div>
        <div class="divLicenseInfo" style="margin-top: 15px;">

            <div>
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
    </div>
    <div style="display: none;">
        <div class="blockheader" style="margin: 15px 0px -3px auto;">
            <p style="padding-top: 7px;">
                <span>Recertification : </span>
            </p>
        </div>
        <div class="divLicenseInfo" style="margin-top: 15px;">

            <div>
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
    </div>
    <div style="display: none;">
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
    <div class="buttons iefix-5 inline" visible="false" runat="server" id="DivbtnSaveCancel">
        <div class="toolBar" style="padding: 4px; display: none;">
            <span class="fltrt">
                <asp:Button ID="btnSavePersonal" CssClass="buttonGreen medium" runat="server" Text="Save" />
                <asp:LinkButton CssClass="secondary medium bottom" ID="lnkCancelPersonal" runat="server">Cancel</asp:LinkButton>
            </span>
        </div>
    </div>
</div>
<div class="buttons iefix-5 inline" runat="server" id="DivbtnHistory">
    <div class="toolBar" style="padding: 4px; display:none;">
        <span class="fltlft">
           <%-- <asp:Button ID="btnShowHistory" CssClass="buttonGreen medium" runat="server" Text="Show History"
                OnClick="btnShowHistory_Click" />
            <asp:LinkButton runat="server" Enabled="false" ToolTip="Previous" CssClass="link-next-prev btn-info btn-sm"
                ID="lnkPrev"><<</asp:LinkButton>
            <asp:LinkButton runat="server" Enabled="false" ToolTip="Next" CssClass="link-next-prev btn-info btn-sm"
                ID="lnkNext">>></asp:LinkButton>
            <asp:Button ID="btnShowCurrent" Enabled="false" CssClass="buttonGreen medium" runat="server"
                Text="Show Current" OnClick="btnShowCurrent_Click" />--%>
        </span>
    </div>
</div>