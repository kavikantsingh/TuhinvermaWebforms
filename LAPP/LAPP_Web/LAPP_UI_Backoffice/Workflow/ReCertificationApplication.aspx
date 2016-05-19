<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/1Column.master" AutoEventWireup="true" CodeFile="ReCertificationApplication.aspx.cs" Inherits="LAPP_UI_Backoffice_Workflow_ReCertificationApplication" %>
<%@ Register Src="~/Module/UI_Backoffice/Workflow/ucReCertification.ascx" TagName="ucReCertificationApplication"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link href="../../App_Themes/Theme1/css/OnlineApplication.css" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Theme1/css/Publicscreen.css" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/Theme1/css/Publiskin.css" rel="stylesheet" type="text/css" />
    <script src="../../App_Themes/Theme1/js/jquery.mask.min.js" type="text/javascript"></script>
    <link href="../../App_Themes/Theme1/jquery-ui/css/start/jquery-ui-1.9.2.custom.css"
        rel="stylesheet" type="text/css" />
    <script src="../../Validation/TextboxFormating.js" type="text/javascript"></script>
    <script src="../../Validation/FormValidation.js" type="text/javascript"></script>
    <link href="../../App_Themes/Theme1/css/NewButton.css" rel="stylesheet" type="text/css" />
    <!--[if IE]>
<link href="../../App_Themes/Theme1/css/ie8.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../../App_Themes/Theme1/css/ieAll.css" />
	<![endif]-->
    <script>
        $(function () {
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liAMG').addClass('active');

        });
        function ShowChildMessage(msg, type) {
            $('#MsgDivUploadAll').html(BuildValidationMessage(msg, type)); HideLoader();
        } function ShowChildMessageDiv(element, msg, type) {
            $(element).html(BuildValidationMessage(msg, type)); HideLoader();
        }
    </script>
    <script>
        function InitiatePage() {
            MaskCalenderDOB();
            MaskPhone();
            MaskSSN();
            MaskCalender();
        }
    </script>
    <script>
        function ShowChildMessage(msg, type) {
            $('#DivMsgUploadApll').html(BuildValidationMessage(msg, type)); HideLoader();
        }
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
                url: '../../Ajax_handler/Image.ashx?saveFile=true&name=' + file.name + '&ApplicationNumber=' + $('#hidApplicationNumber').val() + '&IndividualId=0&Documenttype=0&DocumentTypeName=Profile',
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
    </script>
    
    <style>
        .index tbody td:last-child
        {
            vertical-align: bottom;
            padding-top: 2px;
        }
        table.content1-table td
        {
            padding: 0px;
            font-size: 14px;
            padding-right: 5px;
        }
        .actions ul
        {
            margin: 6px 0 0 0;
            float: left;
        }
        
        .signup .posRelative
        {
            line-height: 40px;
        }
        .signup .posRelative label
        {
            width: 100px;
            display: inline-block;
            text-align: right;
            margin-right: 50px;
            padding-right: 20px;
        }
        .signup input[type="text"], input[type="password"], .signup textarea, .signup select
        {
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
        .flsSignupForm
        {
            width: 57%;
            margin: 0 auto;
        }
        .inputDropDown
        {
            width: 268px;
        }
        .button
        {
            padding-left: 10px;
            padding-right: 10px;
        }
        #pnlGrid tr
        {
            border: 0px solid !important;
        }
        
        .greenleaf
        {
            background-image: url('../App_Themes/Theme1/images/Go_Green.png');
            height: 28px;
            background-position: 254px 30px;
            margin: auto;
            width: 34px;
            float: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
       <div class="get-started-content">
        <uc1:ucReCertificationApplication ID="ucReCertificationApplication1" runat="server" />
    </div><script>
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        function BeginRequestHandler(sender, args) {
            try {
                //alert('aa');
                ShowLoader();
                //alert('hi');
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
        function MaskCalender() {

            $('.calender').datepicker({
                inline: true,
                altFormat: 'DD,MM, yy',
                changeMonth: true,
                changeYear: true //, minDate: "0"

            }); $('.calender').mask("99/99/9999");
        }
        function MaskCalenderDOB() {

            $('.calenderDOB').datepicker({

                constrainInput: true, inline: true,
                changeMonth: true,
                changeYear: true, minDate: "-100Y", maxDate: "-18Y",
                yearRange: "1950:+nn"

            }); $('.calenderDOB').mask("99/99/9999");
        }
        function MaskSSN() {

            $('.ssn').mask('999-99-9999'); $('.calender').mask("99/99/9999"); $('.zip_us').mask("99999-9999");
        }
        function MaskPhone() {

            $('.phone_us').mask('(000) 000-0000');
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

