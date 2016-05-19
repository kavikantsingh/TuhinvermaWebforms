<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/1Column.master" AutoEventWireup="true" CodeFile="SchoolComplaint.aspx.cs" Inherits="LAPP_UI_Backoffice_ESD_SchoolComplaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="../../App_Themes/Theme1/css/NewButton.css" rel="stylesheet" type="text/css" />
    <script src="../../App_Themes/Theme1/js/jquery.mask.min.js" type="text/javascript"></script>
    <script src="../../App_Themes/Theme1/Expandables/expand.js" type="text/javascript"></script>
    <script>
        window.onload = function () {
            showDivSlide('.userHide');
        };
        function toggleDiv(e) {
            $(e).toggle();
            $('span.close').click(function () {
                $(e).toggle();
            });
        }

        $(function () {
            //Navigation
            $('.nav-mainlinks li').each(function () {
                $(this).removeClass('active');
            });
            $('#liESD').addClass('active');

            //Masking
            $('.phone_us').mask('(000) 000-0000');
            $('.ssn').mask('999-99-9999');

            //For Date of Birth jquery calender
            $('.calenderDOB').datepicker({
                inline: true,
                changeMonth: true,
                changeYear: true, maxDate: "-18Y",
                yearRange: "1900:+nn"

            });
        });
    </script>
    <script>
        function RemoveElement(e) {
            $(e).remove();
        }

        function ShowChildMessage(msg, type) {
            $('#MsgDivUploadAll').html(BuildValidationMessage(msg, type)); HideLoader();
        } function ShowChildMessageDiv(element, msg, type) {
            $(element).html(BuildValidationMessage(msg, type)); HideLoader();
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
                        $('#IndvidualimgProfile').attr('src', e.target.result);
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
                url: '../../Ajax_Handler/IndividualProfileImage.ashx?saveFile=true&name=' + file.name + '&IndividualId=' + $('#hidIndividualId').val() + '&Documenttype=0&DocumentTypeName=Profile',
                data: file,
                async: true,
                success: function () {
                    $('#IndvidualimgProfile').attr('src', $('#hidPermanentUrl').val() + "&v=2.333" + file.name); HideLoader();
                },
                xhrFields: {

                },
                processData: false,
                contentType: false// file.type
            });
        }


    </script>
    <link href="../../App_Themes/Theme1/css/IndividualDetails.css?" rel="stylesheet" type="text/css" />
    <!--[if lte IE 7]>
<style type="text/css">
h2 a, .demo {position:relative; height:1%}
</style>
<![endif]-->
    <!--[if lte IE 6]>
<script type="text/javascript">
   try { document.execCommand( "BackgroundImageCache", false, true); } catch(e) {};
</script>
<![endif]-->
    <!--[if !lt IE 6]><!-->
    <script type="text/javascript">
        function UpdatePanel_Function_Individual() {

            $("h4.expand").toggler({ method: "slideFadeToggle" });
        }
        //<!--        --><![CDATA[        //><!--
        $(function () {
            // --- Using the default options:
            //$("h2.expand").toggler();
            // --- Other options:
            //$("h2.expand").toggler({method: "toggle", speed: 0});
            $("h4.expand").toggler({ method: "slideFadeToggle" });
            // $("h2.expand").toggler({speed: "fast"});
            //$("h2.expand").toggler({method: "fadeToggle"});
            //$("h2.expand").toggler({method: "slideFadeToggle"});    
            //$("#content").expandAll({ trigger: "h4.expand", ref: "div.demo", localLinks: "p.top a" });
        });
        //--><!]]>
    </script>
    <!--<![endif]-->
    <link href="../../App_Themes/Theme1/css/Individual.css?" rel="stylesheet" type="text/css" />
    <style>
        
        a.medium {
            padding: 8px 10px 6px 10px;
        }

        a.small {
            position: relative;
            top: 0px;
        }

        .link-next-prev {
            cursor: pointer;
            text-decoration: none;
            padding: 7px 10px;
        }

            .link-next-prev:hover {
                text-decoration: none;
            }

        .demo .expand a.open:link, .demo .expand a.open:visited {
            font-size: 16px;
            font-weight: bold;
        }

        .demo .expand a, .demo .expand a:active, .demo .expand a:focus {
            font-size: 16px;
            font-weight: bold;
        }

        .tdnum {
            width: 18px;
            font-weight: bold;
            vertical-align: top;
        }


        div.divPrint {
            position: absolute;
            z-index: 9999;
            background: #EEEEEE;
            top: 40px;
            padding: 10px;
            right: 6px;
            line-height: 8px;
            border: 1px solid #D5A2A2;
            border-top: 0px;
            box-shadow: -1px 4px 8px #000;
        }

        .fancy-green .ajax__tab_header {
            cursor: pointer;
            border: 1px solid #4297D7;
            color: #EAF5F7;
            font-weight: bold;
            background: #FFF none repeat scroll 0% 0% !important;
            margin: 0px;
            float: left;
        }
        .histdiv {
    border: 1px solid rgb(221, 221, 221);
    padding: 10px 0px !important;
    margin-top: 10px;
}
        body { font-family: helvatica,sans-serif; line-height: 22px;}

.sectionDiv {height: 30px;background-color: #D6D3D3;line-height: 30px;padding-left: 10px;font-size: 14px;font-weight: bold;}
.flsApplReqForm {border: 1px solid #EAEAEA; width: 95%; margin: 10px auto 0px;}
 fieldset { border: 0px none !important;}
.flsParentNewApplReqForm { border: 1px solid #EAEAEA; width: 95%;margin: 10px auto 0px;}
.wdtmarauto { width: 96%; margin: 0px auto;}
table.tblApplReqForm5 {line-height: 33px;}
.address-box {position: relative; margin-top: -110px; min-height: 100px;background-color: #FBF4F4;padding: 12px;border: 1px solid rgba(255, 5, 28, 0.4); top: 2px;z-index: 1;}
.tblApplReqForm5 td { padding: 10px 0px 0px !important;}
.divaddnew {height: 33px;}
.divLicenseInfo {margin: 3px auto;width: 98%;border: 1px solid #EEE;}
.addNewDiv {text-align: center;height: 28px;line-height: 25px; background-color: #F9F9F9;font-weight: bold;}     
.grid-header-other-name .index tr th {height: 25px !important;padding: 0px 0px 0px 3px !important;line-height: 25px;} 
.readinstrucn { padding-left: 20px; margin-bottom: 20px;margin-top: 20px;}
.flsNewApplReqForm {border: 1px solid #EAEAEA; width: 95%; margin: 10px auto 0px;}
hr {    display: block;height: 1px;border-width: 1px 0px 0px; border-style: solid none none;border-color: #CCC -moz-use-text-color -moz-use-text-color;-moz-border-top-colors: none;-moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none; margin: 1em 0px; padding: 0px;}
.grid-heading {width: 100%; background-color: #DDD; font-weight: bold;}
.index tbody td {padding: 4px 3px;}
.listbox { width: 215px; height: 170px; overflow-x: hidden; overflow-y: scroll;border: 1px solid #DDD; padding: 8px;}
.gvDivUpr {color: #000;font-family: Arial,Helvetica,sans-serif;font-size: 12px; font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;text-align: left;text-indent: 0px; text-transform: none; white-space: normal;word-spacing: 0px;}
.tableborder_trcschk td {border: 1px solid #DEDEDE;padding: 5px;}
table { border-collapse: collapse; border-spacing: 0px;}
.flsLiveScanApp{border: 1px solid #EAEAEA;width: 95%;margin: 10px auto 0px;}
.history .tblApplReqForm5 td {
        padding: 2px 0px 0px 0px !important;
    }
.history .tblApplReqForm5 .grid td {
        padding: 0px 0px 0px 4px !important;
    }

    </style>
    <style type="text/css">
        @-moz-document url-prefix() {
            .expinputfirefox {
                color: red;
            }

            a.medium {
                padding: 10px 10px 6px 10px;
            }

            .link-next-prev {
                padding: 9px 10px 7px 10px !important;
            }
        }

        .txtalgnrgt {
    text-align: right;
}
        .colsp td{ vertical-align: baseline; padding-top:5px !important;}
        .sitevisite{text-align: center; background-color: rgb(236, 234, 234); padding: 0px ! important; border-top: 1px solid rgb(216, 216, 216); border-bottom: 1px solid rgb(216, 216, 216);}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" Runat="Server">
    <div id="divPanelList" style="border: 1px solid rgb(222, 222, 222); margin-bottom:10px; margin-top: 10px; width: 80%; margin-left: 15%;">
        <div class="sectionDiv">
            <span>School Complaint</span>
        </div>
        <fieldset class="flsApplReqForm flsApplReqForm5">
        <table>
            <tr>
                <td colspan="4">
                    <p>CAMTC takes complaints against massage therapy schools and massage professionals very seriously. CAMTC's inquiry is limited to investigating conduct by CAMTC approved schools, certificate holders and applicants that is substantially related to the qualifications, functions, or duties of an approved school or certificate holder.</p>
                </td>
            </tr>
        </table>
            <div id="dvAddComplint" runat="server" visible="false" style="width: 90%; border: 1px solid rgb(222, 222, 222); margin-left: 10px; margin-bottom: 10px; margin-top: 10px;">
                <table class="tblApplReqForm5" style="width: 100%;">
                    <tr>
                        <td colspan="6" style="padding: 0px ! important;">
                            <div>
                                <p class="addNewDiv">
                                    <span>Add Complaint</span>
                                </p>
                            </div>
                        </td>

                    </tr>
                    <tr>
                        <td class="txtalgnrgt" style="width: 160px;">
                            <label class="input-label required">
                                Complaint Number :
                            </label>
                        </td>

                        <td>
                            <asp:TextBox ID="TextBox9" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                                Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                        </td>
                        <td class="txtalgnrgt">
                            <label class="input-label required">
                                Complaint Date :
                            </label>
                        </td>

                        <td>
                            <asp:TextBox ID="txtdateComplaint" Width="72px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calender"></asp:TextBox>

                        </td>
                    </tr>
                    <tr>
                        <td class="txtalgnrgt" style="width: 160px;">
                            <label class="input-label required">
                                Complaint By :
                            </label>
                        </td>

                        <td>
                            <asp:TextBox ID="txtCompBy" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                                Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
                <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                    <span class="fltrt">
                        <asp:Button ID="btnComaplintSave" CssClass="buttonGreen medium" OnClick="btnComaplintSave_Click" runat="server" Text="Save" />
                        <asp:Button ID="Button2" CssClass="secondary medium bottom buttonalignment" OnClick="btnComaplintSave_Click" runat="server" Text="Cancel" />
                    </span>
                </div>
            </div>
        <table style="float: left; width: 100%;">
            <tr>
                                                                    <td></td>
                                                                    <td colspan="3"><span class="AfterApproved" style="float: right; margin-right: 70px;">
                                                                        <asp:Button CssClass="buttonGreen small" runat="server" ID="btnSclInfoAdd" OnClick="btnSclInfoAdd_Click" Text="Add Complaint"
                                                                            ValidationGroup="VGPersonalOther" /></span></td>
                                                                </tr>
        </table>
        <table class=" tblApplReqForm5 wdtmarauto" style="width:100%;">
                                                                <tr>
                                                                    <td class="grid-header-other-name" colspan="4">
                                                                        <asp:GridView ID="GVSclInfoPrevScl" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                                            CssClass="index  grid" ShowHeader="false" Style="width: 50%; margin-left: 64px; margin-top: 5px;"
                                                                            CellPadding="5" ForeColor="#333333" GridLines="None">
                                                                            <AlternatingRowStyle BackColor="White" />
                                                                            <Columns>
                                                                                <asp:TemplateField HeaderText="Other Program Name">
                                                                                    <ItemStyle CssClass="vlignbtm" />
                                                                                    <EditItemTemplate>
                                                                                        <div class="divGridEdit">
                                                                                            <p class="addNewDiv">
                                                                                                <span>Complaint Number</span>
                                                                                            </p>
                                                                                            <table class="GridNewAppPersonalIndoOtherProgramName" style="height: 38px;">
                                                                                                <tr>
                                                                                                    <td class="txtalgnrgt" style="width: 230px;">
                                                                                                        <label class="input-label">
                                                                                                            Previous School Name :
                                                                                                        </label>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:TextBox ID="txtOtherProgramNameEdit" runat="server" AutoComplete="off" CssClass="tooltip OnlyAlphabet inputTextbox NewAppPersonalTxtbx"
                                                                                                            MaxLength="150" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                                    </td>
                                                                                                    <td class="txtalgnrgt tdwidth2" colspan="2"></td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <div class="toolBar" style="padding: 4px; margin: 4px;">
                                                                                                <span class="fltrt">
                                                                                                    <asp:Button ID="btnOtherProgramNameUpdate" ValidationGroup="VGPersonalOtherProgramName" CssClass="buttonGreen medium"
                                                                                                        runat="server" Text="Update" CausesValidation="true" /><%-- OnClick="btnOtherProgramNameUpdate_Click"--%>
                                                                                                    <asp:LinkButton ID="lnkOtherProgramNameEditCancle" CssClass="secondary medium bottom buttonalignment"
                                                                                                        runat="server">Cancel</asp:LinkButton></span><%-- OnClick="lnkOtherProgramNameEditCancle_Cancel"--%>
                                                                                            </div>
                                                                                        </div>
                                                                                    </EditItemTemplate>
                                                                                    <ItemTemplate>
                                                                                        <%# Eval("Name") %>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateField>
                                                                                <asp:TemplateField ItemStyle-Width="100px">
                                                                                    <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                                                                                    <ItemTemplate>
                                                                                        <span class="fltrt AfterApproved">
                                                                                            <asp:ImageButton ID="imgbtnOtherProgramNameEdit" Style="display: none;" CssClass="imgDelete"
                                                                                                CommandArgument='<%# Eval("Other_ID") %>' runat="server" RowIndex='<%# Container.DisplayIndex %>'
                                                                                                ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" /><%--  OnClick="imgbtnOtherProgramNameEdit_Click"--%>
                                                                                            <asp:ImageButton ID="imgBtnOtherProgramNameDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                                                CommandArgument='<%# Eval("Other_ID") %>' ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                                                                                OnClientClick="javascript:return confirm('Are you sure you want to delete?')" /></span><%--    OnClick="imgbtnEditOtherProgramNameDelete_Click" --%>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateField>
                                                                            </Columns>
                                                                            <EmptyDataTemplate>
                                                                                <div style="width: 100%; height: 50px; border: 0px; padding: 3px">
                                                                                    No record found.
                                                                                </div>
                                                                            </EmptyDataTemplate>
                                                                        </asp:GridView>
                                                                        <table class="index brdr grid" border="1" cellspacing="0" cellpadding="5" id="TableSclInfoPrevScl"
                                                                            style="width: 90%; margin-left: 10px; border: 1px solid #ddd;">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <th style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Complaint Number
                                                                                    </th>
                                                                                    <th style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Complaint Date</th>
                                                                                    <th style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Complaint By</th>
                                                                                    
                                                                                    <th style="padding-left: 0px; text-align: center;">Action
                                                                                    </th>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">C1234
                                                                                    </td>
                                                                                    <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">01/01/2016
                                                                                    </td>
                                                                                    <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Jane Doe
                                                                                    </td>
                                                                                    <td align="center" valign="middle" style="padding-top: 0px ! important; width: 60px;">
                                                                                        <span>
                                                                                            <asp:ImageButton ID="ImageButton7" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" />
                                                                                            <input type="image" id="imgBtnOProgramNameDelete" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"></span>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
            <table class="tblApplReqForm5" style="width: 98%; margin-top: 15px;">
                <tr>
                    <td class="txtalgnrgt" style="width: 160px;">
                        <label class="input-label required">
                            First Name :
                        </label>
                    </td>

                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                            Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                    </td>
                    <td class="txtalgnrgt">
                        <label class="input-label required">
                            Last Name :
                        </label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtDirLastName" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                            Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="txtalgnrgt" style="width: 160px;">
                        <label class="input-label required">
                            Middle Name :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDirFirstName" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                            Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                    </td>

                    <td></td>
                    <td></td>
                </tr>
            </table>
            <table class="tblApplReqForm5" style="width: 100%;">
                <tr>
                    <td>
                        <label class="input-label required">Are You CAMTC Certified? </label>
                    </td>
                    <td style="padding-top: 0px ! important;" colspan="3">
                        <asp:RadioButtonList ID="rblQuestionEdit1" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    
                </tr>
            </table>
            <table class="tblApplReqForm5" style="width: 100%; margin-top: 15px;">
                <tr>
                    <td class="txtalgnrgt" style="width: 160px;">
                        <label class="input-label required">
                            if Yes, Certificate # :
                        </label>
                    </td>

                    <td>
                        <asp:TextBox ID="TextBox17" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                            Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                    </td>
                    <td class="txtalgnrgt">
                       
                    </td>

                    <td>
                       </td>
                </tr>
                </table>
            <table class="tblApplReqForm5" style="width: 100%;">
                <tr>
                    <td colspan="4">
                        <b>Contact information (CAMTC DOES NOT INVESTIGATE ANONYMOUS COMPLAINTS) :</b>
                    </td>
                </tr>
            </table>
            <table class="tblApplReqForm5" style="width: 100%;">
                <tr>
                    <td style="vertical-align: middle; width: 160px;" class="txtalgnrgt">
                        <label class="input-label required">
                            Street :
                        </label>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="txtMailingAdd" runat="server" Width="535px" CssClass="calWidth us_street"
                            MaxLength="500"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox140" runat="server" Width="535px" CssClass="calWidth us_street"
                            MaxLength="500"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="txtalgnrgt">
                        <label class="input-label required">
                            City :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMailingCity" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                            Width="124px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                    </td>
                    <td class="txtalgnrgt">
                        <label class="input-label required">
                            State :
                        </label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlMailingState" runat="server" Width="98px" CssClass="inputTextbox"
                            title="Select your state">
                            <asp:ListItem Value="-1">Select</asp:ListItem>
                            <asp:ListItem Value="-1">------ STATES OF USA --------</asp:ListItem>
                            <asp:ListItem Value="AK">ALASKA</asp:ListItem>
                            <asp:ListItem Value="AL">ALABAMA</asp:ListItem>
                            <asp:ListItem Value="AR">ARKANSAS</asp:ListItem>
                            <asp:ListItem Value="AZ">ARIZONA</asp:ListItem>
                            <asp:ListItem Selected="True" Value="CA">CALIFORNIA</asp:ListItem>
                            <asp:ListItem Value="CO">COLORADO</asp:ListItem>
                            <asp:ListItem Value="CT">CONNECTICUT</asp:ListItem>
                            <asp:ListItem Value="DC">DISTRICT OF COLUMBIA</asp:ListItem>
                            <asp:ListItem Value="DE">DELAWARE</asp:ListItem>
                            <asp:ListItem Value="FL">FLORIDA</asp:ListItem>
                            <asp:ListItem Value="GA">GEORGIA</asp:ListItem>
                            <asp:ListItem Value="HI">HAWAII</asp:ListItem>
                            <asp:ListItem Value="IA">IOWA</asp:ListItem>
                            <asp:ListItem Value="ID">IDAHO</asp:ListItem>
                            <asp:ListItem Value="IL">ILLINOIS</asp:ListItem>
                            <asp:ListItem Value="IN">INDIANA</asp:ListItem>
                            <asp:ListItem Value="KS">KANSAS</asp:ListItem>
                            <asp:ListItem Value="KY">KENTUCKY</asp:ListItem>
                            <asp:ListItem Value="LA">LOUISIANA</asp:ListItem>
                            <asp:ListItem Value="MA">MASSACHUSETTS</asp:ListItem>
                            <asp:ListItem Value="MD">MARYLAND</asp:ListItem>
                            <asp:ListItem Value="ME">MAINE</asp:ListItem>
                            <asp:ListItem Value="MI">MICHIGAN</asp:ListItem>
                            <asp:ListItem Value="MN">MINNESOTA</asp:ListItem>
                            <asp:ListItem Value="MO">MISSOURI</asp:ListItem>
                            <asp:ListItem Value="MS">MISSISSIPPI</asp:ListItem>
                            <asp:ListItem Value="MT">MONTANA</asp:ListItem>
                            <asp:ListItem Value="NE">NEBRASKA</asp:ListItem>
                            <asp:ListItem Value="NC">NORTH CAROLINA</asp:ListItem>
                            <asp:ListItem Value="ND">NORTH DAKOTA</asp:ListItem>
                            <asp:ListItem Value="NH">NEW HAMPSHIRE</asp:ListItem>
                            <asp:ListItem Value="NJ">NEW JERSEY</asp:ListItem>
                            <asp:ListItem Value="NM">NEW MEXICO</asp:ListItem>
                            <asp:ListItem Value="NY">NEW YORK</asp:ListItem>
                            <asp:ListItem Value="NV">NEVADA</asp:ListItem>
                            <asp:ListItem Value="OH">OHIO</asp:ListItem>
                            <asp:ListItem Value="OK">OKLAHOMA</asp:ListItem>
                            <asp:ListItem Value="OR">OREGON</asp:ListItem>
                            <asp:ListItem Value="PA">PENNSYLVANIA</asp:ListItem>
                            <asp:ListItem Value="RI">RHODE ISLAND</asp:ListItem>
                            <asp:ListItem Value="SC">SOUTH CAROLINA</asp:ListItem>
                            <asp:ListItem Value="SD">SOUTH DAKOTA</asp:ListItem>
                            <asp:ListItem Value="TN">TENNESSEE</asp:ListItem>
                            <asp:ListItem Value="TX">TEXAS</asp:ListItem>
                            <asp:ListItem Value="UT">UTAH</asp:ListItem>
                            <asp:ListItem Value="VA">VIRGINIA</asp:ListItem>
                            <asp:ListItem Value="VT">VERMONT</asp:ListItem>
                            <asp:ListItem Value="WA">WASHINGTON</asp:ListItem>
                            <asp:ListItem Value="WI">WISCONSIN</asp:ListItem>
                            <asp:ListItem Value="WV">WEST VIRGINIA</asp:ListItem>
                            <asp:ListItem Value="WY">WYOMING</asp:ListItem>
                            <asp:ListItem Value="-1">------ STATES OF CANADA -------</asp:ListItem>
                            <asp:ListItem Value="AB">Alberta</asp:ListItem>
                            <asp:ListItem Value="BC">British Columbia </asp:ListItem>
                            <asp:ListItem Value="MB">Manitoba </asp:ListItem>
                            <asp:ListItem Value="NB">New Brunswick </asp:ListItem>
                            <asp:ListItem Value="NL">Newfoundland and Labrador </asp:ListItem>
                            <asp:ListItem Value="NT">Northwest Territories </asp:ListItem>
                            <asp:ListItem Value="NS">Nova Scotia </asp:ListItem>
                            <asp:ListItem Value="NU">Nunavut </asp:ListItem>
                            <asp:ListItem Value="ON">Ontario </asp:ListItem>
                            <asp:ListItem Value="PE">Prince Edward Island </asp:ListItem>
                            <asp:ListItem Value="QC">Quebec </asp:ListItem>
                            <asp:ListItem Value="SK">Saskatchewan </asp:ListItem>
                            <asp:ListItem Value="YT">Yukon </asp:ListItem>
                            <asp:ListItem Value="00">------- Other States -------</asp:ListItem>
                        </asp:DropDownList>
                    </td>

                </tr>
                <tr>
                    <td class="txtalgnrgt" style="width: 160px;">
                        <label class="input-label required">
                            Zip :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox16" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                            CssClass="tooltip zip_us calWidth" Width="127px" MaxLength="500" title="Enter valid Zip eg: 
XXXXX-XXXX or XXXXX"></asp:TextBox>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="txtalgnrgt" style="width: 160px;">
                        <label class="input-label required">
                            Primary Number :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSclInfoPriNumber" runat="server" CssClass="phone_us" autocomplete="off"
                            Width="170px" MaxLength="14"></asp:TextBox>

                    </td>
                    <td>
                        <asp:CheckBox ID="chkSclInfoPriNum" runat="server" Text="Mobile" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="txtalgnrgt" style="width: 160px;">
                        <label class="input-label">
                            Secondary Number :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSclInfoSecNumber" runat="server" CssClass="phone_us" autocomplete="off"
                            Width="170px" MaxLength="14"></asp:TextBox>

                    </td>
                    <td>
                        <asp:CheckBox ID="chktxtSclInfo" runat="server" Text="Mobile" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="txtalgnrgt" style="width: 160px;">
                        <label class="input-label required">
                            Email :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDirectorEmail" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"
                            Style="width: 170px !important;" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                    </td>
                    <td></td>
                    <td></td>
                </tr>

            </table>
            <table class="tblApplReqForm5" style="width:100%;">
                <tr>
                    <td  colspan="3">
                    <label class="input-label required">Name of massage therapy school complaint is against :</label> 
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlSCLComAgn" Width="295px" runat="server">
                            <asp:ListItem>Select</asp:ListItem>
                        </asp:DropDownList></td>
                    
                </tr>
            </table>
            <table class="tblApplReqForm5" style="width:100%;">
                <tr>
                    <td colspan="4">If school is not on the above list please tell us :</td>
                </tr>
            </table>
            <table class="tblApplReqForm5" style="width: 100%;">
                <tr>
                    <td style="vertical-align: middle; width: 160px;" class="txtalgnrgt">
                        <label class="input-label required">
                            School Name :
                        </label>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox24" runat="server" Width="535px" CssClass="calWidth us_street"
                            MaxLength="500"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: middle; width: 160px;" class="txtalgnrgt">
                        <label class="input-label required">
                            Street :
                        </label>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox2" runat="server" Width="535px" CssClass="calWidth us_street"
                            MaxLength="500"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox18" runat="server" Width="535px" CssClass="calWidth us_street"
                            MaxLength="500"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="txtalgnrgt">
                        <label class="input-label required">
                            City :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox19" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                            Width="124px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                    </td>
                    <td class="txtalgnrgt">
                        <label class="input-label required">
                            State :
                        </label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" Width="98px" CssClass="inputTextbox"
                            title="Select your state">
                            <asp:ListItem Value="-1">Select</asp:ListItem>
                            <asp:ListItem Value="-1">------ STATES OF USA --------</asp:ListItem>
                            <asp:ListItem Value="AK">ALASKA</asp:ListItem>
                            <asp:ListItem Value="AL">ALABAMA</asp:ListItem>
                            <asp:ListItem Value="AR">ARKANSAS</asp:ListItem>
                            <asp:ListItem Value="AZ">ARIZONA</asp:ListItem>
                            <asp:ListItem Selected="True" Value="CA">CALIFORNIA</asp:ListItem>
                            <asp:ListItem Value="CO">COLORADO</asp:ListItem>
                            <asp:ListItem Value="CT">CONNECTICUT</asp:ListItem>
                            <asp:ListItem Value="DC">DISTRICT OF COLUMBIA</asp:ListItem>
                            <asp:ListItem Value="DE">DELAWARE</asp:ListItem>
                            <asp:ListItem Value="FL">FLORIDA</asp:ListItem>
                            <asp:ListItem Value="GA">GEORGIA</asp:ListItem>
                            <asp:ListItem Value="HI">HAWAII</asp:ListItem>
                            <asp:ListItem Value="IA">IOWA</asp:ListItem>
                            <asp:ListItem Value="ID">IDAHO</asp:ListItem>
                            <asp:ListItem Value="IL">ILLINOIS</asp:ListItem>
                            <asp:ListItem Value="IN">INDIANA</asp:ListItem>
                            <asp:ListItem Value="KS">KANSAS</asp:ListItem>
                            <asp:ListItem Value="KY">KENTUCKY</asp:ListItem>
                            <asp:ListItem Value="LA">LOUISIANA</asp:ListItem>
                            <asp:ListItem Value="MA">MASSACHUSETTS</asp:ListItem>
                            <asp:ListItem Value="MD">MARYLAND</asp:ListItem>
                            <asp:ListItem Value="ME">MAINE</asp:ListItem>
                            <asp:ListItem Value="MI">MICHIGAN</asp:ListItem>
                            <asp:ListItem Value="MN">MINNESOTA</asp:ListItem>
                            <asp:ListItem Value="MO">MISSOURI</asp:ListItem>
                            <asp:ListItem Value="MS">MISSISSIPPI</asp:ListItem>
                            <asp:ListItem Value="MT">MONTANA</asp:ListItem>
                            <asp:ListItem Value="NE">NEBRASKA</asp:ListItem>
                            <asp:ListItem Value="NC">NORTH CAROLINA</asp:ListItem>
                            <asp:ListItem Value="ND">NORTH DAKOTA</asp:ListItem>
                            <asp:ListItem Value="NH">NEW HAMPSHIRE</asp:ListItem>
                            <asp:ListItem Value="NJ">NEW JERSEY</asp:ListItem>
                            <asp:ListItem Value="NM">NEW MEXICO</asp:ListItem>
                            <asp:ListItem Value="NY">NEW YORK</asp:ListItem>
                            <asp:ListItem Value="NV">NEVADA</asp:ListItem>
                            <asp:ListItem Value="OH">OHIO</asp:ListItem>
                            <asp:ListItem Value="OK">OKLAHOMA</asp:ListItem>
                            <asp:ListItem Value="OR">OREGON</asp:ListItem>
                            <asp:ListItem Value="PA">PENNSYLVANIA</asp:ListItem>
                            <asp:ListItem Value="RI">RHODE ISLAND</asp:ListItem>
                            <asp:ListItem Value="SC">SOUTH CAROLINA</asp:ListItem>
                            <asp:ListItem Value="SD">SOUTH DAKOTA</asp:ListItem>
                            <asp:ListItem Value="TN">TENNESSEE</asp:ListItem>
                            <asp:ListItem Value="TX">TEXAS</asp:ListItem>
                            <asp:ListItem Value="UT">UTAH</asp:ListItem>
                            <asp:ListItem Value="VA">VIRGINIA</asp:ListItem>
                            <asp:ListItem Value="VT">VERMONT</asp:ListItem>
                            <asp:ListItem Value="WA">WASHINGTON</asp:ListItem>
                            <asp:ListItem Value="WI">WISCONSIN</asp:ListItem>
                            <asp:ListItem Value="WV">WEST VIRGINIA</asp:ListItem>
                            <asp:ListItem Value="WY">WYOMING</asp:ListItem>
                            <asp:ListItem Value="-1">------ STATES OF CANADA -------</asp:ListItem>
                            <asp:ListItem Value="AB">Alberta</asp:ListItem>
                            <asp:ListItem Value="BC">British Columbia </asp:ListItem>
                            <asp:ListItem Value="MB">Manitoba </asp:ListItem>
                            <asp:ListItem Value="NB">New Brunswick </asp:ListItem>
                            <asp:ListItem Value="NL">Newfoundland and Labrador </asp:ListItem>
                            <asp:ListItem Value="NT">Northwest Territories </asp:ListItem>
                            <asp:ListItem Value="NS">Nova Scotia </asp:ListItem>
                            <asp:ListItem Value="NU">Nunavut </asp:ListItem>
                            <asp:ListItem Value="ON">Ontario </asp:ListItem>
                            <asp:ListItem Value="PE">Prince Edward Island </asp:ListItem>
                            <asp:ListItem Value="QC">Quebec </asp:ListItem>
                            <asp:ListItem Value="SK">Saskatchewan </asp:ListItem>
                            <asp:ListItem Value="YT">Yukon </asp:ListItem>
                            <asp:ListItem Value="00">------- Other States -------</asp:ListItem>
                        </asp:DropDownList>
                    </td>

                </tr>
                <tr>
                    <td class="txtalgnrgt" style="width: 160px;">
                        <label class="input-label required">
                            Zip :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox20" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                            CssClass="tooltip zip_us calWidth" Width="127px" MaxLength="500" title="Enter valid Zip eg: 
XXXXX-XXXX or XXXXX"></asp:TextBox>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="txtalgnrgt" style="width: 160px;">
                        <label class="input-label required">
                            Phone No :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox21" runat="server" CssClass="phone_us" autocomplete="off"
                            Width="170px" MaxLength="14"></asp:TextBox>

                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Mobile" /></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td class="txtalgnrgt" style="width: 160px;">
                        <label class="input-label required">
                            Email :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox23" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx"
                            Style="width: 170px !important;" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
<td class="txtalgnrgt" colspan="3">
                        <label class="input-label required">
                            Other information related to the location :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox15" runat="server" Style="width: 120px ! important;" CssClass="inputTextbox NewAppPersonalTxtbx"
                            Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
<table style="margin-top: 15px;">
                <tr>
                    <td colspan="4">
                        <label class="input-label required">Name of person(s) from this school that complaint is against : </label>
                    </td>
                </tr>
            </table>
            <div runat="server" id="dvAddName" visible="false" style="border: 1px solid rgb(222, 222, 222); width: 86%; margin-left: 27px; margin-bottom: 10px; margin-top: 10px;">
            <table class="tblApplReqForm5" style="width: 100%;">
                <tr>
                    <td class="txtalgnrgt" style="width:135px;">
                        <label class="input-label required">
                            First Name :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstNameOp" runat="server" Style="width: 170px ! important;" CssClass="inputTextbox NewAppPersonalTxtbx"
                            Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>

                    </td>
                     <td class="txtalgnrgt">
                        <label class="input-label required">
                            Last Name :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Style="width: 170px ! important;" CssClass="inputTextbox NewAppPersonalTxtbx"
                            Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="txtalgnrgt" style="width:135px;">
                        <label class="input-label">
                            Middle Name :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMiddleOpn" runat="server" Style="width: 170px ! important;" CssClass="inputTextbox NewAppPersonalTxtbx"
                            Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>

                    </td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
            <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                <span class="fltrt">
                                                                    <asp:Button ID="btnAddNameSave" CssClass="buttonGreen medium" OnClick="btnAddNameSave_Click" runat="server" Text="Save" />
                                                                    <asp:Button ID="btnAddNameCancel" CssClass="secondary medium bottom buttonalignment" OnClick="btnAddNameSave_Click" runat="server" Text="Cancel" />
                                                                    
                                                            </div>
                </div>
            <table style="float: left; width: 100%;">
                <tr>
                    <td colspan="3"></td>
                    <td><span class="AfterApproved" style="float: right; margin-right: 82px;">
                        <asp:Button CssClass="buttonGreen small" runat="server" ID="btnAddName" OnClick="btnAddName_Click" Text="Add Name"
                            ValidationGroup="VGPersonalOther" /></span></td>
                    
                </tr>
            </table>
        <table class=" tblApplReqForm5 wdtmarauto">
                                                                <tr>
                                                                    <td class="grid-header-other-name" colspan="4">
                                                                        <asp:GridView ID="GridView1" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                                            CssClass="index  grid" ShowHeader="false" Style="width: 50%; margin-left: 64px; margin-top: 5px;"
                                                                            CellPadding="5" ForeColor="#333333" GridLines="None">
                                                                            <AlternatingRowStyle BackColor="White" />
                                                                            <Columns>
                                                                                <asp:TemplateField HeaderText="Other Program Name">
                                                                                    <ItemStyle CssClass="vlignbtm" />
                                                                                    <EditItemTemplate>
                                                                                        <div class="divGridEdit">
                                                                                            <p class="addNewDiv">
                                                                                                <span>Complaint Number</span>
                                                                                            </p>
                                                                                            <table class="GridNewAppPersonalIndoOtherProgramName" style="height: 38px;">
                                                                                                <tr>
                                                                                                    <td class="txtalgnrgt" style="width: 230px;">
                                                                                                        <label class="input-label">
                                                                                                            Previous School Name :
                                                                                                        </label>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:TextBox ID="txtOtherProgramNameEdit" runat="server" AutoComplete="off" CssClass="tooltip OnlyAlphabet inputTextbox NewAppPersonalTxtbx"
                                                                                                            MaxLength="150" title="Only A-Z characters are allowed."></asp:TextBox>
                                                                                                    </td>
                                                                                                    <td class="txtalgnrgt tdwidth2" colspan="2"></td>
                                                                                                </tr>
                                                                                            </table>
                                                                                            <div class="toolBar" style="padding: 4px; margin: 4px;">
                                                                                                <span class="fltrt">
                                                                                                    <asp:Button ID="btnOtherProgramNameUpdate" ValidationGroup="VGPersonalOtherProgramName" CssClass="buttonGreen medium"
                                                                                                        runat="server" Text="Update" CausesValidation="true" /><%-- OnClick="btnOtherProgramNameUpdate_Click"--%>
                                                                                                    <asp:LinkButton ID="lnkOtherProgramNameEditCancle" CssClass="secondary medium bottom buttonalignment"
                                                                                                        runat="server">Cancel</asp:LinkButton></span><%-- OnClick="lnkOtherProgramNameEditCancle_Cancel"--%>
                                                                                            </div>
                                                                                        </div>
                                                                                    </EditItemTemplate>
                                                                                    <ItemTemplate>
                                                                                        <%# Eval("Name") %>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateField>
                                                                                <asp:TemplateField ItemStyle-Width="100px">
                                                                                    <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                                                                                    <ItemTemplate>
                                                                                        <span class="fltrt AfterApproved">
                                                                                            <asp:ImageButton ID="imgbtnOtherProgramNameEdit" Style="display: none;" CssClass="imgDelete"
                                                                                                CommandArgument='<%# Eval("Other_ID") %>' runat="server" RowIndex='<%# Container.DisplayIndex %>'
                                                                                                ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" /><%--  OnClick="imgbtnOtherProgramNameEdit_Click"--%>
                                                                                            <asp:ImageButton ID="imgBtnOtherProgramNameDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                                                                CommandArgument='<%# Eval("Other_ID") %>' ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                                                                                OnClientClick="javascript:return confirm('Are you sure you want to delete?')" /></span><%--    OnClick="imgbtnEditOtherProgramNameDelete_Click" --%>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateField>
                                                                            </Columns>
                                                                            <EmptyDataTemplate>
                                                                                <div style="width: 100%; height: 50px; border: 0px; padding: 3px">
                                                                                    No record found.
                                                                                </div>
                                                                            </EmptyDataTemplate>
                                                                        </asp:GridView>
                                                                        <table class="index brdr grid" border="1" cellspacing="0" cellpadding="5" id="tbalename"
                                                                            style="width: 90%; margin-left: 10px; border: 1px solid #ddd;">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <th style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">First Name
                                                                                    </th>
                                                                                    <th style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Last Name</th>
                                                                                    <th style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Middle Name</th>
                                                                                    
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">John
                                                                                    </td>
                                                                                    <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Doe
                                                                                    </td>
                                                                                    <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">M
                                                                                    </td>
                                                                                    
                                                                                </tr>
                                                                                <tr style="border-top: 1px solid rgb(222, 222, 222);">
                                                                                    <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">James
                                                                                    </td>
                                                                                    <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Smith
                                                                                    </td>
                                                                                    <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">
                                                                                    </td>
                                                                                    
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
        <table class="tblApplReqForm5" style="width:100%;">
                <tr>
                    <td  colspan="3" style="width: 145px;">
                        <label class="input-label required" style="padding-left: 30px;">CAMTC Certified? </label>
                    </td>
                    <td style="padding-top: 0px ! important;">
                        <asp:RadioButtonList ID="RadioButtonList1" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
            </table>
            <table class="tblApplReqForm5" style="width: 100%;">
                <tr>
                    <td class="txtalgnrgt" colspan="3" style="
    width: 300px;
">
                        <label class="input-label required" style="float: right; text-align: right;">
                            if Yes, Certificate # :
                        </label>
                    </td>

                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                            Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                    </td>
                    
                </tr>

            </table>
            <table class="tblApplReqForm5" style="width: 100%;">
                <tr>
                    <td class="txtalgnrgt" colspan="3" style="width:300px;">
                        <label class="input-label required">
                            Describe the conduct in question (in as much detail as possible) :
                        </label>
                    </td>

                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                            Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                    </td>
                    
                </tr>

            </table>
            <table class="tblApplReqForm5" style="width:100%;">
                <tr>
                    <td colspan="3" style="width: 145px;">
                        <label class="input-label required"  style="padding-left: 30px;">Have you filed a police report? </label>
                    </td>
                    <td style="padding-top: 0px ! important;">
                        <asp:RadioButtonList ID="rblPoliceRepot" AutoPostBack="true" OnSelectedIndexChanged="rblPoliceRepot_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    
                </tr>
                
            </table>
            <table style="width:100%;" class="tblApplReqForm5" >
                <tr>
                    <td  class="txtalgnrgt tdwidth1" style="
    width: 495px;
">If Yes, please provide the following :</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
            <table style="width:100%;" class="tblApplReqForm5" id="dvPoliceReport" runat="server" >
                <tr>
                                                                    <td class="txtalgnrgt tdwidth1" colspan="3">
                                                                        <label class="input-label required">
                                                                            Date police report filed :
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtnameDate" Width="72px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calender"></asp:TextBox>

                                                                    </td>
                                                                </tr>
                <tr>
                                                                        <td class="txtalgnrgt"  colspan="3">
                                                                            <label class="input-label required">
                                                                                Law enforcement agency :
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtschoolwebsite" style="width: 170px ! important;" runat="server" CssClass="inputTextbox 
NewAppPersonalTxtbx"
                                                                                autocomplete="off"
                                                                                MaxLength="150"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                <tr>
                                                                        <td class="txtalgnrgt"  colspan="3">
                                                                            <label class="input-label required">
                                                                               Name of law enforcement member taking the report :
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="TextBox6" style="width: 170px ! important;" runat="server" CssClass="inputTextbox 
NewAppPersonalTxtbx"
                                                                                autocomplete="off"
                                                                                MaxLength="150"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                <tr>
                                                                        <td class="txtalgnrgt"  colspan="3">
                                                                            <label class="input-label required">
                                                                               Report number :
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="TextBox7" style="width: 170px ! important;" runat="server" CssClass="inputTextbox 
NewAppPersonalTxtbx"
                                                                                autocomplete="off"
                                                                                MaxLength="150"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                <tr>
                                                                        <td class="txtalgnrgt"  colspan="3">
                                                                            <label class="input-label required">
                                                                               Any additional information about the report :
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="TextBox8" style="width: 170px ! important;" runat="server" CssClass="inputTextbox 
NewAppPersonalTxtbx"
                                                                                autocomplete="off"
                                                                                MaxLength="150"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
            </table>
            <table style="width: 90%; margin-top: 20px; border: 1px solid rgb(222, 222, 222);" class="tblApplReqForm5">
                <tr>
                                                                            <td class="txtalgnrgt" style="width: 125px;">
                                                                                <label class="input-label">
                                                                                    Upload Document :
                                                                                </label>
                                                                            </td>
                                                                            <td style="width:182px;">
                                                                                <asp:FileUpload ID="FileUpload79" runat="server" />
                                                                            </td>
                                                                            <td >
                                                                                <asp:Button ID="Button87" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                                                                            <td></td>
                                                                        </tr>
                <tr>
                                                                            <td colspan="4">
                                                                                <table class="index vlign  grid" id="gvUploadApplicant" style="color: #333333;margin-left: 6px;
border: 1px solid rgb(222, 222, 222);
margin-bottom: 10px; width: 98%; border-collapse: collapse;" cellpadding="5" cellspacing="0">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <th scope="col">Document Name</th>
                                                                                            <th scope="col">Date Uploaded</th>
                                                                                            </tr>
                                                                                        <tr>
                                                                                            <td style="width: 200px;">Document Demo
                                                                                            </td>
                                                                                            <td style="width: 148px;">02/04/2016 
                                                                                            </td>
                                                                                            
                                                                                           
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                                </td>
                                                                        </tr>
            </table>
            <table class="tblApplReqForm5">
                <tr>
                    <td colspan="4"><label class="input-label required"><b>If CAMTC decides to investigate this complaint against a CAMTC massage school, professional or applicant, are you willing to? :</b></label></td>
                
                </tr>
                <tr>
                    <td colspan="3">
                        <label  class="input-label required" style="padding-left: 30px;">Provide a signed declaration under penalty of perjury? </label>
                    </td>
                    <td style="padding-top: 0px ! important;">
                        <asp:RadioButtonList ID="rblProvSign" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td  colspan="3">
                        <label class="input-label required" style="padding-left: 30px;">Possibly testify to the allegations? </label>
                    </td>
                    <td style="padding-top: 0px ! important;">
                        <asp:RadioButtonList ID="RadioButtonList4" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <label  class="input-label required" style="padding-left: 30px;">Explain your relationship with the massage professional and/or massage school? </label>
                    </td>
                    <td style="padding-top: 0px ! important;">
                        <asp:RadioButtonList ID="RadioButtonList5" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td  colspan="3">
                        <label class="input-label required" style="padding-left: 30px;">Provide any other evidence in your possession? </label>
                    </td>
                    <td style="padding-top: 0px ! important;">
                        <asp:RadioButtonList ID="RadioButtonList6" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
            </table>
            <table style="margin-top: 20px; margin-bottom: 20px;">
                <tr>
                    <td colspan="4">
                        <p>CAMTC IS NOT A LAW ENFORCEMENT AGENCY NOR GOVERNMENT AGENCY. IT IS WITHIN THE SOLE DISCRETION OF CAMTC WHETHER OR NOT TO INVESTIGATE OR PURSUE ANY CASE AGAINST A MASSAGE SCHOOL OR MASSAGE PROFESSIONAL.</p>
                    </td>
                </tr>
            </table>
            
            </fieldset>
        <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                                                        <span class="fltrt">
                                                                            <asp:Button ID="btnSaveAboutBusinessDoc" CssClass="buttonGreen medium"
                                                                                runat="server" Text="Submit" CausesValidation="true" />
                                                                            <asp:LinkButton ID="lblCancelAboutBusinessDoc" CssClass="secondary medium bottom buttonalignment"
                                                                                runat="server">Cancel</asp:LinkButton></span>
                                                                    </div>
    </div>
</asp:Content>

