<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucComplaint.ascx.cs" Inherits="Module_UI_Backoffice_PSD_ucComplaint" %>

<style>
    .docmtbtn:hover {
        color: white !important;
    }

    .blockheader {
        height: 30px;
        background-color: #E5EDF2;
        width: 99.1%;
        border: 1px solid #DDE3EC;
        border-radius: 2px;
        color: #595959;
        font-size: 15px;
        font-weight: bold;
        padding-left: 5px;
        margin: 10px auto;
    }

    .inputTextBox {
        width: 198px !important;
    }

    .pop_ctr {
        list-style: outside none none;
        background-color: #FFF;
        width: 135px;
    }

        .pop_ctr li {
            background-color: #FFF;
            border-bottom: 1px solid rgb(222, 222, 222);
            padding: 2px 8px;
            border-left: 1px solid #dedede;
            border-right: 1px solid #dedede;
            cursor: pointer;
        }

    #Pop {
        position: absolute;
        z-index: 9;
        top: 73px;
        display: none;
    }

    #Pop1 {
        position: absolute;
        z-index: 9;
        top: 73px;
        display: none;
    }

    #Pop2 {
        position: absolute;
        z-index: 9;
        top: 73px;
        display: none;
    }

    .pop-up {
        position: absolute;
        z-index: 9;
        top: 73px;
    }

    .close_btn_pop {
        color: #FFF;
        float: right;
        margin-top: -15px;
        background-color: black;
        border-radius: 50%;
        border: 1px solid #dedede;
        width: 21px;
        text-align: center;
        font-size: 13px;
        cursor: pointer;
    }

        .close_btn_pop:hover {
            background-color: white;
            color: red;
        }

    .pop_ctr li:hover {
        background-color: #0D83DD;
        color: white;
    }

    .pop_ctr1 {
        list-style: outside none none;
        background-color: #FFF;
        width: 135px;
    }

        .pop_ctr1 li {
            background-color: #FFF;
            border-bottom: 1px solid rgb(222, 222, 222);
            padding: 2px 8px;
            border-left: 1px solid #dedede;
            border-right: 1px solid #dedede;
            cursor: pointer;
        }

    .pop-up1 {
        position: absolute;
        z-index: 9;
        top: 73px;
    }

    .pop_ctr1 li:hover {
        background-color: #0D83DD;
        color: white;
    }

    .pop_ctr3 {
        list-style: outside none none;
        background-color: #FFF;
        width: 135px;
    }

        .pop_ctr3 li {
            background-color: #FFF;
            border-bottom: 1px solid rgb(222, 222, 222);
            padding: 2px 8px;
            border-left: 1px solid #dedede;
            border-right: 1px solid #dedede;
            cursor: pointer;
        }

    .pop-up3 {
        position: absolute;
        z-index: 9;
        top: 73px;
    }

    .pop_ctr3 li:hover {
        background-color: #0D83DD;
        color: white;
    }

    .form-table tr td {
        padding: 4px 0px 4px 0px;
    }

    .form-table tr .xtrapdgnone {
        padding: 0px 0px 0px 0px;
    }

    .inputDropDown {
        width: 206px;
    }

    .status-heading {
        padding: 4px 0px 4px 16px;
        font-size: 14px;
        background: rgb(176, 234, 232) none repeat scroll 0% 0%;
    }

    .mrgntp4 {
        padding-bottom: 4px;
        margin-top: 4px;
    }

    .pdgtp4 {
        padding-bottom: 4px;
        margin-top: 8px;
    }

    .pdgbtm4 {
        padding-bottom: 4px;
    }
</style>
<asp:UpdatePanel runat="server" ID="upPnlCertificateApp">
    <ContentTemplate>
        <div class="clear textBoxAlign">
            <div style="border: 1px solid #d4d8db; margin-top: 10px;">
                <div class="blockheader" style="margin: 0px 0px -3px auto;">
                    <p style="padding-top: 7px;" align="center">
                        <span>Complaints</span>
                    </p>
                </div>
                <div class="flsApplReqForm flsApplReqForm5">
                    <table class=" tblApplReqForm5 wdtmarauto" style="width: 100%;">
                        <tr>
                            <td class="grid-header-other-name" colspan="4">
                                <table class="index brdr grid" border="1" cellspacing="0" cellpadding="5" id="TableSclInfoPrevScl"
                                    style="width: 90%; margin-left: 10px; border: 1px solid #ddd; margin-top: 10px;">
                                    <tbody>
                                        <tr>
                                            <th style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">Received</th>
                                            <th style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Anonymous</th>
                                            <th style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Actionable</th>
                                            <th style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Law Enforcement</th>
                                            <th style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Sexual Assualt</th>
                                            <th style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Admin Action</th>
                                            <th style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Resolved</th>
                                            <th style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Attachments</th>
                                            <th style="padding-left: 0px; text-align: center;">Action
                                            </th>
                                        </tr>
                                        <tr>
                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">01/21/2016</td>
                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Y</td>
                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">N</td>
                                            <asp:ImageButton ID="imgEmail" runat="server" OnClick="imgEmail_Click" Width="22px"
                                                ImageUrl="~/App_Themes/Theme1/images/1443263723_mail-icon.png" Style="display: none;" />
                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">N</td>
                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">N</td>
                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">N</td>
                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">01/24/2016</td>
                                            <td style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">
                                                <asp:ImageButton ID="imgDOC1" runat="server" OnClick="imgDOC1_Click" ToolTip="Document" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" />
                                                <div id="AddDocm1" visible="false" style="border: 1px solid rgb(212, 216, 219); margin: 11px auto auto; width: 71%; float: right; z-index: 9; position: absolute; right: 2px; background-color: white;"
                                                    runat="server">
                                                    <asp:Button ID="Button1" OnClick="Button1_Click" CssClass="close_btn_pop" runat="server" Text="x" />

                                                    <div class="blockheader" style="margin: 0px 0px -3px auto;">
                                                        <p style="padding-top: 7px;">
                                                            <span>Add Document   </span>
                                                        </p>
                                                    </div>
                                                    <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
                                                        <tr>
                                                            <td style="width: 140px;" align="right">
                                                                <label class="input-label">
                                                                    Document Name :</label>
                                                            </td>
                                                            <td align="left">

                                                                <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox16" runat="server"></asp:TextBox>
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td colspan="2" style="height: 5px;"></td>
                                                        </tr>

                                                        <tr>
                                                            <td align="right">
                                                                <label class="input-label">Document :</label></td>
                                                            <td align="left">
                                                                <asp:FileUpload ID="FileUpload14" runat="server" />
                                                                <asp:Button ID="Button26" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                                                                    Text="Upload" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td align="left">
                                                                <asp:Button ID="Button27" class="buttonGreen small" runat="server" Text="Save" /></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                            <td align="center" valign="middle" style="padding-top: 0px ! important; text-align: center; width: 60px;">
                                                <span>
                                                    <asp:ImageButton ID="ImageButton5" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" />
                                                    <input type="image" id="imgBtnOProgramNameDelete" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"></span>
                                            </td>
                                        </tr>
                                        <tr style="border-top: 1px solid #dedede;">
                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; padding-left: 5px !important; padding-top: 0px !important;">03/17/2016</td>
                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">N</td>
                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Y</td>
                                            <asp:ImageButton ID="ImageButton2" runat="server" OnClick="imgEmail_Click" Width="22px"
                                                ImageUrl="~/App_Themes/Theme1/images/1443263723_mail-icon.png" Style="display: none;" />
                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Y</td>
                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Y</td>
                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">Y</td>
                                            <td class="vlignbtm" style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">03/20/2016</td>
                                            <td style="border-right: 1px solid #ddd; text-align: center; padding-left: 5px !important; padding-top: 0px !important;">
                                                <asp:ImageButton ID="imgDOC2" runat="server" OnClick="imgDOC2_Click1" ToolTip="Document" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" />
                                                <div id="AddDocm2" visible="false" style="border: 1px solid rgb(212, 216, 219); margin: 11px auto auto; width: 71%; float: right; z-index: 9; position: absolute; right: 2px; background-color: white;"
                                                    runat="server">
                                                    <asp:Button ID="Button2" OnClick="Button2_Click" CssClass="close_btn_pop" runat="server" Text="x" />

                                                    <div class="blockheader" style="margin: 0px 0px -3px auto;">
                                                        <p style="padding-top: 7px;">
                                                            <span>Add Document   </span>
                                                        </p>
                                                    </div>
                                                    <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
                                                        <tr>
                                                            <td style="width: 140px;" align="right">
                                                                <label class="input-label">
                                                                    Document Name :</label>
                                                            </td>
                                                            <td align="left">

                                                                <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox1" runat="server"></asp:TextBox>
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td colspan="2" style="height: 5px;"></td>
                                                        </tr>

                                                        <tr>
                                                            <td align="right">
                                                                <label class="input-label">Document :</label></td>
                                                            <td align="left">
                                                                <asp:FileUpload ID="FileUpload2" runat="server" />
                                                                <asp:Button ID="Button3" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                                                                    Text="Upload" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td align="left">
                                                                <asp:Button ID="Button4" class="buttonGreen small" runat="server" Text="Save" /></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                            <td align="center" valign="middle" style="padding-top: 0px ! important; text-align: center; width: 60px;"> <asp:ImageButton ID="ImageButton1" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" />
                                                    <input type="image" id="imgBtnOProgramNameDelete" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"></span>
                                           </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4"><span class="AfterApproved" style="float: right; margin-right: 70px;">
                                <asp:Button CssClass="buttonGreen small" runat="server" ID="btnSclInfoAdd" OnClick="btnSclInfoAdd_Click" Text="Add"
                                    ValidationGroup="VGPersonalOther" /></span>
                            </td>
                        </tr>
                    </table>
                    <table class="tblApplReqForm5" style="width: 98%; margin-top: 15px;">
                        <tr>
                            <td class="txtalgnrgt" align="right" style="width: 160px;">
                                <label class="input-label">Nonactionable :</label>
                            </td>
                            <td colspan="3">
                                <asp:CheckBox ID="chkUnaction" runat="server" /></td>
                        </tr>
                        <tr>
                            <td class="txtalgnrgt" align="right">
                                <label class="input-label">Anonymous :</label>
                            </td>
                            <td colspan="3">
                                <asp:CheckBox ID="chkAnonymous" runat="server" /></td>
                        </tr>
                        <tr>
                            <td class="txtalgnrgt" align="right">
                                <label class="input-label">Administrative Action :</label>
                            </td>
                            <td colspan="3">
                                <asp:CheckBox ID="chkAdminAction" runat="server" /></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 120px;">
                                <label class="input-label">Date Received :</label>
                            </td>
                            <td colspan="3">
                                <asp:TextBox ID="txtnameDate" Width="72px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calender"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 120px;">
                                <label class="input-label">Resolution Date :</label>
                            </td>
                            <td colspan="3">
                                <asp:TextBox ID="txtResolutionDate" Width="72px" placeholder="MM/DD/YYYY" runat="server" CssClass="inputTextbox calender"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="txtalgnrgt">
                                <label class="input-label">
                                Reported by :
                                </label>
                            </td>
                            <td colspan="3">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="DropdownList" title="Select Complaint Type">
                                    <asp:ListItem Value="1">Law Enforcement</asp:ListItem>
                                    <asp:ListItem Value="2">City/County Personnel</asp:ListItem>
                                    <asp:ListItem Value="3">Business</asp:ListItem>
                                    <asp:ListItem Value="4">Victim</asp:ListItem>
                                    <asp:ListItem Value="5">Other</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>                        
                        <tr>
                            <td align="right" class="txtalgnrgt">
                                <label class="input-label">
                                Complaint Type :
                                </label>
                            </td>
                            <td colspan="3">
                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="DropdownList" title="Select Complaint Type">
                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="1">Sexual Assault</asp:ListItem>
                                    <asp:ListItem Value="2">Prostitution Related Activity</asp:ListItem>
                                    <asp:ListItem Value="3">Substantially Related Criminal Activity</asp:ListItem>
                                    <asp:ListItem Value="4">Unprofessional Conduct</asp:ListItem>
                                    <asp:ListItem Value="5">Fraudulent</asp:ListItem>
                                </asp:DropDownList>
                                <%--<asp:RadioButtonList ID="RadioButtonList2" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>--%></td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                Document Type :</label> </td>
                            <td colspan="3">
                                <asp:DropDownList ID="ddlDocumentType" runat="server" CssClass="DropdownList">
                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Certificate of Individual </asp:ListItem>
                                    <asp:ListItem Value="2">Certification</asp:ListItem>
                                    <asp:ListItem Value="3">Recertification</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" style="height: 5px;"></td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                Document :</label></td>
                            <td colspan="3">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <asp:Button ID="btnUploadLicensee" runat="server" ClientIDMode="Static" CssClass="buttonGreen small" OnClick="btnBindGridCertificateofCompletion_Click" Text="Upload" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" style="height: 5px;"></td>
                        </tr>
                        <tr>
                            <td align="right" style="vertical-align: top;">
                                <label class="input-label">
                                Notes :
                                </label>
                            </td>
                            <td colspan="3" style="padding-bottom: 10px;">
                                <asp:TextBox ID="txtNotes" runat="server" CssClass="tooltip OnlyAlphabet calWidth" Height="120" TextMode="MultiLine" Width="500px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="toolBar" style="padding: 4px;">
                    <span class="fltrt">
                        <input id="savebtn" value="Save" class="buttonGreen medium" type="submit">
                        <a id="ContentPlaceHolder1_ucPSDMNotes1_lnkCancelPersonal" class="secondary medium bottom" href="">Cancel</a>
                    </span>
                </div>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
