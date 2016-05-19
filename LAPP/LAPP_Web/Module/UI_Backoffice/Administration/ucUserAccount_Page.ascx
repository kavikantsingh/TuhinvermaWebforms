<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucUserAccount_Page.ascx.cs" Inherits="Module_Accounts_ucUserAccount_Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<div class="clear">
</div>
<div class="main">
    <div class="container primary-content ">
        <br />
        <br />
        <div class="clearb">
        </div>
        <div class="userHide searchBoxhidden">
            <div class="clear">
                <div class="close" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
                </div>
            </div>
            <!-------Permit Search control start---------------->
            <fieldset class="PermitSearch" style="position: relative; top: 0px; left: 0px;">
                <legend></legend>
                <table class="SearchTable" align="center">
                    <tbody>
                        <tr>
                            <td>
                                <p>
                                    <label>
                                        Status :</label>
                                </p>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlStatus" runat="server" Style="width: 178px !important; margin-left: 3px;">
                                    <asp:ListItem Value="0">Enabled</asp:ListItem>
                                    <asp:ListItem Value="1">Disabled</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <p>
                                    <label>
                                        Role :</label>
                                </p>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlRole" runat="server" Style="width: 178px !important; margin-left: 3px;">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>
                                    <label>
                                        First Name :</label>
                                </p>
                            </td>
                            <td width="127px">
                                <p>
                                    <asp:TextBox ID="txtFirstName" runat="server" Style="width: 170px !important" CssClass="inputTextBox UpperCase"
                                        MaxLength="50"></asp:TextBox>
                                </p>
                            </td>
                            <td>
                                <p>
                                    <label>
                                        Last Name :</label>
                                </p>
                            </td>
                            <td>
                                <p class="dateRange">
                                    <asp:TextBox ID="txtLastName" runat="server" Style="width: 170px !important" CssClass="inputTextBox  UpperCase"
                                        MaxLength="50"></asp:TextBox>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>
                                    <label>
                                        Email :</label>
                                </p>
                            </td>
                            <td>
                                <p>
                                    <asp:TextBox ID="txtEmail" runat="server" Style="width: 170px !important" CssClass="inputTextBox "
                                        MaxLength="256"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="REVSearchMail" runat="server" ErrorMessage="Email must be in Proper format Ex:abc@gmail.com"
                                        ValidationGroup="VGSignUp" ControlToValidate="txtEmail" ForeColor="#FF3300" Text="*"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator>
                                    <asp:ValidatorCalloutExtender ID="VCESearchEmail" runat="server" TargetControlID="REVSearchMail"
                                        PopupPosition="BottomLeft" HighlightCssClass="error">
                                    </asp:ValidatorCalloutExtender>
                                </p>
                            </td>
                            <td colspan="2"></td>
                            <%-- <td class="style1">
                                <asp:Button ID="btnSearch" CssClass="button small search narrow" runat="server" Text="Search" />
                            </td>
                            <td class="style1" colspan="2">
                                <a id="btnCancel" class="secondary small " style="padding: 0px 10px; height: 20px !important;
                                    line-height: 20px !important;" href="javascript:void()" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
                                    Cancel</a>
                            </td>--%>
                        </tr>
                    </tbody>
                </table>
                <div style="width: 90%; margin: 0 auto;">
                    <span class="fltrt">
                        <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search" />&nbsp;&nbsp;
                        <a id="A1" class="secondary small " style="padding: 0px 10px; height: 20px !important; line-height: 20px !important;"
                            href="javascript:void()" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">Cancel</a></span>
                </div>
            </fieldset>
            <!-------Permit Search control End---------------->
        </div>
        <div class="clearb">
        </div>
        <!----------Search panel end--------------->
        <div class="clearb">
        </div>
        <div class="span-180 span-13 home-sidebar append-1">
            <div class="rounded-container peel-shadows">
                <div class="content clearfix">
                    <h4 style="margin: 0px 0px;">User List
                    </h4>
                    <dl id="recent-activity" class="activity-list">
                        <asp:GridView ID="gvUserInfo" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                            CssClass="grid index" ShowHeader="true" Width="100%" CellPadding="4" AllowPaging="true"
                            PagerStyle-CssClass="pager_style" ForeColor="#333333" GridLines="None" PageSize="10"
                            OnRowDataBound="gvUserInfo_RowDataBound" OnPageIndexChanging="gvUserInfo_PageIndexChanging">
                            <%-- <AlternatingRowStyle BackColor="White" />--%>
                            <Columns>
                                <asp:TemplateField HeaderText="Last Name">
                                    <ItemStyle />
                                    <ItemTemplate>
                                        <%# Eval("last_name")%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="First Name">
                                    <ItemStyle />
                                    <ItemTemplate>
                                        <%# Eval("first_name")%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="">
                                    <ItemStyle HorizontalAlign="Center" />
                                    <ItemTemplate>
                                        <a id="BOE_Member_Info_Edit" runat="server"></a>
                                        <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" runat="server" ToolTip="Edit"
                                            CommandArgument='<%# Eval("user_id") %>' RowIndex='<%# Container.DisplayIndex %>'
                                            ImageUrl="~/App_Themes/Theme1/images/edit.png" OnClick="imgBtnEdit_Click" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EmptyDataTemplate>
                                <div style="width: 100%; height: 200px; border: 0px; padding: 3px">
                                    No record found.
                                </div>
                            </EmptyDataTemplate>
                        </asp:GridView>
                        <asp:HiddenField ID="hidEditIndex" runat="server" />
                    </dl>
                </div>
                <!------>
                <div class="buttonConttrol" style="text-align: center; display: none">
                    <asp:ImageButton ID="btnFirst" CommandArgument="" ToolTip="First" runat="server"
                        ImageUrl="~/App_Themes/Theme1/images/button-first.png" OnClick="btnFirst_Click"
                        RowIndex="" />
                    <asp:ImageButton ID="btnPrev" CommandArgument="" ToolTip="Previous" runat="server"
                        ImageUrl="~/App_Themes/Theme1/images/button-prev.png" OnClick="btnPrev_Click"
                        RowIndex="" />
                    <asp:ImageButton ID="btnNext" CommandArgument="" ToolTip="Next" runat="server" ImageUrl="~/App_Themes/Theme1/images/button-next.png"
                        OnClick="btnNext_Click" RowIndex="" />
                    <asp:ImageButton ID="btnLast" CommandArgument="" ToolTip="Last" runat="server" ImageUrl="~/App_Themes/Theme1/images/button-last.png"
                        OnClick="btnLast_Click" RowIndex="" Width="33px" />
                </div>
                <!------>
            </div>
        </div>
        <div class="primary-column span-24" style="width: 600px;">
            <div class="clear">
            </div>
            <div id="dashboard-panels">
                <asp:Panel ID="pnlDefaultbtn" runat="server" DefaultButton="btnSave">
                    <div class="rounded-container relative-box peel-shadows">
                        <div class="dynamic-panels ui-sortable" style="">
                            <div id="Cashflow" class=" clearfix">
                                <!---grid upper---->
                                <div class="gridUpperDiv">
                                    <a class="down_arrow"></a><span class="fltlt">
                                        <asp:LinkButton ID="lnkArchive" CssClass="button small gray narrow pill-left" PostBackUrl="javascript:void(0)"
                                            runat="server" OnClick="lnkArchive_Click">Archive</asp:LinkButton>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CssClass="button small gray narrow pill-right"
                                            OnClick="lnkDelete_Click">Delete</asp:LinkButton>
                                        <%--<asp:LinkButton ID="lnkInactive" runat="server" CssClass="button small gray narrow pill-right"
                                        PostBackUrl="javascript:void(0)">Inactive</asp:LinkButton>--%>
                                    </span>
                                    <div class="fltrt rightIcon">
                                        <asp:Button ID="newUser" CssClass="buttonGreen medium" runat="server"
                                            Text="New User" OnClick="btnNewUser_Click" />
                                        <%--<a title="find" href="javascript:void()" onclick="javascript:showDivSlide('.userHide');hideDivSlide('.searchBbutton');">
                                            <img src="../../App_Themes/Theme1/images/search_icon.png" /></a>--%>
                                        <%--<a title="print" href="javascript:void()">
                                            <img src="../App_Themes/Theme1/images/Printer_Blue.png" /></a>--%>
                                        <%--<a title="comment" href="javascript:void()">
                                            <img src="../../App_Themes/Theme1/images/comment_icon.png" /></a>--%>
                                    </div>
                                </div>
                                <!---grid upper end--->
                                <div style="min-height: 320px;">
                                    <div class="messages showDivMsg" id="divMessage" runat="server" visible="false">
                                        <ul>
                                            <li>
                                                <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="forgetPassword signup">
                                        <fieldset class="flsSignupForm signup">
                                            <legend></legend>
                                            <div class="posRelative" style="margin-top: 25px;">
                                                <label class="input-label required">
                                                    Last Name :</label>
                                                <asp:TextBox ID="txtUserLastName" runat="server" autocomplete="off" CssClass="inputTextbox  UpperCase"
                                                    MaxLength="50"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RFVtxtName" runat="server" ErrorMessage="Please enter last name."
                                                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtUserLastName"
                                                    ValidationGroup="VGSignUp"></asp:RequiredFieldValidator>
                                                <asp:ValidatorCalloutExtender ID="vcerfvLastName" runat="server" TargetControlID="RFVtxtName"
                                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                                </asp:ValidatorCalloutExtender>
                                            </div>
                                            <div class="clear">
                                            </div>
                                            <div class="posRelative">
                                                <label class="input-label required">
                                                    First Name :</label>
                                                <asp:TextBox ID="txtuserFirstName" runat="server" autocomplete="off" CssClass="inputTextbox  UpperCase"
                                                    MaxLength="50"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RFDtxtFName" ValidationGroup="VGSignUp" ControlToValidate="txtuserFirstName"
                                                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                                    ErrorMessage="Please enter first name."></asp:RequiredFieldValidator>
                                                <asp:ValidatorCalloutExtender ID="VCEFName" runat="server" TargetControlID="RFDtxtFName"
                                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                                </asp:ValidatorCalloutExtender>
                                            </div>
                                            <div class="clear">
                                            </div>
                                            <div class="posRelative">
                                                <label class="input-label">
                                                    Middle Name :</label>
                                                <asp:TextBox ID="txtMiddleName" runat="server" autocomplete="off" CssClass="inputTextbox  UpperCase"
                                                    MaxLength="50"></asp:TextBox>
                                            </div>
                                            <div class="clear">
                                            </div>
                                            <div class="posRelative">
                                                <label class="input-label required">
                                                    Gender :</label>
                                                <asp:DropDownList ID="ddlGender" runat="server" CssClass="inputDropDown">
                                                    <asp:ListItem Selected="True" Text="Male" Value="true"></asp:ListItem>
                                                    <asp:ListItem Text="Female" Value="false"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RFVGender" runat="server" ControlToValidate="ddlGender"
                                                    CssClass="error" Display="None" ErrorMessage="Please select Gender" ForeColor="Red"
                                                    Text="*" ValidationGroup="VGSignUp" SetFocusOnError="true" InitialValue="-1"></asp:RequiredFieldValidator>
                                                <asp:ValidatorCalloutExtender ID="VCEGender" runat="server" HighlightCssClass="error"
                                                    PopupPosition="TopLeft" TargetControlID="RFVGender">
                                                </asp:ValidatorCalloutExtender>
                                            </div>
                                            <div class="clear">
                                            </div>
                                            <div class="posRelative">
                                                <label class="input-label required">
                                                    Date of Birth :</label>
                                                <asp:TextBox ID="txtDOB" runat="server" placeholder="MM/DD/YYYY" autocomplete="off"
                                                    CssClass="calenderDOB"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="revDOB" runat="server" ControlToValidate="txtDOB"
                                                    ErrorMessage="Date is not in MM/DD/YYYY format" Text="*" Display="None" ValidationGroup="VGSignUp"
                                                    ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$">
                                                </asp:RegularExpressionValidator>
                                                <asp:ValidatorCalloutExtender ID="vceSDOB" runat="server" TargetControlID="revDOB"
                                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                                </asp:ValidatorCalloutExtender>
                                                <%--<asp:RequiredFieldValidator ID="RFVtxtDOB" runat="server" ErrorMessage="Date is not in MM/DD/YYYY format."
                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtDOB"
                ValidationGroup="VGSignUp"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="VCEtxtDOB" runat="server" TargetControlID="RFVtxtDOB"
                PopupPosition="BottomLeft" HighlightCssClass="error">
            </asp:ValidatorCalloutExtender>
            <asp:RegularExpressionValidator ID="revDOB" runat="server" ControlToValidate="txtDOB"
                ErrorMessage="Date is not in MM/DD/YYYY format" Text="*" Display="None" ValidationGroup="VGSignUp"
                ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$">
            </asp:RegularExpressionValidator>
            <asp:ValidatorCalloutExtender ID="vceSDate1" runat="server" TargetControlID="revDOB"
                PopupPosition="BottomLeft" HighlightCssClass="error">
            </asp:ValidatorCalloutExtender>--%>
                                                <%--<asp:MaskedEditExtender ID="MaskedEditExtender" TargetControlID="txtDOB" Mask="MM/DD/YYYY"
                                                runat="server">
                                            </asp:MaskedEditExtender>--%>
                                            </div>
                                            <div class="clear">
                                            </div>
                                            <div class="posRelative">
                                                <label class="input-label required">
                                                    E-mail :</label>
                                                <asp:TextBox ID="txtUserEmail" name="email" autocomplete="off" runat="server" CssClass="inputTextbox "
                                                    MaxLength="256"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="REVEmail" runat="server" ErrorMessage="Email must be in Proper format Ex:abc@gmail.com"
                                                    ValidationGroup="VGSignUp" ControlToValidate="txtUserEmail" ForeColor="#FF3300"
                                                    Text="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                    Display="None"></asp:RegularExpressionValidator>
                                                <asp:RequiredFieldValidator ID="RFVtxtEmail" runat="server" ErrorMessage="Email must be in Proper format Ex:abc@gmail.com"
                                                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtUserEmail"
                                                    ValidationGroup="VGSignUp"></asp:RequiredFieldValidator>
                                                <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RFVtxtEmail"
                                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                                </asp:ValidatorCalloutExtender>
                                                <asp:ValidatorCalloutExtender ID="VCEEmail" runat="server" TargetControlID="REVEmail"
                                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                                </asp:ValidatorCalloutExtender>
                                            </div>
                                            <div class="posRelative ">
                                                <label class="input-label required">
                                                    Role :</label>
                                                <asp:DropDownList ID="ddlUSerRole" runat="server" CssClass="inputDropDown">
                                                    <asp:ListItem>Select</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="REVddlUserRole" runat="server" ControlToValidate="ddlUSerRole"
                                                    CssClass="error" Display="None" ErrorMessage="Please select role" ForeColor="Red"
                                                    Text="*" ValidationGroup="VGSignUp" SetFocusOnError="true" InitialValue="-1"></asp:RequiredFieldValidator>
                                                <asp:ValidatorCalloutExtender ID="VCEddlUserRole" runat="server" HighlightCssClass="error"
                                                    PopupPosition="TopLeft" TargetControlID="REVddlUserRole">
                                                </asp:ValidatorCalloutExtender>
                                            </div>
                                            <%--<div>
                                            <asp:CheckBox ID="chkChangePasword" runat="server" Text="change Password" />
                                        </div>--%>
                                            <% if (this.user_id == 0 || chkChangePasword.Checked)
                                               { %>
                                            <div class="password-rule" style="width: 700px; margin: 0 auto">
                                                <style>
                                                    .tableFullBorder, .tableFullBorder td {
                                                        border: 1px solid #ddd;
                                                        padding: 3px 5px;
                                                    }

                                                        .tableFullBorder th {
                                                            border: 1px solid #ddd;
                                                            font: bold;
                                                            padding: 3px 5px;
                                                        }

                                                    .password-rule p {
                                                        margin-bottom: 10px;
                                                    }

                                                    .password-rule {
                                                        padding-bottom: 20px;
                                                    }
                                                </style>
                                                <h4>Password Rule</h4>
                                                <p>
                                                    <b>Password Length:</b> Is at least eight characters (8) in length.
                                                </p>
                                                <p>
                                                    <b>Password Complexity: </b>Cannot contain your user name, real name, or company
                                                    name. Password must contain at least one character from each of the following group.
                                                    At least 4 characters in your passwords should be each one of the following.
                                                </p>
                                                <table width="100%" class=" tableFullBorder">
                                                    <tr>
                                                        <th style="text-align: left !important" width="50%">Character Category
                                                        </th>
                                                        <th style="text-align: left !important">Examples
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <td>Uppercase letters
                                                        </td>
                                                        <td>A, B, C
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Lower case letters
                                                        </td>
                                                        <td>a, b, c
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Numbers
                                                        </td>
                                                        <td>0, 1, 2, 3, 4, 5, 6, 7, 8, 9
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Special Characters - Symbols found on the keyboard (all keyboard characters not
                                                            defined as letters or numerals) and spaces
                                                        </td>
                                                        <td>` ~ ! @ # $ % ^ & * ( ) _ - + = { } [ ] \ | : ; " ' < > , . ? /
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="clear">
                                            </div>
                                            <div class="posRelative">
                                                <label class="input-label required">
                                                    Password :</label>
                                                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" autocomplete="off"
                                                    CssClass="inputPassword" MaxLength="128"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RFVtxtPassword" runat="server" ErrorMessage="Please enter password"
                                                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtPassword"
                                                    ValidationGroup="VGSignUp"></asp:RequiredFieldValidator>
                                                <asp:ValidatorCalloutExtender ID="VCEtxtPassword" runat="server" TargetControlID="RFVtxtPassword"
                                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                                </asp:ValidatorCalloutExtender>
                                            </div>
                                            <div class="clear">
                                            </div>
                                            <div class="posRelative" style="margin-bottom: 25px;">
                                                <label class="input-label required">
                                                    Repeat Password :</label>
                                                <asp:TextBox ID="txtPassword_repeat" TextMode="Password" runat="server" autocomplete="off"
                                                    CssClass="inputPassword" Style="margin-left: 0px" MaxLength="128"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvRepeatPasword" runat="server" ErrorMessage="Password does not matches"
                                                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtPassword_repeat"
                                                    ValidationGroup="VGSignUp"></asp:RequiredFieldValidator>
                                                <asp:ValidatorCalloutExtender ID="vcePepeatePassword" runat="server" TargetControlID="rfvRepeatPasword"
                                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                                </asp:ValidatorCalloutExtender>
                                                <asp:CompareValidator ID="cp_repeat" runat="server" ValidationGroup="VGSignUp" ErrorMessage="Password does not matches"
                                                    ControlToCompare="txtPassword" Display="None" ControlToValidate="txtPassword_repeat"></asp:CompareValidator>
                                                <asp:ValidatorCalloutExtender ID="cpatxtPassword_repeat" runat="server" TargetControlID="cp_repeat"
                                                    PopupPosition="BottomLeft" HighlightCssClass="error">
                                                </asp:ValidatorCalloutExtender>
                                            </div>
                                            <%}
                                               else
                                               {%>
                                            <div class="posRelative">
                                                <label class="input-label">
                                                    Change Password :
                                                </label>
                                                <asp:CheckBox ID="chkChangePasword" runat="server" AutoPostBack="true" OnCheckedChanged="chkChangePasword_CheckedChanged" />
                                            </div>
                                            <%} %>
                                        </fieldset>
                                    </div>
                                </div>
                                <!--- tabs end-->
                            </div>
                        </div>
                        <!------->
                        <div class="ribbon" style="width: 100%">
                            <div class="holder peel-shadows" style="width: 97.9%; padding-bottom: 23px; margin-top: -7px; margin-left: -1px;">
                                <span class="fltrt">
                                    <asp:Button ID="btnSave" runat="server" ValidationGroup="VGSignUp" CssClass="buttonGreen medium"
                                        Text="Save" OnClick="btnSave_Click" />
                                    <asp:Button ID="btnCancel" runat="server" CssClass="secondary medium" Text="Cancel"
                                        OnClick="btnCancel_Click1" />
                                </span>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
                <div class="clearb">
                </div>
            </div>
        </div>
    </div>
</div>
<style>
    .signup .posRelative {
        line-height: 40px;
    }

        .signup .posRelative label {
            width: 120px;
            display: inline-block;
            text-align: right;
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
        width: 70%;
        margin: 0 auto;
    }

    .inputDropDown {
        width: 258px !important;
    }

    .button {
        padding-left: 10px;
        padding-right: 10px;
    }

    table.tableFullBorder th, table.tableFullBorder td {
        border: 0px;
    }
</style>
