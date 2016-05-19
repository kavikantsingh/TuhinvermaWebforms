<%@ Page Title="" Language="C#" MasterPageFile="~/LAPP_UI_Backoffice/MasterPage/1Column.master" AutoEventWireup="true" CodeFile="SchoolHoldList.aspx.cs" Inherits="LAPP_UI_Backoffice_Administration_SchoolHoldList" %>

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
            $('#liAdministration').addClass('active');

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
<asp:Content ID="Content2" ContentPlaceHolderID="MidContent" runat="Server">
    <div id="divPanelList" style="border: 1px solid rgb(222, 222, 222); margin-bottom: 10px; margin-top: 10px; width: 80%; margin-left: 15%;">
        <div class="sectionDiv">
            <span>School Hold List</span>
        </div>
        <fieldset class="flsApplReqForm flsApplReqForm5">
            <div id="dvAddComplint" runat="server" visible="false" style="width: 90%; border: 1px solid rgb(222, 222, 222); margin-left: 10px; margin-bottom: 10px; margin-top: 10px;">
                <table class="tblApplReqForm5" style="width: 100%;">
                    <tr>
                        <td colspan="6" style="padding: 0px ! important;">
                            <div>
                                <p class="addNewDiv">
                                    <span>Add School Hold List</span>
                                </p>
                            </div>
                        </td>

                    </tr>
                    <tr>
                        <td class="txtalgnrgt" style="width: 160px;">
                            <label class="input-label required">
                                School Name :
                            </label>
                        </td>

                        <td colspan="3">
                            <asp:TextBox ID="TextBox9" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                                Width="475px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                        </td>
                        
                    </tr>
                    <tr>
                        <td class="txtalgnrgt">
                            <label class="input-label required">
                                Hold Start  :
                            </label>
                        </td>

                        <td>
                            <asp:TextBox ID="txtdateComplaint" Width="72px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calender"></asp:TextBox>

                        </td>
                        <td class="txtalgnrgt">
                            <label class="input-label required">
                                Hold End  :
                            </label>
                        </td>

                        <td>
                            <asp:TextBox ID="TextBox1" Width="72px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calender"></asp:TextBox>

                        </td>
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
                                                                        <asp:Button CssClass="buttonGreen small" runat="server" ID="btnSclInfoAdd" OnClick="btnSclInfoAdd_Click" Text="Add School Hold List"
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
                                                                                                <span>School name</span>
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
                                                                                    <th style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">School Name
                                                                                    </th>
                                                                                    <th style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Hold Start </th>
                                                                                    <th style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Hold End </th>
                                                                                    
                                                                                    <th style="padding-left: 0px; text-align: center;">Action
                                                                                    </th>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">SCHOOL OF ACUPUNTURE
                                                                                    </td>
                                                                                    <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">01/01/2015
                                                                                    </td>
                                                                                    <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">01/02/2016
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
        </fieldset>
    </div>
</asp:Content>

