<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucGeneralInfo.ascx.cs"
    Inherits="NVBMT_WebProject.Modules.IndiVidual.ucGeneralInfo" %>
<div class="container primary-content " style="float: left; width: 100%;">

    <div style="width: 100%; margin-top: 18px;">
        <div class="brdr radius mrgnTp4 pdng2" style="padding-left: 4px;">
            <table style="width: 100%;">
                <tr>
                    <td align="right">
                        <label class="input-label">
                            Discipline Date :</label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="inputTextbox calender" autocomplete="off"
                            ID="TextBox21" runat="server"></asp:TextBox>
                    </td>
                    <td align="right">
                        <label class="input-label">
                            Hearing Date :</label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="inputTextbox calender" autocomplete="off"
                            ID="TextBox22" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 160px;">
                        <label class="input-label">
                            Proposed Denial Letter :</label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="inputTextbox" autocomplete="off"
                            ID="TextBox23" runat="server"></asp:TextBox>
                    </td>
                    <td align="right">
                        <label class="input-label">
                            Upgrade PDL :</label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="inputTextbox calender" autocomplete="off"
                            ID="TextBox24" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label">
                            Proposed Discipline :</label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="inputTextbox" autocomplete="off"
                            ID="TextBox25" runat="server"></asp:TextBox>
                    </td>
                    <td align="right">
                        <label class="input-label">
                            Effective Suspension :</label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="inputTextbox" autocomplete="off"
                            ID="TextBox26" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label">
                            File Sent to PSD :</label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="inputTextbox calender" autocomplete="off"
                            ID="TextBox17" runat="server"></asp:TextBox>
                    </td>
                    <td align="right">
                        <label class="input-label">
                            Proposed Revocation :</label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="inputTextbox calender" autocomplete="off"
                            ID="TextBox18" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label">
                            Permanent Revocation :</label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="inputTextbox calender" autocomplete="off"
                            ID="TextBox19" runat="server"></asp:TextBox>
                    </td>
                    <td align="right">
                        <label class="input-label">
                            Permanent Denial :</label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="inputTextbox calender" autocomplete="off"
                            ID="TextBox20" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
            <td style="width: 132px;" align="right">
                <label class="input-label">
                    Nullification :</label>
            </td>
            <td>
                <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td align="right">
                <label class="input-label">
                    Revocation :</label>
            </td>
            <td>
                <asp:TextBox autocomplete="off" CssClass="inputTextbox" ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 142px;" align="right">
                <label class="input-label">
                    Effective Denial :</label>
            </td>
            <td>
                <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td align="right">
                <label class="input-label">
                    Education Extension Until :</label>
            </td>
            <td>
                <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox6"
                    runat="server"></asp:TextBox>
            </td>
        </tr>
            </table>
        </div>
        <div style="width: 75%; float: left; border: 1px solid rgb(231, 231, 231); min-height: 170px;">
            <table style="width: 99%; margin: 0px auto;">
                <tr>
                    <td align="right" style="width: 132px;">
                        <label class="input-label required">
                            Category :</label>
                    </td>
                    <td colspan="3">
                        <asp:DropDownList ID="ddlCategory" Style="width: 374px;" runat="server">
                            <asp:ListItem>MP</asp:ListItem>
                            <asp:ListItem>MT</asp:ListItem>
                            <asp:ListItem>CCMP</asp:ListItem>
                            <asp:ListItem>CMT</asp:ListItem>
                            <asp:ListItem>CMT, NFT</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label required">
                            Status :</label>
                    </td>
                    <td style="width: 154px;">
                        <asp:DropDownList ID="ddlStatus" CssClass="DropdownList" runat="server">
                            <asp:ListItem Value="-1">Select</asp:ListItem>
                            <asp:ListItem Value="1">Active</asp:ListItem>
                            <asp:ListItem Value="2" Selected="True">Inactive</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td align="right">
                        <label class="input-label required">
                            Prefers :</label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlPrefers" CssClass="DropdownList" runat="server">
                            <asp:ListItem Value="-1">Select</asp:ListItem>
                            <asp:ListItem Value="1" Selected="True">E-Mail</asp:ListItem>
                            <asp:ListItem Value="2">Phone</asp:ListItem>
                        </asp:DropDownList>
                    </td>

                </tr>
                <tr>
                    <td colspan="4">
                        <table class="fltlft" style="width: 79%;">
                            <tr>
                                <td align="right" style="width: 130px;">
                                    <label class="input-label required">
                                        E-Mail Address :</label>
                                </td>
                                <td>
                                    <asp:TextBox CssClass="inputTextbox" Text="joe@inlumon.com" Style="width: 255px !important;"
                                        autocomplete="off" ID="txtEmail" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label class="input-label required">
                                        Web Address :</label>
                                </td>
                                <td>
                                    <asp:TextBox CssClass="inputTextbox" Text="www.camtc.org" Style="width: 255px !important;"
                                        autocomplete="off" ID="txtWeb" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label class="input-label">
                                        Alternate Email :</label>
                                </td>
                                <td>
                                    <asp:TextBox CssClass="inputTextbox" Style="width: 255px !important;" autocomplete="off"
                                        ID="txtAltEmail" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <table class="fltrt" style="width: 20%;">
                            <tr>
                                <td align="center">
                                    <asp:CheckBox ID="chkEmailOptOut" runat="server" ClientIDMode="Static" Checked="true" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <label for="chkEmailOptOut">
                                        Email Opt Out</label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label required">
                            Last Updated :</label>
                    </td>
                    <td colspan="3">
                        <asp:TextBox CssClass="inputTextbox calender" Text="09/11/2015" autocomplete="off"
                            ID="txtLastUpdated" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <%--<tr>
                    <td align="right" >
                        <label class="input-label">
                            <b>Info Deadline :</b>
                        </label>
                    </td>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label">
                            Discipline Date :</label>
                    </td>
                    <td colspan="3">
                        <asp:TextBox autocomplete="off" CssClass="inputTextbox calender" ID="txtPSDExtension" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label">
                            Upgrade PDL :</label>
                    </td>
                    <td colspan="3">
                        <asp:TextBox CssClass="inputTextbox calender" autocomplete="off" ID="txtUpgradePDL" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label">
                            Hearing Date :</label>
                    </td>
                    <td colspan="3">
                        <asp:TextBox CssClass="inputTextbox calender" autocomplete="off" ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                </tr>--%>

            </table>
            <div>
                <div id="divbtnAddNew" runat="server" style="height: 30px;">
                    <span style="float: right; margin-right: 10px;">
                        <asp:Button ID="btnAddNewProcess" runat="server" Text="Add New" CssClass="buttonGreen small" OnClick="btnAddNewProcess_Click" />
                    </span>
                </div>
                <div id="divpnlAddNew" runat="server" visible="false" class="brdr radius pdng2" style="margin-top: 15px;">
                    <table style="width: 100%;">
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                    Process :</label></td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                    
                                    <asp:ListItem Value="1">Application Received</asp:ListItem>
                                    <asp:ListItem Value="2">Transcripts Received</asp:ListItem>
                                    <asp:ListItem Value="3">DOJ Received</asp:ListItem>
                                    <asp:ListItem Value="4">FBI Received</asp:ListItem>
                                    <asp:ListItem Value="5">At Preapproval</asp:ListItem>
                                    <asp:ListItem Value="6">Application Approval</asp:ListItem>
                                    <asp:ListItem Value="7">Application Entered</asp:ListItem>
                                    <asp:ListItem Value="8">Exam Received</asp:ListItem>
                                </asp:DropDownList></td>
                            <td align="right">
                                <label class="input-label">
                                    Date :</label></td>
                            <td>
                                <asp:TextBox ID="TextBox1" CssClass="calender" runat="server"></asp:TextBox></td>
                        </tr>
                    </table>
                    <div class="toolBar" style="padding: 4px; margin: 4px;">
                        <span class="fltrt">
                            <asp:Button ID="btnProcessSave" ValidationGroup="VGSchool" CssClass="buttonGreen small"
                                runat="server" Text="Save" CausesValidation="true" OnClick="btnProcessSave_Click" />
                            <asp:LinkButton ID="btnProcessCancel" CssClass="secondary small bottom buttonalignment"
                                runat="server" OnClick="btnProcessSave_Click">Cancel</asp:LinkButton></span>
                    </div>
                </div>
                <div>
                    <table class="index grid" style="color: #333333; width: 100%; border-collapse: collapse;" cellpadding="5" cellspacing="0">
                        <tbody>
                            <tr>
                                <th scope="col">Process</th>
                                <th scope="col">Date</th>
                                <th class="aligncenter" scope="col">Action</th>
                            </tr>
                            <tr id="trEditmodeProcess" runat="server" visible="false">
                                <td colspan="3">
                                    <div>
                                        <table style="width: 100%;">
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Process :</label></td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Selected="True" Value="1">Application Received</asp:ListItem>
                                                        <asp:ListItem Value="2">Transcripts Received</asp:ListItem>
                                                        <asp:ListItem Value="3">DOJ Received</asp:ListItem>
                                                        <asp:ListItem Value="4">FBI Received</asp:ListItem>
                                                        <asp:ListItem Value="5">At Preapproval</asp:ListItem>
                                                        <asp:ListItem Value="6">Application Approval</asp:ListItem>
                                                        <asp:ListItem Value="7">Application Entered</asp:ListItem>
                                                    </asp:DropDownList></td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Date :</label></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox2" CssClass="calender" Text="5/27/2014" runat="server"></asp:TextBox></td>
                                            </tr>
                                        </table>
                                        <div class="toolBar" style="padding: 4px; margin: 4px;">
                                            <span class="fltrt">
                                                <asp:Button ID="btnProcessUpdate" ValidationGroup="VGSchool" CssClass="buttonGreen small"
                                                    runat="server" Text="Save" CausesValidation="true" OnClick="btnProcessUpdate_Click" />
                                                <asp:LinkButton ID="btnProcessCancelUpdate" CssClass="secondary small bottom buttonalignment"
                                                    runat="server" OnClick="btnProcessUpdate_Click">Cancel</asp:LinkButton></span>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr id="trGridProcess" runat="server">
                                <td>Application Received</td>
                                <td>5/27/2014</td>
                                <td style="width: 50px;" align="center" valign="middle">
                                    <span class="fltrt AfterApproved">
                                        <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" runat="server"
                                            ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                            OnClick="imgbtnEditProcess_Click" />
                                        <input id="imgBtnEducation1Delete" title="Delete" src="../../App_Themes/Theme1/images/delete.png" type="image"></span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div style="float: right; width: 24%; min-height: 170px;">
            <div style="width: 56%; height: 118px; padding-top: 10px;">
                <asp:Button ID="btnCallLogRequest" CssClass="buttonGreen medium" runat="server" Text="Call Log / Request" />
            </div>
            <div style="width: 56%; height: 118px; padding-top: 10px;">
                <asp:Image runat="server" ID="IndvidualimgProfile" ClientIDMode="Static" ImageUrl="~/App_Themes/Theme1/images/indiviudal-sample.jpg"
                    alt="Image" Width="100px" Height="100px" />
            </div>
            <div style="width: 56%; height: 118px; padding-top: 10px; display: none;">
                <asp:Image runat="server" ID="imgTest" ClientIDMode="Static" ImageUrl="~/App_Themes/Theme1/images/indiviudal-sample.jpg"
                    alt="Image" Width="100px" Height="100px" />
            </div>
            <asp:Panel ID="pnlProfileUpload" runat="server" Visible="false">
                <asp:FileUpload ID="fpImageUpload" accept="image/*" CssClass="MyUpload fu" Style="font-size: 12px;"
                    onchange="javascript :UploadImage(this);" runat="server" />
            </asp:Panel>
            <asp:Button ID="btnPhotoUpload" Style="margin-left: 5px; display: none;" CssClass="buttonGreen small"
                runat="server" Text="Upload" CausesValidation="true" ClientIDMode="Static" OnClick="btnPhotoUpload_Click" />
            <asp:HiddenField ID="hidApplicationNumber" runat="server" ClientIDMode="Static" />
            <asp:HiddenField ID="hidIndividualId" Value="0" runat="server" ClientIDMode="Static" />
            <asp:HiddenField ID="hidPermanentUrl" runat="server" Value="" ClientIDMode="Static" />
            <iframe id="frmProfileUpload" runat="server" src="../Modules/WorkFlow/ProfileUpload.aspx"
                frameborder="0" width="100%" scrolling="no" height="85px"></iframe>
            <br />
        </div>
    </div>
</div>
<div class="clear">
</div>

<div class="brdr radius mrgnTp4 pdng2" style="padding-left: 4px; display:none;">
    <table style="width: 90%;">
        <tr>
            <td style="width: 132px;" align="right">
                <label class="input-label">
                    Nullification :</label>
            </td>
            <td>
                <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtNullification" runat="server"></asp:TextBox>
            </td>
            <td align="right">
                <label class="input-label">
                    Revocation :</label>
            </td>
            <td>
                <asp:TextBox autocomplete="off" CssClass="inputTextbox" ID="txtRevocation" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 142px;" align="right">
                <label class="input-label">
                    Effective Denial :</label>
            </td>
            <td>
                <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtEffectiveDeniel" runat="server"></asp:TextBox>
            </td>
            <td align="right">
                <label class="input-label">
                    Education Extension Until :</label>
            </td>
            <td>
                <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtEducationExtensionUntil"
                    runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
        </tr>

    </table>
</div>
<div class="toolBar" style="padding: 4px;">
    <span class="fltlft">
        <asp:Button ID="btnShowHistory" CssClass="buttonGreen medium" runat="server" style=" display:none;" Text="Show History"
            OnClick="btnShowHistory_Click" />
        <asp:LinkButton runat="server" Enabled="false" ToolTip="Previous" style=" display:none;" CssClass="link-next-prev btn-info btn-sm"
            ID="lnkPrev"><<</asp:LinkButton>
        <asp:LinkButton runat="server" Enabled="false" ToolTip="Next" style=" display:none;" CssClass="link-next-prev btn-info btn-sm"
            ID="lnkNext">>></asp:LinkButton>
        <asp:Button ID="btnShowCurrent" Enabled="false" style=" display:none;" CssClass="buttonGreen medium" runat="server"
            Text="Show Current" OnClick="btnShowCurrent_Click" />
    </span><span class="fltrt">
        <asp:Button ID="btnIndividualSave" ValidationGroup="VGIndividual" CssClass="buttonGreen medium"
            runat="server" Text="Save" CausesValidation="true" />
        <asp:LinkButton ID="lnkIndividualCancel" CssClass="secondary medium bottom" runat="server"
            OnClick="lnkIndividualCancel_Click">Cancel</asp:LinkButton></span>
</div>

