<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucLogIn.ascx.cs" Inherits="ucLogIn" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:UpdatePanel runat="server" ID="upLongInPage" UpdateMode="Conditional">
    <ContentTemplate>
        <div class="MainLogInPage">
            <div class="loginPageSamll">
                <div class="logicontainer">
                    <%--<div class="logoLogin">
                        <img src="../App_Themes/Theme1/images/logo.png" style="width: 200px;" />
                    </div>--%>
                    <div style="min-height: 125px; padding-bottom: 15px;">
                        <asp:Literal ID="ltrError" runat="server"></asp:Literal>
                    </div>
                    <div class="SubApplyContainer" runat="server" id="Divaplynpnl">
                        <p class="fntbld pdngtbmtop">
                            <span title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum">Existing user </span>
                            <asp:Button ID="btnshowloginpnl" Style="padding: 4px !important; width: 78px; font-weight: bold;"
                                CssClass="btn-success btn-xs padding fltrt" runat="server" Text="Log In" OnClick="btnshowloginpnl_Click" />
                        </p>
                        <p class="fntbld pdngtbmtop">
                            <span title="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum">New user</span>
                            <asp:Button ID="btnGotoAppRequest" Style="padding: 4px !important; width: 78px; font-weight: bold;"
                                CssClass="btn-success btn-xs padding fltrt" runat="server" Text="Register" OnClick="btnGotoAppRequest_Click" />
                        </p>
                        <p class="fntbld pdngtbmtop" style="display: none;">
                            Complete or Check Status of your
                            <br />
                            CAMTC Application for Certification
                            <br />
                            using Application Number
                            <asp:Button ID="btnContinue" Style="padding: 4px !important; width: 78px; margin-top: -25px; font-weight: bold;"
                                CssClass="btn-success btn-xs padding fltrt" runat="server"
                                Text="Continue" OnClick="btnContinue_Click" />
                        </p>
                        <p class="fntbld pdngtbmtop" style="display: none;">
                            Login to Recertify or to use other
                            <br />
                            online services
                            <asp:Button ID="btnClickHere" Style="padding: 4px !important; width: 78px; font-weight: bold; margin-top: -25px;"
                                CssClass="btn-success btn-xs padding fltrt" runat="server"
                                Text="Click Here" /><%--OnClick="btnClickHere_Click" --%>
                        </p>
                    </div>
                    <div class="SubLoginContainer" runat="server" id="Divloginpnl" visible="false">
                        <table class="loginTable">
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtUserName" Style="font-size: 16px;" title="Enter your registred Email Id"
                                        placeholder="Username (Email)" CssClass="inputbox tooltip LogIn" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr id="RowPassword" runat="server">
                                <td class="Password">
                                    <asp:TextBox ID="txtPassword" title="Enter your Password" Style="font-size: 16px"
                                        placeholder="Password" TextMode="Password" CssClass="inputbox tooltip LogIn"
                                        runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr id="RowLogin" runat="server">
                                <td class="buttonTd">
                                    <span>
                                        <asp:Button ID="btnLogIn" CssClass="btn-success btn-sm" runat="server" Text="Log In"
                                            OnClick="btnLogIn_Click" />
                                        <asp:Button ID="btnCancel" runat="server" CssClass="btn-default btn-sm" Text="Cancel"
                                            OnClick="btnCancel_Click" />
                                    </span>
                                </td>
                            </tr>
                            <tr id="RowForgot" runat="server" visible="false">
                                <td class="buttonTd">
                                    <span>
                                        <asp:Button ID="btnSend" CssClass="btn-success btn-sm" runat="server" Text="Submit"
                                            OnClick="btnSendPassword_Click" />
                                        <asp:Button ID="btnCancelForget" runat="server" CssClass="btn-default btn-sm" Text="Cancel"
                                            OnClick="btnCancelForget_Click" />
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td class="CheckRememberTd">
                                    <span>
                                        <asp:LinkButton ID="lnkForgot" runat="server" OnClick="lnkForgot_Click">Forgot your password?</asp:LinkButton>
                                        <br />
                                        <%--<asp:LinkButton ID="lnkNoLogin" runat="server" OnClick="lnkNoLogin_Click">No Login? Use Application Number and Date of Birth.</asp:LinkButton>--%>
                                    </span>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="SubLoginContainer" runat="server" id="Divgetemail" visible="false">
                        <table class="loginTable">
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtApplicationNo" Style="font-size: 16px" title="Enter your Application No."
                                        placeholder="Application Number" CssClass="inputbox tooltip LogIn" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr id="RowPasswordSecond" runat="server">
                                <td class="Password">
                                    <asp:TextBox ID="txtDOB" title="Enter your Date Of Birth." Style="font-size: 16px"
                                        placeholder="Date Of Birth" CssClass="inputbox calenderDOB LogIn tooltip " runat="server"></asp:TextBox>
                                    <%--<asp:Image runat="server" Style="width: 34px; position: relative; top: 13px; cursor: pointer;"
                                        ID="btnDate2" AlternateText="cal2" ImageUrl="../App_Themes/Theme1/images/Calender.png" />
                                    <asp:CalendarExtender ID="calExtender4" runat="server" PopupButtonID="btnDate2" PopupPosition="TopRight"
                                        TargetControlID="txtDOB" Format="MM/dd/yyyy">
                                    </asp:CalendarExtender>--%>
                                </td>
                            </tr>
                            <tr id="RowLoginSecond" runat="server">
                                <td class="buttonTd">
                                    <span>
                                        <asp:Button ID="btnSendEmail" CssClass="btn-success btn-sm" runat="server" Text="Submit"
                                            OnClick="btnSendEmail_Click" />
                                        <asp:Button ID="btnCancelSend" runat="server" CssClass="btn-default btn-sm" Text="Cancel"
                                            OnClick="btnCancelSend_Click" />
                                    </span>
                                </td>
                            </tr>
                            <tr id="RowForgotSecond" runat="server" visible="false">
                                <td class="buttonTd">
                                    <span>
                                        <asp:Button ID="btnSend2" CssClass="btn-success btn-sm" runat="server" Text="Submit"
                                            OnClick="btnSendPassword2_Click" />
                                        <asp:Button ID="btnCancelForget2" runat="server" CssClass="btn-default btn-sm" Text="Cancel"
                                            OnClick="btnCancelForget2_Click" />
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td class="CheckRememberTd">
                                    <span>
                                        <%--<a class="forgotpass" href="javascript:void(0)!"></a>--%>
                                        <asp:LinkButton ID="lnkForgot2" runat="server" OnClick="lnkForgot2_Click">Forgot your password?</asp:LinkButton>
                                        <%--<a
                                class="forgotpass" href="javascript:void(0)!">Sign Up Here</a>--%></span>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="InformationContainer">
                    <%-- <div class="InformationHeader">
                        <div class="LoginBoxHeading">
                            California Massage Therapy Council
                        </div>
                    </div>--%>
                    <div id="pnlLogInPage" runat="server" visible="true">
                        <div class="InformationContent">
                            <div class="contentboxsimple">
                                <div class="description" runat="server" id="content">
                                    <p>
                                        To update your address information or start the online renewal process,
                                         please enter your username and password below. If you haven't set up your username and password,
                                         click on the "I want a California Certificate" or "I have a California Certificate" link.
                                    </p>
                                </div>
                            </div>
                            <div class="contentboxShadow" visible="false" runat="server" id="divshadow">
                                <div class="NewUserClick">
                                    <asp:LinkButton ID="lnkNewtherapists" runat="server" CssClass="renew" PostBackUrl="~/UI/ApplicationRequest.aspx">I want a California Certificate</asp:LinkButton>
                                    <asp:LinkButton ID="lnkbtnCreateNewAcc" runat="server" OnClick="lnkbtnCreateNewAcc_Click"
                                        CssClass="renew">I have a California Certificate</asp:LinkButton>
                                    <%--<asp:LinkButton ID="lnkbtnCreateNewAcc" runat="server" CssClass="renew">Click here to renew</asp:LinkButton>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="pnlSignUpStep1" runat="server" visible="false">
                        <div class="InformationContent">
                            <div class="SignUpStep1">
                                <div class="boxbrder">
                                    <table style="height: 300px;">
                                        <tr>
                                            <td align="right" style="width: 170px;">
                                                <label class="input-label required">
                                                    First Name :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtFirstName" runat="server" Style="width: 223px;" autocomplete="off"
                                                    CssClass="inputTextbox capitalize-text" MaxLength="50"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">
                                                    Middle Name :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtMiddleName" runat="server" Style="width: 223px;" autocomplete="off"
                                                    CssClass="inputTextbox" MaxLength="50"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label required">
                                                    Last Name :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtUserLastName" runat="server" Style="width: 223px;" autocomplete="off"
                                                    CssClass="inputTextbox capitalize-text" MaxLength="50"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label required">
                                                    Date of Birth :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtDOBSignUp" runat="server" autocomplete="off" Style="width: 223px;"
                                                    CssClass="calenderDOB inputTextbox"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label required">
                                                    Email Address :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtUserEmail" autocomplete="off" runat="server" Style="width: 223px;"
                                                    CssClass=" " MaxLength="256"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <asp:CheckBox ID="chkEmailVerification" ClientIDMode="Static" runat="server" />
                                                        </td>
                                                        <td>
                                                            <p class="cursorpointer" style="line-height: 18px;">
                                                                <label for="chkEmailVerification">
                                                                    Click here if you don't have an email address
                                                                    <br />
                                                                    to continue with the application</label>
                                                            </p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" align="center">
                                                <span>
                                                    <%-- class="fltrt"--%>
                                                    <asp:Button ID="btnSavePersonalInfo" CssClass="btn-success btn-sm medium" runat="server"
                                                        Text="Save" OnClick="btnSavePersonalInfo_Click" />
                                                    <asp:Button ID="btnCancelPersonalInfo" CssClass="btn-default btn-sm bottom" runat="server"
                                                        Text="Cancel" OnClick="btnCancelPersonalInfo_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="pnlSignUpStep2" runat="server" visible="false">
                        <div class="InformationContent">
                            <div class="SignUpStep1">
                                <div class="contentboxsimple">
                                    <div class="description">
                                        <asp:Literal ID="ltrSignUpSuccess" runat="server"></asp:Literal>
                                    </div>
                                </div>
                            </div>
                            <%--<div class="toolBar" style="padding: 4px; margin: 4px;">
                                <span class="fltrt">
                                    <asp:Button ID="btnSubmittoLogin" CssClass="buttonGreen medium" Style="display: none;"
                                        runat="server" Text="Submit" OnClick="btnSubmittoLogin_Click" />
                                    <asp:LinkButton ID="lnkBacktoStep1" CssClass="secondary medium bottom" runat="server"
                                        OnClick="lnkBacktoStep1_Click">Back</asp:LinkButton></span>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <style>
            .error {
                background-color: pink;
            }

            #error-container {
                width: 90%;
                margin: 0 auto;
                text-align: left;
            }

            #progressbar li.active:before, #progressbar li.active:after {
                background: #27AE60;
                color: white;
            }

            #error-container ul {
                max-width: 514px;
                margin: 0px auto 20px auto;
                border: 1px solid #F6AEAE;
                padding: 10px 30px;
                border-radius: 5px;
                background: #FFF2F2;
            }

                #error-container ul li {
                    color: red;
                }

            .error {
                background: rgb(255, 241, 241) !important;
                border: 1px solid red !important;
            }
        </style>
    </ContentTemplate>
</asp:UpdatePanel>
