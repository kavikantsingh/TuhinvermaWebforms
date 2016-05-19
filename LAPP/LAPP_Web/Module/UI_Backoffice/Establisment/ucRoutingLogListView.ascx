<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucRoutingLogListView.ascx.cs"
    Inherits="ucRoutingLogListView" %>
<style>
    #divAddPanelQ1onGridAddNew .tdlocatation {
        width: 130px;
    }

    divAddPanelQ1onGridAddNew. calwidth {
        width: 86px;
    }

    .routinddlwitdh {
        width: 143px;
    }

    @-moz-document url-prefix() {
        .expinputfirefox {
            color: red;
        }

        .routinddlwitdh {
            width: 143px;
        }
    }
</style>
<div class=" clearfix">
    <div class="textBoxAlign">
        <div class="clear">
            <div style="margin-top: 10px; margin-right: 0px; padding-bottom: 31px; height: 15px;"
                class="divLicenseInfon divaddnew" id="divAddButtonQ1" runat="server">
                <span style="float: left;">
                    <h3>Route List
                    </h3>
                </span><span style="float: right;">
                    <asp:Button ID="btnAddNew" ValidationGroup="vgAffidavit" CssClass="buttonGreen small"
                        runat="server" Text="Add New" CausesValidation="true" OnClick="btnAddNew_Click" /></span>
            </div>
        </div>
        <div class="divLicenseInfon" id="divAddPanelQ1" runat="server" visible="false">
            <asp:UpdatePanel ID="uppanel" runat="server">
                <ContentTemplate>
                    <fieldset class="" style="width: 98%; margin: 10px auto; border: 1px solid #ddd; border-radius: 4px; padding: 10px;">
                        <table class=" boardinfo" align="center">
                            <tbody>
                                <tr>
                                    <td align="right">
                                        <label class="input-label required">
                                            Route Name :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtRoutName" Style="width: 180px !important;" runat="server" CssClass="inputTextBox"
                                            MaxLength="50"></asp:TextBox>
                                    </td>
                                    <td align="right" style="width: 145px;">
                                        <label class="input-label required">
                                            Route Created On :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtRouteCreatedOn" runat="server" placeholder="MM/DD/YYYY" Style="width: 180px !important;"
                                            CssClass="inputTextbox calender" MaxLength="50"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label">
                                            Finalize Route :
                                        </label>
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="chkFinalizeRoute" runat="server" />
                                    </td>
                                    <td align="right">
                                        <label class="input-label">
                                            Finalize On :
                                        </label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtFinalizeOn" Style="width: 180px !important;" placeholder="MM/DD/YYYY"
                                            runat="server" CssClass="inputTextBox calender" MaxLength="50"></asp:TextBox>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div style="width: 90%; margin: 0 auto; height: 12px; padding-top: 12px;">
                            <span class="fltrt">
                                <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Submit"
                                    ValidationGroup="vgSerch" CausesValidation="true" OnClick="btnSearch_Click" />
                                <asp:Button ID="btnExecute" CssClass="secondary small bottom" runat="server" Text="Cancel"
                                    ValidationGroup="vgExecute" CausesValidation="true" OnClick="btnExecute_Click" />
                            </span>
                        </div>
                    </fieldset>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="divquestion divCharacterReferences">
            <asp:GridView ID="gvQuestion1" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                CssClass="index  grid inputtext" Width="100%" CellPadding="5" ForeColor="#333333"
                GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Route Name">
                        <ItemStyle />
                        <EditItemTemplate>
                            <asp:UpdatePanel ID="uppanel2" runat="server">
                                <ContentTemplate>
                                    <div class="divGridEdit" id="pnlMainEdit" runat="server" visible="false">
                                        <fieldset class=" " style="width: 98%; margin: 10px auto; border: 1px solid #ddd; border-radius: 4px; padding: 10px;">
                                            <table class=" boardinfo" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td align="right">
                                                            <label class="input-label required">
                                                                Route Name :</label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtRoutNameEdit" Text="NV to AL" Style="width: 180px !important;"
                                                                runat="server" CssClass="inputTextBox" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                        <td align="right" style="width: 145px;">
                                                            <label class="input-label required">
                                                                Route Created On :</label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtRouteCreatedOnEdit" Text="01/01/2014" placeholder="MM/DD/YYYY"
                                                                runat="server" Style="width: 180px !important;" CssClass="inputTextbox calender"
                                                                MaxLength="50"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <label class="input-label">
                                                                Finalize Route :
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:CheckBox ID="chkFinalizeRouteEdit" runat="server" />
                                                        </td>
                                                        <td align="right">
                                                            <label class="input-label">
                                                                Finalize On :
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtFinalizeOnEdit" Text="01/01/2014" placeholder="MM/DD/YYYY" Style="width: 180px !important;"
                                                                runat="server" CssClass="inputTextBox calender" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </fieldset>
                                        <div style="width: 90%; margin: 0 auto; height: 12px; padding-top: 12px;">
                                            <span class="fltrt">
                                                <asp:Button ID="btnUpdateQ1" ValidationGroup="vgAffidavit" CssClass="buttonGreen small"
                                                    runat="server" Text="Update" CausesValidation="true" OnClick="btnUpdateQ1_Click" />
                                                <asp:LinkButton ID="lnkCancelQ1Update" CssClass="secondary small bottom" runat="server"
                                                    OnClick="lnkCancelQ1Update_Click">Cancel</asp:LinkButton></span>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <div id="OpenonAddnew" runat="server" visible="false">
                                <div class=" clearfix">
                                    <div class="textBoxAlign" id="divconfrenceshowingrid" runat="server">
                                        <div id="divAddButtonDetails" runat="server" style="margin-top: 10px; height: 15px; margin-right: 0px; padding-bottom: 31px;"
                                            class="divLicenseInfon divaddnew">
                                            <span style="float: left;">
                                                <h3>Route List Detail</h3>
                                            </span><span style="float: right;">
                                                <asp:Button ID="btnAddNewRouteDetails" CssClass="buttonGreen small" runat="server"
                                                    Text="Add New" CausesValidation="true" OnClick="btnAddNewRouteDetails_Click" />
                                                <asp:Button ID="btnRouteDetailsCancel" CssClass="secondary small bottom" runat="server"
                                                    Text="Cancel" ValidationGroup="vgExecute" CausesValidation="true" OnClick="btnRouteDetailsCancel_Click" />
                                            </span>
                                        </div>
                                        <div style="margin: auto;">
                                            <asp:UpdatePanel ID="uppanel6" runat="server">
                                                <ContentTemplate>
                                                    <div class="divLicenseInfon" id="divAddPanelQ1onGridAddNew" runat="server" visible="false">
                                                        <fieldset class=" " style="width: 98%; margin: 10px auto; border: 1px solid #ddd; border-radius: 4px; padding: 10px;">
                                                            <table class=" boardinfo" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td align="right" style="width: 122px;" class="tdlocatation">
                                                                            <label class="input-label">
                                                                                Name :
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtName" Style="width: 165px;" runat="server" CssClass="inputTextBox"
                                                                                MaxLength="50"></asp:TextBox>
                                                                        </td>
                                                                        <td align="right" style="width: 138px;">
                                                                            <label class="input-label">
                                                                                Phone Number :
                                                                            </label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtPhoneNo" Style="width: 163px;" placeholder="(XXX) XXX-XXXX" runat="server"
                                                                                CssClass="inputTextBox phone_us" MaxLength="50"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="4">
                                                                            <table class=" tblApplReqForm5" style="width: 622px; margin: 0px auto;">
                                                                                <tr>
                                                                                    <td style="vertical-align: middle; width: 134px;" align="right">
                                                                                        <label class="input-label required">
                                                                                            Street :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td colspan="5">
                                                                                        <asp:TextBox ID="txtStreetonGridAddNew" runat="server" Width="486px" CssClass="calWidth"
                                                                                            MaxLength="500"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right">
                                                                                        <label class="input-label required">
                                                                                            City :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td style="width: 147px;" class="textcity">
                                                                                        <asp:TextBox ID="txtCityonGridAddNew" runat="server" Width="124px" CssClass="calWidth"
                                                                                            MaxLength="500"></asp:TextBox>
                                                                                    </td>
                                                                                    <td align="right" style="width: 52px;">
                                                                                        <label class="input-label required">
                                                                                            State :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td style="width: 106px;">
                                                                                        <asp:DropDownList ID="ddlStateonGridAddNew" runat="server" Width="98px" CssClass="inputTextbox">
                                                                                            <asp:ListItem>Nevada</asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                    <td align="right" style="width: 47px;">
                                                                                        <label class="input-label required">
                                                                                            Zip :
                                                                                        </label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="txtZiponGridAddNew" placeholder="xxxxx-xxxx or xxxxx" runat="server"
                                                                                            Width="118px" CssClass="calWidth" MaxLength="500"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                            <div style="width: 97%; margin: 0 auto;">
                                                                <span class="fltrt">
                                                                    <asp:Button ID="btnListViewDetailsSave" CssClass="buttonGreen small" runat="server"
                                                                        Text="Save" ValidationGroup="vgSerch" CausesValidation="true" OnClick="btnListViewDetailsSave_Click" />
                                                                    <asp:Button ID="btnListViewDetailsCancel" CssClass="secondary small bottom" runat="server"
                                                                        Text="Cancel" ValidationGroup="vgExecute" CausesValidation="true" OnClick="btnListViewDetailsCancel_Click" />
                                                                </span>
                                                            </div>
                                                        </fieldset>
                                                    </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                            <div class="divquestion divCharacterReferences">
                                                <asp:GridView ID="gvQuestion1onGridAddNew" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                    CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Name">
                                                            <ItemStyle />
                                                            <EditItemTemplate>
                                                                <div class="divGridEdit">
                                                                    <asp:UpdatePanel ID="uppanel3" runat="server">
                                                                        <ContentTemplate>
                                                                            <div id="pnlDetailInEditmode" runat="server" visible="false">
                                                                                <fieldset class=" " style="width: 98%; margin: 10px auto; border: 1px solid #ddd; border-radius: 4px; padding: 10px;">
                                                                                    <table class=" boardinfo" align="center">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td align="right" style="width: 138px;">
                                                                                                    <label class="input-label">
                                                                                                        Name :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtNameEdit" Style="width: 165px;" Text="John" runat="server" CssClass="inputTextBox"
                                                                                                        MaxLength="50"></asp:TextBox>
                                                                                                </td>
                                                                                                <td align="right" style="width: 138px;">
                                                                                                    <label class="input-label">
                                                                                                        Phone Number :
                                                                                                    </label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtPhoneNoEdit" Style="width: 135px;" placeholder="(XXX) XXX-XXXX"
                                                                                                        Text="(708)-475-8521" runat="server" CssClass="inputTextBox phone_us" MaxLength="50"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td colspan="4">
                                                                                                    <table class=" tblApplReqForm5" style="width: 631px; margin: 0px auto;">
                                                                                                        <tr>
                                                                                                            <td style="vertical-align: middle; width: 133px;" align="right">
                                                                                                                <label class="input-label required">
                                                                                                                    Street :
                                                                                                                </label>
                                                                                                            </td>
                                                                                                            <td colspan="5">
                                                                                                                <asp:TextBox ID="txtStreetonGridAddNewEdit" runat="server" Width="470px" Text="56 Wer, street 1"
                                                                                                                    CssClass="calWidth" MaxLength="500"></asp:TextBox>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td align="right">
                                                                                                                <label class="input-label required">
                                                                                                                    City :
                                                                                                                </label>
                                                                                                            </td>
                                                                                                            <td style="width: 132px;">
                                                                                                                <asp:TextBox ID="txtCityonGridAddNewEdit" runat="server" Width="124px" Text="Reno"
                                                                                                                    CssClass="calWidth" MaxLength="500"></asp:TextBox>
                                                                                                            </td>
                                                                                                            <td align="right" style="width: 52px;">
                                                                                                                <label class="input-label required">
                                                                                                                    State :
                                                                                                                </label>
                                                                                                            </td>
                                                                                                            <td style="width: 106px;">
                                                                                                                <asp:DropDownList ID="ddlStateonGridAddNewEdit" runat="server" Width="98px" CssClass="inputTextbox">
                                                                                                                    <asp:ListItem>Nevada</asp:ListItem>
                                                                                                                </asp:DropDownList>
                                                                                                            </td>
                                                                                                            <td align="right" style="width: 47px;">
                                                                                                                <label class="input-label required">
                                                                                                                    Zip :
                                                                                                                </label>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <asp:TextBox ID="txtZiponGridAddNewEdit" placeholder="xxxxx-xxxx or xxxxx" runat="server"
                                                                                                                    Text="02145" Width="118px" CssClass="calWidth" MaxLength="500"></asp:TextBox>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </fieldset>
                                                                                <div style="padding: 4px; margin: 4px; overflow: hidden;">
                                                                                    <span class="fltrt">
                                                                                        <asp:Button ID="btnUpdateQ1onGridAddNew" ValidationGroup="vgAffidavit" CssClass="buttonGreen small"
                                                                                            runat="server" Text="Update" CausesValidation="true" OnClick="btnUpdateQ1onGridAddNew_Click" />
                                                                                        <asp:LinkButton ID="lnkCancelQ1UpdateonGridAddNew" CssClass="secondary small bottom"
                                                                                            runat="server" OnClick="lnkCancelQ1UpdateonGridAddNew_Click">Cancel</asp:LinkButton></span>
                                                                                </div>
                                                                            </div>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                    <div id="pnlInspectionDetailGrid" runat="server" visible="false">
                                                                        <div class="textBoxAlign" id="divconfrenceshowingrid" runat="server">
                                                                            <asp:UpdatePanel ID="uppanel4" runat="server">
                                                                                <ContentTemplate>
                                                                                    <div id="divAddNewbtnInspectionDetail" runat="server" style="margin-top: 10px; height: 15px; margin-right: 0px; padding-bottom: 31px;"
                                                                                        class="divLicenseInfon divaddnew">
                                                                                        <span style="float: left;">
                                                                                            <h3>Inspection Detail</h3>
                                                                                        </span><span style="float: right;">
                                                                                            <asp:Button ID="btnAddNewInspectionDetails" ValidationGroup="vgAffidavit" CssClass="buttonGreen small"
                                                                                                runat="server" Text="Add New" CausesValidation="true" OnClick="btnAddNewInspectionDetails_Click" />
                                                                                            <asp:Button ID="btnAddNewInspectionDetailsCancel" CssClass="secondary small bottom"
                                                                                                runat="server" Text="Cancel" ValidationGroup="vgExecute" CausesValidation="true"
                                                                                                OnClick="btnInspectionDetailsCancelGrid_Click" />
                                                                                        </span>
                                                                                    </div>
                                                                                    <div style="margin: auto;">
                                                                                        <div class="divLicenseInfon" id="divAddNewInspectionPnl" runat="server" visible="false">
                                                                                            <fieldset class=" " style="width: 98%; margin: 10px auto; border: 1px solid #ddd; border-radius: 4px; padding: 10px;">
                                                                                                <table class=" boardinfo" align="center">
                                                                                                    <tbody>
                                                                                                        <tr>
                                                                                                            <td align="right" style="width: 116px;" class="tdlocatation">
                                                                                                                <label class="input-label">
                                                                                                                    Inspection Date :
                                                                                                                </label>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <asp:TextBox ID="txtInspectionDate" runat="server" CssClass="inputTextBox" MaxLength="50"></asp:TextBox>
                                                                                                            </td>
                                                                                                            <td align="right" style="width: 116px;" class="tdlocatation">
                                                                                                                <label class="input-label">
                                                                                                                    Inspection Done By :
                                                                                                                </label>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <asp:TextBox ID="txtInspectionDoneBy" runat="server" CssClass="inputTextBox" MaxLength="50"></asp:TextBox>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td align="right" style="width: 116px;" class="tdlocatation">
                                                                                                                <label class="input-label">
                                                                                                                    Inspection Due :
                                                                                                                </label>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <asp:DropDownList ID="ddInpectionDue" CssClass="routinddlwitdh" runat="server">
                                                                                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                                                                    <asp:ListItem Value="0">Month3</asp:ListItem>
                                                                                                                    <asp:ListItem Value="1">Month6</asp:ListItem>
                                                                                                                </asp:DropDownList>
                                                                                                            </td>
                                                                                                            <td align="right" style="width: 132px;" class="tdlocatation">
                                                                                                                <label class="input-label">
                                                                                                                    Next Inspection Date :
                                                                                                                </label>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <asp:TextBox ID="txtNextInspectionDate" runat="server" CssClass="inputTextBox" MaxLength="50"></asp:TextBox>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td align="right" style="width: 116px;" class="tdlocatation">
                                                                                                                <label class="input-label">
                                                                                                                    Result :
                                                                                                                </label>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <asp:DropDownList ID="ddlResult" CssClass="routinddlwitdh" runat="server">
                                                                                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                                                                    <asp:ListItem Value="0">Satisfactory</asp:ListItem>
                                                                                                                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                                                                                                                    <asp:ListItem Value="2">Closed</asp:ListItem>
                                                                                                                </asp:DropDownList>
                                                                                                            </td>
                                                                                                            <td align="right" style="width: 116px;" class="tdlocatation">
                                                                                                                <label class="input-label">
                                                                                                                    Comment :
                                                                                                                </label>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <asp:TextBox ID="txtComment" runat="server" CssClass="inputTextBox" MaxLength="50"></asp:TextBox>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                                <div style="width: 97%; margin: 0 auto;">
                                                                                                    <span class="fltrt">
                                                                                                        <asp:Button ID="btnInspectionDetailsSave" CssClass="buttonGreen small" runat="server"
                                                                                                            Text="Submit" ValidationGroup="vgSerch" CausesValidation="true" OnClick="btnInspectionDetailsSave_Click" />
                                                                                                        <asp:Button ID="btnInspectionDetailsCancel" CssClass="secondary small bottom" runat="server"
                                                                                                            Text="Cancel" ValidationGroup="vgExecute" CausesValidation="true" OnClick="btnInspectionDetailsCancel_Click" />
                                                                                                    </span>
                                                                                                </div>
                                                                                            </fieldset>
                                                                                        </div>
                                                                                </ContentTemplate>
                                                                            </asp:UpdatePanel>
                                                                            <div class="divquestion divCharacterReferences">
                                                                                <asp:GridView ID="gvInspectionDetails" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                                                                    CssClass="index  grid" Width="100%" CellPadding="5" ForeColor="#333333" GridLines="None">
                                                                                    <AlternatingRowStyle BackColor="White" />
                                                                                    <Columns>
                                                                                        <asp:TemplateField HeaderText="Inspection Date">
                                                                                            <ItemStyle />
                                                                                            <EditItemTemplate>
                                                                                                <asp:UpdatePanel ID="uppanel5" runat="server">
                                                                                                    <ContentTemplate>
                                                                                                        <div class="divGridEdit">
                                                                                                            <fieldset class=" " style="width: 98%; margin: 10px auto; border: 1px solid #ddd; border-radius: 4px; padding: 10px;">
                                                                                                                <table class=" boardinfo" align="center">
                                                                                                                    <tbody>
                                                                                                                        <tr>
                                                                                                                            <td align="right" style="width: 116px;" class="tdlocatation">
                                                                                                                                <label class="input-label">
                                                                                                                                    Inspection Date :
                                                                                                                                </label>
                                                                                                                            </td>
                                                                                                                            <td>
                                                                                                                                <asp:TextBox ID="txtInspectionDateEdit" Text="11/11/2014" runat="server" CssClass="inputTextBox"
                                                                                                                                    MaxLength="50"></asp:TextBox>
                                                                                                                            </td>
                                                                                                                            <td align="right" style="width: 116px;" class="tdlocatation">
                                                                                                                                <label class="input-label">
                                                                                                                                    Inspection Done By :
                                                                                                                                </label>
                                                                                                                            </td>
                                                                                                                            <td>
                                                                                                                                <asp:TextBox ID="txtInspectionDoneByEdit" Text="John" runat="server" CssClass="inputTextBox"
                                                                                                                                    MaxLength="50"></asp:TextBox>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td align="right" style="width: 116px;" class="tdlocatation">
                                                                                                                                <label class="input-label">
                                                                                                                                    Inspection Due :
                                                                                                                                </label>
                                                                                                                            </td>
                                                                                                                            <td>
                                                                                                                                <asp:DropDownList ID="ddlInspectionDueEdit" CssClass="routinddlwitdh" runat="server">
                                                                                                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                                                                                    <asp:ListItem Value="0">Month3</asp:ListItem>
                                                                                                                                    <asp:ListItem Value="1">Month6</asp:ListItem>
                                                                                                                                </asp:DropDownList>
                                                                                                                            </td>
                                                                                                                            <td align="right" style="width: 135px;" class="tdlocatation">
                                                                                                                                <label class="input-label">
                                                                                                                                    Next Inspection Date :
                                                                                                                                </label>
                                                                                                                            </td>
                                                                                                                            <td>
                                                                                                                                <asp:TextBox ID="txtNextInspectionDateEdit" runat="server" CssClass="inputTextBox"
                                                                                                                                    MaxLength="50"></asp:TextBox>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td align="right" style="width: 116px;" class="tdlocatation">
                                                                                                                                <label class="input-label">
                                                                                                                                    Result :
                                                                                                                                </label>
                                                                                                                            </td>
                                                                                                                            <td>
                                                                                                                                <asp:DropDownList ID="ddlResultEdit" CssClass="routinddlwitdh" runat="server">
                                                                                                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                                                                                    <asp:ListItem Value="0">Satisfactory</asp:ListItem>
                                                                                                                                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                                                                                                                                    <asp:ListItem Value="2">Closed</asp:ListItem>
                                                                                                                                </asp:DropDownList>
                                                                                                                            </td>
                                                                                                                            <td align="right" style="width: 116px;" class="tdlocatation">
                                                                                                                                <label class="input-label">
                                                                                                                                    Comment :
                                                                                                                                </label>
                                                                                                                            </td>
                                                                                                                            <td>
                                                                                                                                <asp:TextBox ID="txtCommentEdit" Text="SSS" runat="server" CssClass="inputTextBox"
                                                                                                                                    MaxLength="50"></asp:TextBox>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                    </tbody>
                                                                                                                </table>
                                                                                                            </fieldset>
                                                                                                        </div>
                                                                                                        <div style="padding: 4px; margin: 4px; overflow: hidden;">
                                                                                                            <span class="fltrt">
                                                                                                                <asp:Button ID="btnInspectionDetailUpdate" ValidationGroup="vgAffidavit" CssClass="buttonGreen small"
                                                                                                                    runat="server" Text="Update" CausesValidation="true" OnClick="btnInspectionDetailUpdate_Click" />
                                                                                                                <asp:LinkButton ID="lnkInspectionDetailUpdateCancel" CssClass="secondary small bottom"
                                                                                                                    runat="server" OnClick="lnkInspectionDetailUpdateCancel_Click">Cancel</asp:LinkButton></span>
                                                                                                        </div>
                                                                                                    </ContentTemplate>
                                                                                                </asp:UpdatePanel>
                                                                                            </EditItemTemplate>
                                                                                            <ItemTemplate>
                                                                                                11/11/2014
                                                                                            </ItemTemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Next Inspection Date">
                                                                                            <ItemStyle />
                                                                                            <ItemTemplate>
                                                                                                11/12/2014
                                                                                            </ItemTemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Inspection Done By">
                                                                                            <ItemStyle />
                                                                                            <ItemTemplate>
                                                                                                John
                                                                                            </ItemTemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Result">
                                                                                            <ItemStyle />
                                                                                            <ItemTemplate>
                                                                                                Satisfactory
                                                                                            </ItemTemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Comment">
                                                                                            <ItemStyle />
                                                                                            <ItemTemplate>
                                                                                                SSS
                                                                                            </ItemTemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField ItemStyle-Width="100px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                                                                                            <ItemStyle VerticalAlign="Middle" CssClass="aligncenter" />
                                                                                            <ItemTemplate>
                                                                                                <span class="fltrt" style="width: 90px;">
                                                                                                    <asp:ImageButton ID="imgbtnEditInspectionDateail" CssClass="imgDelete" CommandArgument="1"
                                                                                                        runat="server" RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                                                        OnClick="imgbtnEditInspectionDateail_Click" />
                                                                                                    <asp:ImageButton ID="imgBtnDeleteInspectionDateail" CssClass="imgDelete" runat="server"
                                                                                                        ToolTip="Delete" CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                                                                                        OnClientClick="javascript:return confirm('Are you sure you want to delete?')"
                                                                                                        OnClick="imgBtnDeleteInspectionDateail_Click" /></span>
                                                                                            </ItemTemplate>
                                                                                        </asp:TemplateField>
                                                                                    </Columns>
                                                                                    <EmptyDataTemplate>
                                                                                        <div style="width: 100%; height: 200px; border: 0px; padding: 3px">
                                                                                            No record found.
                                                                                        </div>
                                                                                    </EmptyDataTemplate>
                                                                                </asp:GridView>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                </div> </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                John
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Street">
                                                            <ItemStyle />
                                                            <ItemTemplate>
                                                                56 Wer, street 1
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Phone No">
                                                            <ItemStyle />
                                                            <ItemTemplate>
                                                                (708)-475-8521
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="State">
                                                            <ItemStyle />
                                                            <ItemTemplate>
                                                                Nevada
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="City">
                                                            <ItemStyle />
                                                            <ItemTemplate>
                                                                Reno
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField ItemStyle-Width="380px">
                                                            <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                                                            <ItemTemplate>
                                                                <span class="fltrt">
                                                                    <asp:Button ID="btnInspectionDetails" RowIndex='<%# Container.DisplayIndex %>' CssClass="buttonGreen small"
                                                                        runat="server" Text="Inspection Details" CommandArgument="1" CausesValidation="true"
                                                                        OnClick="btnInspectionDetails_Click" />
                                                                    <asp:Button ID="btnSheets" CssClass="buttonGreen small" runat="server" Text="Inspection Sheet"
                                                                        CausesValidation="true" />
                                                                    <asp:Button ID="btnarchive" CssClass="secondary small bottom" runat="server" Text="Archive"
                                                                        CausesValidation="true" />
                                                                    <asp:ImageButton ID="imgbtnEditQ1onGridAddNew" CommandArgument="1" RowIndex='<%# Container.DisplayIndex %>'
                                                                        CssClass="imgDelete" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                                        OnClick="imgbtnEditQ1onGridAddNew_Click" />
                                                                    <asp:ImageButton ID="imgBtnDeleteQ1onGridAddNew" CssClass="imgDelete" runat="server"
                                                                        ToolTip="Delete" CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                                                        OnClientClick="javascript:return confirm('Are you sure you want to delete?')"
                                                                        OnClick="imgBtnDeleteQ1onGridAddNew_Click" />
                                                                </span>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <EmptyDataTemplate>
                                                        <div style="width: 100%; height: 200px; border: 0px; padding: 3px">
                                                            No record found.
                                                        </div>
                                                    </EmptyDataTemplate>
                                                </asp:GridView>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </EditItemTemplate>
                        <ItemTemplate>
                            NV to AL
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Route Created On">
                        <ItemStyle />
                        <ItemTemplate>
                            01/01/2014
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Finalize Route" HeaderStyle-CssClass="aligncenter">
                        <ItemStyle CssClass="aligncenter" />
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Finalized on">
                        <ItemStyle />
                        <ItemTemplate>
                            01/01/2014
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="120px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                        <ItemTemplate>
                            <span class="fltrt">
                                <asp:Button ID="btnDetails" CssClass="buttonGreen small" CommandArgument="1" runat="server"
                                    RowIndex='<%# Container.DisplayIndex %>' Text="Details" ValidationGroup="vgSerch"
                                    CausesValidation="true" OnClick="btnDetails_Click" />
                                <asp:ImageButton ID="imgbtnEditQ1" CssClass="imgDelete" CommandArgument="1" runat="server"
                                    RowIndex='<%# Container.DisplayIndex %>' ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                    OnClick="imgbtnEditQ1_Click" />
                                <asp:ImageButton ID="imgBtnDeleteQ1" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                    CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?')"
                                    OnClick="imgBtnDeleteQ1_Click" /></span>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div style="width: 100%; height: 200px; border: 0px; padding: 3px">
                        No record found.
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
    </div>
</div>
