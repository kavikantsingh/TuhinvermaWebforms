<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucBranches.ascx.cs"
    Inherits="ucBranches" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<style>
    .txtalgnrgt {
        text-align: right;
    }

    .textBoxAlign p label {
        padding-right: 8px !important;
    }

    .form-div .width50p, .form-div .formemrgtntp4 {
        margin-top: 5px;
    }
</style>
<div class="clear textBoxAlign" style="padding-bottom: 40px;">
    <div class="textBoxAlign clear brdr radius pdng2 mrgnTp4">
        <table class="form-table" style="width: 100%;">
            <tr>
                <td align="right">
                    <label class="">
                        School :</label>
                </td>
                <td colspan="3"><span class="BoldText">
                    <asp:Literal ID="ltrCompanyNameBranch" runat="server"></asp:Literal></span>   </td>
            </tr>
            <tr>
                <td align="right" style="width: 150px;">
                    <label class="">
                        School ID :</label>
                </td>
                <td style="width: 225px;">
                    <span class="BoldText">
                        <asp:Literal ID="ltrCompanyIDBranch" runat="server"></asp:Literal></span>
                </td>
                <td style="width: 73px;" align="right">
                    <label>
                        School Type :</label>
                </td>
                <td style="width: 225px;">
                    <span class="BoldText">
                        <asp:Literal ID="ltrBuinessTypeBranch" runat="server"></asp:Literal></span>
                </td>
            </tr>
        </table>

        <div class="clear ">
        </div>
    </div>

    <div class="clear textBoxAlign" style="min-height: 200px">
        <!----step ----->
        <br />
        <br />
        <div class="clear">
            <span class="fltlft"><b><u>All Branches</u></b></span><span class="fltrt">
                <asp:Button ID="btnBranchAddNew" CssClass="buttonGreen medium" runat="server" Text="Add New Branch"
                    OnClick="btnBranchAddNew_Click" />
            </span>
        </div>
        <br />
        <asp:Panel ID="pnlBranch" Visible="false" runat="server">
            <div class="clear brdr radius pdng2 mrgnTp4">
                <!----step ----->
                <div class="clear mrgnTp4">
                    <p>
                        <label class="required">
                            Branch :</label>
                        <asp:TextBox ID="txtBranch" runat="server" Style="width: 499px;" MaxLength="200"></asp:TextBox>
                        <%--                        <asp:RequiredFieldValidator ID="rfvBranch" ValidationGroup="VGBranch" ControlToValidate="txtBranch"
                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                            ErrorMessage="Please enter Branch."></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="vceBranch" runat="server" TargetControlID="rfvBranch"
                            PopupPosition="BottomLeft" HighlightCssClass="error">
                        </asp:ValidatorCalloutExtender>--%>
                    </p>
                </div>
                <!----step ----->
                <!----step ----->
                <!----step ----->
                <div class="clear mrgnTp4" style="padding-top: 0px !important;">
                    <table class="form-table" style="margin: 0 auto;">
                        <tr>
                            <td style="vertical-align: middle; width: 117px;" class="txtalgnrgt">
                                <label class="input-label required">
                                    Street :
                                </label>
                            </td>
                            <td colspan="5">
                                <asp:TextBox ID="txtAddress1" runat="server" Width="499px" CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="txtalgnrgt">
                                <label class="input-label required">
                                    City :
                                </label>
                            </td>
                            <td style="width: 151px;">
                                <asp:TextBox ID="txtCity" runat="server" CssClass="calWidth " Width="124px" MaxLength="500"></asp:TextBox>
                            </td>
                            <td class="txtalgnrgt" style="width: 52px;">
                                <label class="input-label required">
                                    State :
                                </label>
                            </td>
                            <td style="width: 106px;">
                                <asp:DropDownList ID="ddlState" runat="server" Width="98px" CssClass="inputTextbox">
                                    <asp:ListItem>Nevada</asp:ListItem>
                                    <asp:ListItem>WASHINGTON DC</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="txtalgnrgt" style="width: 47px;">
                                <label class="input-label required">
                                    Zip :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtZip" placeholder="xxxxx-xxxx or xxxxx" runat="server" CssClass="calWidth zip_us" Width="106px" MaxLength="500"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: middle;" class="txtalgnrgt tdwidth1">
                                <label class="input-label required">
                                    Mailing Street :
                                </label>
                            </td>
                            <td colspan="5">
                                <asp:TextBox ID="txtMailingStreet" runat="server" Width="499px" CssClass="calWidth us_street"
                                    MaxLength="500"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="txtalgnrgt">
                                <label class="input-label required">
                                    City :
                                </label>
                            </td>
                            <td style="width: 151px;">
                                <asp:TextBox ID="txtMailingCity" runat="server" Width="133px" CssClass="calWidth"
                                    MaxLength="500"></asp:TextBox>
                            </td>
                            <td class="txtalgnrgt" style="width: 52px;">
                                <label class="input-label required">
                                    State :
                                </label>
                            </td>
                            <td style="width: 106px;">
                                <asp:DropDownList ID="ddlMailingState" runat="server" Width="98px" CssClass="inputTextbox">
                                    <asp:ListItem>Nevada</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="txtalgnrgt" style="width: 47px;">
                                <label class="input-label required">
                                    Zip :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtMailingZip" placeholder="xxxxx-xxxx or xxxxx" runat="server" Width="106px" CssClass="calWidth zip_us" MaxLength="500"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <!----end ----->
            <div class="clear brdr radius pdng2 mrgnTp4 form-div">
                <div class="clear">
                    <div class="width50p fltlft">
                        <p>
                            <label class="required">
                                Last Name :</label>
                            <asp:TextBox ID="txtLastname" class="firmTextBox capitalize-text" runat="server"
                                MaxLength="200"></asp:TextBox>
                            <%--                           <asp:RequiredFieldValidator ID="rfvLName" ValidationGroup="VGBranch" ControlToValidate="txtLastname"
                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                ErrorMessage="Please enter last name"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="vceLName" runat="server" TargetControlID="rfvLName"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>--%>
                        </p>
                    </div>
                    <div class="width50p fltrt">
                        <p>
                            <label class="required">
                                First Name :</label>
                            <asp:TextBox ID="txtFirstName" class="firmTextBox capitalize-text" runat="server"
                                MaxLength="200"></asp:TextBox>
                            <%--                            <asp:RequiredFieldValidator ID="rfvFName" ValidationGroup="VGBranch" ControlToValidate="txtFirstName"
                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                ErrorMessage="Please enter first name"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="vceFName" runat="server" TargetControlID="rfvFName"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>--%>
                        </p>
                    </div>
                </div>
                <div class="clear">
                    <div class="width50p fltlft">
                        <p>
                            <label class="required">
                                Phone :</label>
                            <asp:TextBox ID="txtPhone" MaxLength="15" class="firmTextBox phone_us" placeholder="(XXX) XXX-XXXX" runat="server"></asp:TextBox>
                            <%--           <asp:RegularExpressionValidator ID="revPhone" runat="server" ErrorMessage="please enter valid phone number. Eg:XXX-XXX-XXXX or XXXXXXXXXX."
                                ControlToValidate="txtPhone" Display="None" ForeColor="#FFCCFF" SetFocusOnError="True"
                                ValidationGroup="VGBranch" ValidationExpression="^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$">*</asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ErrorMessage="please enter valid phone number. Eg:XXX-XXX-XXXX or XXXXXXXXXX."
                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtPhone"
                                ValidationGroup="VGBranch"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="VCEtxtPhone" runat="server" TargetControlID="rfvPhone"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>
                            <asp:ValidatorCalloutExtender ID="VCEphone" runat="server" TargetControlID="revPhone"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>--%>
                            <%--<asp:MaskedEditExtender ID="MEETelephone" TargetControlID="txtPhone" Mask="(999) 999-9999"
                            runat="server">
                        </asp:MaskedEditExtender>--%>
                        </p>
                    </div>
                    <div class="width50p fltrt">
                        <p>
                            <label>
                                Fax :</label>
                            <asp:TextBox ID="txtFax" class="firmTextBox phone_us" runat="server" MaxLength="15"></asp:TextBox>
                            <%--                            <asp:RegularExpressionValidator ID="revFax" runat="server" ErrorMessage="please enter valid Fax number. Eg:XXX-XXX-XXXX or XXXXXXXXXX."
                                ControlToValidate="txtFax" Display="None" ForeColor="#FFCCFF" SetFocusOnError="True"
                                ValidationGroup="VGBranch" ValidationExpression="^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$">*</asp:RegularExpressionValidator>
                            <asp:ValidatorCalloutExtender ID="VCEfax" runat="server" TargetControlID="revFax"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>--%>
                            <%--<asp:MaskedEditExtender ID="MEEFax" TargetControlID="txtFax" Mask="(999) 999-9999"
                            runat="server">
                        </asp:MaskedEditExtender>--%>
                        </p>
                    </div>
                </div>
                <!----end ----->
                <!----step ----->
                <div class="clear formemrgtntp4">
                    <div>
                        <p>
                            <label class="required">
                                Email :</label>
                            <asp:TextBox ID="txtEmail" runat="server" Style="width: 69.4%" MaxLength="100"></asp:TextBox>
                            <%--        <asp:RegularExpressionValidator ID="REVEmail" runat="server" ErrorMessage="Please enter valid email address.eg john@example.com."
                                ValidationGroup="VGBranch" ControlToValidate="txtEmail" ForeColor="#FF3300" Text="*"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RFVtxtEmail" runat="server" ErrorMessage="Please enter valid email address.eg john@example.com."
                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtEmail"
                                ValidationGroup="VGBranch"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="vceEma" runat="server" TargetControlID="RFVtxtEmail"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>
                            <asp:ValidatorCalloutExtender ID="VCEEmail" runat="server" TargetControlID="REVEmail"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>--%>
                        </p>
                    </div>
                </div>
            </div>
            <!----step ----->
            <div class="clear  " style="display: none">
                <div class="clear" style="line-height: 25px">
                    <b><u>Principle Of The Firm</u></b><span class="fltrt">
                        <input type="button" id="btnAddNewPrincipal" value="Add New" class="buttonGreen small hidButtonAddPrincipal"
                            onclick="javascript: toggleDiv('.hidButtonAddPrincipal'); toggleDiv('.hidNewPrincipal');" /></span>
                </div>
                <div class="clear mrgnTp4 hidNewPrincipal" style="display: none">
                    <p>
                        <label style="margin-left: 5px; font-size: 12px; margin-right: 18px;">
                            <b>Search for Engineer</b> :</label>
                        <asp:TextBox ID="searchPrincipal" ClientIDMode="Static" runat="server" Width="375px"
                            CssClass="inputTextBox searchPrincipal" MaxLength="200"></asp:TextBox>&nbsp;<asp:Button
                                ID="btnSavePrincipal" CssClass="buttonGreen small hiddenBtnPrincipal" Style="display: none"
                                runat="server" Text="Save" /><a id="Button2" class="secondary small hidButtonCancel"
                                    onclick="javascript:toggleDiv('.hidButtonAddPrincipal');toggleDiv('.hidNewPrincipal');">cancel</a>
                        <asp:HiddenField ID="hidMemberIdPrincipal" runat="server" />
                    </p>
                </div>
            </div>
            <div class="clear" style="display: none">
                <div class="clear">
                    <div class="clear" style="line-height: 25px">
                        <b>ENGINEERS/LAND SURVEYORS IN RESPONSIBLE CHARGE :</b> <span class="fltrt">
                            <asp:Button ID="btnAddNew_Responsible" Text="Add New" CssClass="buttonGreen small"
                                runat="server" /></span>
                    </div>
                    <div class="clear">
                        <div class="brdr" style="margin: 5px auto; width: 601px; padding: 14px;" id="tblRespnsibleAdd"
                            visible="false" runat="server">
                            <table>
                                <tr>
                                    <td align="right">Engineer Name :
                                    </td>
                                    <td>
                                        <asp:TextBox Width="150px" ID="txtResponsibleCharges" runat="server" MaxLength="200"></asp:TextBox>
                                    </td>
                                    <td align="right">
                                        <%--Name--%>
                                        NV License Number :
                                    </td>
                                    <td>
                                        <asp:TextBox Width="150px" ID="txtLicenseNumber_Responsible" runat="server" MaxLength="200"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">Discipline :
                                    </td>
                                    <td>
                                        <asp:TextBox Width="150px" ID="txtResponsibleChargesDiscipline" runat="server" MaxLength="200"></asp:TextBox>
                                    </td>
                                    <td></td>
                                    <td align="right">
                                        <asp:Button ID="btnSave_Responsible" ValidationGroup="VGResponsible" Text="Save"
                                            CssClass="buttonGreen small" runat="server" />
                                        <asp:LinkButton ID="btnCancel_Responsible" Text="Cancel" CssClass="secondary small"
                                            runat="server" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <asp:GridView ID="gvFirmEngineersInResponsibleCharge2" ClientIDMode="Static" runat="server"
                        AutoGenerateColumns="False" CssClass="index brdr radius mrgnTp4 pdng2 grid" Width="100%" CellPadding="4" ForeColor="#333333"
                        GridLines="None" ShowHeader="true">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="Engineer Name">
                                <ItemStyle Width="200px" />
                                <EditItemTemplate>
                                    <asp:TextBox Width="150px" ID="txtResponsibleCharges" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <%# Eval("Engineer_Name")%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Discipline">
                                <ItemStyle Width="215px" />
                                <EditItemTemplate>
                                    <asp:TextBox Width="150px" ID="txtResponsibleChargesDiscipline" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <%# Eval("Engineer_Discipline")%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="License#">
                                <ItemStyle Width="210px" />
                                <EditItemTemplate>
                                    <asp:TextBox Width="150px" ID="txtLicenseNumber" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <%# Eval("Engineer_NV_License_Number")%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="">
                                <ItemStyle Width="100px" />
                                <EditItemTemplate>
                                    <%--CommandArgument='<%# Eval("Responsible_Charges_ID") %>' RowIndex='<%# Container.DisplayIndex %>'--%>
                                    <asp:ImageButton ID="imgbtnSave3" CssClass="imgSave" runat="server" ToolTip="Save"
                                        ImageUrl="~/App_Themes/Theme1/images/save.png" />
                                    <asp:ImageButton ID="imgBtnCancel" runat="server" ToolTip="Cancel" ImageUrl="~/App_Themes/Theme1/images/cancel.png"
                                        OnClick="imgBtnCancel_Click" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:ImageButton ID="imgbtnEdit2" CssClass="imgDelete" runat="server" ToolTip="Edit"
                                        CommandArgument='<%# Eval("Responsible_Charges_ID") %>' RowIndex='<%# Container.DisplayIndex %>'
                                        ImageUrl="~/App_Themes/Theme1/images/edit.png" OnClick="imgBtnEdit_Responsible_Click" /><%--CommandArgument='<%# Eval("Responsible_Charges_ID") %>'
                                        RowIndex='<%# Container.DisplayIndex %>'--%>
                                    <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                        ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?')"
                                        OnClick="imgBtnDelete_Click" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <div style="background: #fff; height: 20px; border-top: 1px solid #ddd">
                            </div>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </div>
            </div>
            <!----end ----->
            <!----step ----->
            <div class="clear brdr radius pdng2" style="display: none">
                <div class="clear mrgnTp4">
                    <b>PROFESSIONAL SERVICES OFFERED :</b>
                    <div class="clear  " style="overflow: hidden; padding: 2px 0px">
                        <div class="width50p fltlft">
                            <asp:CheckBoxList ID="chkProfessionalServicesList" runat="server">
                            </asp:CheckBoxList>
                        </div>
                        <div class="width50p fltrt">
                            <table class="fltrt" style="width: 82%">
                                <tr>
                                    <th style="width: 196px; height: 25px">
                                        <asp:CheckBox ID="chkOtherServices" runat="server" Text="Other" />
                                    </th>
                                    <th align="right" style="width: 110px;">
                                        <asp:Button ID="btnAddNew_Professional" Text="Add New" Style="float: right" CssClass="buttonGreen small"
                                            runat="server" />
                                    </th>
                                </tr>
                                <%--<% if (chkOtherServices.Checked)
                      { %>--%>
                                <%--  <tr>
                        <td></td>
                        
                        <td></td>
                      </tr>--%>
                                <tr id="rowNewServices" visible="false" runat="server">
                                    <td colspan="2">
                                        <asp:TextBox Width="142px" ID="txtProfessionalServices" runat="server"></asp:TextBox>
                                        <%--<asp:TextBox Width="150px" ID="txtProfessionalServicesDescription" runat="server"></asp:TextBox>--%>
                                        <asp:Button ID="btnSave_Professional" Text="Save" CssClass="buttonGreen small" runat="server" />
                                        <asp:LinkButton ID="btnCancel_Professional" Text="Cancel" CssClass="secondary small"
                                            runat="server" />
                                    </td>
                                </tr>
                                <%--<%} %>--%>
                            </table>
                            <asp:GridView ID="gvProfessionalServices" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                CssClass="fltrt index brdr radius mrgnTp4 pdng2 grid" Width="82%" CellPadding="4" ForeColor="#333333" GridLines="None"
                                ShowHeader="false">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Professional Services">
                                        <ItemStyle Width="190px" />
                                        <EditItemTemplate>
                                            <asp:TextBox Width="150px" ID="txtProfessionalServices" runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <%# Eval("Service_Name")%>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="">
                                        <ItemStyle Width="90px" HorizontalAlign="Left" />
                                        <EditItemTemplate>
                                            <%--RowIndex='<%# Container.DisplayIndex %>'--%>
                                            <asp:ImageButton ID="imgbtnSave2" ValidationGroup="VGFeeGrid" CssClass="imgSave"
                                                runat="server" ToolTip="Save" ImageUrl="~/App_Themes/Theme1/images/save.png" />
                                            <asp:ImageButton ID="imgBtnCancel_Professional" runat="server" ToolTip="Cancel" ImageUrl="~/App_Themes/Theme1/images/cancel.png" />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <%--<asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" runat="server" ToolTip="Edit"
                                    RowIndex='<%# Container.DisplayIndex %>' ImageUrl="~/App_Themes/Theme1/images/edit.png" />--%><%-- CommandArgument='<%# Eval("Professional_Services_ID") %>'
                                                RowIndex='<%# Container.DisplayIndex %>'--%>
                                            <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                ImageUrl="~/App_Themes/Theme1/images/delete.png" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
            <!-------------------Resp Charge-------------------->
            <div class="clear  mrgnTp4 " style="display: none">
                <div class="clear" style="line-height: 25px">
                    <b><u>Responsible in Charges</u></b><span class="fltrt">
                        <input type="button" id="btnAddNew" value="Add New" class="buttonGreen small hidButtonAdd"
                            onclick="javascript: toggleDiv('.hidButtonAdd'); toggleDiv('.hidNewResponsible');" /></span>
                </div>
                <div class="clear mrgnTp4 hidNewResponsible" style="display: none">
                    <p>
                        <label style="margin-left: 5px; font-size: 12px; margin-right: 18px;">
                            <b>Search For Engineer</b> :</label><asp:TextBox ID="search2" ClientIDMode="Static"
                                runat="server" Width="375px" CssClass="inputTextBox search2 " MaxLength="200"></asp:TextBox>&nbsp;
                        <asp:Button ID="btnSaveResponsible" CssClass="buttonGreen small hiddenBtn2" Style="display: none"
                            runat="server" Text="Save" OnClick="btnSave_Responsible_Click" />
                        <a id="Button1" class="secondary small hidButtonCancel" onclick="javascript:toggleDiv('.hidButtonAdd');toggleDiv('.hidNewResponsible');">cancel</a>
                        <asp:HiddenField ID="hidMemberIdBranch" runat="server" />
                    </p>
                </div>
                <asp:GridView ID="gvFirmEngineersInResponsibleCharge" runat="server" AutoGenerateColumns="False"
                    CssClass="index brdr radius mrgnTp4 pdng2 grid" Width="98%" Style="margin: 0 auto" CellPadding="4" ForeColor="#333333"
                    GridLines="None" ShowHeader="true">
                    <%--<AlternatingRowStyle BackColor="White" />--%>
                    <Columns>
                        <asp:TemplateField HeaderText="Engineer Name">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle Width="40%" />
                            <%--<EditItemTemplate>
                                <asp:TextBox Width="150px" ID="txtResponsibleCharges" runat="server"></asp:TextBox></EditItemTemplate>--%>
                            <ItemTemplate>
                                <%# Eval("Engineer_Name")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Discipline">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle Width="215px" />
                            <EditItemTemplate>
                                <asp:TextBox Width="150px" ID="txtResponsibleChargesDiscipline" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <%# Eval("Engineer_Discipline")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="License#">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle Width="40%" />
                            <%--<EditItemTemplate>
                                <asp:TextBox Width="150px" ID="txtLicenseNumber" runat="server"></asp:TextBox></EditItemTemplate>--%>
                            <ItemTemplate>
                                <%# Eval("Engineer_NV_License_Number")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle Width="20%" />
                            <%--<EditItemTemplate>
                                <asp:ImageButton ID="imgbtnSave" ValidationGroup="VGFeeGrid" CssClass="imgSave" runat="server"
                                    ToolTip="Save" CommandArgument='<%# Eval("Responsible_Charges_ID") %>' RowIndex='<%# Container.DisplayIndex %>'
                                    ImageUrl="~/App_Themes/Theme1/images/save.png" OnClick="imgBtnSave_Click" />
                                <asp:ImageButton ID="imgBtnCancel" runat="server" ToolTip="Cancel" ImageUrl="~/App_Themes/Theme1/images/cancel.png"
                                    OnClick="imgBtnCancel_Click" />
                            </EditItemTemplate>--%>
                            <ItemTemplate>
                                <%--<asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" runat="server" ToolTip="Edit"
                                    CommandArgument='<%# Eval("Responsible_Charges_ID") %>' RowIndex='<%# Container.DisplayIndex %>'
                                    ImageUrl="~/App_Themes/Theme1/images/edit.png" OnClick="imgBtnEdit_Click" />--%><%--CommandArgument='<%# Eval("Responsible_Charges_ID") %>'
                                    RowIndex='<%# Container.DisplayIndex %>'--%>
                                <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                    IbtnAddNew_ResponsiblemageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?')" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <div style="background: #fff; height: 20px; border-top: 1px solid #ddd">
                        </div>
                    </EmptyDataTemplate>
                </asp:GridView>
                <%--<asp:Button ID="btnRefresh" runat="server" Text="Refresh" Visible="false" ClientIDMode="Static"
                    OnClick="btnRefresh_Click" />--%>
            </div>
            <div class="clear mrgnTp4">
                <div class="clear">
                    <b>Remark :</b>
                    <div class="clear">
                    </div>
                    <asp:TextBox ID="txtComments" runat="server" Style="width: 98%; height: 70px;" TextMode="MultiLine"
                        MaxLength="500"></asp:TextBox>
                </div>
            </div>
            <!----end ----->
        </asp:Panel>
        <br />
        <asp:GridView ID="gvBranchList" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
            CssClass="index brdr radius mrgnTp4 pdng2 grid" ShowHeader="true" Width="100%" CellPadding="4" ForeColor="#333333"
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Branch Name">
                    <EditItemTemplate>
                        <div class="clear brdr radius pdng2 mrgnTp4">
                            <!----step ----->
                            <div class="clear mrgnTp4">
                                <p>
                                    <label class="required">
                                        Branch :</label>
                                    <asp:TextBox ID="txtBranchEdit" runat="server" Style="width: 498px;" MaxLength="200"></asp:TextBox>
                                    <%--                        <asp:RequiredFieldValidator ID="rfvBranch" ValidationGroup="VGBranch" ControlToValidate="txtBranch"
                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                            ErrorMessage="Please enter Branch."></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="vceBranch" runat="server" TargetControlID="rfvBranch"
                            PopupPosition="BottomLeft" HighlightCssClass="error">
                        </asp:ValidatorCalloutExtender>--%>
                                </p>
                            </div>
                            <!----step ----->
                            <!----step ----->
                            <!----step ----->
                            <div class="clear mrgnTp4 form-table" style="padding-top: 0px !important;">
                                <table style="margin: 0 auto;">
                                    <tr>
                                        <td style="vertical-align: middle; width: 130px;" class="txtalgnrgt">
                                            <label class="input-label required">
                                                Street :
                                            </label>
                                        </td>
                                        <td colspan="5">
                                            <asp:TextBox ID="txtAddress1Edit" runat="server" Width="498px" CssClass="calWidth"
                                                MaxLength="500"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="txtalgnrgt">
                                            <label class="input-label required">
                                                City :
                                            </label>
                                        </td>
                                        <td style="width: 145px;">
                                            <asp:TextBox ID="txtCityEdit" runat="server" CssClass="calWidth" Width="124px" MaxLength="500"></asp:TextBox>
                                        </td>
                                        <td class="txtalgnrgt" style="width: 48px;">
                                            <label class="input-label required">
                                                State :
                                            </label>
                                        </td>
                                        <td style="width: 106px;">
                                            <asp:DropDownList ID="ddlStateEdit" runat="server" Width="98px" CssClass="inputTextbox">
                                                <asp:ListItem>Nevada</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="txtalgnrgt" style="width: 40px;">
                                            <label class="input-label required">
                                                Zip :
                                            </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtZipEdit" placeholder="xxxxx-xxxx or xxxxx" runat="server" CssClass="calWidth zip_us" Width="121px" MaxLength="500"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: middle;" class="txtalgnrgt tdwidth1">
                                            <label class="input-label required">
                                                Mailing Street :
                                            </label>
                                        </td>
                                        <td colspan="5">
                                            <asp:TextBox ID="txtMailingStreetEdit" runat="server" Width="498px" CssClass="calWidth"
                                                MaxLength="500"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="txtalgnrgt">
                                            <label class="input-label required">
                                                City :
                                            </label>
                                        </td>
                                        <td style="width: 145px;">
                                            <asp:TextBox ID="txtMailingCityEdit" runat="server" Width="133px" CssClass="calWidth"
                                                MaxLength="500"></asp:TextBox>
                                        </td>
                                        <td class="txtalgnrgt" style="width: 48px;">
                                            <label class="input-label required">
                                                State :
                                            </label>
                                        </td>
                                        <td style="width: 106px;">
                                            <asp:DropDownList ID="ddlMailingStateEdit" runat="server" Width="98px" CssClass="inputTextbox">
                                                <asp:ListItem>Nevada</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="txtalgnrgt" style="width: 40px;">
                                            <label class="input-label required">
                                                Zip :
                                            </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtMailingZipEdit" placeholder="xxxxx-xxxx or xxxxx" runat="server" Width="121px" CssClass="calWidth zip_us"
                                                MaxLength="500"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <!----end ----->
                        <div class="clear brdr radius pdng2 mrgnTp4 form-div">
                            <div class="clear">
                                <div class="width50p fltlft">
                                    <p>
                                        <label class="required">
                                            Last Name :</label>
                                        <asp:TextBox ID="txtLastnameEdit" class="firmTextBox" runat="server" MaxLength="200"></asp:TextBox>
                                        <%--                           <asp:RequiredFieldValidator ID="rfvLName" ValidationGroup="VGBranch" ControlToValidate="txtLastname"
                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                ErrorMessage="Please enter last name"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="vceLName" runat="server" TargetControlID="rfvLName"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>--%>
                                    </p>
                                </div>
                                <div class="width50p fltrt">
                                    <p>
                                        <label class="required">
                                            First Name :</label>
                                        <asp:TextBox ID="txtFirstNameEdit" class="firmTextBox" Style="width: 138px;" runat="server" MaxLength="200"></asp:TextBox>
                                        <%--                            <asp:RequiredFieldValidator ID="rfvFName" ValidationGroup="VGBranch" ControlToValidate="txtFirstName"
                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                ErrorMessage="Please enter first name"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="vceFName" runat="server" TargetControlID="rfvFName"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>--%>
                                    </p>
                                </div>
                            </div>
                            <div class="clear">
                                <div class="width50p fltlft">
                                    <p>
                                        <label class="required">
                                            Phone :</label>
                                        <asp:TextBox ID="txtPhoneEdit" MaxLength="15" class="firmTextBox phone_us" placeholder="(XXX) XXX-XXXX" runat="server"></asp:TextBox>
                                        <%--           <asp:RegularExpressionValidator ID="revPhone" runat="server" ErrorMessage="please enter valid phone number. Eg:XXX-XXX-XXXX or XXXXXXXXXX."
                                ControlToValidate="txtPhone" Display="None" ForeColor="#FFCCFF" SetFocusOnError="True"
                                ValidationGroup="VGBranch" ValidationExpression="^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$">*</asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ErrorMessage="please enter valid phone number. Eg:XXX-XXX-XXXX or XXXXXXXXXX."
                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtPhone"
                                ValidationGroup="VGBranch"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="VCEtxtPhone" runat="server" TargetControlID="rfvPhone"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>
                            <asp:ValidatorCalloutExtender ID="VCEphone" runat="server" TargetControlID="revPhone"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>--%>
                                        <%--<asp:MaskedEditExtender ID="MEETelephone" TargetControlID="txtPhone" Mask="(999) 999-9999"
                            runat="server">
                        </asp:MaskedEditExtender>--%>
                                    </p>
                                </div>
                                <div class="width50p fltrt">
                                    <p>
                                        <label>
                                            Fax :</label>
                                        <asp:TextBox ID="txtFaxEdit" class="firmTextBox phone_us" Style="width: 138px;" runat="server" MaxLength="15"></asp:TextBox>
                                        <%--                            <asp:RegularExpressionValidator ID="revFax" runat="server" ErrorMessage="please enter valid Fax number. Eg:XXX-XXX-XXXX or XXXXXXXXXX."
                                ControlToValidate="txtFax" Display="None" ForeColor="#FFCCFF" SetFocusOnError="True"
                                ValidationGroup="VGBranch" ValidationExpression="^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$">*</asp:RegularExpressionValidator>
                            <asp:ValidatorCalloutExtender ID="VCEfax" runat="server" TargetControlID="revFax"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>--%>
                                        <%--<asp:MaskedEditExtender ID="MEEFax" TargetControlID="txtFax" Mask="(999) 999-9999"
                            runat="server">
                        </asp:MaskedEditExtender>--%>
                                    </p>
                                </div>
                            </div>
                            <!----end ----->
                            <!----step ----->
                            <div class="clear formemrgtntp4">
                                <div>
                                    <p>
                                        <label class="required">
                                            Email :</label>
                                        <asp:TextBox ID="txtEmailEdit" runat="server" Style="width: 498px;" MaxLength="100"></asp:TextBox>
                                        <%--        <asp:RegularExpressionValidator ID="REVEmail" runat="server" ErrorMessage="Please enter valid email address.eg john@example.com."
                                ValidationGroup="VGBranch" ControlToValidate="txtEmail" ForeColor="#FF3300" Text="*"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RFVtxtEmail" runat="server" ErrorMessage="Please enter valid email address.eg john@example.com."
                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtEmail"
                                ValidationGroup="VGBranch"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="vceEma" runat="server" TargetControlID="RFVtxtEmail"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>
                            <asp:ValidatorCalloutExtender ID="VCEEmail" runat="server" TargetControlID="REVEmail"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>--%>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!----step ----->
                        <div class="clear  mrgnTp4 " style="display: none">
                            <div class="clear" style="line-height: 25px">
                                <b><u>Principle Of The Firm</u></b><span class="fltrt">
                                    <input type="button" id="btnAddNewPrincipal" value="Add New" class="buttonGreen small hidButtonAddPrincipal"
                                        onclick="javascript: toggleDiv('.hidButtonAddPrincipal'); toggleDiv('.hidNewPrincipal');" /></span>
                            </div>
                            <div class="clear mrgnTp4 hidNewPrincipal" style="display: none">
                                <p>
                                    <label style="margin-left: 5px; font-size: 12px; margin-right: 18px;">
                                        <b>Search for Engineer</b> :</label>
                                    <asp:TextBox ID="searchPrincipal" ClientIDMode="Static" runat="server" Width="375px"
                                        CssClass="inputTextBox searchPrincipal" MaxLength="200"></asp:TextBox>&nbsp;<asp:Button
                                            ID="btnSavePrincipal" CssClass="buttonGreen small hiddenBtnPrincipal" Style="display: none"
                                            runat="server" Text="Save" /><a id="Button2" class="secondary small hidButtonCancel"
                                                onclick="javascript:toggleDiv('.hidButtonAddPrincipal');toggleDiv('.hidNewPrincipal');">cancel</a>
                                    <asp:HiddenField ID="hidMemberIdPrincipal" runat="server" />
                                </p>
                            </div>
                        </div>
                        <div class="clear mrgnTp4" style="display: none">
                            <div class="clear">
                                <div class="clear" style="line-height: 25px">
                                    <b>ENGINEERS/LAND SURVEYORS IN RESPONSIBLE CHARGE :</b> <span class="fltrt">
                                        <asp:Button ID="btnAddNew_Responsible" Text="Add New" CssClass="buttonGreen small"
                                            runat="server" /></span>
                                </div>
                                <div class="clear">
                                    <div class="brdr" style="margin: 5px auto; width: 601px; padding: 14px;" id="tblRespnsibleAdd"
                                        visible="false" runat="server">
                                        <table>
                                            <tr>
                                                <td align="right">Engineer Name :
                                                </td>
                                                <td>
                                                    <asp:TextBox Width="150px" ID="txtResponsibleChargesEdit" runat="server" MaxLength="200"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <%--Name--%>
                                                    NV License Number :
                                                </td>
                                                <td>
                                                    <asp:TextBox Width="150px" ID="txtLicenseNumber_ResponsibleEdit" runat="server" MaxLength="200"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">Discipline :
                                                </td>
                                                <td>
                                                    <asp:TextBox Width="150px" ID="txtResponsibleChargesDisciplineEdit" runat="server"
                                                        MaxLength="200"></asp:TextBox>
                                                </td>
                                                <td></td>
                                                <td align="right">
                                                    <asp:Button ID="btnSave_Responsible" ValidationGroup="VGResponsible" Text="Save"
                                                        CssClass="buttonGreen small" runat="server" />
                                                    <asp:LinkButton ID="btnCancel_Responsible" Text="Cancel" CssClass="secondary small"
                                                        runat="server" />
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <asp:GridView ID="gvFirmEngineersInResponsibleCharge2" ClientIDMode="Static" runat="server"
                                    AutoGenerateColumns="False" CssClass="index brdr radius mrgnTp4 pdng2 grid" Width="100%" CellPadding="4" ForeColor="#333333"
                                    GridLines="None" ShowHeader="true">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Engineer Name">
                                            <ItemStyle Width="200px" />
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtResponsibleChargesEdit" runat="server"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <%# Eval("Engineer_Name")%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Discipline">
                                            <ItemStyle Width="215px" />
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtResponsibleChargesDisciplineEdit" runat="server"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <%# Eval("Engineer_Discipline")%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="License#">
                                            <ItemStyle Width="210px" />
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtLicenseNumberEdit" runat="server"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <%# Eval("Engineer_NV_License_Number")%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="">
                                            <ItemStyle Width="100px" />
                                            <EditItemTemplate>
                                                <%--CommandArgument='<%# Eval("Responsible_Charges_ID") %>' RowIndex='<%# Container.DisplayIndex %>'--%>
                                                <asp:ImageButton ID="imgbtnSave3" CssClass="imgSave" runat="server" ToolTip="Save"
                                                    ImageUrl="~/App_Themes/Theme1/images/save.png" />
                                                <asp:ImageButton ID="imgBtnCancel" runat="server" ToolTip="Cancel" ImageUrl="~/App_Themes/Theme1/images/cancel.png"
                                                    OnClick="imgBtnCancel_Click" />
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:ImageButton ID="imgbtnEdit2" CssClass="imgDelete" runat="server" ToolTip="Edit"
                                                    CommandArgument='<%# Eval("Responsible_Charges_ID") %>' RowIndex='<%# Container.DisplayIndex %>'
                                                    ImageUrl="~/App_Themes/Theme1/images/edit.png" OnClick="imgBtnEdit_Responsible_Click" /><%--CommandArgument='<%# Eval("Responsible_Charges_ID") %>'
                                        RowIndex='<%# Container.DisplayIndex %>'--%>
                                                <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                    ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?')"
                                                    OnClick="imgBtnDelete_Click" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        <div style="background: #fff; height: 20px; border-top: 1px solid #ddd">
                                        </div>
                                    </EmptyDataTemplate>
                                </asp:GridView>
                            </div>
                        </div>
                        <!----end ----->
                        <!----step ----->
                        <div class="clear brdr radius pdng2" style="display: none">
                            <div class="clear mrgnTp4">
                                <b>PROFESSIONAL SERVICES OFFERED :</b>
                                <div class="clear  " style="overflow: hidden; padding: 2px 0px">
                                    <div class="width50p fltlft">
                                        <asp:CheckBoxList ID="chkProfessionalServicesList" runat="server">
                                        </asp:CheckBoxList>
                                    </div>
                                    <div class="width50p fltrt">
                                        <table class="fltrt" style="width: 82%">
                                            <tr>
                                                <th style="width: 196px; height: 25px">
                                                    <asp:CheckBox ID="chkOtherServices" runat="server" Text="Other" />
                                                </th>
                                                <th align="right" style="width: 110px;">
                                                    <asp:Button ID="btnAddNew_Professional" Text="Add New" Style="float: right" CssClass="buttonGreen small"
                                                        runat="server" />
                                                </th>
                                            </tr>
                                            <%--<% if (chkOtherServices.Checked)
                      { %>--%>
                                            <%--  <tr>
                        <td></td>
                        
                        <td></td>
                      </tr>--%>
                                            <tr id="rowNewServices" visible="false" runat="server">
                                                <td colspan="2">
                                                    <asp:TextBox Width="142px" ID="txtProfessionalServices" runat="server"></asp:TextBox>
                                                    <%--<asp:TextBox Width="150px" ID="txtProfessionalServicesDescription" runat="server"></asp:TextBox>--%>
                                                    <asp:Button ID="btnSave_Professional" Text="Save" CssClass="buttonGreen small" runat="server" />
                                                    <asp:LinkButton ID="btnCancel_Professional" Text="Cancel" CssClass="secondary small"
                                                        runat="server" />
                                                </td>
                                            </tr>
                                            <%--<%} %>--%>
                                        </table>
                                        <asp:GridView ID="gvProfessionalServices" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                            CssClass="fltrt index brdr radius mrgnTp4 pdng2 grid" Width="82%" CellPadding="4" ForeColor="#333333" GridLines="None"
                                            ShowHeader="false">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="Professional Services">
                                                    <ItemStyle Width="190px" />
                                                    <EditItemTemplate>
                                                        <asp:TextBox Width="150px" ID="txtProfessionalServicesEdit" runat="server"></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <%# Eval("Service_Name")%>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="">
                                                    <ItemStyle Width="90px" HorizontalAlign="Left" />
                                                    <EditItemTemplate>
                                                        <%--RowIndex='<%# Container.DisplayIndex %>'--%>
                                                        <asp:ImageButton ID="imgbtnSave2" ValidationGroup="VGFeeGrid" CssClass="imgSave"
                                                            runat="server" ToolTip="Save" ImageUrl="~/App_Themes/Theme1/images/save.png" />
                                                        <asp:ImageButton ID="imgBtnCancel_Professional" runat="server" ToolTip="Cancel" ImageUrl="~/App_Themes/Theme1/images/cancel.png" />
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <%--<asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" runat="server" ToolTip="Edit"
                                    RowIndex='<%# Container.DisplayIndex %>' ImageUrl="~/App_Themes/Theme1/images/edit.png" />--%><%-- CommandArgument='<%# Eval("Professional_Services_ID") %>'
                                                RowIndex='<%# Container.DisplayIndex %>'--%>
                                                        <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                            ImageUrl="~/App_Themes/Theme1/images/delete.png" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-------------------Resp Charge-------------------->
                        <div class="clear  mrgnTp4 " style="display: none">
                            <div class="clear" style="line-height: 25px">
                                <b><u>Responsible in Charges</u></b><span class="fltrt">
                                    <input type="button" id="btnAddNew" value="Add New" class="buttonGreen small hidButtonAdd"
                                        onclick="javascript: toggleDiv('.hidButtonAdd'); toggleDiv('.hidNewResponsible');" /></span>
                            </div>
                            <div class="clear mrgnTp4 hidNewResponsible" style="display: none">
                                <p>
                                    <label style="margin-left: 5px; font-size: 12px; margin-right: 18px;">
                                        <b>Search For Engineer</b> :</label><asp:TextBox ID="search2" ClientIDMode="Static"
                                            runat="server" Width="375px" CssClass="inputTextBox search2 " MaxLength="200"></asp:TextBox>&nbsp;
                                    <asp:Button ID="btnSaveResponsible" CssClass="buttonGreen small hiddenBtn2" Style="display: none"
                                        runat="server" Text="Save" OnClick="btnSave_Responsible_Click" />
                                    <a id="Button1" class="secondary small hidButtonCancel" onclick="javascript:toggleDiv('.hidButtonAdd');toggleDiv('.hidNewResponsible');">cancel</a>
                                    <asp:HiddenField ID="hidMemberIdBranch" runat="server" />
                                </p>
                            </div>
                            <asp:GridView ID="gvFirmEngineersInResponsibleCharge" runat="server" AutoGenerateColumns="False"
                                CssClass="index brdr radius mrgnTp4 pdng2 grid" Width="98%" Style="margin: 0 auto" CellPadding="4" ForeColor="#333333"
                                GridLines="None" ShowHeader="true">
                                <%--<AlternatingRowStyle BackColor="White" />--%>
                                <Columns>
                                    <asp:TemplateField HeaderText="Engineer Name">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle Width="40%" />
                                        <%--<EditItemTemplate>
                                <asp:TextBox Width="150px" ID="txtResponsibleCharges" runat="server"></asp:TextBox></EditItemTemplate>--%>
                                        <ItemTemplate>
                                            <%# Eval("Engineer_Name")%>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Discipline">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle Width="215px" />
                                        <EditItemTemplate>
                                            <asp:TextBox Width="150px" ID="txtResponsibleChargesDiscipline" runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <%# Eval("Engineer_Discipline")%>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="License#">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle Width="40%" />
                                        <%--<EditItemTemplate>
                                <asp:TextBox Width="150px" ID="txtLicenseNumber" runat="server"></asp:TextBox></EditItemTemplate>--%>
                                        <ItemTemplate>
                                            <%# Eval("Engineer_NV_License_Number")%>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle Width="20%" />
                                        <%--<EditItemTemplate>
                                <asp:ImageButton ID="imgbtnSave" ValidationGroup="VGFeeGrid" CssClass="imgSave" runat="server"
                                    ToolTip="Save" CommandArgument='<%# Eval("Responsible_Charges_ID") %>' RowIndex='<%# Container.DisplayIndex %>'
                                    ImageUrl="~/App_Themes/Theme1/images/save.png" OnClick="imgBtnSave_Click" />
                                <asp:ImageButton ID="imgBtnCancel" runat="server" ToolTip="Cancel" ImageUrl="~/App_Themes/Theme1/images/cancel.png"
                                    OnClick="imgBtnCancel_Click" />
                            </EditItemTemplate>--%>
                                        <ItemTemplate>
                                            <%--<asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" runat="server" ToolTip="Edit"
                                    CommandArgument='<%# Eval("Responsible_Charges_ID") %>' RowIndex='<%# Container.DisplayIndex %>'
                                    ImageUrl="~/App_Themes/Theme1/images/edit.png" OnClick="imgBtnEdit_Click" />--%><%--CommandArgument='<%# Eval("Responsible_Charges_ID") %>'
                                    RowIndex='<%# Container.DisplayIndex %>'--%>
                                            <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                IbtnAddNew_ResponsiblemageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?')" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EmptyDataTemplate>
                                    <div style="background: #fff; height: 20px; border-top: 1px solid #ddd">
                                    </div>
                                </EmptyDataTemplate>
                            </asp:GridView>
                            <%--<asp:Button ID="btnRefresh" runat="server" Text="Refresh" Visible="false" ClientIDMode="Static"
                    OnClick="btnRefresh_Click" />--%>
                        </div>
                        <div class="clear mrgnTp4">
                            <div class="clear">
                                <b>Remark :</b>
                                <div class="clear">
                                </div>
                                <asp:TextBox ID="txtComments" runat="server" Style="width: 98%; height: 70px;" TextMode="MultiLine"
                                    MaxLength="500"></asp:TextBox>
                            </div>
                        </div>
                        <!----end ----->
                    </EditItemTemplate>
                    <ItemStyle />
                    <ItemTemplate>
                        <%--   <%# Eval("Branch_Name")%>--%>
                        Test
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Company ID">
                    <ItemStyle />
                    <ItemTemplate>
                        <%--            <%# Eval("Company_ID")%>--%>
                        BN231
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                    <ItemStyle HorizontalAlign="Center" />
                    <ItemTemplate>
                        <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" RowIndex='<%# Container.DisplayIndex %>'
                            CommandArgument="1" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                            OnClick="imgBtnEdit_Branch_Click" Width="16px" />
                        <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                            ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClick="imgBtnDelete_Branch_Click"
                            OnClientClick="javascript:return confirm('Are you sure you want to delete?')" />
                        <%--<asp:LinkButton ID="btnMemberInfoDelete"
                                runat="server" Text="Delete" CommandArgument='<%#Eval("Member_Info_Id") %>' OnCommand="btnMemberInfoDelete_Click" />--%>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <div style="background: #fff; height: 20px; border-top: 1px solid #ddd">
                    no branch found.
                </div>
            </EmptyDataTemplate>
        </asp:GridView>
    </div>
    <div class="ribbon" style="width: 100%;">
        <div class="holder peel-shadows" style="width: 97.9%; padding: 20px 7px; margin-top: 0px; margin-left: -9px;">
            <asp:Panel ID="pnlBranchControl" Visible="false" runat="server">
                <div class="buttons iefix-5 inline">
                    <asp:Button ID="btnSave" CssClass="buttonGreen medium" runat="server" Text="Save"
                        CausesValidation="true" OnClick="btnSave_Click" />
                    <asp:LinkButton ID="lnkbtnCancel" CssClass="secondary medium bottom" runat="server"
                        OnClick="lnkbtnCancel_Click">Cancel</asp:LinkButton>
                </div>
            </asp:Panel>
            <asp:Panel ID="pnlBranchControlup" Visible="false" runat="server">
                <div class="buttons iefix-5 inline">
                    <asp:Button ID="btnUpdate" CssClass="buttonGreen medium" runat="server" Text="Update"
                        CausesValidation="true" OnClick="btnUpdate_Click" />
                    <asp:LinkButton ID="lnkbtnCancelup" CssClass="secondary medium bottom"
                        runat="server" OnClick="lnkbtnCancelup_Click">Cancel</asp:LinkButton>
                </div>
            </asp:Panel>
        </div>
    </div>

    <style>
        .ui-autocomplete {
            position: absolute;
            cursor: default;
            z-index: 9999;
        }

        .imgDelete {
        }
    </style>
    <script type='text/javascript'>
        $(document).ready(function () {
            StartSearchBranchResp(); StartSearchBranchPrincipal();
        });
        function StartSearchBranchPrincipal() {
            $.widget('custom.mcautocomplete', $.ui.autocomplete, {
                _renderMenu: function (ul, items) {
                    var self = this,
            thead;

                    if (this.options.showHeader) {
                        table = $('<div class="ui-widget-header" style="width:100%"></div>');
                        $.each(this.options.columns, function (index, item) {
                            table.append('<span style="padding:0 4px;float:left;width:' + item.width + ';">' + item.name + '</span>');
                        });
                        table.append('<div style="clear: both;"></div>');
                        ul.append(table);
                    }
                    $.each(items, function (index, item) {
                        self._renderItem(ul, item);
                    });
                },
                _renderItem: function (ul, item) {
                    var t = '',
            result = '';

                    $.each(this.options.columns, function (index, column) {
                        t += '<span style="padding:0 4px;float:left;width:' + column.width + ';">' + item[column.valueField ? column.valueField : index] + '</span>'
                    });

                    //alert(t);

                    result = $('<li></li>').data('ui-autocomplete-item', item).append('<a class="mcacAnchor">' + t + '<div style="clear: both;"></div></a>').appendTo(ul);
                    return result;
                }
            });


            // Sets up the multicolumn autocomplete widget.
            $(".searchPrincipal").mcautocomplete({
                // These next two options are what this plugin adds to the autocomplete widget.
                showHeader: true,
                columns: [{
                    name: 'Engineer',
                    width: '300px',
                    valueField: 'Member_Full_Name'
                },
                {
                    name: 'License#',
                    width: '100px',
                    valueField: 'License_Number'
                },

                ],

                // Event handler for when a list item is selected.
                select: function (event, ui) {
                    this.value = (ui.item ? ui.item.Member_Full_Name : '');
                    $('#' + '<%= hidMemberIdPrincipal.ClientID %> ').val((ui.item ? ui.item.Member_Info_Id : ''));
                    if (ui.item) {
                        $('.hiddenBtnPrincipal').show();
                    }
                    else {
                        $('.hiddenBtnPrincipal').hide();
                    }








                    return false;
                },

                // The rest of the options are for configuring the ajax webservice call.
                minLength: 1,
                source: function (request, response) {
                    try {
                        $(".searchPrincipal").addClass("ui-autocomplete-loading");
                        $.ajax({
                            url: '../AjaxHandler/ServiceHelper.ashx?SearchMember=true',
                            dataType: 'json',
                            data: { searchString: request.term },
                            success: function (data) {
                                var result;
                                if (!data || data.length === 0 || !data.SearchResult || data.SearchResult.length === 0) {
                                    result = [{
                                        label: 'No match found.'
                                    }];
                                    // alert('No match found.');
                                    // alert(data);
                                }
                                else {
                                    result = data.SearchResult;
                                    // alert(result);
                                }
                                response(result);
                            },
                            error: function (data) {
                                alert(data);
                            }
                        });
                    }
                    catch (e) {
                        alert(e);
                    }
                }
            });

        }

        //search responsible charge
        function StartSearchBranchResp() {
            $.widget('custom.mcautocomplete', $.ui.autocomplete, {
                _renderMenu: function (ul, items) {
                    var self = this,
            thead;

                    if (this.options.showHeader) {
                        table = $('<div class="ui-widget-header" style="width:100%"></div>');
                        $.each(this.options.columns, function (index, item) {
                            table.append('<span style="padding:0 4px;float:left;width:' + item.width + ';">' + item.name + '</span>');
                        });
                        table.append('<div style="clear: both;"></div>');
                        ul.append(table);
                    }
                    $.each(items, function (index, item) {
                        self._renderItem(ul, item);
                    });
                },
                _renderItem: function (ul, item) {
                    var t = '',
            result = '';

                    $.each(this.options.columns, function (index, column) {
                        t += '<span style="padding:0 4px;float:left;width:' + column.width + ';">' + item[column.valueField ? column.valueField : index] + '</span>'
                    });

                    //alert(t);

                    result = $('<li></li>').data('ui-autocomplete-item', item).append('<a class="mcacAnchor">' + t + '<div style="clear: both;"></div></a>').appendTo(ul);
                    return result;
                }
            });


            // Sets up the multicolumn autocomplete widget.
            $(".search2").mcautocomplete({
                // These next two options are what this plugin adds to the autocomplete widget.
                showHeader: true,
                columns: [{
                    name: 'Engineer',
                    width: '300px',
                    valueField: 'Member_Full_Name'
                },
                {
                    name: 'License#',
                    width: '100px',
                    valueField: 'License_Number'
                },
                //                {
                //                    name: 'City',
                //                    width: '100px',
                //                    valueField: 'City'
                //                },
                //                {
                //                    name: 'Phone',
                //                    width: '100px',
                //                    valueField: 'Phone'
                //                }
                ],

                // Event handler for when a list item is selected.
                select: function (event, ui) {
                    this.value = (ui.item ? ui.item.Member_Full_Name : '');
                    $('#' + '<%= hidMemberIdBranch.ClientID %> ').val((ui.item ? ui.item.Member_Info_Id : ''));
                    if (ui.item) {
                        $('.hiddenBtn2').show();
                    }
                    else {
                        $('.hiddenBtn2').hide();
                    }








                    return false;
                },

                // The rest of the options are for configuring the ajax webservice call.
                minLength: 1,
                source: function (request, response) {
                    try {
                        $(".search2").addClass("ui-autocomplete-loading");
                        $.ajax({
                            url: '../AjaxHandler/ServiceHelper.ashx?SearchMember=true',
                            dataType: 'json',
                            data: { searchString: request.term },
                            success: function (data) {
                                var result;
                                if (!data || data.length === 0 || !data.SearchResult || data.SearchResult.length === 0) {
                                    result = [{
                                        label: 'No match found.'
                                    }];
                                    // alert('No match found.');
                                    // alert(data);
                                }
                                else {
                                    result = data.SearchResult;
                                    // alert(result);
                                }
                                response(result);
                            },
                            error: function (data) {
                                alert(data);
                            }
                        });
                    }
                    catch (e) {
                        alert(e);
                    }
                }
            });

        }
    </script>
</div>
