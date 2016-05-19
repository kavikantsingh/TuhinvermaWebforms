<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDetermination.ascx.cs" Inherits="Module_Administration_ucDetermination" %>
<style>
    .heading {
        font-weight: bold;
    }

    .mrgn {
        margin-top: 4px !important;
        width: 135px;
    }
</style>
<div class="get-started-content" style="padding-bottom: 40px;">
    <div id="divAddNewbutton" runat="server" class="divLicenseInfon divaddnew">
        <span style="float: left; margin-right: 10px; margin-left: 10px;">
            <h4>Determination : Ready For Determination</h4>
        </span>
    </div>
    <div class="clear">
    </div>
    <div class="userHide searchBoxhidden">
        <div class="clear">
            <div class="close" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
            </div>
        </div>
        <fieldset class="PermitSearch" style="position: relative">
            <legend></legend>
            <table class="SearchTable boardinfo" align="center" style="height: 70px;">
                <tbody>
                    <tr>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                Assigned User :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:DropDownList ID="ddlAssignedUser" Style="width: 189px;" CssClass="DropdownList"
                                runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Tuhin Verma</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="right" style="vertical-align: middle; width: 137px;">
                            <label>
                                Originating Provider :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:DropDownList ID="ddlOriginatingProvider" Style="width: 189px;" CssClass="DropdownList"
                                runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="vertical-align: middle; width: 137px;">
                            <label>
                                Background Check # :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtBackgroundCheckNo" Style="width: 181px !important;" runat="server"
                                CssClass="inputTextBox" MaxLength="50"></asp:TextBox>
                        </td>
                        <td align="right" style="vertical-align: middle; width: 137px;">
                            <label>
                                Provider Type :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:DropDownList ID="DropDownList1" Style="width: 189px;" CssClass="DropdownList"
                                runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                Last Name :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtLastName" Style="width: 181px !important;" runat="server" CssClass="inputTextbox capitalize-text"
                                MaxLength="14"></asp:TextBox>
                        </td>
                        <td align="right" style="vertical-align: middle; width: 137px;">
                            <label>
                                Needs Approval :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:DropDownList ID="ddlNeedsApproval" Style="width: 189px;" CssClass="DropdownList"
                                runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                SS # :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtSSN" Style="width: 181px !important;" runat="server" CssClass="inputTextBox ssn"
                                MaxLength="50"></asp:TextBox>
                        </td>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                Wait Reason :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:DropDownList ID="ddlWaitReason" Style="width: 189px;" CssClass="DropdownList"
                                runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                Ready Date :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtReadyDate" Style="width: 181px !important;" runat="server" CssClass="inputTextBox calender"
                                MaxLength="50"></asp:TextBox>
                        </td>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                To :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtT0" Style="width: 181px !important;" runat="server" CssClass="inputTextBox calender"
                                MaxLength="50"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                TCN :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtTCN" Style="width: 181px !important;" runat="server" CssClass="inputTextBox"
                                MaxLength="50"></asp:TextBox>
                        </td>
                        <td align="right" style="vertical-align: middle;" colspan="2"></td>
                    </tr>
                </tbody>
            </table>
            <div style="width: 90%; margin: 0 auto;">
                <span class="fltrt">
                    <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search"
                        OnClick="btnSearch_Click" ValidationGroup="vgSerch" CausesValidation="true" />
                    <asp:LinkButton ID="btnSearchCancel" CssClass="secondary small" runat="server" Text="Cancel"
                        OnClick="btnSearchCancel_Click"></asp:LinkButton>
                </span>
            </div>
        </fieldset>
    </div>
    <div class="clear">
    </div>
    <div class="gridUpperDiv">
        <a class="down_arrow"></a><span class="fltlt">
            <asp:LinkButton ID="lnkShowAll" CssClass="" runat="server" OnClick="lnkArchive_Click">Show All</asp:LinkButton>
        </span>
        <div class="fltrt rightIcon">
            <a title="find" href="javascript:void()" onclick="javascript:showDivSlide('.userHide');hideDivSlide('.searchBbutton');">
                <img src="../../App_Themes/Theme1/images/search_icon.png" /></a>
        </div>
    </div>
    <div runat="server" id="divGridView" visible="true" class="">
        <div class="divLicenseInfo">
            <asp:GridView ID="gvDetermination" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                CssClass="index brdr radius mrgnTp4 pdng2 grid" Width="100%" CellPadding="5"
                ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Assigned To">
                        <ItemStyle />
                        <EditItemTemplate>
                            <div runat="server" id="divRejectedFingerprint" visible="false">
                                <div class="divGridEdit" style="border: 1px solid rgb(232, 232, 232) !important; width: 75%; margin: 0px auto;">
                                    <p style="font-size: 15px; font-weight: bold; width: 99%; margin: 0px auto; background-color: aliceblue; height: 25px; padding-top: 5px;">
                                        <span>Rejected Fingerprint</span>
                                    </p>
                                    <div style="border: 1px solid rgb(228, 228, 228); width: 50%; margin: 10px auto; height: 62px;">
                                        <p style="margin: 9px 5px 5px 5px; font-size: 16px; line-height: 23px;">
                                            <span>Tuhin Verma, 233-45-4522,01/01/1980 </span>
                                        </p>
                                    </div>
                                    <table style="margin: 5px auto; border: 1px solid rgb(228, 228, 228) !important; width: 50%; padding: 5px;">
                                        <tr>
                                            <td align="left" class="colWidh1" style="padding: 5px;">
                                                <b>Rejected Fingerprint</b>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="colWidh1" style="padding: 5px;">
                                                <label class="heading input-label required">
                                                    TCN :</label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlTCN" Width="200px" CssClass="DropdownList" runat="server">
                                                    <asp:ListItem>T100657b</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="colWidh1" style="padding: 5px;">
                                                <label class="heading input-label required">
                                                    Taken Date :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="inputTextbox calender" Width="194px" autocomplete="off" ID="txtTakenDate"
                                                    Text="03/15/2015" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="colWidh1" style="padding: 5px;">
                                                <label class="heading input-label required">
                                                    State TCR :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="inputTextbox" Width="194px" autocomplete="off" ID="txtStateTCR"
                                                    Text="" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="colWidh1" style="padding: 5px;">
                                                <label class="heading input-label required">
                                                    State Rejected Date :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="inputTextbox calender" Width="194px" autocomplete="off" ID="txtStateRejectedDate"
                                                    Text="" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="colWidh1" style="padding: 5px;">
                                                <label class="heading input-label required">
                                                    Federal TCR :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="inputTextbox" Width="194px" autocomplete="off" ID="txtFederalTCR"
                                                    Text="" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="colWidh1" style="padding: 5px;">
                                                <label class="heading input-label required">
                                                    Federal Rejected Date :</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="inputTextbox calender" Width="194px" autocomplete="off" ID="txtFederalRejectedDate"
                                                    Text="" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                    <div class="toolBar" style="padding: 4px; margin: 7px;">
                                        <span class="fltrt">
                                            <asp:Button ID="btnFingerPrintSave" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                                                runat="server" Text="Save" CausesValidation="true" OnClick="btnFingerPrintSave_Click" />
                                            <asp:LinkButton ID="btnFingerPrintSaveCancel" CssClass="secondary medium bottom"
                                                runat="server" OnClick="btnFingerPrintSaveCancel_Click">Cancel</asp:LinkButton></span>
                                    </div>
                                </div>
                            </div>
                            <div runat="server" id="dviAddDetermination" visible="false">
                                <div class="divGridEdit" style="border: 1px solid rgb(232, 232, 232) !important; width: 85%; margin: 0px auto;">
                                    <p style="font-size: 15px; font-weight: bold; width: 99%; margin: 0px auto; background-color: aliceblue; height: 25px; padding-top: 5px;">
                                        <span>Enter Background Check Determination</span>
                                    </p>
                                    <div style="border: 1px solid rgb(228, 228, 228); width: 95%; margin: 10px auto;">
                                        <p style="margin: 9px 5px 5px 5px; font-size: 16px; line-height: 23px;">
                                            <span>Background Check # 100657</span>
                                            <br />
                                            <span>Tuhin Verma, 233-45-4522,01/01/1980 </span>
                                            <br />
                                            <span>No Recorded aliases </span>
                                        </p>
                                    </div>
                                    <p style="margin-left: 10px; margin-top: 15px;">
                                        <span><b>Registry Result Summary </b></span>
                                    </p>
                                    <p style="margin-left: 10px; margin-top: 15px;">
                                        <span>Wait Reason:</span>
                                        <asp:DropDownList ID="ddlWaitReason" Width="200px" CssClass="ddlWaitReason" runat="server">
                                            <asp:ListItem>Select</asp:ListItem>
                                            <asp:ListItem>Pending Verification</asp:ListItem>
                                            <asp:ListItem>Fingerprint not valid</asp:ListItem>
                                        </asp:DropDownList>
                                    </p>
                                    <fieldset style="width: 95%; border: 1px solid rgb(234, 234, 234); margin-top: 15px;">
                                        <legend style="font-size: 14px; font-weight: bold">Eligibility Determination </legend>
                                        <table style="margin: 5px auto; width: 98%; padding: 6px;">
                                            <tr>
                                                <td align="right" class="colWidh1" style="padding: 5px;">
                                                    <label class="heading input-label required">
                                                        State Determination :</label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList AutoPostBack="true" ID="ddlStateDetermination" Width="200px" CssClass="DropdownList"
                                                        runat="server" OnSelectedIndexChanged="ddlStateDetermination_SelectedIndexChanged">
                                                        <asp:ListItem Value="0">Eligible</asp:ListItem>
                                                        <asp:ListItem Value="1">Not Eligible</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td align="right" class="colWidh1" style="padding: 5px;">
                                                    <label class="heading input-label">
                                                        Comments :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox CssClass="inputTextbox" TextMode="MultiLine" Width="194px" autocomplete="off"
                                                        ID="txtComments" Text="" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Button ID="btnAddStateComment" CssClass="buttonGreen small" Width="150px" runat="server"
                                                        Text="Add State Comment" />
                                                    <asp:Button ID="btnViewAll" CssClass="secondary small" runat="server" Text="View All (0)" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" class="colWidh1" style="padding: 5px;">
                                                    <label class="heading input-label required">
                                                        Federal Determination :</label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList AutoPostBack="true" ID="ddlFederalDetermination" Width="200px"
                                                        CssClass="DropdownList" runat="server" OnSelectedIndexChanged="ddlFederalDetermination_SelectedIndexChanged">
                                                        <asp:ListItem Value="1">Not Eligible</asp:ListItem>
                                                        <asp:ListItem Value="0">Eligible</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td align="right" class="colWidh1" style="padding: 5px;">
                                                    <label class="heading input-label">
                                                        Comments :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox CssClass="inputTextbox" TextMode="MultiLine" Width="194px" autocomplete="off"
                                                        ID="txtCommentsFederal" Text="" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Button ID="btnAddFederalComments" CssClass="buttonGreen small" runat="server"
                                                        Width="150px" Text="Add Federal Comment" />
                                                    <asp:Button ID="btnViewAllFederal" CssClass="secondary small" runat="server" Text="View All (0)" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" class="colWidh1" style="padding: 5px;">
                                                    <label class="heading input-label">
                                                        Final Determination :</label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblFinalDetermination" runat="server" Text="Not Eligible" ForeColor="Red"></asp:Label>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td align="right" class="colWidh1" style="padding: 5px;">
                                                    <label class="heading input-label required">
                                                        Disqualified Until Date :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox CssClass="inputTextbox calender" Width="194px" autocomplete="off" ID="txtDisqualifiedUntilDate"
                                                        Text="" runat="server"></asp:TextBox>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td align="right" class="colWidh1" style="padding: 5px;">
                                                    <label class="heading input-label">
                                                        Comments :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox CssClass="inputTextbox" TextMode="MultiLine" Width="194px" autocomplete="off"
                                                        ID="txtFinalComments" Text="" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Button ID="btnAddFinalComments" Width="150px" CssClass="buttonGreen small" runat="server"
                                                        Text="Add Final Comment" />
                                                    <asp:Button ID="btnViewAllFinel" CssClass="secondary small" runat="server" Text="View All (0)" />
                                                </td>
                                            </tr>
                                        </table>
                                    </fieldset>
                                    <div class="toolBar" style="padding: 4px; margin: 7px;">
                                        <span class="fltlft" style="margin-top: 5px;">
                                            <asp:Button ID="btnPersonSummury" ValidationGroup="vgAffidavit" CssClass="buttonGreen small"
                                                runat="server" Text="Person Summary" CausesValidation="true" />
                                        </span><span class="fltrt">
                                            <asp:Button ID="btnDeterminationSave" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                                                runat="server" Text="Save" CausesValidation="true" OnClick="btnDeterminationSave_Click" />
                                            <asp:LinkButton ID="btnDeterminationSaveCancel" CssClass="secondary medium bottom"
                                                runat="server" OnClick="btnDeterminationSaveCancel_Click">Cancel</asp:LinkButton></span>
                                    </div>
                                </div>
                            </div>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <%-- <%# Eval("College_Name")%>--%>
                            Tuhin Verma
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Background Check #">
                        <ItemStyle />
                        <ItemTemplate>
                            100657
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="TCN">
                        <ItemStyle />
                        <ItemTemplate>
                            T100657b
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Provider">
                        <ItemStyle />
                        <ItemTemplate>
                            APRILS VILLA LLC.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="First Name">
                        <ItemStyle />
                        <ItemTemplate>
                            Tuhin
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name">
                        <ItemStyle />
                        <ItemTemplate>
                            Verma
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SS #">
                        <ItemStyle />
                        <ItemTemplate>
                            233-45-4522
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Days Since Submit">
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            33
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Ready Date">
                        <ItemStyle />
                        <ItemTemplate>
                            02/10/2015
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="177px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                        <ItemTemplate>
                            <asp:Button ID="btnEnterDetermination" Width="135px" CssClass="buttonGreen small"
                                CommandArgument="1" runat="server" Text="Enter Determination" CausesValidation="true"
                                OnClick="btnEnterDetermination_Click" RowIndex='<%# Container.DisplayIndex %>' />
                            <br />
                            <span style="padding-bottom: 10px;"></span>
                            <asp:Button ID="btnRejectedFingerprint" CssClass="buttonGreen small mrgn" CommandArgument="1"
                                runat="server" Text="Rejected Fingerprint" CausesValidation="true" OnClick="btnRejectedFingerprint_Click"
                                RowIndex='<%# Container.DisplayIndex %>' />
                            <br />
                            <span style="padding-bottom: 10px;"></span>
                            <asp:Button ID="btnClose" CssClass="secondary small mrgn" CommandArgument="1" runat="server"
                                Text="Close" />
                            <%--  <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?');"
                                OnClick="imgBtnDelete_Click" />--%>
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
