<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucName.ascx.cs" Inherits="NVBMT_WebProject.Modules.IndiVidual.ucName" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<style>
    .index tbody .InEditModetd, .index tfoot .InEditModetd {
        border: 0px;
    }

    .grid .tblgridName tr {
        border: 0px !important;
    }

    .tblgridName {
        width: 84%;
        margin: 0px auto;
    }

    .txtalnrgt {
        text-align: right;
    }

    .head {
        font-weight: bold;
    }
</style>
<div class="clear textBoxAlign" style="padding-bottom: 40px;">
    <div style="padding-bottom: 30px;" class="divLicenseInfon divaddnew" id="pnlAddNewButton"
        runat="server">
        <span style="float: right; margin-right: 0px;">
            <asp:Button ID="btnAddNew" CssClass="buttonGreen medium" runat="server" Text="Add New"
                CausesValidation="true" OnClick="btnAddNew_Click" />
        </span>
    </div>
    <div>
        <asp:Literal ID="ltrName" runat="server"></asp:Literal>
    </div>
    <div id="pnlAddNew" visible="false" runat="server" class="brdr radius mrgnTp4 pdng2">
        <table style="width: 100%;">
            <tr>
                <td align="right">
                    <label class="input-label required">
                        Last Name :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox capitalize-text OnlyAlphabet" autocomplete="off"
                        ID="txtLastName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="revLastName" ValidationGroup="VGName" ControlToValidate="txtLastName"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                        ErrorMessage="Please enter last name."></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="vceLastName" runat="server" TargetControlID="revLastName"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
                <td align="right">
                    <label class="input-label required">
                        First Name :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox capitalize-text OnlyAlphabet" autocomplete="off"
                        ID="txtFirstName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="revFirstName" ValidationGroup="VGName" ControlToValidate="txtFirstName"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                        ErrorMessage="Please enter first name."></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="vceFirstName" runat="server" TargetControlID="revFirstName"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">
                        Middle Name :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox OnlyAlphabet" autocomplete="off" ID="txtMiddleName"
                        runat="server"></asp:TextBox>
                </td>
                <td align="right">
                    <label class="input-label">
                        Suffix :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox OnlyAlphabet" autocomplete="off" ID="txtSuffix"
                        runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">
                        Previous/Maiden Name :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox OnlyAlphabet" autocomplete="off" ID="txtPreviousName"
                        runat="server"></asp:TextBox>
                </td>
                <td align="right">
                    <label class="input-label required">
                        Status :</label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlStatus" CssClass="DropdownList" runat="server">
                        <asp:ListItem Value="-1">Select</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="revStatus" ValidationGroup="VGName" ControlToValidate="ddlStatus"
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
                        Begin Date :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                        ID="txtDateOfBegan" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDateOfBegan" ValidationGroup="VGName" ControlToValidate="txtDateOfBegan"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                        ErrorMessage="Please enter date of beginning."></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="vcetxtDateOfBegan" runat="server" TargetControlID="rfvDateOfBegan"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                    <asp:RegularExpressionValidator ID="revBeganDate" runat="server" ErrorMessage="Please enter valid date of beginning. Eg:MM/DD/YYYY"
                        ValidationGroup="VGName" ControlToValidate="txtDateOfBegan" ForeColor="#FF3300"
                        Text="*" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                        Display="None"></asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="vceBeganDate" runat="server" TargetControlID="revBeganDate"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
                <td align="right">
                    <label class="input-label required">
                        End Date :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                        ID="txtDateOfEnded" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDateOfEnded" ValidationGroup="VGName" ControlToValidate="txtDateOfEnded"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                        ErrorMessage="Please enter date of ending."></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="vcetxtDateOfEnded" runat="server" TargetControlID="rfvDateOfEnded"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                    <asp:RegularExpressionValidator ID="revEndDate" runat="server" ErrorMessage="Please enter valid date of ending. Eg:MM/DD/YYYY"
                        ValidationGroup="VGName" ControlToValidate="txtDateOfEnded" ForeColor="#FF3300"
                        Text="*" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                        Display="None"></asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="vceEndDate" runat="server" TargetControlID="revEndDate"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                    <asp:CompareValidator ID="cvDateofEnding" runat="server" Operator="GreaterThan" Type="Date"
                        ControlToCompare="txtDateOfBegan" ControlToValidate="txtDateOfEnded" Text="*"
                        ErrorMessage="Date must be greater than date of ending" Display="None" ForeColor="#FFCCFF"
                        SetFocusOnError="True" ValidationGroup="VGName">
                    </asp:CompareValidator>
                    <asp:ValidatorCalloutExtender ID="vcecvEnding" runat="server" TargetControlID="cvDateofEnding"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
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
        <div class="toolBar" style="padding: 4px; margin: 4px; width: 703px;">
            <span class="fltrt">
                <asp:Button ID="btnSave" ValidationGroup="VGName" CssClass="buttonGreen medium" runat="server"
                    Text="Save" CausesValidation="true" OnClick="btnSave_Click" />
                <asp:LinkButton ID="lnkCancel" CssClass="secondary medium bottom" runat="server"
                    OnClick="lnkCancel_Click1">Cancel</asp:LinkButton></span>
        </div>
    </div>
    <!--new Name Grid------->
<div>
        <table class="index brdr radius mrgnTp4 pdng2 grid" id="gvLicense" style="color: #333333; width: 100%; border-collapse: collapse;" cellpadding="5" cellspacing="0">
            <tbody>
                <tr>
                    <th class="aligncenter" scope="col">First Name</th>
                    <th class="aligncenter" scope="col">Last Name</th>
                    <th class="aligncenter" scope="col">Status</th>
                    <th class="aligncenter" scope="col">Begin Date</th>
                    <th class="aligncenter" scope="col">End Date</th>
                    <th class="aligncenter" scope="col">Action</th>
                </tr>
                <tr class="bordrbtm gridrow">
                    <td class="aligncenter" style="padding: 5px !important;">David</td>
                    <td class="aligncenter">Hook
                    </td>
                    <td class="aligncenter">Current </td>
                    <td class="aligncenter">01/02/2015</td>
                    <td class="aligncenter">01/04/2015</td>
                    <td class="aligncenter"><asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" 
                                runat="server"  ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                OnClick="imgbtnEdit_Click" />
                            <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                OnClientClick="javascript:return confirm('Are you sure you want to delete?');"
                                OnClick="imgBtnDelete_Click" /></td>
                </tr>
            </tbody>
        </table>
    </div>


<!--new name grid off ----->
    <div runat="server" id="divGridView" visible="true" class=" " style="display:none;">
        <asp:GridView ID="gvName" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
            CssClass="index brdr grid mrgnTp4 " AllowPaging="true" PagerSettings-PageButtonCount="6"
            GridLines="None" AllowSorting="true" PagerStyle-CssClass="pager_style" RowStyle-CssClass="bordrbtm gridrow"
            PageSize="5" CellPadding="5" Width="100%" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Name" HeaderStyle-HorizontalAlign="Center">
                    <ItemStyle CssClass="InEditModetd" />
                    <EditItemTemplate>
                        <div class="divGridEdit">
                            <table style="width: 90%; margin: 13px auto;">
                                <tr>
                                    <td align="right" style="width: 145px;">
                                        <label class="input-label required">
                                            Last Name :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox capitalize-text OnlyAlphabet" autocomplete="off"
                                            ID="txtLastNameEdit" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="revLastNameEdit" ValidationGroup="VGNameEdit" ControlToValidate="txtLastNameEdit"
                                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                            ErrorMessage="Please enter last name."></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="vceLastName" runat="server" TargetControlID="revLastNameEdit"
                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                    <td align="right" style="width: 98px;">
                                        <label class="input-label required">
                                            First Name :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox capitalize-text OnlyAlphabet" autocomplete="off"
                                            ID="txtFirstNameEdit" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="revFirstNameEdit" ValidationGroup="VGNameEdit" ControlToValidate="txtFirstNameEdit"
                                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                            ErrorMessage="Please enter first name."></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="vceFirstName" runat="server" TargetControlID="revFirstNameEdit"
                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label">
                                            Middle Name :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox OnlyAlphabet" autocomplete="off" ID="txtMiddleNameEdit"
                                            runat="server"></asp:TextBox>
                                    </td>
                                    <td align="right">
                                        <label class="input-label">
                                            Suffix :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox OnlyAlphabet" autocomplete="off" ID="txtSuffixEdit"
                                            runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label">
                                            Previous/Maiden Name :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox OnlyAlphabet" autocomplete="off" ID="txtPreviousNameEdit"
                                            runat="server"></asp:TextBox>
                                    </td>
                                    <td align="right">
                                        <label class="input-label required">
                                            Status :</label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlStatusEdit" CssClass="DropdownList" runat="server">
                                            <asp:ListItem>Current</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="revStatusEdit" ValidationGroup="VGNameEdit" ControlToValidate="ddlStatusEdit"
                                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                            ErrorMessage="Please select status."></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="vceStatus" runat="server" TargetControlID="revStatusEdit"
                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label required">
                                            Begin Date :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                                            ID="txtDateOfBeganEdit" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvDateOfBeganEdit" ValidationGroup="VGNameEdit"
                                            ControlToValidate="txtDateOfBeganEdit" Text="*" ForeColor="Red" Display="None"
                                            SetFocusOnError="True" runat="server" ErrorMessage="Please enter date of beginning."></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="vcetxtDateOfBeganEdit" runat="server" TargetControlID="rfvDateOfBeganEdit"
                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                        </asp:ValidatorCalloutExtender>
                                        <asp:RegularExpressionValidator ID="revBeganDateEdit" runat="server" ErrorMessage="Please enter valid date of beginning. Eg:MM/DD/YYYY"
                                            ValidationGroup="VGNameEdit" ControlToValidate="txtDateOfBeganEdit" ForeColor="#FF3300"
                                            Text="*" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                                            Display="None"></asp:RegularExpressionValidator>
                                        <asp:ValidatorCalloutExtender ID="vceBeganDate" runat="server" TargetControlID="revBeganDateEdit"
                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                    <td align="right">
                                        <label class="input-label required">
                                            End Date :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                                            ID="txtDateOfEndedEdit" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvDateOfEndedEdit" ValidationGroup="VGNameEdit"
                                            ControlToValidate="txtDateOfEndedEdit" Text="*" ForeColor="Red" Display="None"
                                            SetFocusOnError="True" runat="server" ErrorMessage="Please enter date of ending."></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="vcetxtDateOfEndedEdit" runat="server" TargetControlID="rfvDateOfEndedEdit"
                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                        </asp:ValidatorCalloutExtender>
                                        <asp:RegularExpressionValidator ID="revEndDateEdit" runat="server" ErrorMessage="Please enter valid date of ending. Eg:MM/DD/YYYY"
                                            ValidationGroup="VGNameEdit" ControlToValidate="txtDateOfEndedEdit" ForeColor="#FF3300"
                                            Text="*" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                                            Display="None"></asp:RegularExpressionValidator>
                                        <asp:ValidatorCalloutExtender ID="vceEndDate" runat="server" TargetControlID="revEndDateEdit"
                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                        </asp:ValidatorCalloutExtender>
                                        <asp:CompareValidator ID="cvDateofEndingEdit" runat="server" Operator="GreaterThan"
                                            Type="Date" ControlToCompare="txtDateOfBeganEdit" ControlToValidate="txtDateOfEndedEdit"
                                            Text="*" ErrorMessage="Date must be greater than date of ending" Display="None"
                                            ForeColor="#FFCCFF" SetFocusOnError="True" ValidationGroup="VGNameEdit">
                                        </asp:CompareValidator>
                                        <asp:ValidatorCalloutExtender ID="vcecvEndingEdit" runat="server" TargetControlID="cvDateofEndingEdit"
                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                        </asp:ValidatorCalloutExtender>
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
                            <div class="toolBar" style="padding: 4px; margin: 4px;">
                                <span class="fltrt">
                                    <asp:Button ID="btnUpdate" ValidationGroup="VGNameEdit" CssClass="buttonGreen medium"
                                        runat="server" Text="Update" CausesValidation="true" OnClick="btnUpdate_Click" />
                                    <asp:LinkButton ID="lnkCancelUpdate" CssClass="secondary medium bottom" runat="server"
                                        OnClick="lnkCancelUpdate_Click">Cancel</asp:LinkButton></span>
                            </div>
                        </div>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <table style="margin: 0 auto; width: 608px;">
                            <tr>
                                <td class="txtalnrgt" style="width: 150px;">
                                    <label class="head">
                                        Last Name :
                                    </label>
                                </td>
                                <td style="width: 150px;">
                                    <span>
                                        <%#Eval("Last_Name")%>
                                    </span>
                                </td>
                                <td class="txtalnrgt">
                                    <label class="head">
                                        First Name :
                                    </label>
                                </td>
                                <td>
                                    <span>
                                        <%#Eval("First_Name")%>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td class="txtalnrgt">
                                    <label class="head">
                                        Middle Name :
                                    </label>
                                </td>
                                <td>
                                    <span>
                                        <%#Eval("Middle_Name")%>
                                    </span>
                                </td>
                                <td class="txtalnrgt">
                                    <label class="head">
                                        Suffix :
                                    </label>
                                </td>
                                <td>
                                    <span>
                                        <%#Eval("Suffix")%>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td class="txtalnrgt">
                                    <label class="head">
                                        Previous/Maiden Name :
                                    </label>
                                </td>
                                <td>
                                    <span>
                                        <%#Eval("Maiden_Name")%>
                                    </span>
                                </td>
                                <td class="txtalnrgt">
                                    <label class="head">
                                        Status :
                                    </label>
                                </td>
                                <td>
                                    <span>
                                        <%#Eval("Status")%>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td class="txtalnrgt">
                                    <label class="head">
                                        Begin Date :
                                    </label>
                                </td>
                                <td>
                                    <span>
                                        <%#Eval("Date_Of_Beginning")%>
                                    </span>
                                </td>
                                <td class="txtalnrgt">
                                    <label class="head">
                                        End Date :
                                    </label>
                                </td>
                                <td>
                                    <span>
                                        <%#Eval("Date_Of_Ending")%>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td class="txtalnrgt">
                                    <label class="head">
                                        Comments :
                                    </label>
                                </td>
                                <td>
                                    <span>
                                        <%#Eval("Comments")%>
                                    </span>
                                </td>
                                <td colspan="3">
                                    <div style="overflow: auto;">
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="10%">
                    <ItemStyle />
                    <ItemTemplate>
                        <span class="fltrt">
                            
                        </span>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <div style="width: 100%; height: 200px; border: 0px; padding: 3px">
                    No record found.
                </div>
            </EmptyDataTemplate>
        </asp:GridView>
    </div>
</div>
<div style="border: 1px solid rgb(221, 221, 221) ! important; padding-bottom: 14px ! important;">
    <table class=" tblApplReqForm5" style="width: 100%;">
        <tbody>
            <tr>
                <td class="txtalgnrgt tdwidth1" style="width: 100px !important; padding-bottom: 10px;">
                    <label class="input-label">
                        Other Name :
                    </label>
                </td>
                <td>
                    <input autocomplete="off" maxlength="150" id="txtOtherNameEdit" class="OnlyAlphabet" style="width: 295px !important;" type="text">
                    <span class="AfterApproved">
                        <input value="Add" id="btnSaveOtname" class="buttonGreen small" type="submit"></span>
                </td>
            </tr>
        </tbody>
    </table>
    <table class=" tblApplReqForm5" style="width: 100%;">
        <tbody>
            <tr>
                <td>
                    <div>
                    </div>
                    <table class="index  grid" id="Table1" style="width: 50%; margin-left: 100px; border: 1px solid #ddd;" border="1" cellpadding="5" cellspacing="0">
                        <tbody>
                            <tr>
                                <th style="border-right: 1px solid #ddd; padding-left: 5px !important;">Other Name
                                </th>
                                <th style="padding-left: 0px; text-align: center;">Action
                                </th>
                            </tr>
                            <tr>
                                <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important;">Michael Clarcke
                                </td>
                                <td style="width: 60px;" align="center" valign="middle">
                                    <span>
                                        <input id="ImageButton4" title="Edit" src="../../App_Themes/Theme1/images/edit.png" type="image">
                                        <input id="imgBtnOTherNameDelete" title="Delete" class="imgDelete" src="../../App_Themes/Theme1/images/delete.png" type="image"></span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
</div>
<div class="clear">
</div>







<div class="toolBar" style="padding: 4px; display: none;">
    <span class="fltrt">
        <asp:Button ID="btnSavePersonal" CssClass="buttonGreen medium" runat="server" Text="Save" />
        <asp:LinkButton CssClass="secondary medium bottom" ID="lnkCancelPersonal" runat="server">Cancel</asp:LinkButton>
    </span>
</div>
<div class="buttons iefix-5 inline" runat="server" id="DivbtnHistory">
    <div class="toolBar" style="padding: 4px; display:none;">
        <span class="fltlft">
            <%--<asp:Button ID="btnShowHistory" CssClass="buttonGreen medium" runat="server" Text="Show History"
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
