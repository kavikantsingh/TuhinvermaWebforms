<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDocumentUpload.ascx.cs" Inherits="Module_UI_School_SchoolApplication_ucDocumentUpload" %>



<asp:UpdatePanel UpdateMode="Conditional" ChildrenAsTriggers="true" ID="upDoc" runat="server">
    <ContentTemplate>

        <asp:Panel ID="upComplex" runat="server">
            <table class="tblApplReqForm5 wthtop20" style="width: 97%; margin-left: 10px; border: 1px solid rgb(222, 222, 222);">
                <tr>
                    <td class="txtalgnrgt">
                        <label class="input-label required">
                            Document Name :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDocumentName" runat="server"></asp:TextBox>
                    </td>
                    <td class="txtalgnrgt">
                        <label class="input-label required">
                            Document Type :
                        </label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlDocType" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="txtalgnrgt" style="width: 195px; padding-bottom: 15px ! important;">
                        <label class="input-label">
                            Document :
                        </label>
                    </td>
                    <td>
                        <asp:FileUpload ID="fuDocUpload" runat="server" />
                    </td>
                    <td>
                        <asp:Button ID="btnDocUpload" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" OnClick="btnDocUpload_Click" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="4">
                        <div style="text-align: center">
                            <asp:Label ID="lblSuccess" runat="server" Visible="false" Style="color: green; align-content: center" />
                            <asp:Label ID="lblError" runat="server" Visible="false" Style="color: red; align-content: center" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Repeater ID="rptDocumentList" OnItemCommand="rptDocumentList_ItemCommand" runat="server">
                            <HeaderTemplate>
                                <table class="index vlign  grid" id="dvDocumentList" style="color: #333333; margin-left: 6px; border: 1px solid rgb(222, 222, 222); margin-bottom: 10px; width: 98%; border-collapse: collapse;">
                                    <tbody>
                                        <tr>
                                            <th scope="col" style="text-align: center;">Document Type</th>
                                            <th scope="col">Document Name</th>
                                            <th scope="col">Document Link</th>
                                            <th scope="col" style="width: 10%; text-align: center;" align="center">Action</th>
                                        </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td style="width: 110px; text-align: center;"><%# Eval("DocumentTypeIdName") %></td>
                                    <td style="width: 148px;"><%# Eval("DocumentName") %></td>
                                    <td style="width: 145px;"><a id="hlkURL3" class="documentdetail" href="<%# Eval("DocumentPath") %>" target="_blank">Document Detail </a></td>
                                    <td class="vligntop" align="center">
                                        <span class="fltrt" style="margin-right: 20px;">
                                            <div style="width: 20px; display: inline-block">
                                                <asp:ImageButton ID="imgDelete" CssClass="imgDelete" runat="server" ToolTip="Delete" CommandName="Delete"
                                                    OnClientClick="javascript:if(!confirm('Delete this information? this will delete permanently'))return false;"
                                                    CommandArgument='<%#Eval("ProviderDocumentId") %>' ImageUrl="~/App_Themes/Theme1/images/delete.png" />
                                            </div>
                                        </span>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </tbody>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                    </td>
                </tr>
            </table>
        </asp:Panel>

        <asp:Panel ID="upSimple" Visible="false" runat="server">
            <table class="withoutbrder">
                <tbody>
                    <tr>
                        <td style="min-width:205px; text-align:right;">
                            <asp:Label ID="lblSimpleDocText" Text="Document :" runat="server" CssClass="input-label required" />
                        </td>
                        <td> <%--style="width: 277px;"--%>
                            <asp:FileUpload ID="fuSimpleDocUpload" runat="server" />
                        </td>
                        <td>
                            <asp:Button ID="btnSimpleDocUpload" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload Document" OnClick="btnSimpleDocUpload_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <div style="text-align: center">
                                <asp:Label ID="lblSimpleSuccess" runat="server" Visible="false" Style="color: green; align-content: center" />
                                <asp:Label ID="lblSimpleError" runat="server" Visible="false" Style="color: red; align-content: center" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Repeater ID="rptSimpleDocumentList" OnItemCommand="rptSimpleDocumentList_ItemCommand" runat="server">
                                <HeaderTemplate>
                                    <table class="index vlign  grid" id="dvDocumentList" style="color: #333333; margin-left: 6px; border: 1px solid rgb(222, 222, 222); margin-bottom: 10px; width: 98%; border-collapse: collapse;">
                                        <tbody>
                                            <tr>
                                                <th scope="col" style="text-align: center;">Document Type</th>
                                                <th scope="col">Document Name</th>
                                                <th scope="col">Document Link</th>
                                                <th scope="col" style="width: 10%; text-align: center;" align="center">Action</th>
                                            </tr>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td style="width: 110px; text-align: center;"><%# Eval("DocumentTypeIdName") %></td>
                                        <td style="width: 148px;"><%# Eval("DocumentName") %></td>
                                        <td style="width: 145px;"><a id="hlkURL3" class="documentdetail" href="<%# Eval("DocumentPath") %>" target="_blank">Document Detail </a></td>
                                        <td class="vligntop" align="center">
                                            <span class="fltrt" style="margin-right: 20px;">
                                                <div style="width: 20px; display: inline-block">
                                                    <asp:ImageButton ID="imgDelete" CssClass="imgDelete" runat="server" ToolTip="Delete" CommandName="Delete"
                                                        OnClientClick="javascript:if(!confirm('Delete this information? this will delete permanently'))return false;"
                                                        CommandArgument='<%#Eval("ProviderDocumentId") %>' ImageUrl="~/App_Themes/Theme1/images/delete.png" />
                                                </div>
                                            </span>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody>
                                </table>
                                </FooterTemplate>
                            </asp:Repeater>
                        </td>
                    </tr>
                </tbody>
            </table>
        </asp:Panel>

    </ContentTemplate>
    <Triggers>
        <asp:PostBackTrigger ControlID="btnDocUpload" />
        <asp:PostBackTrigger ControlID="btnSimpleDocUpload" />
    </Triggers>
</asp:UpdatePanel>


