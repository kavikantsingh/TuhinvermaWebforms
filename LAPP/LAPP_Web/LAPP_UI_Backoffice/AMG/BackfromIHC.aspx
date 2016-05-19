<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/1Column.master" AutoEventWireup="true" CodeFile="BackfromIHC.aspx.cs" Inherits="LAPP_UI_Backoffice_AMG_BackfromIHC" %>
<%@ Register Src="~/Module/UI_Backoffice/AMG/ucBackfromIHC.ascx" TagName="ucBackfromIHC"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
    <script type="text/javascript">
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
    <script type="text/javascript">
        function InitiatePage() {
            MaskCalenderDOB();
            MaskPhone();
            MaskSSN();
            MaskCalender();
        }
    </script>
    <script type="text/javascript">
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
    </script>

    <style>
        table#ContentPlaceHolder1_ucCertificationApplication1_rblGenderEdit td {
            padding: 0px !important;
        }
        /*       .index tbody td:last-child
        {
            vertical-align: bottom;
            padding-top: 2px;
        } */
        table.content1-table td {
            padding: 0px;
            font-size: 14px;
            padding-right: 5px;
        }

        .actions ul {
            margin: 6px 0 0 0;
            float: left;
        }

        .signup .posRelative {
            line-height: 40px;
        }

            .signup .posRelative label {
                width: 100px;
                display: inline-block;
                text-align: right;
                margin-right: 50px;
                padding-right: 20px;
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
            width: 57%;
            margin: 0 auto;
        }

        .inputDropDown {
            width: 268px;
        }

        .button {
            padding-left: 10px;
            padding-right: 10px;
        }

        #pnlGrid tr {
            border: 0px solid !important;
        }

        .greenleaf {
            background-image: url('../App_Themes/Theme1/images/Go_Green.png');
            height: 28px;
            background-position: 254px 30px;
            margin: auto;
            width: 34px;
            float: left;
        }
    </style>
    <link href="../../App_Themes/Theme1/css/epay.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function Navigate(e, j) {
            $("#menu-w-licensure li").each(function () {
                $(this).removeClass("actived");

            });
            $(e).addClass("actived");
            for (var i = 1; i <= 11; i++) {
                $(".section" + i).hide();
            } $(".section" + j).show();
        }
    </script>

    <style>
        .workinfo {
            width: 141px;
        }

        .mrgnnon {
            margin-left: 0px !important;
        }

        .index tbody th a {
            color: #F9F9F9 !important;
        }

        .btnBCGPass {
            width: 80px;
        }

        .grid-heading {
            width: 100%;
            background-color: #ddd;
            font-weight: bold;
        }

        .btnBCGFail:hover {
            background-image: none;
            border: 1px solid #9D0707 !important;
            background-position: left 194px !important;
            -webkit-box-shadow: 0 2px 1px -1px #E57D49 inset;
            -moz-box-shadow: 0 2px 1px -1px #b3d72d inset;
            box-shadow: 0 2px 1px -1px #ED6640 inset;
            -webkit-box-shadow: 0 2px 1px -1px #F8D19E inset;
            -moz-box-shadow: 0 2px 1px -1px #b3d72d inset;
            background: rgb(237, 37, 37);
        }

        .btnBCGFail {
            -webkit-text-shadow: 0 -1px 0 rgba(0,0,0,0.4);
            -moz-text-shadow: 0 -1px 0 rgba(0,0,0,0.4);
            text-shadow: 0 -1px 0 rgba(0,0,0,0.4);
            -moz-user-select: none;
            -webkit-user-select: none;
            -ms-user-select: none;
            user-select: none;
            -o-border-radius: 3px;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            border-radius: 3px;
            background-image: url('../images/sprites.v1351539994.png');
            color: #fff !important;
            text-decoration: none !important;
            text-align: center;
            cursor: pointer;
            white-space: nowrap;
            padding: 0;
            margin: 0 2px;
            outline: 0;
            border: 1px solid #B50000 !important;
            background-position: left 194px !important;
            -webkit-box-shadow: 0 2px 1px -1px #E57D49 inset;
            -moz-box-shadow: 0 2px 1px -1px #b3d72d inset;
            box-shadow: 0 2px 1px -1px #ED6640 inset;
            -webkit-box-shadow: 0 2px 1px -1px #F8D19E inset;
            -moz-box-shadow: 0 2px 1px -1px #b3d72d inset;
            box-shadow: 0 2px 1px -1px #FAC59B inset;
            padding: 0px 10px !important;
            width: 80px;
            background: rgb(237, 55, 55);
            height: 30px;
            font: bold 14px Arial,Helvetica,sans-serif;
        }

        .actived {
            background: linear-gradient(rgb(182, 224, 38) 0%, rgb(171, 220, 40) 100%) rgb(221, 239, 180) !important;
        }

        .tblApplReqForm5 td {
            padding: 10px 0px 0px !important;
        }

        .clear.edit-mode-div {
            border-bottom: 1px solid #ddd;
        }

        .add-mode-div tr {
            border: 0px !important;
        }

        .add-mode-div td {
            border: 0px !important;
        }

        .tdwidth1 {
            width: 220px !important;
        }

        .tdwidth2 {
            width: 199px !important;
        }

        .pragraph {
            padding-bottom: 10px;
        }

        .gvDivUpr {
            color: rgb(0, 0, 0);
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            font-style: normal;
            font-variant: normal;
            font-weight: normal;
            letter-spacing: normal;
            orphans: auto;
            text-align: left;
            text-indent: 0px;
            text-transform: none;
            white-space: normal;
            widows: auto;
            word-spacing: 0px;
            -webkit-text-stroke-width: 0px;
            background-color: rgb(255, 255, 255);
        }

        .hed {
            font-weight: bold;
        }

        .divquestion {
            margin: 3px auto;
            width: 100%;
            border: 1px solid rgb(238, 238, 238);
        }

        .index tr {
            border-top: 0px !important;
        }

        table#gvOtherNameEdit tbody tr td {
            border: 1px solid #ddd;
            padding: 0px !important;
            margin: 0px !important;
        }

        table#gvOtherNameEdit tbody .RowInEditMode td {
            border: 0px !important;
            padding: 0px !important;
            margin: 0px !important;
        }

        table#gvOtherNameEdit tbody tr td:First-Child {
            padding-left: 5px !important;
        }

        .tdwidth1 {
            width: 227px !important;
        }

        .vlignbtm {
            vertical-align: bottom;
        }

        #rblQuestionEdit1 tr td {
            padding: 0px !important;
        }

        #rblQuestionEdit2 tr td {
            padding: 0px !important;
        }

        #rblQuestionEdit3 tr td {
            padding: 0px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" runat="Server">
    <div class="get-started-content">
        <uc1:ucBackfromIHC ID="ucCertificationApplication1" runat="server" />
    </div>
    <script type="text/javascript">
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

