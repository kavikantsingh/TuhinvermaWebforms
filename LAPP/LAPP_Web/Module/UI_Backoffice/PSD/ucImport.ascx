<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucImport.ascx.cs" Inherits="Module_UI_Backoffice_Individual_ucImport" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<style>
    .grid .tblgridName tr {
        border: 0px !important;
    }

    .index tbody .InEditModetd, .index tfoot .InEditModetd {
        border: 0px;
    }
</style>

<div class="clear textBoxAlign" style="padding-bottom: 40px;">
    <div class="blockheader" style="margin: 15px 0px -3px auto;">
        <p style="padding-top: 7px;">
            <span>General Info : </span>
        </p>
    </div>
    <div>
        <div id="DivGeneralInfo">
            <div class="brdr radius mrgnTp4 pdng2" style="padding-left: 4px;">
                <table style="width: 90%;">
                    <tr>
                        <td style="width: 132px;" align="right">
                            <label class="input-label">
                                90-Day Letter :</label>
                        </td>
                        <td>

                            <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txt90DayLater" runat="server"></asp:TextBox>
                        </td>

                        <td align="right">
                            <label class="input-label">
                                Upgrade 90-Day Letter :</label>
                        </td>
                        <td>
                            <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtUpgrade90DayLetter"
                                runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label">
                                Filling Fee Rate :</label>
                        </td>
                        <td>
                            <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtFillingFeeRate" runat="server"></asp:TextBox>
                        </td>
                        <td align="right">
                            <label class="input-label">
                                Lower Cert 90-Day :</label>
                        </td>
                        <td>
                            <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtLowerCert90Day" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <hr />
        <div>
            <div class="brdr radius mrgnTp4 pdng2" style="padding-left: 4px;">
                <table style="width: 90%;">
                    <tr>
                        <td style="width: 132px;" align="right">
                            <label class="input-label">
                                Fee Date :</label>
                        </td>
                        <td>
                            <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                                ID="txtFeedate" runat="server"></asp:TextBox>
                        </td>
                        <td align="right">
                            <label class="input-label">
                                Who Has It :</label>
                        </td>
                        <td>
                            <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtCreatedBy" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <b>Reason for Incomplete :</b>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label">
                                Test Record :</label>
                        </td>
                        <td colspan="3">
                            <asp:TextBox CssClass="" Style="width: 444px;" autocomplete="off" ID="txtTestRecord"
                                TextMode="MultiLine" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label">
                                Preapproved :</label>
                        </td>
                        <td colspan="3">
                            <asp:TextBox CssClass="inputTextbox calender" autocomplete="off" ID="txtPreapproved"
                                runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <hr />
        <div>
            <div class="brdr radius mrgnTp4 pdng2" style="padding-left: 4px;">
                <table style="width: 90%;">
                    <tr>
                        <td style="width: 132px;" align="right">
                            <label class="input-label">
                                Hearing or Written</label><br />
                            <label class="input-label">
                                Statement :</label>
                        </td>
                        <td>
                            <asp:CheckBox ID="chkHearingorWrittenStatement" runat="server" />
                        </td>

                        <td align="right">
                            <label class="input-label">
                                PSD Extension :</label>
                        </td>
                        <td>
                            <asp:TextBox autocomplete="off" CssClass="inputTextbox" ID="txtPSDExtension" runat="server"></asp:TextBox>
                        </td>

                    </tr>
                </table>
            </div>

        </div>

        <hr />
        <div>
            <div class="brdr radius mrgnTp4 pdng2" style="padding-left: 4px;">
                <table style="width: 90%;">
                    <tr>
                        <td align="right">
                            <label class="input-label required">
                                Date Added :</label>
                        </td>
                        <td>
                            <asp:TextBox CssClass="inputTextbox calender" Text="10/07/2009" autocomplete="off"
                                ID="txtDateAdded" runat="server"></asp:TextBox>
                        </td>
                        <td align="right">
                            <label class="input-label required">
                                Name Type :</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlNameType" CssClass="DropdownList" runat="server">
                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                <asp:ListItem Value="1" Selected="True">Corporate Record</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label">
                            </label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlMemberReports" CssClass="DropdownList" runat="server">
                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                <asp:ListItem Value="1">1-Profile-New</asp:ListItem>
                                <asp:ListItem Value="2">2-Profile-Pull File</asp:ListItem>
                                <asp:ListItem Value="3">3-Profile for ARD</asp:ListItem>
                                <asp:ListItem Value="4">4-Credintial Profile</asp:ListItem>
                                <asp:ListItem Value="5">4-Single Envelope</asp:ListItem>
                                <asp:ListItem Value="6">90-day Reprint June or after</asp:ListItem>
                                <asp:ListItem Value="7">90-day reprint Pre-June</asp:ListItem>
                                <asp:ListItem Value="8">Additional Information Receive</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td colspan="2"></td>
                    </tr>
                </table>
            </div>

        </div>


    </div>
    <div class="blockheader" style="margin: 15px 0px -3px auto;">
        <p style="padding-top: 7px;">
            <span>Personal Info : </span>
        </p>
    </div>
    <div>
        <div class="brdr radius mrgnTp4 pdng2" style="padding-left: 4px;">
            <table style="width: 90%; margin: 0px auto;">
                <tr>
                    <td align="right">
                        <label class="input-label required">
                            Title :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="inputTextbox " autocomplete="off" ID="txtTitle" runat="server"></asp:TextBox>
                    </td>
                    <td colspan="2">
                        <%--<asp:FileUpload ID="FileUpload1" runat="server" />--%>
                        <asp:CheckBox ID="chkBadAddress" runat="server" Style="margin: 10px;" Text="Mark as bad address" />
                    </td>
                </tr>

                <tr>
                    <td align="right">
                        <label class="input-label">
                            LiveScan ATI # :</label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtLiveAcanAtiNo" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 85px;" align="right">
                        <label class="input-label">
                            Comments  :</label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtComments" Width="135px"
                            TextMode="MultiLine" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="4">
                        <div class="brdr radius mrgnTp4 pdng2">
                            <table style="width: 100%;">
                                <tr>
                                    <td align="right" style="width: 175px;">
                                        <label class="input-label">
                                            <b>Website :</b>
                                        </label>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label required">
                                            User Name :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtUserName" CssClass="inputTextbox" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label required">
                                            Password :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtPassword" CssClass="inputTextbox" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <p style="color: Red;">
                                            After changing the UserName or Password, you must run the Synchronize Passwords
                                                        Routine in Tradewinds / Password Management.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>

            </table>
        </div>
    </div>

    <div class="blockheader" style="margin: 15px 0px -3px auto;">
        <p style="padding-top: 7px;">
            <span>Financial Info : </span>
        </p>
    </div>
    <div>
        <div id="divAddPanelAddress" runat="server" class="brdr radius mrgnTp4 pdng2">
            <div style="padding: 10px;">
                <p>
                    <b>Note : </b><span style="color: Red;">The following fields are maintained by Aloha.
                Manually changing these fields can have unexpected results.</span>
                </p>
            </div>
            <table style="width: 100%;">
                <tr>
                    <td align="right">
                        <label class="input-label required">
                            Dues Status  :</label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlStatus" CssClass="DropdownList" runat="server">
                            <asp:ListItem Value="-1">Select</asp:ListItem>
                            <asp:ListItem Value="1" Selected="True">Renew</asp:ListItem>
                            <asp:ListItem Value="2">Expired</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td align="right">
                        <label class="input-label">
                            Status Changed :</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtStatusChanged" CssClass="inputTextbox calender" Text="01/01/2015"
                            runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label required">
                            Expiration :</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtExpiration" CssClass="inputTextbox calender" Text="01/09/2011"
                            runat="server"></asp:TextBox>
                    </td>
                    <td align="right">
                        <label class="input-label">
                            New Expiration :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNewExpiration" CssClass="inputTextbox calender" Text="01/11/2019"
                            runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label required">
                            Balance :</label>
                    </td>
                    <td colspan="3">
                        <asp:TextBox ID="txtBalance" CssClass="inputTextbox" Text="$150.00" Style="text-align: right;"
                            runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>

        </div>
    </div>
    <div class="blockheader" style="margin: 15px 0px -3px auto;">
        <p style="padding-top: 7px;">
            <span>Application Data : </span>
        </p>
    </div>
    <div>
        <div class="clear textBoxAlign">
            <div>
                <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                    <asp:ListItem Value="1">Ever been refused a license?</asp:ListItem>
                    <asp:ListItem Value="2">Ever had license revoked?</asp:ListItem>
                    <asp:ListItem Value="3">Currently pending complaint?</asp:ListItem>
                    <asp:ListItem Value="4">Aware of any complaint?</asp:ListItem>
                    <asp:ListItem Value="5">Any Convictions?</asp:ListItem>
                </asp:CheckBoxList>
            </div>

            <table style="width: 100%;">
                <tr>
                    <td style="width: 70px;">
                        <asp:CheckBox ID="chlMblex" Text="MBLEx" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtMBLEx" Style="width: 80px;" CssClass="calender" Text="09/09/2014" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="chkNcetm" Text="NCETM" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtNcetm" CssClass="calender" Style="width: 80px;" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="chlNcetmb" Text="NCETMB" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtNcetmb" CssClass="calender" Style="width: 80px;" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="chkNesl" Text="NESL" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtNesl" CssClass="calender" Style="width: 80px;" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>

            <div class="clear">
            </div>

            <div class="brdr radius mrgnTp4 pdng2">
                <table style="width: 99%; margin: 0px auto;">
                    <tr>
                        <td align="right">
                            <label class="input-label">
                                Name on check if different :
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtNameIfDifferent" runat="server"></asp:TextBox>
                        </td>
                        <td align="right">
                            <label class="input-label">
                                <asp:CheckBox ID="chkReleaseBoxchecked" Text="Release Box Checked :" runat="server" />
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtRelaxBoxChecked" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label">
                                CEUs Received :
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCEUsReceived" runat="server"></asp:TextBox>
                        </td>
                        <td align="right">
                            <label class="input-label">
                                Most Recent Cert Printed :
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtMostRecentCertPrint" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" align="right">
                            <b>
                                <asp:CheckBox ID="CheckBox1" Text="All Affidavit Questions Checked" runat="server" /></b>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

    </div>
    <div class="blockheader" style="margin: 15px 0px -3px auto;">
        <p style="padding-top: 7px;">
            <span>AKA : </span>
        </p>
    </div>
    <div>
        <div class="divLicenseInfon divaddnew" id="divAKA" runat="server" style="height: 30px; margin-top: 10px;">
            <span style="float: right;">
                <asp:Button ID="btnAKAAddNew" ValidationGroup="vgAffidavit" CssClass="buttonGreen small"
                    runat="server" Text="Add New" CausesValidation="true" OnClick="btnAKAAddNew_Click" />
            </span>
        </div>
        <div id="divAddPanelAKA" runat="server" visible="false" class="brdr radius">
            <table class=" form-table" style="width: 90%; margin: 0px auto;">
                <tr>
                    <td align="right">
                        <label class="input-label required">
                            First Name :</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" CssClass="inputTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td align="right">
                        <label class="input-label required">
                            Last Name :</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" CssClass="inputTextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label required">
                            SS # :</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" CssClass="inputTextBox ssn" runat="server"></asp:TextBox>
                    </td>
                    <td align="right">
                        <label class="input-label required">
                            DOB :</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" CssClass="inputTextBox calenderDOB" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <label class="input-label required">
                            Driver License :</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" CssClass="inputTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td align="right">
                        <label class="input-label required">
                            Passport # :</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" CssClass="inputTextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                <span class="fltrt">
                    <asp:Button ID="btnAKASave" ValidationGroup="VGSchool" CssClass="buttonGreen medium"
                        runat="server" Text="Save" CausesValidation="true" OnClick="btnAKASave_Click" />
                    <asp:LinkButton ID="lnkAKACancel" CssClass="secondary medium bottom buttonalignment"
                        runat="server" OnClick="lnkAKACancel_Click">Cancel</asp:LinkButton></span>
            </div>
        </div>
        <div class="divLicenseInfo">
            <asp:GridView ID="gvAKA" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                CssClass="index brdr radius mrgnTp4 pdng2 grid" Width="100%" CellPadding="5"
                ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="First Name">
                        <ItemStyle />
                        <EditItemTemplate>
                            <asp:UpdatePanel runat="server" ID="MassageTrainingandAKAUp2">
                                <ContentTemplate>
                                    <div class="divGridEdit">
                                        <table class=" form-table" style="width: 90%; margin: 0px auto;">
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label required">
                                                        First Name :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox7Edit" Text="Nancy" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label required">
                                                        Last Name :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox1Edit" Text="Blachly" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label required">
                                                        SS # :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox2Edit" Text="123-55-4684" CssClass="inputTextBox ssn" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label required">
                                                        DOB :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox3Edit" Text="09/16/1985" CssClass="inputTextBox calenderDOB"
                                                        runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label required">
                                                        Driver License :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox4Edit" Text="C879789" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label required">
                                                        Passport # :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox5Edit" Text="978889" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                        <div class="clear">
                                        </div>
                                        <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                                            <span class="fltrt">
                                                <asp:Button ID="btnAKAUpdate" ValidationGroup="VGSchoolEdit" CssClass="buttonGreen medium"
                                                    runat="server" Text="Update" CausesValidation="true" OnClick="btnAKAUpdate_Click" />
                                                <asp:LinkButton ID="lnkAKACancelUpdate" CssClass="secondary medium bottom buttonalignment"
                                                    runat="server" OnClick="lnkAKACancelUpdate_Click">Cancel</asp:LinkButton></span>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </EditItemTemplate>
                        <ItemTemplate>
                            Nancy
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name">
                        <ItemStyle />
                        <ItemTemplate>
                            Blachly
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SS #">
                        <ItemStyle />
                        <ItemTemplate>
                            123-55-4684
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DOB">
                        <ItemTemplate>
                            09/16/1985
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Driver License">
                        <ItemStyle />
                        <ItemTemplate>
                            C879789
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Passport #">
                        <ItemStyle />
                        <ItemTemplate>
                            978889
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="60px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                        <ItemTemplate>
                            <span class="fltrt AfterApproved">
                                <asp:ImageButton ID="imgbtnAKAEdit" CssClass="imgDelete" CommandArgument="1" runat="server"
                                    RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                    OnClick="lnkAKAEdit_Click" />
                                <asp:ImageButton ID="imgBtnAKADelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                    CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?')"
                                    OnClick="lnkAKADelete_Click" /></span>

                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div style="width: 100%; height: 50px; border: 0px; padding: 3px">
                        No record found.
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>

    </div>

    <div class="blockheader" style="margin: 15px 0px -3px auto;">
        <p style="padding-top: 7px;">
            <span>Recertification : </span>
        </p>
    </div>
    <div class="brdr radius mrgnTp4 pdng2" style="padding-left: 4px;">
        <div class="clear textBoxAlign" style="padding-bottom: 10px;">
            <div style="border: 1px solid rgb(221, 221, 221); background: rgb(248, 213, 213) none repeat scroll 0% 0%; padding: 10px 10px 10px 0px;">
                <table style="width: 100%;">
                    <tr>
                        <td align="right" style="width: 96px;">
                            <label class="input-label">
                                Recert. Status :
                            </label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlRecertStatus" runat="server">
                                <asp:ListItem Selected="True" Value="1">Complete</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="right">
                            <label class="input-label">
                                Status Date :
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStatusDate" CssClass="inputTextbox calender" Text="7/20/2015"
                                runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <p>
                                If you change the Recent Status - Please make sure the Status Date reflects the
                        date the Status changed.
                            </p>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="clear">
            </div>
            <div>
                <div style="float: left; width: 40%;">
                    <table style="width: 100%;">
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                    Question 1 :
                                </label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlQuestion1" runat="server">
                                    <asp:ListItem Value="0">Yes</asp:ListItem>
                                    <asp:ListItem Value="1" Selected="True">NO</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                    Question 2 :
                                </label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlQuestion2" runat="server">
                                    <asp:ListItem Value="0">Yes</asp:ListItem>
                                    <asp:ListItem Value="1" Selected="True">NO</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                    Question 3 :
                                </label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlQuestion3" runat="server">
                                    <asp:ListItem Value="0">Yes</asp:ListItem>
                                    <asp:ListItem Value="1" Selected="True">NO</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                    Question 4 :
                                </label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlQuestion4" runat="server">
                                    <asp:ListItem Value="0">Yes</asp:ListItem>
                                    <asp:ListItem Value="1" Selected="True">NO</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                    Question 5 :
                                </label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlQuestion5" runat="server">
                                    <asp:ListItem Value="0">Yes</asp:ListItem>
                                    <asp:ListItem Value="1" Selected="True">NO</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                    Question 6 :
                                </label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlQuestion6" runat="server">
                                    <asp:ListItem Value="0" Selected="True">Yes</asp:ListItem>
                                    <asp:ListItem Value="1">NO</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </div>
                <div style="float: right; width: 60%;">
                    <table style="width: 100%">
                        <tr>
                            <td>Question Statement
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtQuesStatement" TextMode="MultiLine" Style="width: 415px; height: 100px;"
                                    runat="server" Text="DUI in sacramento county 11/1/2014, fined and DIU class completed."></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="clear">
            </div>
            <div>
                <div style="float: left; width: 66%;">
                    <h3>Signatures and Initials
                    </h3>
                    <hr />
                    <div>
                        <table>
                            <tr>
                                <td align="right">
                                    <label class="input-label">
                                        Certificate Holder :
                                    </label>
                                </td>
                                <td colspan="3">
                                    <asp:TextBox ID="txtCertificateHolder" Text="Aaron Aaronson" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label class="input-label">
                                        Initial 1 :
                                    </label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtInitial1" Text="AA" runat="server"></asp:TextBox>
                                </td>
                                <td align="right" style="width: 60px;">
                                    <label class="input-label">
                                        Initial 6 :
                                    </label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtInitial6" Text="AA" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label class="input-label">
                                        Initial 2 :
                                    </label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtInitial2" Text="AA" runat="server"></asp:TextBox>
                                </td>
                                <td align="right">
                                    <label class="input-label">
                                        Initial 7 :
                                    </label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtInitial7" Text="AA" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label class="input-label">
                                        Initial 3 :
                                    </label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtInitial3" Text="AA" runat="server"></asp:TextBox>
                                </td>
                                <td align="right">
                                    <label class="input-label">
                                        Initial 8 :
                                    </label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtInitial8" Text="AA" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label class="input-label">
                                        Initial 4 :
                                    </label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtInitial4" Text="AA" runat="server"></asp:TextBox>
                                </td>
                                <td align="right">
                                    <label class="input-label">
                                        Initial 9 :
                                    </label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtInitial9" Text="AA" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label class="input-label">
                                        Initial 5 :
                                    </label>
                                </td>
                                <td colspan="3">
                                    <asp:TextBox ID="txtInitial5" Text="AA" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label class="input-label">
                                        Signature :
                                    </label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtSignature" Text="Aaron Aaronson" runat="server"></asp:TextBox>
                                </td>
                                <td align="right">
                                    <label class="input-label">
                                        Date :
                                    </label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDate" Text="15/07/2015" CssClass="calender" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div style="float: right; width: 33%">
                    <div style="height: 200px; margin-top: 37px; background: rgb(238, 238, 238) none repeat scroll 0% 0%;">
                        <span>
                            <asp:Button ID="btnRecertificationMergeExport" Style="position: relative; top: 13px; left: 11px;"
                                CssClass="buttonGreen medium" runat="server" Text="Recertification Word Merge Export" />
                        </span>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div class="blockheader" style="margin: 15px 0px -3px auto;">
        <p style="padding-top: 7px;">
            <span>Task : </span>
        </p>
    </div>
    <div>
        <div class="clear textBoxAlign" style="padding-bottom: 40px; margin-top: 10px;">
            <div style="padding-bottom: 30px;" class="divLicenseInfon divaddnew" id="divAddbuttonTask"
                runat="server">
                <span style="float: right; margin-right: 0px;">
                    <asp:Button ID="btnTaskAddNew" ValidationGroup="vgAffidavit" CssClass="buttonGreen small"
                        runat="server" Text="Add New" CausesValidation="true" OnClick="btnTaskAddNew_Click" />
                </span>
            </div>
            <div>
                <asp:Literal ID="ltrTask" runat="server"></asp:Literal>
            </div>
            <div id="divAddPanelTask" runat="server" visible="false" class="brdr radius mrgnTp4 pdng2">
                <table style="width: 85%; margin: 0px auto;">
                    <tr>
                        <td align="right">
                            <label class="input-label required">
                                Type :
                            </label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlTaskType" CssClass="DropdownList" runat="server">
                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                <asp:ListItem Value="Type1">Type1</asp:ListItem>
                                <asp:ListItem Value="Type2">Type2</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvTaskType" ValidationGroup="VGTask" ControlToValidate="ddlTaskType"
                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                InitialValue="-1" ErrorMessage="Please select task type."></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="vceTaskType" runat="server" TargetControlID="rfvTaskType"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>
                        </td>
                        <td align="right">
                            <label class="input-label required">
                                Status :</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" CssClass="DropdownList" runat="server">
                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                <asp:ListItem Value="1">Individual</asp:ListItem>
                                <asp:ListItem Value="2">Application</asp:ListItem>
                                <asp:ListItem Value="3">Names</asp:ListItem>
                                <asp:ListItem Value="4">Address</asp:ListItem>
                                <asp:ListItem Value="5">Task</asp:ListItem>
                                <asp:ListItem Value="6">Notes</asp:ListItem>
                                <asp:ListItem Value="7">Documents</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="revStatus" ValidationGroup="VGTask" ControlToValidate="ddlStatus"
                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                InitialValue="-1" ErrorMessage="Please select status."></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="vceStatus" runat="server" TargetControlID="revStatus"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label required">
                                Due Date :</label>
                        </td>
                        <td>
                            <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                                ID="txtDueDate" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtDueDate" ValidationGroup="VGTask" ControlToValidate="txtDueDate"
                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                ErrorMessage="Please enter due date."></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="vceDueDate" runat="server" TargetControlID="rfvtxtDueDate"
                                PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                            </asp:ValidatorCalloutExtender>
                            <asp:RegularExpressionValidator ID="revDueDate" runat="server" ErrorMessage="Please enter valid due date. Eg:MM/DD/YYYY"
                                ValidationGroup="VGTask" ControlToValidate="txtDueDate" ForeColor="#FF3300" Text="*"
                                ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                                Display="None"></asp:RegularExpressionValidator>
                            <asp:ValidatorCalloutExtender ID="vcetxtDueDate" runat="server" TargetControlID="revDueDate"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>
                        </td>
                        <td align="right">
                            <label class="input-label required">
                                Date Completed :</label>
                        </td>
                        <td>
                            <%--                    <asp:TextBox CssClass="inputTextbox calender" autocomplete="off" ID="txtDateCompleted"
                        runat="server"></asp:TextBox>--%>
                            <asp:CheckBox ID="chkDateCompleted" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <label class="input-label">
                                Comments :</label>
                        </td>
                        <td colspan="3">
                            <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox7" Width="135px"
                                TextMode="MultiLine" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <div class="toolBar" style="padding: 4px; margin: 6px;">
                    <span class="fltrt">
                        <asp:Button ID="btnTaskUpdate" ValidationGroup="VGTask" CssClass="buttonGreen medium"
                            runat="server" Text="Save" CausesValidation="true" OnClick="btnTaskSave_Click" />
                        <asp:LinkButton ID="lnkTaskCancel" CssClass="secondary medium bottom" runat="server"
                            OnClick="lnkTaskCancel_Click">Cancel</asp:LinkButton></span>
                </div>
            </div>
            <div runat="server" id="divGridView" visible="true" class="">
                <div class="divLicenseInfo">
                    <asp:GridView ID="gvTask" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                        AllowPaging="true" PagerSettings-PageButtonCount="6" GridLines="None" AllowSorting="true"
                        PagerStyle-CssClass="pager_style" PageSize="5" RowStyle-CssClass="bordrbtm gridrow"
                        CssClass="index brdr radius mrgnTp4 pdng2 grid"
                        Width="100%" CellPadding="5" ForeColor="#333333">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="Task">
                                <ItemStyle CssClass="InEditModetd" />
                                <EditItemTemplate>
                                    <div class="divGridEdit">
                                        <table style="margin: 0 auto; width: 75%" class="tblParentNewApplReqForm tblLicensureInformation wthtop20">
                                            <tr>
                                                <td align="right" style="width: 90px;">
                                                    <label class="input-label required">
                                                        Type :</label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlTaskTypeEdit" CssClass="DropdownList" runat="server">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Value="Type1">Type1</asp:ListItem>
                                                        <asp:ListItem Value="Type2">Type2</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="rfvTaskTypeEdit" ValidationGroup="VGTask" ControlToValidate="ddlTaskTypeEdit"
                                                        Text="*" InitialValue="-1" ForeColor="Red" Display="None" SetFocusOnError="True"
                                                        runat="server" ErrorMessage="Please select task type."></asp:RequiredFieldValidator>
                                                    <asp:ValidatorCalloutExtender ID="vceTaskTypeEdit" runat="server" TargetControlID="rfvTaskTypeEdit"
                                                        PopupPosition="BottomLeft" HighlightCssClass="error">
                                                    </asp:ValidatorCalloutExtender>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label required">
                                                        Status :</label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlStatusEdit" CssClass="DropdownList" runat="server">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">Individual</asp:ListItem>
                                                        <asp:ListItem Value="2">Application</asp:ListItem>
                                                        <asp:ListItem Value="3">Names</asp:ListItem>
                                                        <asp:ListItem Value="4">Address</asp:ListItem>
                                                        <asp:ListItem Value="5">Task</asp:ListItem>
                                                        <asp:ListItem Value="6">Notes</asp:ListItem>
                                                        <asp:ListItem Value="7">Documents</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="revStatusEdit" ValidationGroup="VGTask" ControlToValidate="ddlStatusEdit"
                                                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                                        ErrorMessage="Please select status."></asp:RequiredFieldValidator>
                                                    <asp:ValidatorCalloutExtender ID="vceStatusEdit" runat="server" TargetControlID="revStatusEdit"
                                                        PopupPosition="BottomLeft" HighlightCssClass="error">
                                                    </asp:ValidatorCalloutExtender>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label required">
                                                        Due Date :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                                                        ID="txtDueDateEdit" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvtxtDueDateEdit" ValidationGroup="VGTask" ControlToValidate="txtDueDateEdit"
                                                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                                        ErrorMessage="Please enter due date"></asp:RequiredFieldValidator>
                                                    <asp:ValidatorCalloutExtender ID="vceDueDateEdit" runat="server" TargetControlID="rfvtxtDueDateEdit"
                                                        PopupPosition="BottomLeft" HighlightCssClass="error" Enabled="True">
                                                    </asp:ValidatorCalloutExtender>
                                                    <asp:RegularExpressionValidator ID="revDueDateEdit" runat="server" ErrorMessage="Please enter valid due date. Eg:MM/DD/YYYY"
                                                        ValidationGroup="VGTask" ControlToValidate="txtDueDateEdit" ForeColor="#FF3300"
                                                        Text="*" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                                                        Display="None"></asp:RegularExpressionValidator>
                                                    <asp:ValidatorCalloutExtender ID="vcetxtDueDateEdit" runat="server" TargetControlID="revDueDateEdit"
                                                        PopupPosition="BottomLeft" HighlightCssClass="error">
                                                    </asp:ValidatorCalloutExtender>
                                                </td>
                                                <td style="width: 112px;" align="right">
                                                    <label class="input-label required">
                                                        Date Completed :</label>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="chkDateCompletedEdit" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Comments :</label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtCommentsEdit" Width="135px"
                                                        TextMode="MultiLine" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="4">
                                                    <hr style="border: 1px solid rgb(242, 242, 242);" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 68px;" align="right">
                                                    <label class="input-label">
                                                        Created :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox CssClass="inputTextbox cursordisable" autocomplete="off" ID="txtCreatedEdit"
                                                        runat="server"></asp:TextBox>
                                                </td>
                                                <td style="width: 84px;" align="right">
                                                    <label class="input-label">
                                                        Created By :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox CssClass="inputTextbox cursordisable" autocomplete="off" ID="txtCreatedByEdit"
                                                        runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Modified :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox CssClass="inputTextbox cursordisable" autocomplete="off" ID="txtModifiedEdit"
                                                        runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Modified By :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox CssClass="inputTextbox cursordisable" autocomplete="off" ID="txtModifiedByEdit"
                                                        runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                        <div class="toolBar" style="padding: 4px; margin: 6px; width: 97%;">
                                            <span class="fltrt">
                                                <asp:Button ID="btnTaskUpdate" ValidationGroup="VGTask" CssClass="buttonGreen medium"
                                                    runat="server" Text="Update" CausesValidation="true" OnClick="btnTaskUpdate_Click" />
                                                <asp:LinkButton ID="lnkTaskCancelUpdate" CssClass="secondary medium bottom" runat="server"
                                                    OnClick="lnkTaskCancelUpdate_Click">Cancel</asp:LinkButton></span>
                                        </div>
                                    </div>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <table style="width: 85%; margin: 0px auto;" class="tblgridName">
                                        <tr>
                                            <td align="right">
                                                <b>Type : </b>
                                            </td>
                                            <td>
                                                <%# Eval("Task_Type")%>
                                            </td>
                                            <td align="right">
                                                <b>Status : </b>
                                            </td>
                                            <td>
                                                <%# Eval("Status") %>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <b>Due Date : </b>
                                            </td>
                                            <td>
                                                <%#Convert.ToDateTime(Eval("Due_Date")).ToShortDateString()%>
                                            </td>
                                            <td align="right">
                                                <b>Date Completed : </b>
                                            </td>
                                            <td>
                                                <asp:CheckBox runat="server" CssClass="cursordisable" Enabled="false" ID="chkdate"
                                                    Checked='<%# Eval("Date_Completed") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <b>Comments : </b>
                                            </td>
                                            <td colspan="3">
                                                <%# Eval("Comments") %>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-Width="100px">
                                <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                                <ItemTemplate>
                                    <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" CommandArgument='<%# Eval("task_Id") %>'
                                        runat="server" RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                        OnClick="imgbtnEdit_Click" />
                                    <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                        CommandArgument='<%# Eval("task_Id") %>' ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                        OnClientClick="javascript:return confirm('Are you sure you want to delete?');"
                                        OnClick="imgBtnDelete_Click" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <div style="width: 100%; height: 50px; border: 0px; padding: 3px">
                                No record found.
                            </div>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <div class="buttons iefix-5 inline" visible="false" runat="server" id="DivbtnSaveCancel">
            <div class="toolBar" style="padding: 4px; display: none;">
                <span class="fltrt">
                    <asp:Button ID="btnSavePersonal" CssClass="buttonGreen medium" runat="server" Text="Save" />
                    <asp:LinkButton CssClass="secondary medium bottom" ID="lnkCancelPersonal" runat="server">Cancel</asp:LinkButton>
                </span>
            </div>
        </div>
        <div class="buttons iefix-5 inline" runat="server" id="DivbtnHistory">
            <div class="toolBar" style="padding: 4px;">
                <span class="fltlft">
                    <asp:Button ID="btnShowHistory" CssClass="buttonGreen medium" runat="server" Text="Show History"
                        OnClick="btnShowHistory_Click" />
                    <asp:LinkButton runat="server" Enabled="false" ToolTip="Previous" CssClass="link-next-prev btn-info btn-sm"
                        ID="lnkPrev"><<</asp:LinkButton>
                    <asp:LinkButton runat="server" Enabled="false" ToolTip="Next" CssClass="link-next-prev btn-info btn-sm"
                        ID="lnkNext">>></asp:LinkButton>
                    <asp:Button ID="btnShowCurrent" Enabled="false" CssClass="buttonGreen medium" runat="server"
                        Text="Show Current" OnClick="btnShowCurrent_Click" />
                </span><span class="fltrt">
                    <asp:Button ID="btnAddressUpdate" ValidationGroup="VGAddress" CssClass="buttonGreen medium"
                        runat="server" Text="Save" CausesValidation="true" />
                    <asp:LinkButton ID="lnkAddressCancel" CssClass="secondary medium bottom" runat="server">Cancel</asp:LinkButton></span>
            </div>
        </div>

    </div>

</div>
