<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucLogin.ascx.cs" Inherits="Module_ucLogin" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<div class="messages" id="divMessage" runat="server" visible="false">
    <ul>
        <li>
            <asp:Literal ID="ltrMessage" runat="server"></asp:Literal></li>
    </ul>
</div>
<fieldset class="inline">
    <legend></legend>
    <table>
        <tr>
            <td style="position: relative">
                <asp:TextBox ID="txtEmail" runat="server" ToolTip="Email" placeholder="Email"
                    CssClass="text" MaxLength="256">
                </asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVtxtEmail" runat="server" ErrorMessage="Please enter valid email address eg:john@example.com"
                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtEmail"
                    ValidationGroup="VGLogin">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REVEmail" runat="server" InitialValue="Email"
                    ErrorMessage="Please enter valid email eg:john@example.com" ValidationGroup="VGLogin"
                    ControlToValidate="txtEmail" ForeColor="#FF3300" Text="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    Display="None">
                </asp:RegularExpressionValidator>
                <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RFVtxtEmail"
                    PopupPosition="BottomLeft" HighlightCssClass="error">
                </asp:ValidatorCalloutExtender>
                <asp:ValidatorCalloutExtender ID="VCEEmail" runat="server" TargetControlID="REVEmail"
                    PopupPosition="BottomLeft" HighlightCssClass="error">
                </asp:ValidatorCalloutExtender>
            </td>
            <td style="position: relative">
                <asp:ValidatorCalloutExtender ID="VCEFpassword" runat="server" TargetControlID="rfvpassword"
                    PopupPosition="BottomLeft" HighlightCssClass="error">
                </asp:ValidatorCalloutExtender>
                <asp:TextBox ID="password" title="Password" TextMode="Password" placeholder="****"
                    runat="server" CssClass="text" MaxLength="128">
                </asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvpassword" runat="server" ErrorMessage="Password is required"
                    ControlToValidate="password" Text="*" ForeColor="Red" ValidationGroup="VGLogin"
                    Display="None" SetFocusOnError="True">
                </asp:RequiredFieldValidator>
            </td>
            <td>
                <div class="submit">
                    <asp:Button ID="btnLogin" CssClass="submit" ValidationGroup="VGLogin" runat="server"
                        Text="" OnClick="btnLogin_click" OnClientClick="ShowLoader();" />
                </div>
            </td>
        </tr>
    </table>
    <%-- <ul>
        <li style="position: relative">
            
        </li>
        <li style="position: relative">
           
        </li>
    </ul>
    --%>
    <div class="options">
        <%--<a href="~/Lapp_Ui_Backoffice/UI/ForgetPassword.aspx" id="aFP" runat="server" class="ftrig" onclick="ShowLoader();">I forgot my password</a>--%><%-- <span class="divider">
            ·</span> <a href="UI/SignUp.aspx" class="ftrig">I don't have an account yet</a>--%>
    </div>
</fieldset>
