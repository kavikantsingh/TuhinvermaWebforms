<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucLogin.ascx.cs" Inherits="Module_UI_Agency_ucLogin" %>

<asp:UpdatePanel runat="server" ID="upLongInPage" UpdateMode="Conditional">
    <ContentTemplate>
        <div class="MainLogInPage">
            <div class="loginPageSamll">
                <div class="logicontainer">
                    <div class="logoLogin">
                        <img src="../../App_Themes/Agency/images/logo.png" style="visibility: hidden" style="width: 200px;" />
                    </div>
                    <div style="min-height: 30px; padding-bottom: 15px;">
                        <asp:Literal ID="ltrError" runat="server"></asp:Literal>
                    </div>
                    <div class="SubLoginContainer" runat="server" id="Divgetemail">
                        <table class="loginTable">
                            <tr id="RowLoginHeader" runat="server">
                                <td>
                                    <h4>Log In</h4>
                                </td>
                            </tr>
                            <tr id="RowForgetHeader" runat="server" visible="false">
                                <td>
                                    <h4>Forget Password</h4>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtEmailIdforEmail" Style="font-size: 16px" title="Enter your registred User Id."
                                        placeholder="Enter User ID" CssClass="inputbox tooltip LogIn" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr id="RowPasswordSecond" runat="server">
                                <td class="Password">
                                    <asp:TextBox ID="txtApplicationPassword" Style="font-size: 16px;" title="Enter your Password."
                                        placeholder="Enter Password" TextMode="Password" CssClass="inputbox tooltip LogIn"
                                        runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr id="RowLoginSecond" runat="server">
                                <td class="buttonTd">
                                    <span>
                                        <asp:Button ID="btnSendEmail" CssClass="btn-success btn-sm " runat="server" Text="Log In"
                                            OnClick="btnSendEmail_Click" />
                                        <asp:Button ID="btnCancelSend" runat="server" CssClass="btn-default btn-sm " Text="Cancel"
                                            OnClick="btnCancelSend_Click" />
                                    </span>
                                </td>
                            </tr>
                            <tr id="RowForgotSecond" runat="server" visible="false">
                                <td class="buttonTd">
                                    <span>
                                        <asp:Button ID="btnSend2" CssClass="btn-success btn-sm" runat="server" Text="Submit"
                                            OnClick="btnSendPassword2_Click" />
                                        <asp:Button ID="btnCancelForget2" runat="server" CssClass="btn-default btn-sm " Text="Cancel"
                                            OnClick="btnCancelForget2_Click" />
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td class="CheckRememberTd">
                                    <span>
                                        <%--<a class="forgotpass" href="javascript:void(0)!"></a>--%>
                                        <asp:LinkButton ID="lnkForgot2" runat="server" OnClick="lnkForgot2_Click">Forgot your User ID or Password?</asp:LinkButton>
                                        <br />
                                        <asp:LinkButton ID="lnkForgot3" runat="server">File a complaint against a CAMTC certificate holder</asp:LinkButton>
                                        <%--<a
                                class="forgotpass" href="javascript:void(0)!">Sign Up Here</a>--%></span>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="InformationContainer">
                    <div class="InformationHeader" style="height: 55px">
                        <div class="LoginBoxHeading">
                            GOVERNMENT AGENCIES
                        </div>
                    </div>
                    <div id="pnlLogInPage" runat="server" visible="true">
                        <div class="InformationContent">
                            <div class="contentboxsimple">
                                <div class="description" runat="server" id="content" style="overflow-y: scroll; height: 330px !important; font-size: 13px; padding: 5px 9px 15px;">
                                    <p style="display: none">
                                        <asp:Literal ID="lrtMesasge" runat="server" Visible="false"></asp:Literal>
                                    </p>
                                    <p>
                                        The Massage Therapy Act (California Business and Professions Code sections 460,
                                        4600-4621, and Government Code section 51034) establishes statewide standards for
                                        voluntary certification of massage professionals that meet the requirements in the
                                        law and provides direction to cities and counties on the regulation of massage professionals
                                        and businesses. The bill that initially authorized the California Massage Therapy
                                        Council (CAMTC) was signed into law on September 27, 2008 by Governor Schwarzenegger
                                        and became effective January 1, 2009. It provided for the creation of a private
                                        non-profit corporation, CAMTC, to provide voluntary statewide certification to eligible
                                        massage professionals no sooner than September 1, 2009. In 2014, CAMTC was re-authorized
                                        by AB 1147, which is effective January 1, 2015, and has significantly changed the
                                        law. For a general summary of the 2015 changes in the law applicable to cities and
                                        counties, <a href="#" target="_blank">please click here</a>. You can also find <a
                                            href="#" target="_blank">the complete text of the Massage Therapy Act, codified
                                            at California Business and Professions Code sections 460, 4600-4621, and Government
                                            Code section 51034, here</a>. Applicants for CAMTC certification are subject
                                        to a rigorous review. Before issuing a certification, CAMTC reviews the applicant's
                                        education and professional credentials and conducts a background check, including
                                        checking for potential criminal history with the California Department of Justice
                                        and the Federal Bureau of Investigation, and requesting information related to civil
                                        and administrative action against the individual from cities and counties. Some
                                        applications require additional review, including but not necessarily limited to
                                        consultations with local law enforcement agencies, investigation of the applicant's
                                        education and conduct, and/or interviews with applicants.
                                    </p>
                                </div>
                            </div>
                            <div class="contentboxShadow" visible="false" runat="server" id="divshadow">
                                <div class="NewUserClick">
                                    <asp:LinkButton ID="lnkNewtherapists" runat="server" CssClass="renew" PostBackUrl="~/UI/ApplicationRequest.aspx">I want a Nevada License</asp:LinkButton>
                                    <asp:LinkButton ID="lnkbtnCreateNewAcc" runat="server" OnClick="lnkbtnCreateNewAcc_Click"
                                        CssClass="renew">I have a Nevada License</asp:LinkButton>
                                    <%--<asp:LinkButton ID="lnkbtnCreateNewAcc" runat="server" CssClass="renew">Click here to renew</asp:LinkButton>--%>
                                </div>
                            </div>
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

            .MainLogInPage a {
                color: Blue !important;
                text-decoration: underline !important;
            }
        </style>
    </ContentTemplate>
</asp:UpdatePanel>
