<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucMessageTemplate.ascx.cs" Inherits="Module_Administration_ucMessageTemplate" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="ucMessageTemplateEdit.ascx" TagName="ucMessageTemplateEdit" TagPrefix="uc1" %>
<%@ Register Src="../PagerControl.ascx" TagName="PagerControl" TagPrefix="uc3" %>
<style>
    .actions ul {
        margin: 6px 0 0 0;
        float: left;
    }

    tr {
        border: 1px solid #ddd !important;
    }


    .signup .posRelative {
        line-height: 40px;
    }

        .signup .posRelative label {
            width: 100px;
            display: inline-block;
            text-align: right;
            margin-right: 1px;
            padding-right: 20px;
        }

    .signup input[type="text"], input[type="password"], .signup textarea, .signup select {
        background-color: rgb(252, 253, 253);
        border-width: 1px;
        border-style: solid;
        -webkit-box-shadow: 0 1px #e5e5e5 inset;
        -moz-box-shadow: 0 1px #e5e5e5 inset;
        box-shadow: 0 1px #e5e5e5 inset;
        -o-border-radius: 3px;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
        width: 250px;
    }

    .flsSignupForm {
        width: 57%;
        margin: 0 auto;
    }

    .inputDropDown {
        width: 268px;
    }

    .button {
        padding-left: 10px;
        padding-right: 10px;
    }
</style>
<div class="container primary-content ">
    <div class="get-started-content">
        <asp:UpdatePanel ID="pnlTemplate" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnSearchCancel" />
                <asp:AsyncPostBackTrigger ControlID="gvMessageTemplate" />
            </Triggers>
            <ContentTemplate>
                <div style="padding: 10px 0px 10px;" class="divDocumentType divaddnew" id="divAddNewbutton"
                    runat="server">
                    <h4>Template <span class="fltrt">
                        <% if (!ucMessageTemplateEdit2.Visible)
                           { %>
                        <asp:Button ID="btnAddNew" CssClass="buttonGreen medium" runat="server" Text="New Template"
                            OnClick="btnAddNew_Click1" /><%} %></span></h4>
                </div>
                <asp:Literal ID="ltrMessageTemp" runat="server"></asp:Literal>
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
                                        <label>
                                            Application Type :</label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlApplicationType" Width="258px" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                    <td width="100px">
                                        <label>
                                            Template Name :
                                        </label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtTempName" runat="server" autocomplete="off" CssClass="inputTextbox"
                                            MaxLength="300"></asp:TextBox>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="clear">
                        </div>
                        <span class="fltrt">
                            <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search"
                                OnClick="btnSearch_Click" />
                            <asp:LinkButton ID="btnSearchCancel" CssClass="secondary small" runat="server" OnClick="btnSearchCancel_Click"
                                Text="Cancel"></asp:LinkButton></span>
                    </fieldset>
                    <div class="clearb">
                    </div>
                </div>
                <div class="signup">
                    <uc1:ucMessageTemplateEdit ID="ucMessageTemplateEdit2" runat="server" Visible="false" />
                </div>
                <div class="clear">
                </div>
                <div class="gridUpperDiv">
                    <a class="down_arrow"></a><span class="fltlt">
                        <asp:LinkButton ID="LinkButton1" CssClass="" runat="server" OnClick="LinkButton1_Click">Show All</asp:LinkButton>
                    </span>
                    <div class="fltrt rightIcon">
                        <a title="find" href="javascript:void()" onclick="javascript:showDivSlide('.userHide');hideDivSlide('.searchBbutton');">
                            <img src="../../App_Themes/Theme1/images/search_icon.png" /></a>
                    </div>
                </div>

                <fieldset>
                    <%--<div class="action-bar">
                        <div class="actions button-set">
                            <span class="arrow"></span>
                            <ul>
                                <li>
                                    <label>
                                        <asp:CheckBox ID="chkShowAll" runat="server" AutoPostBack="true" OnCheckedChanged="chkShowAll_CheckedChanged" />
                                        Show All</label></li>
                            </ul>
                        </div>
                    </div>--%>
                    <asp:GridView ID="gvMessageTemplate" runat="server" ClientIDMode="Static" AutoGenerateColumns="False"
                        CssClass="index grid" AllowPaging="true" PagerSettings-PageButtonCount="6" GridLines="None"
                        AllowSorting="true" PagerStyle-CssClass="pager_style" RowStyle-CssClass="bordrbtm"
                        PageSize="10" CellPadding="5" Width="100%" ForeColor="#333333" OnPageIndexChanging="gvMessageTemplate_PageIndexChanging"
                        OnSorting="gvMessageTemplate_Sorting">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField ItemStyle-Width="125px">
                                <HeaderTemplate>
                                    Application Type
                                </HeaderTemplate>
                                <ItemStyle Width="20%" />
                                <EditItemTemplate>
                                    <div class=" ">
                                        <fieldset>
                                            <table class="tblTextAlignRight">
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label required">
                                                            Template Type :</label>
                                                    </td>
                                                    <td align="left">
                                                        <asp:DropDownList ID="ddlTempTy" Width="258px" runat="server" Enabled="true">
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="rfvTempTy" InitialValue="-1" ValidationGroup="VGTemplate"
                                                            ControlToValidate="ddlTempTy" Text="*" ForeColor="Red" Display="None" SetFocusOnError="True"
                                                            runat="server" ErrorMessage="Please select template type"></asp:RequiredFieldValidator>
                                                        <asp:ValidatorCalloutExtender ID="VCETempTY" runat="server" TargetControlID="rfvTempTy"
                                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                                        </asp:ValidatorCalloutExtender>
                                                    </td>
                                                </tr>
                                                <%--  <tr>
                                                    <td>
                                                        <label class="input-label required">
                                                            Account Type :</label>
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlAccountTy" Width="258px" AutoPostBack="true" runat="server"
                                                            OnSelectedIndexChanged="ddlAccountTy_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="rfvAccountTy" InitialValue="-1" ValidationGroup="VGTemplate"
                                                            ControlToValidate="ddlTempTy" Text="*" ForeColor="Red" Display="None" SetFocusOnError="True"
                                                            runat="server" ErrorMessage="Please select Account type"></asp:RequiredFieldValidator>
                                                        <asp:ValidatorCalloutExtender ID="VCEAccountTY" runat="server" TargetControlID="rfvAccountTy"
                                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                                        </asp:ValidatorCalloutExtender>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label required">
                                                            Template Apply To :</label>
                                                    </td>
                                                    <td align="left">
                                                        <asp:DropDownList ID="ddlApplyTo" Width="258px" runat="server">
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="rfvddlApplyTo" InitialValue="-1" ValidationGroup="VGTemplate"
                                                            ControlToValidate="ddlApplyTo" Text="*" ForeColor="Red" Display="None" SetFocusOnError="True"
                                                            runat="server" ErrorMessage="Please select template apply to"></asp:RequiredFieldValidator>
                                                        <asp:ValidatorCalloutExtender ID="VCEddlApplyTo" runat="server" TargetControlID="rfvddlApplyTo"
                                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                                        </asp:ValidatorCalloutExtender>
                                                    </td>
                                                </tr>--%>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label required">
                                                            Template Name :</label>
                                                    </td>
                                                    <td align="left">
                                                        <asp:TextBox ID="txtTempName" TextMode="MultiLine" Enabled="true" runat="server"
                                                            Width="250px" autocomplete="off" CssClass="inputTextbox"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvTempName" ValidationGroup="VGTemplate" ControlToValidate="txtTempName"
                                                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                                            ErrorMessage="Please enter template name"></asp:RequiredFieldValidator>
                                                        <asp:ValidatorCalloutExtender ID="vceTN" runat="server" TargetControlID="rfvTempName"
                                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                                        </asp:ValidatorCalloutExtender>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label">
                                                            Subject :</label>
                                                    </td>
                                                    <td align="left">
                                                        <asp:TextBox ID="txtTempSub" TextMode="MultiLine" runat="server" Width="250px" autocomplete="off"
                                                            CssClass="inputTextbox"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <%--     <tr>
                                                    <td align="right">
                                                        <label class="input-label required">
                                                            Start Date :</label>
                                                    </td>
                                                    <td align="left">
                                                        <asp:TextBox ID="txtstartDate" runat="server" placeholder="MM/DD/YYYY" Width="250px"
                                                            autocomplete="off" CssClass="inputTextbox calender"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvStartDate" ValidationGroup="VGTemplate" ControlToValidate="txtstartDate"
                                                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                                            ErrorMessage="Date should be in MM/DD/YYYY format"></asp:RequiredFieldValidator>
                                                        <asp:ValidatorCalloutExtender ID="vceSD" runat="server" TargetControlID="rfvStartDate"
                                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                                        </asp:ValidatorCalloutExtender>
                                                        <asp:RegularExpressionValidator ID="revStartD" runat="server" ControlToValidate="txtstartDate"
                                                            Display="None" ErrorMessage="Date should be in MM/DD/YYYY format" Text="*" ValidationGroup="VGTemplate"
                                                            ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$">
                                                        </asp:RegularExpressionValidator>
                                                        <asp:ValidatorCalloutExtender ID="vceSDate" runat="server" TargetControlID="revStartD"
                                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                                        </asp:ValidatorCalloutExtender>
                                                      
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <label class="input-label required">
                                                            End Date :</label>
                                                    </td>
                                                    <td align="left">
                                                        <asp:TextBox ID="txtEndD" runat="server" placeholder="MM/DD/YYYY" Width="250px" autocomplete="off"
                                                            CssClass="inputTextbox calender"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvEndDate" ValidationGroup="VGTemplate" ControlToValidate="txtEndD"
                                                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                                            ErrorMessage="Date should be in MM/DD/YYYY format"></asp:RequiredFieldValidator>
                                                        <asp:ValidatorCalloutExtender ID="vceEndDate" runat="server" TargetControlID="rfvEndDate"
                                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                                        </asp:ValidatorCalloutExtender>
                                                        <asp:RegularExpressionValidator ID="revEndDate" runat="server" ControlToValidate="txtEndD"
                                                            Display="None" ErrorMessage="Date should be in MM/DD/YYYY format" Text="*" ValidationGroup="VGTemplate"
                                                            ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$">
                                                        </asp:RegularExpressionValidator>
                                                        <asp:ValidatorCalloutExtender ID="vceEndDat" runat="server" TargetControlID="revEndDate"
                                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                                        </asp:ValidatorCalloutExtender>
                                                 
                                                    </td>
                                                </tr>--%>
                                            </table>
                                            <div class="clear">
                                                <div class="clear">
                                                    <%--          <table class="tblTag" id="tagMember" visible="false" runat="server">
                                                        <tr>
                                                            <td colspan="2">
                                                                <u>Use these tags for Member Info Template</u>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                #Member_Info_First_Name
                                                            </td>
                                                            <td>
                                                                #Member_Info_Last_Name
                                                            </td>
                                                            <td>
                                                                #Member_License_Number
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                #Member_Info_Email
                                                            </td>
                                                            <td>
                                                                #Member_Info_Registration_Date
                                                            </td>
                                                            <td>
                                                                #LAPP_Reference_Number
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                #License_Renewal_Url
                                                            </td>
                                                            <td>
                                                                #Expiration_Date
                                                            </td>
                                                            <td>
                                                                #Reference_Number
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                #Transaction_Date
                                                            </td>
                                                            <td>
                                                                #License_Period
                                                            </td>
                                                            <td>
                                                                #Renewal_Process_Date
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                #Renewal_Fee
                                                            </td>
                                                            <td>
                                                                #Late_Fee
                                                            </td>
                                                            <td>
                                                                #Total_Fee
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="tblTag" id="tagFirm" visible="false" runat="server">
                                                        <tr>
                                                            <td colspan="2">
                                                                <u>Use these tags for Firm Info Template</u>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                #Firm_Info_Business_Comapny_Name
                                                            </td>
                                                            <td>
                                                                #Firm_Info_Business_Last_name
                                                            </td>
                                                            <td>
                                                                #Firm_Info_Business_First_name
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                #Company_Id
                                                            </td>
                                                            <td>
                                                                #Firm_Info_Business_Email
                                                            </td>
                                                            <td>
                                                                #Firm_Info_Business_City
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                #Corporate_Renewal_Url
                                                            </td>
                                                            <td>
                                                                #Expiration_Date
                                                            </td>
                                                            <td>
                                                                #Reference_Number
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                #Transaction_Date
                                                            </td>
                                                            <td>
                                                                #License_Period
                                                            </td>
                                                            <td>
                                                                #Renewal_Process_Date
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                #Renewal_Fee
                                                            </td>
                                                            <td>
                                                                #Late_Fee
                                                            </td>
                                                            <td>
                                                                #Total_Fee
                                                            </td>
                                                        </tr>
                                                    </table>--%>
                                                </div>
                                            </div>
                                            <div class="posRelative" style="width: 90% !important">
                                                <h3>Message Text :</h3>
                                                <CKEditor:CKEditorControl ID="txtMessage" runat="server"></CKEditor:CKEditorControl>
                                            </div>
                                            <div class="toolBar">
                                                <span class="fltrt">
                                                    <asp:Button ID="btnRefresh" runat="server" Visible="false" CssClass="buttonGreen medium"
                                                        Text="Refresh Sample Display" OnClick="btnRefresh_Click" />
                                                    <asp:Button ID="btnSave" ValidationGroup="VGTemplate" CausesValidation="true" runat="server"
                                                        CssClass="buttonGreen medium" Text="Update" OnClick="btnSave_Click" />
                                                    <asp:Button ID="btnCancel" runat="server" CssClass="secondary medium " Text="Cancel"
                                                        OnClick="btnCancel_Click" />
                                                </span>
                                            </div>
                                        </fieldset>
                                    </div>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <%# Eval("Name")%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-Width="125px">
                                <ItemStyle Width="20%" />
                                <HeaderTemplate>
                                    Template Name
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <%# Eval("template_name")%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-Width="200px">
                                <HeaderTemplate>
                                    Subject
                                </HeaderTemplate>
                                <ItemStyle Width="40%" />
                                <ItemTemplate>
                                    <%# Eval("Template_Subject")%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-Width="180px" HeaderStyle-HorizontalAlign="Center">
                                <HeaderTemplate>
                                    Action
                                </HeaderTemplate>
                                <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" Width="10%" />
                                <ItemTemplate>
                                    <%--<asp:ImageButton ID="imgbtnDisable" CssClass="imgDelete" CommandArgument='<%# Eval("page_alert_message_id") %>'
                            runat="server" ToolTip='<%# Eval("ToolTip") %>' OnClick="Enable_Click" ImageUrl='<%# "~/App_Themes/Theme1/images/"+ Eval("ImageUrl") %>' />--%>
                                    <asp:ImageButton ID="ImageButton1" CssClass="imgDelete" CommandArgument='<%# Eval("page_alert_message_id") %>'
                                        runat="server" ToolTip="Edit" RowIndex='<%# Container.DisplayIndex %>' ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                        OnClick="imgBtnEdit_Click" />
                                    <%--   <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                        CommandArgument='<%# Eval("page_alert_message_id") %>' ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                        OnClientClick="javascript:return confirm('Are you sure you want to delete?');"
                                        OnClick="imgBtnDelete_Click" />--%>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#0D83DD" ForeColor="White" Height="30" BorderStyle="None"
                            Font-Bold="True" />
                        <RowStyle CssClass="no-sort" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        <EmptyDataTemplate>
                            <div style="width: 100%; height: 200px; border: 0px; padding: 3px">
                                No record found.
                            </div>
                        </EmptyDataTemplate>
                    </asp:GridView>
                    <fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <br />
    <br />
</div>
