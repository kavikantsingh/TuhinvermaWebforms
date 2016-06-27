<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucSchoolInfo.ascx.cs" Inherits="NVBMT_WebProject.Modules.IndiVidual.ucAddress" %>
<div>
    <div id="error_validation" class="address-box posFixed" style="display: none; color: red; margin-top: 0px; border-radius: 5px;"></div>
</div>
<div id="divPanelList" style="border: 1px solid rgb(222, 222, 222); margin-top: 10px;">
    <div class="sectionDiv">
        <span>School Information</span>
    </div>

    <fieldset class="flsParentNewApplReqForm flsParentNewApplReqForm1">
        <p>
            <b>1.&nbsp;&nbsp;School Details :</b>
        </p>
        <asp:Literal ID="ltrPersonalInfoEdit" runat="server"></asp:Literal>
        <div id="MsgDivUploadAll">
        </div>
        <div style="width: 100%;">
            <div style="">
                <table class=" tblApplReqForm5 wdtmarauto">
                    <tr>
                        <td class="txtalgnrgt" style="width: 115px;">
                            <label class="input-label required">
                                School Name :
                            </label>
                        </td>
                        <td colspan="6">
                            <asp:TextBox ID="txtFirstNameEdit" Style="width: 482px !important;" runat="server" CssClass="tooltip OnlyAlphabet inputTextbox capitalize-text NewAppPersonalTxtbx" data-ng-model="ProviderName" title="Only A-Z characters are allowed."></asp:TextBox>
                        </td>

                    </tr>
                    <tr>
                        <td class="txtalgnrgt" style="width: 115px;">
                            <label class="input-label required">
                                School Telephone :
                            </label>
                        </td>
                        <td style="width: 180px;">
                            <asp:TextBox ID="txtSchoolTel" runat="server" Style="width: 170px;" CssClass="phone_us" placeholder="(xxx) xxx-xxxx" data-ng-model="ProviderInformation.ProviderInformationDetails.SchoolTelephone"
                                autocomplete="off"
                                MaxLength="14"></asp:TextBox>
                        </td>
                        <td colspan="6">
                            <asp:CheckBox ID="CheckBox57" Style="margin-left: 10px;" Text="Mobile" runat="server" /></td>

                    </tr>
                    <tr>
                        <td class="txtalgnrgt" style="width: 130px;">
                            <label class="input-label required">School Website :</label>
                        </td>
                        <td colspan="6">
                            <asp:TextBox ID="txtschoolwebsite" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx" data-ng-model="ProviderInformation.ProviderInformationDetails.SchoolWebsite"
                                autocomplete="off" placeholder="www.websitename.com" MaxLength="150"></asp:TextBox>
                        </td>
                    </tr>
                </table>


            </div>
        </div>
    </fieldset>

    <fieldset class="flsParentNewApplReqForm flsParentNewApplReqForm1" style="margin-top: 20px;">
        <p>
            <b>2.&nbsp;&nbsp;Previous School's Names (if any) :</b>
        </p>
        <asp:Literal ID="Literal12" runat="server"></asp:Literal>
        <div style="width: 100%;">
            <table class=" tblApplReqForm5 wdtmarauto">
                <tr>
                    <td class="txtalgnrgt tdwidth1" style="width: 180px !important; padding-bottom: 10px;">
                        <label class="input-label">Previous School Name :</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox64" Style="width: 314px !important;" runat="server" CssClass="tooltip OnlyAlphabet inputTextbox NewAppPersonalTxtbx" data-ng-model="PrevSchoolname"
                            MaxLength="150" title="Only A-Z characters are allowed."></asp:TextBox>
                        <span class="AfterApproved">

                            <input type="button" value="Save" data-ng-click="AddPreviousSchoolInSchoolInformation()" class="buttonGreen small" />
                        </span>
                    </td>
                </tr>
            </table>
            <div data-ag-grid="PrevAddrGrid" class="ag-blue" style="width: 55%; margin-left: 180px; border: 1px solid #ddd; height: 300px;"></div>
        </div>
    </fieldset>

    <fieldset class="flsApplReqForm flsApplReqForm5">
        <%--start--%>
        <asp:Literal ID="ltrResidenceAddEdit" runat="server"></asp:Literal>
        <table class=" tblApplReqForm5">
            <tr>
                <td colspan="5">
                    <b>3.&nbsp;&nbsp;School Address :</b>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: middle; width: 130px;" class="txtalgnrgt">
                    <label class="input-label required">Street : </label>
                </td>
                <td colspan="6">
                    <asp:TextBox ID="TextBox3" runat="server" Width="482px" CssClass="calWidth us_street"
                        MaxLength="500"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan="6">
                    <asp:TextBox ID="txtschool_Add" runat="server" Width="482px" CssClass="calWidth us_street"
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
                    <asp:TextBox ID="txtCityResEdit" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                        Width="124px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                </td>
                <td class="txtalgnrgt" style="width: 52px;">
                    <label class="input-label required">
                        State :
                    </label>
                </td>
                <td style="width: 106px;">
                    <asp:DropDownList ID="ddlStateResEdit" runat="server" Style="width: 105px !important;" CssClass="inputTextbox"
                        title="Select your state">
                        <asp:ListItem Selected="True" Value="CA">CALIFORNIA</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="txtalgnrgt" style="width: 47px;">
                    <label class="input-label required">Zip :</label>
                </td>
                <td>
                    <asp:TextBox ID="txtZipResEdit" runat="server" placeholder="xxxxx-xxxx or xxxxx" CssClass="tooltip zip_us calWidth" Width="124px" MaxLength="500" title="Enter valid Zip eg: XXXXX-XXXX or XXXXX"></asp:TextBox>
                </td>
            </tr>
        </table>
        <div class="clear">
        </div>
        <div id="divVerifySchoolAddressBtn" runat="server" style="padding: 10px;">
            <span class="fltrt" style="margin-right: 74px;">
                <asp:Button ID="btnVerifySchoolAddress" CssClass="btn-success btn-xs" runat="server" OnClientClick="btnVerifySchoolAddress()"
                    Text="Verify Address" />
            </span>
        </div>

        <div id="divVerifySchoolAddressPnl" runat="server" visible="false" class="address-box">
            <div>
                <span class="fltrt">
                    <asp:ImageButton ID="imgbtnCloseVerifyAddress" ImageUrl="~/App_Themes/Theme1/images/close-icon.png"
                        runat="server" />
                </span>
            </div>
            <div>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 50%;">
                            <p style="font-size: 14px; font-weight: bold; padding-left: 58px;">User Address</p>
                        </td>
                        <td style="width: 50%;">
                            <p style="font-size: 14px; font-weight: bold; padding-left: 55px;">
                                Verified Address
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table style="width: 100%">
                                <tr>
                                    <td align="right" style="width: 110px;">
                                        <label class="input-label">
                                            <b>Street :</b>
                                        </label>
                                    </td>
                                    <td style="width: 220px;">
                                        <asp:Label ID="lblUSchoolStreet1" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <asp:Label ID="lblUSchoolStreet2" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label">
                                            <b>City :</b>Previous School Name
                                        </label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblUSchoolCity" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label">
                                            <b>State :</b>
                                        </label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblUSchoolState" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label">
                                            <b>Zip :</b>
                                        </label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblUSchoolZip" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="vertical-align: baseline;">
                            <div id="divNotVerifiedAdd" runat="server">
                                <table style="width: 100%">
                                    <tr>
                                        <td align="right" style="width: 107px;">
                                            <label class="input-label">
                                                <b>Street :</b>
                                            </label>
                                        </td>
                                        <td style="width: 220px;">
                                            <asp:Label ID="lblVSchoolStreet1" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Label ID="lblVSchoolStreet2" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label">
                                                <b>City :</b>
                                            </label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblVSchoolCity" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label">
                                                <b>State :</b>
                                            </label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblVSchoolState" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label">
                                                <b>Zip :</b>
                                            </label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblVSchoolZip" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <p style="color: Red; text-align: center;">
                                <asp:Label ID="lblUnverifiedAdd" runat="server" Style="display: block; position: relative; top: 21px;"></asp:Label>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="padding-top: 13px !important;">
                            <asp:Button ID="btnVerifySchoolAddressYes" CssClass="btn-warning btn-xs" runat="server"
                                Text="Use User Address" />
                        </td>
                        <td align="center">
                            <asp:Button ID="btnVerifySchoolAddressNo" CssClass="btn-success btn-xs" runat="server"
                                Text="Use Verified Address" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <%--end--%>
        <div class="clear">
        </div>
        <%--start--%>
        <table class=" tblApplReqForm5">
            <tr>
                <td colspan="5">
                    <b>4.&nbsp;&nbsp;Previous Address (if any) :</b>
                </td>
            </tr>
        </table>
        <div class="divLicenseInfon divaddnew AfterApproved" id="divAddbtnSchoolInfoPrevious"
            runat="server">
            <span style="float: right; margin-right: 32px; margin-top: 15px;">
                <asp:Button ID="btnSchoolInfoPreviousAddNew" CssClass="buttonGreen small" runat="server"
                    Text="Add" CausesValidation="true" />
            </span>
        </div>

        <asp:Literal ID="ltrSchoolInfoPrevious" runat="server"></asp:Literal>

        <div class="divLicenseInfo" id="divAddSchoolInfoPrevious" runat="server" style="width: 91%; margin-top: 20px; margin-bottom: 10px;">
            <p class="addNewDiv">
                <span>School Previous Address</span>
            </p>
            <table class="tblApplReqForm5 wthtop20" style="width: 96%;">
                <tr>
                    <td style="vertical-align: middle; width: 97px;" class="txtalgnrgt">
                        <label class="input-label">
                            Street :
                        </label>
                    </td>
                    <td colspan="5">
                        <asp:TextBox ID="txtPreviousAdd" runat="server" Width="482px" CssClass="calWidth us_street" data-ng-model="PrevAdd.StreetLine1"
                            MaxLength="500"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="6">
                        <asp:TextBox ID="TextBox16" runat="server" Width="482px" CssClass="calWidth us_street" data-ng-model="PrevAdd.StreetLine2"
                            MaxLength="500"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="txtalgnrgt">
                        <label class="input-label">
                            City :
                        </label>
                    </td>
                    <td style="width: 151px;">
                        <asp:TextBox ID="txtPreviousCity" runat="server" CssClass="tooltip OnlyAlphabet calWidth" data-ng-model="PrevAdd.City"
                            Width="124px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                    </td>
                    <td class="txtalgnrgt" style="width: 52px;">
                        <label class="input-label">
                            State :
                        </label>
                    </td>
                    <td style="width: 106px;">
                        <%--ng-options="item.Id as item.CountryName for item in Country"--%>
                        <select data-ng-model="PrevAdd.StateCode" style="width: 105px !important;" class="inputTextbox" name="CountryId">
                            <option value="CA" selected="selected">CALIFORNIA</option>
                        </select>

                        <%--   <asp:DropDownList ID="ddlPreviousAddState" Style="width: 105px !important;" runat="server" CssClass="inputTextbox" data-ng-model=""
                            title="Select your state">
                            <asp:ListItem Selected="True" Value="CA">CALIFORNIA</asp:ListItem>
                        </asp:DropDownList>--%>
                    </td>


                    <td class="txtalgnrgt" style="width: 47px;">
                        <label class="input-label">
                            Zip :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPreviousAddzip" runat="server" placeholder="xxxxx-xxxx or xxxxx" data-ng-model="PrevAdd.Zip"
                            CssClass="tooltip zip_us calWidth" Width="125px" MaxLength="500" title="Enter valid Zip eg: XXXXX-XXXX or XXXXX"></asp:TextBox>
                    </td>
                </tr>

            </table>

            <div id="divVerifyPreviousAddressBtn" runat="server" style="padding: 10px; width: 100%; float: right;">
                <span class="fltrt" style="margin-right: 44px;">
                    <asp:Button ID="btnVerifyPreviousAddress" CssClass="btn-success btn-xs" runat="server"
                        Text="Verify Address" />
                </span>
            </div>

            <div id="divVerifyPreviousAddressPnl" runat="server" visible="false" class="address-box" style="margin-top: -144px;">
                <div>
                    <span class="fltrt">
                        <asp:ImageButton ID="imgbtnCloseVerifyAddress1" ImageUrl="~/App_Themes/Theme1/images/close-icon.png"
                            runat="server" />
                    </span>
                </div>
                <div>
                    <table style="width: 100%;">
                        <tr>
                            <td style="width: 50%;">
                                <p style="font-size: 14px; font-weight: bold; padding-left: 58px;">
                                    User Address
                                </p>
                            </td>
                            <td style="width: 50%;">
                                <p style="font-size: 14px; font-weight: bold; padding-left: 55px;">
                                    Verified Address
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table style="width: 100%">
                                    <tr>
                                        <td align="right" style="width: 110px;">
                                            <label class="input-label">
                                                <b>Street :</b>
                                            </label>
                                        </td>
                                        <td style="width: 220px;">
                                            <asp:Label ID="lblUPreviousStreet1" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Label ID="lblUPreviousStreet2" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label">
                                                <b>City :</b>
                                            </label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblUPreviousCity" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label">
                                                <b>State :</b>
                                            </label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblUPreviousState" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label">
                                                <b>Zip :</b>
                                            </label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblUPreviousZip" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="vertical-align: baseline;">
                                <div id="divNotVerifiedAdd1" runat="server">
                                    <table style="width: 100%">
                                        <tr>
                                            <td align="right" style="width: 107px;">
                                                <label class="input-label">
                                                    <b>Street :</b>
                                                </label>
                                            </td>
                                            <td style="width: 220px;">
                                                <asp:Label ID="lblVPreviousStreet1" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <asp:Label ID="lblVPreviousStreet2" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">
                                                    <b>City :</b>
                                                </label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblVPreviousCity" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">
                                                    <b>State :</b>
                                                </label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblVPreviousState" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">
                                                    <b>Zip :</b>
                                                </label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblVPreviousZip" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <p style="color: Red; text-align: center;">
                                    <asp:Label ID="lblUnverifiedAdd1" runat="server" Style="display: block; position: relative; top: 21px;"></asp:Label>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="padding-top: 13px !important;">
                                <asp:Button ID="btnVerifyPreviousAddressYes" CssClass="btn-warning btn-xs" runat="server"
                                    Text="Use User Address" />
                            </td>
                            <td align="center">
                                <asp:Button ID="btnVerifyPreviousAddressNo" CssClass="btn-success btn-xs" runat="server"
                                    Text="Use Verified Address" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                <span class="fltrt">

                    <input type="button" value="Add" data-ng-click="AddPreviousAddress()" class="buttonGreen small" />
                    <%-- <asp:Button ID="btnSchoolInfoPreviousAddNewSave" CssClass="buttonGreen medium"
                        runat="server" Text="Save" CausesValidation="true" />--%>
                    <asp:LinkButton ID="lnkSchoolInfoPreviousAddNewCancel" CssClass="secondary medium bottom buttonalignment"
                        runat="server">Cancel</asp:LinkButton></span>
            </div>
        </div>

        <div class="divLicenseInfo" style="margin-top: 20px; width: 91%;">
            <div data-ag-grid="PrevAddrIfanyGrid" class="ag-blue" style="color: #000; height: 300px;"></div>
        </div>

        <%--end--%>
        <div class="clear">
        </div>
        <%--start--%>
        <table class=" tblApplReqForm5">

            <tr>
                <td colspan="5">
                    <b>5.&nbsp;&nbsp;Mailing Address (if different from school address) :</b>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: middle; width: 130px;" class="txtalgnrgt">
                    <label class="input-label required">
                        Street :
                    </label>
                </td>
                <td colspan="5">
                    <asp:TextBox ID="txtMailingAdd" runat="server" Width="482px" CssClass="calWidth us_street"
                        MaxLength="500"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan="6">
                    <asp:TextBox ID="TextBox140" runat="server" Width="482px" CssClass="calWidth us_street"
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
                    <asp:TextBox ID="txtMailingCity" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                        Width="124px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                </td>
                <td class="txtalgnrgt" style="width: 52px;">
                    <label class="input-label required">
                        State :
                    </label>
                </td>
                <td style="width: 106px;">
                    <asp:DropDownList ID="ddlMailingState" runat="server" Style="width: 105px !important;" CssClass="inputTextbox"
                        title="Select your state">
                        <asp:ListItem Selected="True" Value="CA">CALIFORNIA</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="txtalgnrgt" style="width: 47px;">
                    <label class="input-label required">
                        Zip :
                    </label>
                </td>
                <td>
                    <asp:TextBox ID="txtMailngZip" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                        CssClass="tooltip zip_us calWidth" Width="124px" MaxLength="500" title="Enter valid Zip eg: XXXXX-XXXX or XXXXX"></asp:TextBox>
                </td>
            </tr>
        </table>

        <div class="clear">
        </div>

        <div id="divVerifySchoolMailingAddressBtn" runat="server" style="padding: 10px;">
            <span class="fltrt" style="margin-right: 74px;">
                <asp:Button ID="btnVerifySchoolMailingAddress" CssClass="btn-success btn-xs" runat="server" OnClientClick="btnVerifySchoolMailingAddress()"
                    Text="Verify Address" />
            </span>
        </div>

        <div id="divVerifySchoolMailingAddressPnl" runat="server" visible="false" class="address-box">
            <div>
                <span class="fltrt">
                    <asp:ImageButton ID="ImageButton3" ImageUrl="~/App_Themes/Theme1/images/close-icon.png"
                        runat="server" />
                </span>
            </div>
            <div>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 50%;">
                            <p style="font-size: 14px; font-weight: bold; padding-left: 58px;">
                                User Address
                            </p>
                        </td>
                        <td style="width: 50%;">
                            <p style="font-size: 14px; font-weight: bold; padding-left: 55px;">
                                Verified Address
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table style="width: 100%">
                                <tr>
                                    <td align="right" style="width: 110px;">
                                        <label class="input-label">
                                            <b>Street :</b>
                                        </label>
                                    </td>
                                    <td style="width: 220px;">
                                        <asp:Label ID="lblUSchoolMailingStreet1" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <asp:Label ID="lblUSchoolMailingStreet2" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label">
                                            <b>City :</b>
                                        </label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblUSchoolMailingCity" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label">
                                            <b>State :</b>
                                        </label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblUSchoolMailingState" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label">
                                            <b>Zip :</b>
                                        </label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblUSchoolMailingZip" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="vertical-align: baseline;">
                            <div id="div3" runat="server">
                                <table style="width: 100%">
                                    <tr>
                                        <td align="right" style="width: 107px;">
                                            <label class="input-label">
                                                <b>Street :</b>
                                            </label>
                                        </td>
                                        <td style="width: 220px;">
                                            <asp:Label ID="lblVSchoolMailingStreet1" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Label ID="lblVSchoolMailingStreet2" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label">
                                                <b>City :</b>
                                            </label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblVSchoolMailingCity" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label">
                                                <b>State :</b>
                                            </label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblVSchoolMailingState" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label">
                                                <b>Zip :</b>
                                            </label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblVSchoolMailingZip" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <p style="color: Red; text-align: center;">
                                <asp:Label ID="Label1" runat="server" Style="display: block; position: relative; top: 21px;"></asp:Label>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="padding-top: 13px !important;">
                            <asp:Button ID="btnVerifySchoolMailingAddressYes" CssClass="btn-warning btn-xs"
                                runat="server"
                                Text="Use User Address" />
                        </td>
                        <td align="center">
                            <asp:Button ID="btnVerifySchoolMailingAddressNo" CssClass="btn-success btn-xs" runat="server"
                                Text="Use Verified Address" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <%--end--%>
        <div class="clear"></div>
        <%--start--%>
        <table class="tblApplReqForm5" style="width: 100%">
            <tr>
                <td colspan="5">
                    <b>6.&nbsp;&nbsp;Director/Administrator Name & Job Title :</b>
                </td>
            </tr>
            <tr>
                <td class="txtalgnrgt" style="width: 124px;">
                    <label class="input-label required">
                        Name :
                    </label>
                </td>

                <td style="width: 151px;">
                    <asp:TextBox ID="TextBox141" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                        Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                </td>



                <td class="txtalgnrgt" style="width: 110px;">
                    <label class="input-label required">
                        Administrator Email :
                    </label>
                </td>
                <td style="width: 150px;">
                    <asp:TextBox ID="txtDirectorEmail" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx" placeholder="joe@email.com" data-ng-model="ProviderInformation.ProviderInformationDetails.DirectorAdministratorEmaile"
                        Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="txtalgnrgt" style="width: 124px;">
                    <label class="input-label required">
                        Job Title  :
                    </label>
                </td>

                <td style="width: 151px;">
                    <asp:TextBox ID="txtSclInfoJobTitle" runat="server" CssClass="tooltip OnlyAlphabet calWidth" data-ng-model="ProviderInformation.ProviderInformationDetails.DirectorAdministratorEmaile"
                        Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                </td>
                <td colspan="2"></td>
            </tr>
            <tr>
                <td class="txtalgnrgt" style="width: 124px;">
                    <label class="input-label required">
                        Primary Number :
                    </label>
                </td>
                <td style="width: 151px;">
                    <asp:TextBox ID="txtDirectorTel" runat="server" CssClass="phone_us" autocomplete="off" placeholder="(xxx) xxx-xxxx" data-ng-model="ProviderInformation.ProviderInformationDetails.DirectorPrimaryNumber"
                        Width="170px" MaxLength="14"></asp:TextBox>

                </td>
                <td style="text-align: left;">
                    <asp:CheckBox ID="CheckBox15" runat="server" Text="Mobile" /></td>
            </tr>
            <tr>
                <td class="txtalgnrgt" style="width: 124px;">
                    <label class="input-label">
                        Secondary Number :
                    </label>
                </td>
                <td style="width: 151px;">
                    <asp:TextBox ID="TextBox142" runat="server" CssClass="phone_us" autocomplete="off" placeholder="(xxx) xxx-xxxx" data-ng-model="ProviderInformation.ProviderInformationDetails.DirectorSecondaryNumber"
                        Width="170px" MaxLength="14"></asp:TextBox>

                </td>
                <td style="text-align: left;">
                    <asp:CheckBox ID="CheckBox16" runat="server" Text="Mobile" /></td>
            </tr>

        </table>

        <%--end--%>
        <div class="clear">
        </div>
        <%--start--%>
        <table class="tblApplReqForm5" style="width: 100%; margin-bottom: 5px;">
            <tr>
                <td colspan="5">
                    <b>7.&nbsp;&nbsp;Contact Name for this Application & Job Title (if different than Director/Administrator Name & Job Title) :</b>
                </td>
            </tr>
            <tr>
                <td class="txtalgnrgt" style="width: 124px;">
                    <label class="input-label">
                        Name :
                    </label>
                </td>

                <td style="width: 151px;">
                    <asp:TextBox ID="txtApplicationName" runat="server" CssClass="tooltip OnlyAlphabet calWidth" data-ng-model="ProviderInformation.ProviderInformationDetails.ContactNameAdministratorEmail"
                        Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                </td>



                <td class="txtalgnrgt" style="width: 110px;">
                    <label class="input-label">
                        Contact Email :
                    </label>
                </td>
                <td style="width: 150px;">
                    <asp:TextBox ID="txtApplicationEmail" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx" placeholder="joe@email.com" data-ng-model="ProviderInformation.ProviderInformationDetails.ContactNameAdministratorEmail"
                        Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="txtalgnrgt" style="width: 124px;">
                    <label class="input-label">
                        Job Title  :
                    </label>
                </td>

                <td style="width: 151px;">
                    <asp:TextBox ID="txtSchInfoSecJobtitle" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                        Width="170px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                </td>
                <td colspan="2"></td>
            </tr>
            <tr>
                <td class="txtalgnrgt" style="width: 124px;">
                    <label class="input-label">
                        Primary Number :
                    </label>
                </td>
                <td style="width: 151px;">
                    <asp:TextBox ID="txtApplicationNum" runat="server" CssClass="phone_us" autocomplete="off" placeholder="(xxx) xxx-xxxx" data-ng-model="ProviderInformation.ProviderInformationDetails.ContactNamePrimaryNumber"
                        Width="170px" MaxLength="14"></asp:TextBox>

                </td>
                <td style="text-align: left;">
                    <asp:CheckBox ID="CheckBox17" runat="server" Text="Mobile" /></td>
            </tr>
            <tr>
                <td class="txtalgnrgt" style="width: 124px;">
                    <label class="input-label">
                        Secondary Number :
                    </label>
                </td>
                <td style="width: 151px;">
                    <asp:TextBox ID="TextBox143" runat="server" CssClass="phone_us" autocomplete="off" placeholder="(xxx) xxx-xxxx" data-ng-model="ProviderInformation.ProviderInformationDetails.ContactNameSecondaryNumber"
                        Width="170px" MaxLength="14"></asp:TextBox>

                </td>
                <td style="text-align: left;">
                    <asp:CheckBox ID="CheckBox18" runat="server" Text="Mobile" /></td>
            </tr>

        </table>

        <%--end--%>

        <div class="clear">
        </div>
        <%--satellite location--%>
        <table class=" tblApplReqForm5">

            <tr>
                <td colspan="5">
                    <b>8.&nbsp;&nbsp;Satellite Location Address (if any) :</b>
                </td>
            </tr>

        </table>


        <div class="divLicenseInfon divaddnew AfterApproved" id="divAddbtnSatelliteLocation"
            runat="server">
            <span style="float: right; margin-right: 32px; margin-top: 15px;">
                <asp:Button ID="btnSatelliteLocationAddNew" CssClass="buttonGreen small" runat="server"
                    Text="Add" CausesValidation="true" />
            </span>


        </div>

        <asp:Literal ID="ltrSatelliteLocation" runat="server"></asp:Literal>

        <div class="divLicenseInfo" id="divAddSatelliteLocation" runat="server" style="width: 91%; margin-top: 20px; margin-bottom: 10px;">
            <p class="addNewDiv">
                <span>Satellite Location Address </span>
            </p>
            <table class="tblApplReqForm5 wthtop20" style="width: 96%;">
                <tr>
                    <td style="vertical-align: middle; width: 130px;" class="txtalgnrgt">
                        <label class="input-label">
                            Street :
                        </label>
                    </td>

                    <td colspan="5">
                        <asp:TextBox ID="txtSatelliteLoc" runat="server" Width="482px" CssClass="calWidth us_street" data-ng-model="SateliteAdd.StreetLine1"
                            MaxLength="500"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="6">
                        <asp:TextBox ID="TextBox144" runat="server" Width="482px" CssClass="calWidth us_street" data-ng-model="SateliteAdd.StreetLine2"
                            MaxLength="500"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="txtalgnrgt">
                        <label class="input-label">
                            City :
                        </label>
                    </td>
                    <td style="width: 151px;">
                        <asp:TextBox ID="txtSatelliteCity" runat="server" CssClass="tooltip OnlyAlphabet calWidth" data-ng-model="SateliteAdd.City"
                            Width="124px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                    </td>
                    <td class="txtalgnrgt" style="width: 52px;">
                        <label class="input-label">
                            State :
                        </label>
                    </td>
                    <td style="width: 106px;">
                        <select data-ng-model="SateliteAdd.StateCode" style="width: 105px !important;" class="inputTextbox" name="CountryId">
                            <option value="CA" selected="selected">CALIFORNIA</option>
                        </select>
                    </td>
                    <td class="txtalgnrgt" style="width: 47px;">
                        <label class="input-label">
                            Zip :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSatelliteZip" runat="server" placeholder="xxxxx-xxxx or xxxxx" data-ng-model="SateliteAdd.Zip"
                            CssClass="tooltip zip_us calWidth" Width="125px" MaxLength="500" title="Enter valid Zip eg: XXXXX-XXXX or XXXXX"></asp:TextBox>
                    </td>
                </tr>
            </table>



            <div id="divVerifySatelliteLocationAddressBtn" runat="server" style="width: 100%; float: right; padding: 10px;">
                <span class="fltrt" style="margin-right: 16px;">
                    <asp:Button ID="btnVerifySatelliteLocationAddress" CssClass="btn-success btn-xs" runat="server"
                        Text="Verify Address" />
                </span>
            </div>

            <div id="divVerifySatelliteLocationAddressPnl" visible="false" runat="server" class="address-box">
                <div>
                    <span class="fltrt">
                        <asp:ImageButton ID="ImageButton4" ImageUrl="~/App_Themes/Theme1/images/close-icon.png"
                            runat="server" />
                    </span>
                </div>
                <div>
                    <table style="width: 100%;">
                        <tr>
                            <td style="width: 50%;">
                                <p style="font-size: 14px; font-weight: bold; padding-left: 58px;">
                                    User Address
                                </p>
                            </td>
                            <td style="width: 50%;">
                                <p style="font-size: 14px; font-weight: bold; padding-left: 55px;">
                                    Verified Address
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table style="width: 100%">
                                    <tr>
                                        <td align="right" style="width: 110px;">
                                            <label class="input-label">
                                                <b>Street :</b>
                                            </label>
                                        </td>
                                        <td style="width: 220px;">
                                            <asp:Label ID="lblUSatelliteLocationStreet1" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Label ID="lblUSatelliteLocationStreet2" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label">
                                                <b>City :</b>
                                            </label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblUSatelliteLocationCity" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label">
                                                <b>State :</b>
                                            </label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblUSatelliteLocationState" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <label class="input-label">
                                                <b>Zip :</b>
                                            </label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblUSatelliteLocationZip" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="vertical-align: baseline;">
                                <div id="div25" runat="server">
                                    <table style="width: 100%">
                                        <tr>
                                            <td align="right" style="width: 107px;">
                                                <label class="input-label">
                                                    <b>Street :</b>
                                                </label>
                                            </td>
                                            <td style="width: 220px;">
                                                <asp:Label ID="lblVSatelliteLocationStreet1" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <asp:Label ID="lblVSatelliteLocationStreet2" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">
                                                    <b>City :</b>
                                                </label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblVSatelliteLocationCity" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">
                                                    <b>State :</b>
                                                </label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblVSatelliteLocationState" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <label class="input-label">
                                                    <b>Zip :</b>
                                                </label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblVSatelliteLocationZip" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <p style="color: Red; text-align: center;">
                                    <asp:Label ID="Label2" runat="server" Style="display: block; position: relative; top: 21px;"></asp:Label>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="padding-top: 13px !important;">
                                <asp:Button ID="btnVerifySatelliteLocationAddressYes" CssClass="btn-warning btn-xs"
                                    runat="server"
                                    Text="Use User Address" />
                            </td>
                            <td align="center">
                                <asp:Button ID="btnVerifySatelliteLocationAddressNo" CssClass="btn-success btn-xs"
                                    runat="server"
                                    Text="Use Verified Address" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>


            <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                <span class="fltrt">
                    <input type="button" value="Save" data-ng-click="AddSateliteAddress()" class="buttonGreen medium" />
                    <asp:LinkButton ID="lnkSatelliteLocationAddNewCancel" CssClass="secondary medium bottom buttonalignment" runat="server">Cancel</asp:LinkButton></span>
            </div>
        </div>
        <div class="divLicenseInfo" style="margin-top: 20px; width: 91%;">
            <div data-ag-grid="SateliteAddrIfanyGrid " class="ag-blue" style="color: #000; height: 300px;"></div>
        </div>


        <div class="clear">
        </div>
        <table class=" tblApplReqForm5">

            <tr>
                <td colspan="5">
                    <b>9.&nbsp;&nbsp;MBLEx Scroes (if any) :</b>
                </td>
            </tr>

        </table>

        <div class="divLicenseInfo" id="dvadlx" runat="server" style="margin-top: 30px;">

            <p class="addNewDiv">
                <span>MBLEx Passing Rates</span>
            </p>

            <table class="tblApplReqForm5 wthtop20" style="width: 99%;">
                <tr>
                    <td class="txtalgnrgt">
                        <label class="input-label">
                            Passing Rate :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td class="txtalgnrgt">
                        <label class="input-label">
                            Year :
                        </label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList4" Style="width: 144px ! important;" runat="server" CssClass="inputTextbox">
                            <asp:ListItem Value="-1">Select</asp:ListItem>

                        </asp:DropDownList>
                    </td>

                </tr>
                <tr>
                    <td class="txtalgnrgt">
                        <label class="input-label">
                            Half :
                        </label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" Style="width: 144px ! important;" runat="server" CssClass="inputTextbox">
                            <asp:ListItem Value="-1">Select</asp:ListItem>

                        </asp:DropDownList>
                    </td>

                </tr>

            </table>

            <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                <span class="fltrt">
                    <asp:Button ID="Button5" CssClass="buttonGreen medium"
                        runat="server" Text="Save" CausesValidation="true" />
                    <asp:LinkButton ID="LinkButton1" CssClass="secondary medium bottom buttonalignment"
                        runat="server">Cancel</asp:LinkButton></span>
            </div>




        </div>

        <div data-ag-grid="MBLExGrid " class="ag-blue" style="color: #000; height: 300px; width: 98%; border: 1px solid rgb(221, 221, 221) ! important; margin-left: 7px; box-shadow: none; margin-top: 23px;"></div>

        <table class=" tblApplReqForm5">

            <tr>
                <td colspan="5">
                    <b>10.&nbsp;&nbsp;Site Visits (if any) :</b>
                </td>
            </tr>

        </table>



        <div class="divLicenseInfo" id="dvsitevisits" runat="server" style="margin-top: 30px;">

            <p class="addNewDiv">
                <span></span>
            </p>

            <table class="tblApplReqForm5 wthtop20" style="width: 100%;">
                <tr>
                    <td class="txtalgnrgt">
                        <label class="input-label required">
                            Site Visit Date :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox15" CssClass="inputTextbox calender" runat="server" placeholder="MM/DD/YYYY"></asp:TextBox>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="txtalgnrgt">
                        <label class="input-label required">
                            Type of Site Visit :
                        </label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="true" CssClass="inputTextbox">
                            <asp:ListItem Value="-1">Select</asp:ListItem>

                        </asp:DropDownList>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="txtalgnrgt">
                        <label class="input-label required">
                            Site Inspector :
                        </label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="true" CssClass="inputTextbox">
                            <asp:ListItem Value="-1">Select</asp:ListItem>

                        </asp:DropDownList>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="6"></td>
                </tr>
                <tr>
                    <td colspan="6" class="sitevisite" style="padding: 0px !important;"><span>Site Visit Documents</span></td>

                </tr>
                <tr>
                    <td class="txtalgnrgt">
                        <label class="input-label required">
                            Document Name :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                    </td>
                    <td class="txtalgnrgt">
                        <label class="input-label required">
                            Document Type :
                        </label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="true" CssClass="inputTextbox">
                            <asp:ListItem Value="-1">Select</asp:ListItem>
                            <asp:ListItem Value="1">Drivers License</asp:ListItem>
                            <asp:ListItem Value="2">Government ID Card</asp:ListItem>
                            <asp:ListItem Value="3">Passport</asp:ListItem>
                            <asp:ListItem Value="4">Other (specify)</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr id="tr1" runat="server" visible="false">
                    <td></td>
                    <td></td>
                    <td class="txtalgnrgt" style="width: 135px;">
                        <label class="input-label">
                            Other Document Type :
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox14" Width="167px" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="txtalgnrgt">
                        <label class="input-label required">
                            Document :
                        </label>
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td colspan="3">
                        <asp:Button ID="Button4" Style="margin-left: 10px;" runat="server" CssClass="buttonGreen small" Text="Upload" /></td>
                    <td></td>
                </tr>
            </table>

            <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
                <span class="fltrt">
                    <asp:Button ID="Button6" CssClass="buttonGreen medium" OnClientClick="Button6()"
                        runat="server" Text="Save" CausesValidation="true" />
                    <asp:LinkButton ID="LinkButton2" CssClass="secondary medium bottom buttonalignment"
                        runat="server">Cancel</asp:LinkButton></span>
            </div>

        </div>

        <div data-ag-grid="SiteDetailsGrid " class="ag-blue" style="color: #000; height: 300px; width: 98%; border: 1px solid rgb(221, 221, 221) ! important; margin-left: 7px; box-shadow: none; margin-top: 23px;"></div>


    </fieldset>

    <div class="address-box posFixed" id="divEMail" visible="false" runat="server" style="min-height: 30px; width: 87%; margin: 15px auto;">

        <div class="header">
            <asp:Label ID="lblErrorPnl1" runat="server" Text=""></asp:Label>

        </div>
        <div class="" style="margin: 0 auto; width: 300px; line-height: 30px">

            <style>
                .padding-table td {
                    padding: 4px;
                }
            </style>
        </div>
    </div>

    <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
        <span class="fltrt">
            <asp:Button ID="btnSavePersonalInfo" CssClass="buttonGreen medium" runat="server" OnClientClick="btnSavePersonalInfo()"
                Text="Save" />
            <asp:LinkButton ID="lnkCancelPersonalInfo" CssClass="secondary medium bottom buttonalignment"
                runat="server">Cancel</asp:LinkButton></span>
    </div>

</div>
<style type="text/css">
    .sectionDiv {
        height: 30px;
        background-color: #D6D3D3;
        line-height: 30px;
        padding-left: 10px;
        font-size: 14px;
        font-weight: bold;
    }

    .flsApplReqForm {
        border: 1px solid #EAEAEA;
        width: 95%;
        margin: 10px auto 0px;
    }

    fieldset {
        border: 0px none !important;
    }

    .flsParentNewApplReqForm {
        border: 1px solid #EAEAEA;
        width: 95%;
        margin: 10px auto 0px;
    }

    .wdtmarauto {
        width: 96%;
        margin: 0px a table.tb A 5;

    {
        line-h x;
    }


    .a {
        positi ve;
        marg n-top: - mi -heig bckgrond-color: #FF4F;
        ing: 12px border: 1p d 5, 5, 28, 0.4);
        px;
        -inex: 1;
    }

    . eqForm5 td {
        padding 10px p tant;
    }

    new {
        he;
    }


    icenseI fo m; w b rder: 1 EEE;
    }

    NewDiv {
        : center;
        height: line-h ight: background-color: #F9FF9;
        f: bold;
    }

    .g -other-n me indx t th {
        px !importan;
        p 0px 0px 0px 3 x t;
        l ne-he;
    }

    .rea {
        addin: margin-bot o marin-to: 20px;
        .f sNew m;

    {
        bordr: 1 i A;
        dth: 95% : 10px uto;
    }

    hr {
        dis k;
        h ight: 1px;
        -width: 1px 0 x 0p;
        border-syle: solid none none border-color: #CCC -mo -use- -moz-use-text-color;
        r-top-colors: none;
        -mo ight-colors: none;
        -m bottom-colors none -moz-b rde-lef none;
        e none;
        em 0px ng: 0px;
    }


    ing {
        wid 0 bakgroud- o fot-we b;
    }

    ody td {
        ng: 4px 3px;
        .listbox;

    {
        215px;
        he x;
        overfow-x: verf o solid DDD;
        adding: 8px;
    }

    .gvDivUpr {
        lor: #000;
        amily: Aria,Helvet erif;
        font-s fo t-style font-v riant: font weigh le ter- ormal;
        text- t;
        ext-ind text tran white-space: or a word- pacng: 0x;
        tablebor er_t b solid #DEDEDE;
        p x;
    }

    tab order-collapse: c borer-spcing: 0p .fls p {
        bordr: 1 i A;
        width: 95%;
        10px au o 0x;
    }

    .histo l orm5 td paddin: 2px 0p mportant
    }

    history .tb e m5 .grid td {
        padding: 0px 0px 0px 4px !important;
    }
</style>
