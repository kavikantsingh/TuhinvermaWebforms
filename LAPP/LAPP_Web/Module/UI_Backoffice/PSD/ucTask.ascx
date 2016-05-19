<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucTask.ascx.cs" Inherits="NVBMT_WebProject_Modules_IndiVidual_ucTask" %>
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
    <div style="padding-bottom: 30px;" class="divLicenseInfon divaddnew" id="divAddbuttonTask"
        runat="server">
        <span style="float: right; margin-right: 0px;">
            <asp:Button ID="btnTaskAddNew" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                runat="server" Text="Add New" CausesValidation="true" OnClick="btnTaskAddNew_Click" />
        </span>
    </div>
    <div>
        <asp:Literal ID="ltrTask" runat="server"></asp:Literal>
    </div>
    <div id="divAddPanelTask" visible="false" runat="server" class="brdr radius mrgnTp4 pdng2">
        <table style="width: 85%; margin: 0px auto;">
            <tr>
                <td align="right">
                    <label class="input-label required">
                        Type :
                    </label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlTaskType" CssClass="DropdownList" runat="server">
                        <asp:ListItem Value="-1">Select</asp:ListItem>
                        <asp:ListItem Value="Type1">Type1</asp:ListItem>
                        <asp:ListItem Value="Type2">Type2</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvTaskType" ValidationGroup="VGTask" ControlToValidate="ddlTaskType"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                        InitialValue="-1" ErrorMessage="Please select task type."></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="vceTaskType" runat="server" TargetControlID="rfvTaskType"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
                <td align="right">
                    <label class="input-label required">
                        Status :</label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlStatus" CssClass="DropdownList" runat="server">
                        <asp:ListItem Value="-1">Select</asp:ListItem>
                        <asp:ListItem Value="1">Individual</asp:ListItem>
                        <asp:ListItem Value="2">Application</asp:ListItem>
                        <asp:ListItem Value="3">Names</asp:ListItem>
                        <asp:ListItem Value="4">Address</asp:ListItem>
                        <asp:ListItem Value="5">Task</asp:ListItem>
                        <asp:ListItem Value="6">Notes</asp:ListItem>
                        <asp:ListItem Value="7">Documents</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="revStatus" ValidationGroup="VGTask" ControlToValidate="ddlStatus"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                        InitialValue="-1" ErrorMessage="Please select status."></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="vceStatus" runat="server" TargetControlID="revStatus"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label required">
                        Due Date :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                        ID="txtDueDate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtDueDate" ValidationGroup="VGTask" ControlToValidate="txtDueDate"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                        ErrorMessage="Please enter due date."></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="vceDueDate" runat="server" TargetControlID="rfvtxtDueDate"
                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                    </asp:ValidatorCalloutExtender>
                    <asp:RegularExpressionValidator ID="revDueDate" runat="server" ErrorMessage="Please enter valid due date. Eg:MM/DD/YYYY"
                        ValidationGroup="VGTask" ControlToValidate="txtDueDate" ForeColor="#FF3300" Text="*"
                        ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                        Display="None"></asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="vcetxtDueDate" runat="server" TargetControlID="revDueDate"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
                <td align="right">
                    <label class="input-label required">
                        Date Completed :</label>
                </td>
                <td>
                    <%--                    <asp:TextBox CssClass="inputTextbox calender" autocomplete="off" ID="txtDateCompleted"
                        runat="server"></asp:TextBox>--%>
                    <asp:CheckBox ID="chkDateCompleted" runat="server" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">
                        Comments :</label>
                </td>
                <td colspan="3">
                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtComments" Width="135px"
                        TextMode="MultiLine" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <div class="toolBar" style="padding: 4px; margin: 6px;">
            <span class="fltrt">
                <asp:Button ID="btnTaskUpdate" ValidationGroup="VGTask" CssClass="buttonGreen medium"
                    runat="server" Text="Save" CausesValidation="true" OnClick="btnTaskSave_Click" />
                <asp:LinkButton ID="lnkTaskCancel" CssClass="secondary medium bottom" runat="server"
                    OnClick="lnkTaskCancel_Click">Cancel</asp:LinkButton></span>
        </div>
    </div>
    <div runat="server" id="divGridView" visible="true" class="">
        <div class="divLicenseInfo">
            <asp:GridView ID="gvTask" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                AllowPaging="true" PagerSettings-PageButtonCount="6" GridLines="None" AllowSorting="true"
                PagerStyle-CssClass="pager_style" PageSize="5" RowStyle-CssClass="bordrbtm gridrow"
                CssClass="index brdr radius mrgnTp4 pdng2 grid" OnPageIndexChanging="gvTask_PageIndexChanging"
                Width="100%" CellPadding="5" ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Task">
                        <ItemStyle CssClass="InEditModetd" />
                        <EditItemTemplate>
                            <div class="divGridEdit">
                                <table style="margin: 0 auto; width: 75%" class="tblParentNewApplReqForm tblLicensureInformation wthtop20">
                                    <tr>
                                        <td align="right" style="width: 90px;">
                                            <label class="input-label required">
                                                Type :</label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlTaskTypeEdit" CssClass="DropdownList" runat="server">
                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                <asp:ListItem Value="Type1">Type1</asp:ListItem>
                                                <asp:ListItem Value="Type2">Type2</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rfvTaskTypeEdit" ValidationGroup="VGTask" ControlToValidate="ddlTaskTypeEdit"
                                                Text="*" InitialValue="-1" ForeColor="Red" Display="None" SetFocusOnError="True"
                                                runat="server" ErrorMessage="Please select task type."></asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender ID="vceTaskTypeEdit" runat="server" TargetControlID="rfvTaskTypeEdit"
                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                            </asp:ValidatorCalloutExtender>
                                        </td>
                                        <td align="right">
                                            <label class="input-label required">
                                                Status :</label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlStatusEdit" CssClass="DropdownList" runat="server">
                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                <asp:ListItem Value="1">Individual</asp:ListItem>
                                                <asp:ListItem Value="2">Application</asp:ListItem>
                                                <asp:ListItem Value="3">Names</asp:ListItem>
                                                <asp:ListItem Value="4">Address</asp:ListItem>
                                                <asp:ListItem Value="5">Task</asp:ListItem>
                                                <asp:ListItem Value="6">Notes</asp:ListItem>
                                                <asp:ListItem Value="7">Documents</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="revStatusEdit" ValidationGroup="VGTask" ControlToValidate="ddlStatusEdit"
                                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                                ErrorMessage="Please select status."></asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender ID="vceStatusEdit" runat="server" TargetControlID="revStatusEdit"
                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                            </asp:ValidatorCalloutExtender>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label required">
                                                Due Date :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                                                ID="txtDueDateEdit" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvtxtDueDateEdit" ValidationGroup="VGTask" ControlToValidate="txtDueDateEdit"
                                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                                ErrorMessage="Please enter due date"></asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender ID="vceDueDateEdit" runat="server" TargetControlID="rfvtxtDueDateEdit"
                                                PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                            </asp:ValidatorCalloutExtender>
                                            <asp:RegularExpressionValidator ID="revDueDateEdit" runat="server" ErrorMessage="Please enter valid due date. Eg:MM/DD/YYYY"
                                                ValidationGroup="VGTask" ControlToValidate="txtDueDateEdit" ForeColor="#FF3300"
                                                Text="*" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                                                Display="None"></asp:RegularExpressionValidator>
                                            <asp:ValidatorCalloutExtender ID="vcetxtDueDateEdit" runat="server" TargetControlID="revDueDateEdit"
                                                PopupPosition="BottomLeft" HighlightCssClass="error">
                                            </asp:ValidatorCalloutExtender>
                                        </td>
                                        <td style="width: 112px;" align="right">
                                            <label class="input-label required">
                                                Date Completed :</label>
                                        </td>
                                        <td>
                                            <asp:CheckBox ID="chkDateCompletedEdit" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label">
                                                Comments :</label>
                                        </td>
                                        <td colspan="3">
                                            <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtCommentsEdit" Width="135px"
                                                TextMode="MultiLine" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <hr style="border: 1px solid rgb(242, 242, 242);" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 68px;" align="right">
                                            <label class="input-label">
                                                Created :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="inputTextbox cursordisable" autocomplete="off" ID="txtCreatedEdit"
                                                runat="server"></asp:TextBox>
                                        </td>
                                        <td style="width: 84px;" align="right">
                                            <label class="input-label">
                                                Created By :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="inputTextbox cursordisable" autocomplete="off" ID="txtCreatedByEdit"
                                                runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label">
                                                Modified :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="inputTextbox cursordisable" autocomplete="off" ID="txtModifiedEdit"
                                                runat="server"></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <label class="input-label">
                                                Modified By :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="inputTextbox cursordisable" autocomplete="off" ID="txtModifiedByEdit"
                                                runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                                <div class="toolBar" style="padding: 4px; margin: 6px; width: 97%;">
                                    <span class="fltrt">
                                        <asp:Button ID="btnTaskUpdate" ValidationGroup="VGTask" CssClass="buttonGreen medium"
                                            runat="server" Text="Update" CausesValidation="true" OnClick="btnTaskUpdate_Click" />
                                        <asp:LinkButton ID="lnkTaskCancelUpdate" CssClass="secondary medium bottom" runat="server"
                                            OnClick="lnkTaskCancelUpdate_Click">Cancel</asp:LinkButton></span>
                                </div>
                            </div>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <table style="width: 85%; margin: 0px auto;" class="tblgridName">
                                <tr>
                                    <td align="right">
                                        <b>Type : </b>
                                    </td>
                                    <td>
                                        <%# Eval("Task_Type")%>
                                    </td>
                                    <td align="right">
                                        <b>Status : </b>
                                    </td>
                                    <td>
                                        <%# Eval("Status") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <b>Due Date : </b>
                                    </td>
                                    <td>
                                        <%#Convert.ToDateTime(Eval("Due_Date")).ToShortDateString()%>
                                    </td>
                                    <td align="right">
                                        <b>Date Completed : </b>
                                    </td>
                                    <td>
                                        <asp:CheckBox runat="server" CssClass="cursordisable" Enabled="false" ID="chkdate"
                                            Checked='<%# Eval("Date_Completed") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <b>Comments : </b>
                                    </td>
                                    <td colspan="3">
                                        <%# Eval("Comments") %>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="100px">
                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                        <ItemTemplate>
                            <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" CommandArgument='<%# Eval("task_Id") %>'
                                runat="server" RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                OnClick="imgbtnEdit_Click" />
                            <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                CommandArgument='<%# Eval("task_Id") %>' ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                OnClientClick="javascript:return confirm('Are you sure you want to delete?');"
                                OnClick="imgBtnDelete_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div style="width: 100%; height: 50px; border: 0px; padding: 3px">
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
<div class="buttons iefix-5 inline" runat="server" id="DivbtnHistory">
    <div class="toolBar" style="padding: 4px;">
        <span class="fltlft">
            <asp:Button ID="btnShowHistory" CssClass="buttonGreen medium" runat="server" Text="Show History"
                OnClick="btnShowHistory_Click" />
            <asp:LinkButton runat="server" Enabled="false" ToolTip="Previous" CssClass="link-next-prev btn-info btn-sm"
                ID="lnkPrev"><<</asp:LinkButton>
            <asp:LinkButton runat="server" Enabled="false" ToolTip="Next" CssClass="link-next-prev btn-info btn-sm"
                ID="lnkNext">>></asp:LinkButton>
            <asp:Button ID="btnShowCurrent" Enabled="false" CssClass="buttonGreen medium" runat="server"
                Text="Show Current" OnClick="btnShowCurrent_Click" />
        </span>
    </div>
</div>
