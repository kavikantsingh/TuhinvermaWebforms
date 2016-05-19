<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Individual/MasterPage/LogInPage.Master" AutoEventWireup="true"
    CodeFile="SchoolApplication.aspx.cs" Inherits="NVBMT_Public.UI.CertificationApplication" %>

<%@ Register Src="~/Module/UI_School/SchoolApplication/ucSchoolApplication.ascx" TagName="ucCertificationApplication" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../Validation/FormValidation.js" type="text/javascript"></script>
    <link href="../../App_Themes/Public/css/NewButton.css" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Public/css/epay2.css" rel="stylesheet" type="text/css" />
    <script>
        function RemoveElement(e) {
            $(e).remove();
        }
        function ShowChildMessage(msg, type) {
            $('#MsgDivUploadAll').html(BuildValidationMessage(msg, type)); HideLoader();
        } function ShowChildMessageDiv(element, msg, type) {
            $(element).html(BuildValidationMessage(msg, type)); HideLoader();
        }
    </script>
    <style type="text/css">
        @media screen and (-ms-high-contrast: active), (-ms-high-contrast: none)
        {
            .applicationform
            {
                width: 1000px !important;
            }
        }
    </style>
    <script>

        function UploadImage(input) {
            var ext = input.files[0].name.split('.').pop().toLowerCase();
            if ($.inArray(ext, ['bmp', 'png', 'jpg', 'jpeg', 'gif']) == -1) {
                alert('Please upload only BMP, JPG, GIF or PNG photos.');
            }
            else {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('#imgProfile').attr('src', e.target.result);
                    }

                    reader.readAsDataURL(input.files[0]);
                }

                sendProfilePic(input.files[0]);
            }
        }
        function sendProfilePic(file) {
            ShowLoader();
            $.ajax({
                type: 'post',
                url: '../../Ajax_Handler/Image.ashx?saveFile=true&name=' + file.name + '&ApplicationNumber=' + $('#hidApplicationNumber').val() + '&IndividualId=0&Documenttype=0&DocumentTypeName=Profile',
                data: file,
                async: true,
                success: function () {
                    $('#imgProfile').attr('src', $('#hidPermanentUrl').val() + "&v=2.333" + file.name); HideLoader();
                },
                xhrFields: {

                },
                processData: false,
                contentType: false// file.type
            });
        }
        function ShowChildMessage(msg, type) {
            $('#MsgDivUploadAll').html(BuildValidationMessage(msg, type)); HideLoader();
        }
    </script>
    <link href="../../App_Themes/Public/jquery-ui/css/start/jquery-ui-1.9.2.custom.css?"
        rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucCertificationApplication ID="ucCertificationApplication1" runat="server" />
    <script type="text/javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        function BeginRequestHandler(sender, args) {
            try {
                ShowLoader();
                onUpdate();

            }
            catch (e) {
            }
        }

        function EndRequestHandler(sender, args) {
            try {
                HideLoader();
                onUpdate();
            }
            catch (e) {
            }
        }
        function onUpdate() {
            InitiateOnlyAlphabet();
            InitiateOnlyNumeric();
            InitiateCalender();
            InitiateMasking();
            InitiateTooltip();
            $("input.us_street").blur(function () {
                OnStreetChange(this);
            });
        }

    </script>
</asp:Content>
