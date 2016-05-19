<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDocumentType.ascx.cs"
    Inherits="ucDocumentType" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<style type="text/css">
    .grid .bordrbtm {
        border-bottom: 0px !important;
    }

    .divDocumentType {
        margin-top: 3px;
        line-height: inherit; /* border-right: 1px solid rgb(237, 232, 232);*/
    }

    .divaddpnl {
        width: 100%;
        border: 1px solid lightgrey; /* border-left: 0px solid whitesmoke;*/
    }

    .divGridEdit {
        width: 95%;
        margin: 10px auto;
        border: 1px solid rgb(230, 230, 230);
    }

    div#divAddbutton {
        padding-bottom: 36px;
    }

    .alincenter {
        text-align: center;
    }

    .lnkbtn {
        background-position: 0% 194px;
        -webkit-box-shadow: rgb(220, 235, 166) 0px 2px 1px -1px inset;
        box-shadow: rgb(220, 235, 166) 0px 2px 1px -1px inset;
        border: 1px solid rgb(85, 138, 15);
        text-shadow: rgba(0, 0, 0, 0.4) 0px -1px 0px;
        -webkit-user-select: none;
        border-top-left-radius: 3px;
        border-top-right-radius: 3px;
        border-bottom-right-radius: 3px;
        border-bottom-left-radius: 3px;
        font-weight: bold;
        font-style: normal;
        font-variant: normal;
        font-size: 12px;
        font-family: Arial, Helvetica, sans-serif;
        text-align: center;
        display: inline-block;
        height: 22px !important;
        line-height: 22px !important;
        float: none;
        cursor: pointer;
        white-space: nowrap;
        padding: 0px 10px;
        margin: 0px;
        outline: 0px;
        color: rgb(98, 142, 14);
        text-decoration: none !important;
        vertical-align: top;
        width: 60px;
        background-image: url('../App_Themes/Theme1/images/sprites.v1351539994.png');
        background-color: rgb(120, 184, 28);
        color: White !important;
    }

    .RowInEditMode fieldset {
        width: 97%;
        margin: 0 auto;
        border: 0px solid #EBECEC;
        padding: 0px;
    }

    th.center {
        text-align: center;
    }

    .imgDelete {
        width: 16px;
    }
</style>
<asp:UpdatePanel ID="uppnl" runat="server">
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="btnSearchCancel" />
        <asp:AsyncPostBackTrigger ControlID="gvDocumentType" />
    </Triggers>
    <ContentTemplate>
        <div style="padding: 10px 0px 25px;" class="divDocumentType divaddnew" id="divAddNewbutton"
            runat="server">
            <h4 style="float: left;">Application Document
            </h4>
            <span style="float: right; margin-right: 0px;">
                <asp:Button ID="btnAddNew" ValidationGroup="VGDocumentType" CssClass="buttonGreen small"
                    runat="server" Text="Add New" CausesValidation="true" OnClick="btnAddNew_Click" />
            </span>
        </div>
        <br />
        <div class="userHide searchBoxhidden">
            <div class="clear">
                <div class="close" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
                </div>
            </div>
            <div class="clearb">
            </div>
            <fieldset class="PermitSearch" style="position: relative">
                <legend></legend>
                <table class="SearchTable" align="center" style="margin: 0 auto;">
                    <tbody>
                        <tr>
                            <td>
                                <p>
                                    <label>
                                        Setting Name  :</label>
                                </p>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="inputTextbox"></asp:TextBox>
                            </td>
                            <%-- <td width="100px">
                                <label>
                                    Is_Editable
                                    <input type="checkbox" /></label>
                            </td>
                            <td>
                            </td>--%>
                        </tr>
                    </tbody>
                </table>
                <div class="clear">
                </div>
                <span class="fltrt">
                    <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search"
                        OnClick="btnSearch_Click" />
                    <asp:LinkButton ID="btnSearchCancel" CssClass="secondary small" OnClick="btnSearchCancel_Click"
                        runat="server" Text="Cancel"></asp:LinkButton></span>
            </fieldset>
            <div class="clearb">
            </div>
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
                <%--<asp:ImageButton ID="btnPrint" runat="server" ImageUrl="~/App_Themes/Theme1/images/Printer_Blue.png"
                                        OnClick="btnPrint_Click" />
            <a title="Print" href="javascript:void()" onclick="javascript:toggleDiv('.divPrint');">
                <img src="../App_Themes/Theme1/images/Printer_Blue.png" /></a>
            <div id="DivPrint" runat="server" style="display: none" class="divPrint">
                <asp:UpdatePanel ID="upPrint" runat="server">
                    <ContentTemplate>
                        <h4 class="fltlft">
                            Print
                        </h4>
                        <span class="close fltrt"></span>
                        <div class="clear">
                        </div>
                        <asp:Button ID="btnApplicantsResume" Width="120px" runat="server" Text="Print Resume"
                            CssClass="buttonGreen small" />
                        <br />
                        <%--<asp:Button ID="btnPocketCard" Width="120px" runat="server" Text="Print Pocket Card"
                                                    CssClass="buttonGreen small" OnClick="btnPocketCard_Click" />
                        <asp:HyperLink ID="hlPrintPocketCard" runat="server" Text="Print Pocket Card" CssClass="buttonGreen small"
                            NavigateUrl="~/UI/DownloadPocketCard.aspx?MemberId=" Target="_blank"></asp:HyperLink>
                        <br />
                        <asp:Button ID="btnEmailPocketCard" Width="120px" runat="server" Text="Email Pocket Card"
                            CssClass="buttonGreen small" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <a title="comment" href="javascript:void()" onclick="showDiv('.popComment');">
                <img src="../App_Themes/Theme1/images/comment_icon.png" /></a>
        </div>--%>
            </div>
        </div>
        <asp:Literal ID="ltrDocumentType" runat="server"></asp:Literal>
        <div class="brdr radius" id="divAddAppReqPanel" runat="server" visible="false">
            <div style="padding: 25px 0px 12px 0px;">
                <table style="width: 65%; margin: 0px auto;">
                    <tr>
                        <td align="right">
                            <label class="input-label required">
                                Application Type  :</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddltype" Style="width: 208px;" CssClass="DropdownList" runat="server">
                            </asp:DropDownList>
                            <%--<asp:RequiredFieldValidator ID="revtype" ValidationGroup="VGDocumentType" ControlToValidate="ddltype"
                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                            InitialValue="-1" ErrorMessage="Please Select Type."></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="vcetype" runat="server" TargetControlID="revtype"
                            PopupPosition="BottomLeft" HighlightCssClass="error">
                        </asp:ValidatorCalloutExtender>--%>
                        </td>
                        <td align="right">
                            <label class="input-label required">
                                Max Size in KB :
                            </label>
                        </td>
                        <td>
                            <asp:TextBox CssClass="inputTextbox" Style="width: 200px;" ID="txtSize" runat="server"></asp:TextBox>
                            <br />
                            <label class="input-label" style="font-size: 10px; color: red; margin-left: 18px;">
                                Please Enter Size in KB (1024=1MB)</label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label required">
                                Document Type  :</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlDocType" Style="width: 208px;" CssClass="DropdownList" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td align="right">
                            <label class="input-label required">
                                Description  :</label>
                        </td>
                        <td>
                            <asp:TextBox CssClass="inputTextbox" Style="width: 200px;" ID="txtDesc" runat="server"
                                TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label">
                                Applicant :
                            </label>
                        </td>
                        <td>
                            <label class="input-label">
                                <asp:CheckBox ID="chkApplicant" runat="server" Text="" />
                            </label>
                        </td>
                        <td align="right">
                            <label class="input-label">
                                Office :
                            </label>
                        </td>
                        <td>
                            <asp:CheckBox ID="chkOffice" runat="server" Text="" />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="toolBar" style="padding: 4px; margin: 6px;">
                <span class="fltrt">
                    <asp:Button ID="btnSaveDocument" ValidationGroup="VGDocumentType" CssClass="buttonGreen medium"
                        runat="server" Text="Save" CausesValidation="true" OnClick="btnSaveDocument_Click" />
                    <asp:Button ID="btnCancelSave" ValidationGroup="VGDocumentType" CssClass="secondary medium"
                        runat="server" Text="Cancel" CausesValidation="true" OnClick="btnCancelSave_Click" /></span>
            </div>
        </div>
        <div runat="server" id="divGridView" visible="true" class="">
            <div style="margin-top: 3px;">
                <asp:GridView ID="gvDocumentType" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                    CssClass="index brdr radius pdng2 grid" RowStyle-CssClass="bordrbtm gridrow"
                    AllowPaging="true" PagerSettings-PageButtonCount="6" GridLines="None" AllowSorting="true"
                    PagerStyle-CssClass="pager_style" PageSize="20" Width="100%" CellPadding="5"
                    ForeColor="#333333" OnPageIndexChanging="gvDocumentType_PageIndexChanging">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Application Type">
                            <ItemStyle CssClass="" Width="20%" />
                            <EditItemTemplate>
                                <div class="divGridEdit">
                                    <table style="margin: 5px auto; width: 88%;" class="tblParentNewApplReqForm tblLicensureInformation wthtop20">
                                        <tr>
                                            <td align="right">
                                                <label class="input-label required">
                                                    Application Type :</label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddltypeEdit" Style="width: 208px;" CssClass="DropdownList"
                                                    runat="server">
                                                </asp:DropDownList>
                                            </td>
                                            <td align="right">
                                                <label class="input-label required">
                                                    Max Size in KB :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="inputTextbox" Style="width: 200px;" ID="txtSizeEdit" runat="server"></asp:TextBox>
                                                <br />
                                                <label class="input-label" style="font-size: 10px; color: red; margin-left: 18px;">
                                                    Please Enter Size in KB (1024=1MB)</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label required">
                                                    Document Type :</label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlDocTypeEdit" Style="width: 208px;" CssClass="DropdownList"
                                                    runat="server" Enabled="false">
                                                </asp:DropDownList>
                                            </td>
                                            <td align="right">
                                                <label class="input-label required">
                                                    Description :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="inputTextbox" ID="txtDescEdit" Style="width: 200px;" runat="server"
                                                    TextMode="MultiLine"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">
                                                    Applicant :
                                                </label>
                                            </td>
                                            <td>
                                                <label class="input-label">
                                                    <asp:CheckBox ID="chkApplicantEdit" runat="server" Text="" />
                                                </label>
                                            </td>
                                            <td align="right">
                                                <label class="input-label">
                                                    Office :
                                                </label>
                                            </td>
                                            <td>
                                                <asp:CheckBox ID="chkOfficeEdit" runat="server" Text="" />
                                            </td>
                                        </tr>
                                    </table>
                                    <div class="toolBar" style="padding: 4px; margin: 6px;">
                                        <span class="fltrt">
                                            <asp:Button ID="btnDocumentsUpdate" ValidationGroup="VGDocumentType" CssClass="buttonGreen medium"
                                                runat="server" Text="Update" CausesValidation="true" OnClick="btnDocumentsUpdate_Click" />
                                            <asp:Button ID="btnDocumentsCancelUpdate" ValidationGroup="VGDocumentType" CssClass="secondary medium"
                                                runat="server" Text="Cancel" CausesValidation="true" OnClick="btnDocumentsCancelUpdate_Click" /></span>
                                    </div>
                                </div>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <%#Eval("Name")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Document Name">
                            <ItemStyle Width="15%" />
                            <ItemTemplate>
                                <%#Eval("Document_Name")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemStyle Width="30%" />
                            <ItemTemplate>
                                <%#Eval("Description")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Max Size">
                            <ItemStyle Width="10%" />
                            <ItemTemplate>
                                <%#Eval("Max_Size")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Applicant">
                            <ItemStyle Width="10%" />
                            <ItemTemplate>
                                <asp:CheckBox ID="chkApplicant1" runat="server" Checked='<%#Eval("Applicant")%>'
                                    Enabled="false" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Office">
                            <ItemStyle Width="10%" />
                            <ItemTemplate>
                                <asp:CheckBox ID="chkOffice1" runat="server" Checked='<%#Eval("Office")%>' Enabled="false" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Action" HeaderStyle-CssClass="alincenter">
                            <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" Width="10%" />
                            <ItemTemplate>
                                <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" CommandArgument='<%# Eval("document_ID") %>'
                                    runat="server" RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                    OnClick="imgbtnEdit_Click" />
                                <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                    CommandArgument='<%# Eval("document_ID") %>' ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                    OnClientClick="javascript:return confirm('Are you sure you want to delete?');"
                                    OnClick="imgBtnDelete_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerSettings PageButtonCount="6"></PagerSettings>
                    <PagerStyle CssClass="pager_style"></PagerStyle>
                    <RowStyle CssClass="bordrbtm gridrow"></RowStyle>
                </asp:GridView>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
