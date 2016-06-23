<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="LAPP_UI_Backoffice_UI_Login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%--<%@ Register Src="../../Module/UI_Backoffice/ucLogin.ascx" TagName="ucLogin" TagPrefix="uc2" %>--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="CACHE-CONTROL" content="NO-CACHE">
    <title>California Massage Therapy Council</title>
    <link href="../../App_Themes/Theme1/css/loginPage.css" rel="stylesheet" />

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="../../Validation/FormValidation.js" type="text/javascript"></script>


    <!--[if ie 8]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <link rel="stylesheet" type="text/css" href="App_Themes/Theme1/css/ie8.css" />
	<![endif]-->

</head>
<body>
    <form id="form1" runat="server">
        <div style="background: #c0c0c0; overflow: hidden">
            <div class="container">

                <div class="forms" id="forms">
                    <div id="log-in" style="display: block;">
                        <h2 class="site-name large">
                            <a href="javascript://"><span></span></a>
                        </h2>
                        <div class="messages">
                            <ul>
                            </ul>
                        </div>
                        <div style="margin-top: 31px; position: relative">

                            <%--<uc2:ucLogin ID="ucLogin2" runat="server" />--%>

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
                                            <asp:TextBox ID="txtEmail" runat="server" ToolTip="Email" placeholder="Email" CssClass="text" MaxLength="256" />
                                        </td>
                                        <td style="position: relative">
                                            <asp:TextBox ID="txtPassword" title="Password" TextMode="Password" placeholder="****" runat="server" CssClass="text" MaxLength="128" />
                                        </td>
                                        <td>
                                            <div class="submit">
                                                <asp:Button ID="btnLogin" CssClass="submit" ValidationGroup="VGLogin" runat="server"
                                                    Text="" OnClick="btnLogin_click" />
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                <div class="options">
                                </div>

                            </fieldset>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
