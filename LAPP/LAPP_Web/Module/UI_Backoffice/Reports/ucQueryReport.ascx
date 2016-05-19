<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucQueryReport.ascx.cs"
    Inherits="ucQueryReport" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:UpdatePanel ID="upPanel" runat="server">
    <ContentTemplate>
        <style>
            .fls
            {
                border: 1px solid rgb(209, 221, 228);
                box-shadow: inset 0px 0px 3px #DBDBDB;
            }
            
            .lbl
            {
                width: 150px;
                float: right;
            }
            .tab1
            {
                line-height: 20px;
                margin-top: 20px;
            }
            
            .tab2
            {
                margin-left: 20px;
                float: none;
            }
            .querytab
            {
                margin: 0 auto;
            }
            .clear.brdr.radius.pdng2
            {
                padding: 10px;
            }
            .lineHeight36
            {
                line-height: 36px;
            }
        </style>
        <table style="margin: 0 auto">
            <tr>
                <td valign="top" style="width: 50%;">
                    <div class="clear brdr radius pdng2" style="overflow: hidden; margin: 2px 2px 0px 0px">
                        <table class="querytab">
                            <tr>
                                <td align="left">
                                </td>
                                <td align="right">
                                    <b>Report Order :</b>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="ddlreportorder" runat="server" Style="width: 150px">
                                        <asp:ListItem Value="1">Last Name</asp:ListItem>
                                        <asp:ListItem Value="2">Registration Number</asp:ListItem>
                                        <asp:ListItem Value="3">State Code</asp:ListItem>
                                        <asp:ListItem Value="4">Zip Code</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                </td>
                                <td align="right">
                                    <b>Record Type :</b>
                                </td>
                                <td width="20px" align="left">
                                    <asp:CheckBox ID="chkDiscplineInclude" runat="server" Checked="true" Text=" include"
                                        Style="margin-right: 20px" />
                                </td>
                            </tr>
                            <tr valign="top">
                                <td style="width: 150px; height: 200px">
                                    <asp:ListBox ID="lstdiscript" runat="server" SelectionMode="Multiple" Width="120px"
                                        Height="200px">
                                        <asp:ListItem>Group</asp:ListItem>
                                        <asp:ListItem>Individual</asp:ListItem>
                                        <asp:ListItem>Staff</asp:ListItem>
                                    </asp:ListBox>
                                </td>
                                <td valign="middle">
                                    <%--movebutton--%>
                                    <table class="tab">
                                        <tr>
                                            <td valign="top" class="tab1">
                                                <asp:Button ID="btnmoveright" runat="server" Text="Move >" Width="100px" Style="margin-bottom: 10px"
                                                    CssClass="buttonGreen small" OnClick="btnmoveright_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <asp:Button ID="btnmoveleft" runat="server" Text="< Move" Width="100px" Style="margin-bottom: 10px"
                                                    CssClass="buttonGreen small" OnClick="btnmoveleft_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <asp:Button ID="btnmoveforwleft" runat="server" Text="<< Move" Width="100px" Style="margin-bottom: 10px"
                                                    CssClass="buttonGreen small" OnClick="btnmoveforwleft_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 150px; height: 200px" valign="top" align="right">
                                    <asp:ListBox ID="lstinclude" runat="server" SelectionMode="Multiple" Width="120px"
                                        Height="200px">
                                        <asp:ListItem>Individual</asp:ListItem>
                                    </asp:ListBox>
                                </td>
                            </tr>
                        </table>
                        <table class="querytab" style="margin-top: 10px">
                            <tr>
                                <td>
                                </td>
                                <td align="right">
                                    <b>State Code :</b>
                                </td>
                                <td align="left">
                                    <asp:CheckBox ID="chkIncludeStateCode" Checked="true" runat="server" Text=" Include" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 150px; height: 200px" valign="top">
                                    <asp:ListBox ID="lstboxstatescode" runat="server" SelectionMode="Multiple" Width="120px"
                                        Height="200px">
                                        <asp:ListItem>ALASKA</asp:ListItem>
                                        <asp:ListItem>ALABAMA</asp:ListItem>
                                        <asp:ListItem>CALIFORNIA</asp:ListItem>
                                        <asp:ListItem>NEVADA</asp:ListItem>
                                        <asp:ListItem>UTHA</asp:ListItem>
                                        <asp:ListItem>TEXAX</asp:ListItem>
                                    </asp:ListBox>
                                </td>
                                <td valign="middle">
                                    <%--movebutton--%>
                                    <table class="tab">
                                        <tr>
                                            <td valign="top">
                                                <asp:Button ID="btnstatecodemoveriht" runat="server" Text="Move >" Width="100px"
                                                    Style="margin-bottom: 10px" CssClass="buttonGreen small" OnClick="btnstatecodemoveriht_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <asp:Button ID="btnstatecodemovrleft" runat="server" Text="< Move" Width="100px"
                                                    Style="margin-bottom: 10px" CssClass="buttonGreen small" OnClick="btnstatecodemovrleft_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <asp:Button ID="btnstatecodemoveforwdleft" runat="server" Text="<< Move" Width="100px"
                                                    Style="margin-bottom: 10px" CssClass="buttonGreen small" OnClick="btnstatecodemoveforwdleft_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 150px; height: 200px" valign="top" align="right">
                                    <asp:ListBox ID="lststatedinclude" runat="server" SelectionMode="Multiple" Width="120px"
                                        Height="200px">
                                        <asp:ListItem>ALABAMA</asp:ListItem>
                                        <asp:ListItem>UTHA</asp:ListItem>
                                        <asp:ListItem>TEXAX</asp:ListItem>
                                    </asp:ListBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td valign="top" class="lineHeight36" style="width: 50%">
                    <div class="clear brdr radius pdng2" style="overflow: hidden; margin: 2px 2px 0px 0px">
                        <table class="querytab">
                            <tr>
                                <td align="center">
                                    <b>
                                        <asp:Label ID="lblfield" runat="server" Text="Fields"></asp:Label>
                                    </b>
                                </td>
                                <td>
                                    <b>
                                        <asp:Label ID="lblbeging" runat="server" Text="Begining" Style="margin-left: 50px"></asp:Label>
                                    </b>
                                </td>
                                <td>
                                    <b>
                                        <asp:Label ID="LBLENDING" runat="server" Text="Ending" Style="margin-left: 20px"></asp:Label>
                                    </b>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblcity" runat="server" Text="City :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtcitybegin" runat="server" Width="150px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtcityending" runat="server" Width="150px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblcompid" runat="server" Text="Company ID :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtcompidbegin" runat="server" Width="150px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtcompending" runat="server" Width="150px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblcompname" runat="server" Text="Company Name :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtcompnamebegin" runat="server" Width="150px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtcompnameend" runat="server" Width="150px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblCountry" runat="server" Text="Country :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtcountrybegin" runat="server" Width="150px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtcountryendin" runat="server" Width="150px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lbllastactdatebegin" runat="server" Text="Last Act. Date :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtlastactdatebegin" runat="server" Width="150px" placeholder="MM/DD/YYYY" CssClass="inputTextbox calender"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revLastActi" runat="server" ControlToValidate="txtlastactdatebegin"
                                        ErrorMessage="Date should be in MM/DD/YYYY format" Display="None" Text="*" ValidationGroup="VGQueryScreen"
                                        ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"></asp:RegularExpressionValidator>
                                    <asp:ValidatorCalloutExtender ID="vceLastActivity1" runat="server" TargetControlID="revLastActi"
                                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                    </asp:ValidatorCalloutExtender>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtlastactdateend" runat="server" Width="150px" placeholder="MM/DD/YYYY" CssClass="inputTextbox calender"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revLastActivityDateEnd" runat="server" ControlToValidate="txtlastactdateend"
                                        ErrorMessage="Date should be in MM/DD/YYYY format" Display="None" Text="*" ValidationGroup="VGQueryScreen"
                                        ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"></asp:RegularExpressionValidator>
                                    <asp:ValidatorCalloutExtender ID="vceLastAct" runat="server" TargetControlID="revLastActivityDateEnd"
                                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                    </asp:ValidatorCalloutExtender>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lbllastname" runat="server" Text="Last Name :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtlastnamebegin" runat="server" Width="150px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtlastnameend" runat="server" Width="150px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblregno" runat="server" Text="Reg Number :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtregnumberbeg" runat="server" Width="150px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtregnumberend" runat="server" Width="150px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblzip" runat="server" Text="Zip Code :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtzipbegin" runat="server" Width="150px" AutoCompleteType="None"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtzipend" runat="server" Width="150px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblapplicationdate" runat="server" Text="Application Date :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtapplicadatebeg" runat="server" Width="150px" placeholder="MM/DD/YYYY" CssClass="inputTextbox calender"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revAppDate" runat="server" ControlToValidate="txtapplicadatebeg"
                                        ErrorMessage="Date should be in MM/DD/YYYY format" Display="None" Text="*" ValidationGroup="VGQueryScreen"
                                        ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"></asp:RegularExpressionValidator>
                                    <asp:ValidatorCalloutExtender ID="vceAppDate" runat="server" TargetControlID="revAppDate"
                                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                    </asp:ValidatorCalloutExtender>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtapplicatdateend" runat="server" Width="150px" placeholder="MM/DD/YYYY" CssClass="inputTextbox calender"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revAppDateEnd" runat="server" ControlToValidate="txtapplicatdateend"
                                        ErrorMessage="Date should be in MM/DD/YYYY format" Display="None" Text="*" ValidationGroup="VGQueryScreen"
                                        ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"></asp:RegularExpressionValidator>
                                    <asp:ValidatorCalloutExtender ID="vceAppDateendd" runat="server" TargetControlID="revAppDateEnd"
                                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                    </asp:ValidatorCalloutExtender>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblapprovedate" runat="server" Text="Approval Date :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtapprovdatebegin" runat="server" Width="150px" placeholder="MM/DD/YYYY" CssClass="inputTextbox calender"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revApproveDate" runat="server" ControlToValidate="txtapprovdatebegin"
                                        ErrorMessage="Date should be in MM/DD/YYYY format" Display="None" Text="*" ValidationGroup="VGQueryScreen"
                                        ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"></asp:RegularExpressionValidator>
                                    <asp:ValidatorCalloutExtender ID="vceApprove" runat="server" TargetControlID="revApproveDate"
                                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                    </asp:ValidatorCalloutExtender>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtapprovdateend" runat="server" Width="150px" placeholder="MM/DD/YYYY" CssClass="inputTextbox calender"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revApprovDateend" runat="server" ControlToValidate="txtapprovdateend"
                                        ErrorMessage="Date should be in MM/DD/YYYY format" Display="None" Text="*" ValidationGroup="VGQueryScreen"
                                        ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"></asp:RegularExpressionValidator>
                                    <asp:ValidatorCalloutExtender ID="vceApproveDateend" runat="server" TargetControlID="revApprovDateend"
                                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                    </asp:ValidatorCalloutExtender>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblboarddate" runat="server" Text="Board Date :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtboarddatebegin" runat="server" Width="150px" placeholder="MM/DD/YYYY" CssClass="inputTextbox calender"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revBoardDatebegin" runat="server" ControlToValidate="txtboarddatebegin"
                                        ErrorMessage="Date should be in MM/DD/YYYY format" Display="None" Text="*" ValidationGroup="VGQueryScreen"
                                        ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"></asp:RegularExpressionValidator>
                                    <asp:ValidatorCalloutExtender ID="vceBoard" runat="server" TargetControlID="revBoardDatebegin"
                                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                    </asp:ValidatorCalloutExtender>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtboarddateend" runat="server" Width="150px" placeholder="MM/DD/YYYY" CssClass="inputTextbox calender"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revBoardDatend" runat="server" ControlToValidate="txtboarddateend"
                                        ErrorMessage="Date should be in MM/DD/YYYY format" Display="None" Text="*" ValidationGroup="VGQueryScreen"
                                        ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"></asp:RegularExpressionValidator>
                                    <asp:ValidatorCalloutExtender ID="vceboarddate" runat="server" TargetControlID="revBoardDatend"
                                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                    </asp:ValidatorCalloutExtender>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblxeamdate" runat="server" Text="Exam Date :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txteamdatebegin" CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" runat="server"
                                        Width="150px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revExamDate" runat="server" ControlToValidate="txteamdatebegin"
                                        ErrorMessage="Date should be in MM/DD/YYYY format" Display="None" Text="*" ValidationGroup="VGQueryScreen"
                                        ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"></asp:RegularExpressionValidator>
                                    <asp:ValidatorCalloutExtender ID="vceExamDate" runat="server" TargetControlID="revExamDate"
                                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                    </asp:ValidatorCalloutExtender>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtexamdateend" runat="server" Width="150px" placeholder="MM/DD/YYYY" CssClass="inputTextbox calender"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revExamDateendd" runat="server" ControlToValidate="txtexamdateend"
                                        ErrorMessage="Date should be in MM/DD/YYYY format" Display="None" Text="*" ValidationGroup="VGQueryScreen"
                                        ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"></asp:RegularExpressionValidator>
                                    <asp:ValidatorCalloutExtender ID="vceExamD" runat="server" TargetControlID="revExamDateendd"
                                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                    </asp:ValidatorCalloutExtender>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblsex" runat="server" Text="Sex :"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButtonList ID="rbtnsex" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="M">  Male  </asp:ListItem>
                                        <asp:ListItem Value="F">  Female  </asp:ListItem>
                                        <asp:ListItem Selected="True" Value="A">   Both   </asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <div class="clear" style="width: 100%;">
            <asp:GridView ID="gvQueryscreen" runat="server" AutoGenerateColumns="False" CssClass="index"
                Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" PagerStyle-CssClass="pager_style"
                PageSize="10" AllowPaging="true" PagerSettings-Mode="NumericFirstLast">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField ItemStyle-Width="200px">
                        <HeaderTemplate>
                            Registration Number</HeaderTemplate>
                        <ItemTemplate>
                            <%# Eval("Member_Registration_Number")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="125px">
                        <HeaderTemplate>
                            License Number</HeaderTemplate>
                        <ItemTemplate>
                            <%# Eval("License_Number")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="125px">
                        <HeaderTemplate>
                            Last Name</HeaderTemplate>
                        <ItemTemplate>
                            <%# Eval("Member_Info_Last_Name")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="200px">
                        <HeaderTemplate>
                            City</HeaderTemplate>
                        <ItemTemplate>
                            <%# Eval("Member_Info_City")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="200px">
                        <HeaderTemplate>
                            State</HeaderTemplate>
                        <ItemTemplate>
                            <%# Eval("Member_Info_State")%>
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
            </asp:GridView>
        </div>
        <br />
        <br />
        <div class="ribbon" style="width: 100%;">
            <div class="holder peel-shadows" style="width: 99%; padding: 20px 5.5px; margin-top: 0px;
                margin-left: -1px;">
                <span class="fltlft">
                    <%--<asp:LinkButton ID="LinkButton1" runat="server" OnClick="lnkbtnCancel_Click">New</asp:LinkButton>--%></span>
                <div class="buttons iefix-5 inline">
                    <asp:Button ID="lnkClear" CssClass="secondary medium bottom" runat="server" Text="Clear"
                        OnClick="lnkClear_Click"></asp:Button>
                    <asp:Button ID="lnkReturn" CssClass="secondary medium bottom" runat="server" Text="Return"
                        OnClick="lnkReturn_Click"></asp:Button>
                    <asp:Button ID="lnkCount" CssClass="buttonGreen medium" runat="server" Text="Count"
                        OnClick="lnkCount_Click"></asp:Button>
                    <asp:Button ID="btnViewReport" CssClass="buttonGreen medium" runat="server" Text="Preview And Print"
                        CausesValidation="true" OnClick="btnPrint_Click" />
                    <asp:Button ID="btnBulkEmail" CssClass="buttonGreen medium" runat="server" Text="Send Bulk Email"
                        CausesValidation="true" OnClick="btnBulkEmail_Click" />
                    <%--<asp:Button ID="btnPrint" CssClass="buttonGreen medium" runat="server" Text="Print Report"
                        CausesValidation="true" OnClick="btnPrint_Click" />--%>
                    <%--<a href="#" class="cancel">cancel</a>--%>
                </div>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
