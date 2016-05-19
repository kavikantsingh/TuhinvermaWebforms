<%@ Control Language="C#" AutoEventWireup="true" CodeFile="uclapp_application_deficiency_reason.ascx.cs"
    Inherits="uclapp_application_deficiency_reason" %>
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
        <%-- <asp:AsyncPostBackTrigger ControlID="gvDocumentType" />--%>
    </Triggers>
    <ContentTemplate>
        <div style="padding: 10px 0px 25px;" class="divDocumentType divaddnew" id="divAddNewbutton"
            runat="server">
            <h4 style="float: left;">Deficiency Reason
            </h4>
            <span style="float: right; margin-right: 0px;">
                <asp:Button ID="btnAddNew" CssClass="buttonGreen small" runat="server" Text="Add New"
                    CausesValidation="true" OnClick="btnAddNew_Click" />
            </span>
        </div>
        <br />
        <div class="userHide searchBoxhidden">
            <div class="clear">
                <div class="close" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
                </div>
            </div>
            <fieldset class="PermitSearch" style="position: relative">
                <legend></legend>
                <table class="SearchTable" align="center" style="margin: 0 auto;">
                    <tbody>
                        <tr>
                            <td>

                                <label>
                                    Application Type :</label>

                            </td>
                            <td>
                                <asp:DropDownList ID="ddlApplicationTySearch" Style="width: 208px;" CssClass="DropdownList"
                                    runat="server">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <label>
                                    Deficiency Name :</label>
                            </td>
                            <td>
                                <asp:TextBox CssClass="inputTextbox" Style="width: 200px;" ID="txtDefNameSearch"
                                    runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    Is Active :</label>
                            </td>
                            <td>
                                <asp:CheckBox ID="chkIsActiveSearch" runat="server" />
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="clear">
                </div>
                <span class="fltrt">
                    <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search" />
                    <asp:LinkButton ID="btnSearchCancel" CssClass="secondary small" runat="server" Text="Cancel"></asp:LinkButton></span>
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
            </div>
        </div>
        <asp:Literal ID="ltrDocumentType" runat="server"></asp:Literal>
        <div class="brdr radius" id="divAddAppReqPanel" runat="server" visible="false">
            <div style="padding: 25px 0px 12px 0px;">
                <table style="width: 65%; margin: 0px auto;">
                    <tr>
                        <td align="right">
                            <label class="input-label required">
                                Application Type :</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlApplicationtype" Style="width: 208px;" CssClass="DropdownList"
                                runat="server">
                            </asp:DropDownList>
                        </td>
                        <td align="right">
                            <label class="input-label required">
                                Deficiency Name :</label>
                        </td>
                        <td>
                            <asp:TextBox CssClass="inputTextbox" Style="width: 200px;" ID="txtName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label ">
                                Description :</label>
                        </td>
                        <td colspan="3">
                            <asp:TextBox CssClass="inputTextbox" Style="width: 542px; height: 60px;" ID="txtDesc"
                                runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label ">
                                Is Active :</label>
                        </td>
                        <td>
                            <asp:CheckBox ID="chkIsActive" runat="server" />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="toolBar" style="padding: 4px; margin: 6px;">
                <span class="fltrt">
                    <asp:Button ID="btnSaveDocument" CssClass="buttonGreen medium" runat="server" Text="Save"
                        OnClick="btnSaveDocument_Click" />
                    <asp:Button ID="btnCancelSave" CssClass="secondary medium" runat="server" Text="Cancel"
                        OnClick="btnCancelSave_Click" /></span>
            </div>
        </div>
        <div runat="server" id="divGridView" visible="true" class="">
            <div style="margin-top: 3px;">
                <asp:GridView ID="gvDeficiency" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                    CssClass="index brdr radius pdng2 grid" RowStyle-CssClass="bordrbtm gridrow"
                    AllowPaging="true" PagerSettings-PageButtonCount="6" GridLines="None" AllowSorting="true"
                    PagerStyle-CssClass="pager_style" PageSize="20" Width="100%" CellPadding="5"
                    ForeColor="#333333" OnPageIndexChanging="gvDeficiency_PageIndexChanging">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Application Type">
                            <ItemStyle CssClass="" Width="20%" />
                            <EditItemTemplate>
                                <div class="divGridEdit">
                                    <table style="margin: 5px auto; width: 75%;" class="tblParentNewApplReqForm tblLicensureInformation wthtop20">
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
                                                    Name :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="inputTextbox" Style="width: 200px;" ID="txtNameEdit" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label ">
                                                    Description :</label>
                                            </td>
                                            <td colspan="3">
                                                <asp:TextBox CssClass="inputTextbox" ID="txtDescEdit" Style="width: 540px; height: 60px;" runat="server"
                                                    TextMode="MultiLine"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">
                                                    Is Active :
                                                </label>
                                            </td>
                                            <td>
                                                <label class="input-label">
                                                    <asp:CheckBox ID="chkIsActiveEdit" runat="server" Text="" />
                                                </label>
                                            </td>
                                    </table>
                                    <div class="toolBar" style="padding: 4px; margin: 6px;">
                                        <span class="fltrt">
                                            <asp:Button ID="btnDocumentsUpdate" CssClass="buttonGreen medium" runat="server"
                                                Text="Update" OnClick="btnDocumentsUpdate_Click" />
                                            <asp:Button ID="btnDocumentsCancelUpdate" CssClass="secondary medium" runat="server"
                                                Text="Cancel" OnClick="btnDocumentsCancelUpdate_Click" /></span>
                                    </div>
                                </div>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <%#Eval("Name")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Deficiency Name">
                            <ItemStyle Width="15%" />
                            <ItemTemplate>
                                <%#Eval("Deficiency_Name")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Is Active">
                            <ItemStyle Width="10%" />
                            <ItemTemplate>
                                <asp:CheckBox ID="chkIsActive" runat="server" Checked='<%#Eval("Is_Active")%>' Enabled="false" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Action" HeaderStyle-CssClass="alincenter">
                            <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" Width="10%" />
                            <ItemTemplate>
                                <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" CommandArgument='<%# Eval("Deficiency_ID") %>'
                                    runat="server" RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                    OnClick="imgbtnEdit_Click" />
                                <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                    CommandArgument='<%# Eval("Deficiency_ID") %>' ImageUrl="~/App_Themes/Theme1/images/delete.png"
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
