<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LicenseeUploads.aspx.cs"
    Inherits="LicenseeUploads" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="../../App_Themes/Theme1/js/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script src="../../App_Themes/Theme1/js/jquery-ui-1.8.23.custom.min.js" type="text/javascript"></script>
    <link href="../../App_Themes/Theme1/css/FileUpload.css" rel="stylesheet" type="text/css" />
</head>
<!--[if IE]>
<link href="../../App_Themes/Theme1/css/ie8.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../../App_Themes/Theme1/css/ieAll.css" />
	<![endif]-->
<!--[if IE 11]>
<link href="../../App_Themes/Theme1/css/ie8.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../../App_Themes/Theme1/css/ieAll.css" />
	<![endif]-->
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%">
            <tr>
                <td class="IE11">
                    <%--<span class="hed">Select File :</span>--%>
                    <asp:FileUpload ID="fuApplicantEdit" ClientIDMode="Static" runat="server" />
                </td>
                <td>
                    <asp:Button ID="btnUploadApp" ClientIDMode="Static" runat="server" ValidationGroup="VGAppicationUpload"
                        CssClass="buttonGreen small" Text="Upload" OnClientClick="window.parent.ShowLoader();"
                        OnClick="btnUploadApp_Click" />
                </td>
            </tr>
        </table>
    </div>
    <script src="../../Validation/FormValidation.js" type="text/javascript"></script>
    </form>
</body>
</html>
