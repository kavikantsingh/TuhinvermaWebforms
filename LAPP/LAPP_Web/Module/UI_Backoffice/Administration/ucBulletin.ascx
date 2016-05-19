<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucBulletin.ascx.cs" Inherits="Module_Administration_ucBulletin" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="~/Module/UI_Backoffice/Administration/ucEditWecomeMessage.ascx" TagName="ucEditWecomeMessage" TagPrefix="uc1" %>
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
            margin-right: 1px !important;
            padding-right: 8px;
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
        <asp:UpdatePanel ID="upPanelBulletin" runat="server">
            <ContentTemplate>
                <h4>Bulletins <span class="fltrt">
                    <asp:Button ID="btnBulletin" CssClass="buttonGreen medium" Style="width: 160px" runat="server"
                        Text="Add New Bulletin" OnClick="btnBulletin_Click" /></span></h4>
                <div>
                    <uc1:ucEditWecomeMessage ID="ucEditWecomeMessage3" Visible="false" ValidationGroup="vgBulletin"
                        runat="server" />
                </div>
                <fieldset>
                    <div class="action-bar">
                        <div class="actions button-set">
                            <span class="arrow"></span>
                            <ul>
                                <li></li>
                            </ul>
                        </div>
                    </div>
                    <asp:GridView ID="gvBulletin" runat="server" ClientIDMode="Static" AutoGenerateColumns="False"
                        CssClass="index grid" PagerStyle-CssClass="pager_style" Width="100%" CellPadding="4"
                        AlternatingRowStyle-CssClass="AlternateRow" ForeColor="#333333" GridLines="None"
                        OnSorting="gvHomePageMessages_Sorting" AllowPaging="true" AllowSorting="true"
                        PageSize="5" OnPageIndexChanging="gvHomePageMessages_PageIndexChanging">
                        <Columns>
                            <asp:TemplateField ItemStyle-Width="125px" HeaderText="Start Date" SortExpression="start_date">
                                <ItemStyle />
                                <EditItemTemplate>
                                    <fieldset class="signup">
                                        <div class="posRelative">
                                            <label class="input-label required">
                                                Effective Date :</label>
                                            <asp:TextBox ID="txtBeginDate" runat="server" placeholder="MM/DD/YYYY" autocomplete="off" CssClass="inputTextbox calender"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvBeginDate" runat="server" ErrorMessage="Date should be in MM/DD/YYYY format"
                                                ControlToValidate="txtBeginDate" Text="*" ForeColor="Red" ValidationGroup="vgHomePageMsg"
                                                Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender ID="vceBegindate" runat="server" TargetControlID="rfvBeginDate"
                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                            </asp:ValidatorCalloutExtender>
                                            <asp:RegularExpressionValidator ID="revBeginD" runat="server" ControlToValidate="txtBeginDate"
                                                Display="None" ErrorMessage="Date should be in MM/DD/YYYY format" Text="*" ValidationGroup="vgHomePageMsg"
                                                ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$">
                                            </asp:RegularExpressionValidator>
                                            <asp:ValidatorCalloutExtender ID="vceBDate" runat="server" TargetControlID="revBeginD"
                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                            </asp:ValidatorCalloutExtender>
                                            <%--  <asp:MaskedEditExtender ID="MaskedEditExtender1" TargetControlID="txtBeginDate" Mask="MM/DD/YYYY"
                                            runat="server">
                                        </asp:MaskedEditExtender>--%>
                                        </div>
                                        <div class="clear">
                                        </div>
                                        <div class="posRelative">
                                            <label class="input-label">
                                                End Date :</label>
                                            <asp:TextBox ID="txtEndDate" runat="server" placeholder="MM/DD/YYYY" autocomplete="off" CssClass="inputTextbox calender"></asp:TextBox>
                                            <%--<asp:MaskedEditExtender ID="MaskedEditExtender" TargetControlID="txtEndDate" Mask="MM/DD/YYYY"
                                            runat="server">
                                        </asp:MaskedEditExtender>--%>
                                            <asp:RegularExpressionValidator ID="REVEndDate" runat="server" ControlToValidate="txtEndDate"
                                                ErrorMessage="Date should be in MM/DD/YYYY format" Text="*" ValidationGroup="vgHomePageMsg"
                                                Display="None" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$">
                                            </asp:RegularExpressionValidator>
                                            <asp:ValidatorCalloutExtender ID="VCEEndDate" runat="server" TargetControlID="REVEndDate"
                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                            </asp:ValidatorCalloutExtender>
                                            <asp:CompareValidator ID="CMPValidator" ControlToCompare="txtBeginDate" ControlToValidate="txtEndDate"
                                                Type="Date" Operator="GreaterThanEqual" ErrorMessage="Please enter valid End Date."
                                                runat="server" ValidationGroup="vgHomePageMsgvgHomePageMsg" Display="None"></asp:CompareValidator>
                                            <asp:ValidatorCalloutExtender ID="VCECMPValidator" runat="server" TargetControlID="CMPValidator"
                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                        <div class="clear">
                                        </div>
                                        <div class="posRelative">
                                            <label class="input-label">
                                                Sort Order :</label>
                                            <asp:TextBox ID="txtSortOrder" runat="server" autocomplete="off" CssClass="inputTextbox "></asp:TextBox>
                                        </div>
                                        <div class="clear">
                                        </div>
                                        <div class="posRelative">
                                            <label class="input-label required">
                                                Message Type :</label>
                                            <asp:DropDownList ID="ddlMessageTy" Style="width: 258px;" runat="server" CssClass="inputDropDown">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rfvMessageTy" runat="server" InitialValue="-1" ErrorMessage="Message type is required"
                                                ControlToValidate="ddlMessageTy" Text="*" ForeColor="Red" ValidationGroup="vgHomePageMsg"
                                                Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender ID="vceessageTy" runat="server" TargetControlID="rfvMessageTy"
                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                        <div class="clear">
                                        </div>
                                        <div class="posRelative">
                                            <label class="input-label">
                                                Status :</label>
                                            <asp:DropDownList ID="ddlStatus" Style="width: 258px;" runat="server" CssClass="inputDropDown">
                                                <asp:ListItem Value="True" Text="Enabled"></asp:ListItem>
                                                <asp:ListItem Value="False" Text="Disabled"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="posRelative">
                                            <h3>Message :</h3>
                                            <CKEditor:CKEditorControl ID="txtMessage" Width="900px" runat="server"></CKEditor:CKEditorControl>
                                            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Message is required"
                                                ControlToValidate="txtMessage" Text="*" ForeColor="Red" ValidationGroup="vgHomePageMsg"
                                                Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender ID="vceMessage" runat="server" TargetControlID="rfvMessageTy"
                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                            </asp:ValidatorCalloutExtender>
                                        </div>
                                        <div class="toolBar">
                                            <span class="fltrt">
                                                <asp:Button ID="btnSave2" runat="server" CssClass="buttonGreen medium" ValidationGroup="vgHomePageMsg"
                                                    Text="Save" OnClick="btnSaveBulletin_Click" />
                                                <asp:Button ID="btnCancel" runat="server" CssClass="secondary medium " Text="Cancel"
                                                    OnClick="btnCancelBulletin_Click" />

                                            </span>
                                        </div>
                                    </fieldset>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <%# Convert.ToDateTime(Eval("start_date")).ToShortDateString()%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-Width="125px" HeaderText="Expiration Date" SortExpression="end_date">
                                <ItemStyle />
                                <ItemTemplate>
                                    <%# Convert.ToDateTime(Eval("end_date")).ToShortDateString()%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-Width="80px" HeaderText="Sort Order">
                                <ItemStyle />
                                <ItemTemplate>
                                    <%# Eval("sort_order")%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-Width="355px" HeaderText="Content">
                                <ItemStyle />
                                <ItemTemplate>
                                    <%# Eval("message_content")%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-Width="125px" HeaderText="Status">
                                <ItemTemplate>
                                    <%#Eval("is_active")%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-Width="180px">
                                <HeaderStyle HorizontalAlign="Center" CssClass="aligncenter" />
                                <HeaderTemplate>
                                    Action
                                </HeaderTemplate>
                                <ItemStyle CssClass="col-action" />
                                <ItemTemplate>
                                    <asp:ImageButton ID="imgbtnDisable" CssClass="imgDelete" CommandArgument='<%# Eval("home_page_message_id") %>'
                                        runat="server" ToolTip='<%# Eval("ToolTip") %>' OnClick="Enable_Click" ImageUrl='<%# "~/App_Themes/Theme1/images/"+ Eval("ImageUrl") %>' />
                                    <asp:ImageButton ID="ImageButton" CssClass="imgDelete" CommandArgument='<%# Eval("home_page_message_id") %>'
                                        runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                        OnClick="imgBtnEdit1_Click" />
                                    <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                        CommandArgument='<%# Eval("home_page_message_id") %>' ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                        OnClick="imgBtnDelete_Click" OnClientClick="javascript:return confirm('Are you sure you want to delete?');" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle BackColor="#0D83DD" ForeColor="White" Height="30" BorderStyle="None"
                            Font-Bold="True" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</div>
