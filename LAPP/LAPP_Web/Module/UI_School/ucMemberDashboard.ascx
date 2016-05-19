<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucMemberDashboard.ascx.cs"
    Inherits="ucMemberDashboard" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<style>
    .additionl-links a {
        color: Blue !important;
        text-decoration: underline;
    }

   
</style>
<script>

    function ApplicationStatus() {
        var dive = document.getElementById("SchoolStatus");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }


    $(document).ready(function () {
        $("#IDapplicationstatus").click(function () {
            
            $("#ApplicationDetailsDas").toggleClass("height_fix");
        });
    });
</script>
<asp:UpdatePanel ID="Upnal" runat="server">
    <ContentTemplate>
        <div class="user-dashboard">
            <div class="dashbaord-container">
                <div class="dashboard-block-left">
                    <div class="dashboard-block dashboard-border">
                        <div class="dashboard-block-header" style="padding: 6px 10px 10px 5px;">
                            Address Detail <span class="fltrt">
                                <asp:Button ID="EditMailingbtn" runat="server" Visible="true" ToolTip="Edit" CssClass="Editbtn imgDelete small"
                                    Text="Edit" CommandArgument="1" OnClick="EditMailingbtn_Click" /></span>
                        </div>

                        <div id="divGridPhysicalAddress" runat="server" class="divquestion divCharacterReferences">
                            <div style="height: 30px; border-bottom: solid 1px #e5e5e5;">
                                <table style="margin: 8px; width: 97%; margin: 0 auto;">
                                    <tr>
                                        <td align="left" style="vertical-align: middle;">
                                            <b>Home Address</b>
                                        </td>
                                        <td style="width: 238px;">
                                            <img style="float: right; width: 25px; cursor: pointer; margin-top: 6px;" src="../../App_Themes/Public/images/email.png" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div>
                                <table class="index  grid" id="Table1" style="color: #333333; width: 100%; border-collapse: collapse;"
                                    cellpadding="5" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td style="width: 100px;">
                                                <table style="width: 100%">
                                                    <tbody>
                                                        <tr>
                                                            <td style="width: 102px;" align="right">
                                                                <b>Street <span class="Apple-converted-space">&nbsp;</span>:</b>
                                                            </td>
                                                            <td colspan="5">PO Box 14166
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                                <b>City :</b>
                                                            </td>
                                                            <td>California
                                                            </td>
                                                            <td align="right">
                                                                <b>State :</b>
                                                            </td>
                                                            <td>CA
                                                            </td>
                                                            <td align="right">
                                                                <b>Zip :</b>
                                                            </td>
                                                            <td style="width: 116px;">78787-9877
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div id="divEditMailingAddress" runat="server" visible="false" class="divquestion divCharacterReferences">
                            <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
                            <div>
                                <p class="addNewDiv">
                                    <span>Edit</span>
                                </p>
                                <div>
                                    <table class="bordernone" border="0" style="width: 96%; margin: 0px auto; height: 150px;">
                                        <tr>
                                            <td colspan="6">
                                                <b>Home Address</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="vertical-align: middle; width: 55px;" class="txtalgnrgt tdwidth1">
                                                <label class="input-label required">
                                                    Street :
                                                </label>
                                            </td>
                                            <td colspan="5">
                                                <asp:TextBox ID="txtStreet" Text="PO Box 14166" runat="server" Width="490px"
                                                    CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="vertical-align: middle; width: 55px;" class="txtalgnrgt tdwidth1"></td>
                                            <td colspan="5">
                                                <asp:TextBox ID="TextBox5" runat="server" Text="" Width="490px"
                                                    CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="txtalgnrgt">
                                                <label class="input-label required">
                                                    City :
                                                </label>
                                            </td>
                                            <td style="width: 151px;">
                                                <asp:TextBox ID="txtCity" runat="server" Text="California" CssClass="calWidth OnlyAlphabet"
                                                    Width="134px" MaxLength="500"></asp:TextBox>
                                            </td>
                                            <td class="txtalgnrgt" style="width: 52px;">
                                                <label class="input-label required">
                                                    State :
                                                </label>
                                            </td>
                                            <td style="width: 120px;">
                                                <asp:DropDownList ID="ddlState" runat="server" Width="120px" CssClass="inputTextbox">
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
                                                </asp:DropDownList>
                                            </td>
                                            <td class="txtalgnrgt" style="width: 40px;">
                                                <label class="input-label required">
                                                    Zip :
                                                </label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtZip" runat="server" Text="78787-9877" placeholder="xxxxx-xxxx or xxxxx"
                                                    CssClass="calWidth zip_us" Width="127px" MaxLength="500"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="bordernone" border="0" style="width: 96%; margin: 0px auto; height: 150px;">
                                        <tr>
                                            <td colspan="6">
                                                <b>Mailing Address</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="vertical-align: middle; width: 55px;" class="txtalgnrgt tdwidth1">
                                                <label class="input-label required">
                                                    Street :
                                                </label>
                                            </td>
                                            <td colspan="5">
                                                <asp:TextBox ID="TextBox1" runat="server" Text="PO Box 14166" Width="490px"
                                                    CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="vertical-align: middle; width: 55px;" class="txtalgnrgt tdwidth1"></td>
                                            <td colspan="5">
                                                <asp:TextBox ID="TextBox4" runat="server" Text="" Width="490px"
                                                    CssClass="calWidth us_street" MaxLength="500"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="txtalgnrgt">
                                                <label class="input-label required">
                                                    City :
                                                </label>
                                            </td>
                                            <td style="width: 151px;">
                                                <asp:TextBox ID="TextBox2" runat="server" Text="California" CssClass="calWidth OnlyAlphabet"
                                                    Width="134px" MaxLength="500"></asp:TextBox>
                                            </td>
                                            <td class="txtalgnrgt" style="width: 52px;">
                                                <label class="input-label required">
                                                    State :
                                                </label>
                                            </td>
                                            <td style="width: 120px;">
                                                <asp:DropDownList ID="DropDownList1" runat="server" Width="120px" CssClass="inputTextbox">
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
                                                </asp:DropDownList>
                                            </td>
                                            <td class="txtalgnrgt" style="width: 40px;">
                                                <label class="input-label required">
                                                    Zip :
                                                </label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox3" Text="78787-9877" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                                                    CssClass="calWidth zip_us" Width="127px" MaxLength="500"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="toolBar" style="padding: 8px 4px 5px 0px; margin: 4px;">
                                    <span class="fltrt">
                                        <asp:Button ID="btnSaveMailingAddress" ValidationGroup="VGAppicationDashboard" CssClass="buttonGreen medium"
                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnSaveMailingAddress_Click" />
                                        <asp:Button ID="btnSaveCancelMailingAddress" CssClass="secondary medium" runat="server"
                                            Text="Cancel" CausesValidation="true" OnClick="btnSaveCancelMailingAddress_Click" />
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div id="divGridMailingAddress" runat="server" class="divquestion divCharacterReferences">
                            <div style="height: 30px; border-bottom: solid 1px #e5e5e5;">
                                <table style="margin: 8px; width: 97%; margin: 0 auto;">
                                    <tr>
                                        <td align="left" style="vertical-align: middle;">
                                            <b>Mailing Address</b>
                                        </td>
                                        <td style="width: 238px;">
                                            <img style="float: right; width: 25px; cursor: pointer; margin-top: 6px;" src="../../App_Themes/Public/images/email.png" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div>
                                <table class="index  grid" id="gvQuestion5" style="color: #333333; width: 100%; border-collapse: collapse;"
                                    cellpadding="5" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td style="width: 100px;">
                                                <table style="width: 100%">
                                                    <tbody>
                                                        <tr>
                                                            <td style="width: 102px;" align="right">
                                                                <b>Street <span class="Apple-converted-space">&nbsp;</span>:</b>
                                                            </td>
                                                            <td colspan="5">PO Box 14166
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                                <b>City :</b>
                                                            </td>
                                                            <td>California
                                                            </td>
                                                            <td align="right">
                                                                <b>State :</b>
                                                            </td>
                                                            <td>CA
                                                            </td>
                                                            <td align="right">
                                                                <b>Zip :</b>
                                                            </td>
                                                            <td style="width: 116px;">78787-9877
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                    <div class="dashboard-block dashboard-border">
                        <div class="dashboard-block-header" style="padding: 6px 10px 10px 5px;">
                            Contact Detail
                        </div>
                        <div>
                            <div id="divGridContact" runat="server" class="divquestion divCharacterReferences">
                                <div>
                                    <table class="AppDetailsHeader">
                                        <tbody>
                                            <tr>
                                                <td style="width: 290px; padding-left: 8px;">
                                                    <b>Contact Type</b>
                                                </td>
                                                <td>
                                                    <b>Contact Number</b>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table class="index brdr radius pdng2 grid" id="Table2" style="color: #333333; width: 100%; border-collapse: collapse;"
                                        cellpadding="0" cellspacing="0">
                                        <tbody>
                                            <tr id="trEditContactAddress" runat="server" visible="false">
                                                <td colspan="2">
                                                    <div>
                                                        <%--<table class="bordernone" border="0" style="width: 100%; margin: 0px auto;">
                                                            <tr>
                                                                <td align="right">
                                                                    <label class="input-label">
                                                                        Contact Type :</label>
                                                                </td>
                                                                <td>
                                                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                        <asp:ListItem Selected="True" Value="1">Work Phone</asp:ListItem>
                                                                        <asp:ListItem Value="2">Home Phone</asp:ListItem>
                                                                        <asp:ListItem Value="3">Business Phone</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </td>
                                                                <td align="right">
                                                                    <label class="input-label">
                                                                        Contact Number :</label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox7" runat="server" Text="(415) 321-3212" placeholder="(XXX) XXX-XXXX"
                                                                        CssClass=" phone_us calWidth" MaxLength="500"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                        </table>--%>
                                                        <table class="tblApplReqForm5">
                                                            <tr>
                                                                <td align="right" style="width: 145px;">
                                                                    <label class="input-label">Primary Phone :</label></td>
                                                                <td style="width: 165px;">
                                                                    <asp:TextBox ID="TextBox6" CssClass="phone_us" Text="(415) 321-3212" runat="server"></asp:TextBox></td>
                                                                <td class="cursorpointer">
                                                                    <asp:CheckBox ID="CheckBox10" Text="Mobile" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <label class="input-label">Secondary Phone :</label></td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox7" CssClass="phone_us" runat="server"></asp:TextBox></td>
                                                                <td class="cursorpointer">
                                                                    <asp:CheckBox ID="CheckBox11" Text="Mobile" runat="server" /></td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <div class="toolBar" style="padding: 8px 4px 5px 0px; margin: 4px;">
                                                        <span class="fltrt">
                                                            <asp:Button ID="btnSaveContact" ValidationGroup="VGAppicationDashboard" CssClass="buttonGreen medium"
                                                                runat="server" Text="Save" CausesValidation="true" OnClick="btnSaveContact_Click" />
                                                            <asp:Button ID="btnSaveCancelContact" CssClass="secondary medium" runat="server"
                                                                Text="Cancel" CausesValidation="true" OnClick="btnSaveCancelContact_Click" />
                                                        </span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr id="trGridContactAddress" runat="server">
                                                <td>Primary Phone
                                                </td>
                                                <td>(415) 321-3212
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="dashboard-block dashboard-border">
                        <div class="dashboard-block-header">
                            Documents Cheklist
                        </div>
                        <div style="display: none;">
                            <div class="divGrid" style="margin: 18px 5px 5px 5px;">
                                <div class="">
                                    <asp:GridView ID="gvContinuingEducation" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                        CssClass="index brdrtop1  grid" Width="100%" CellPadding="5" ForeColor="#333333"
                                        GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Title of Program">
                                                <ItemStyle />
                                                <ItemTemplate>
                                                    <label>
                                                        Massage Program</label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Sponsor">
                                                <ItemStyle />
                                                <ItemTemplate>
                                                    <label>
                                                        CAMTC
                                                    </label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Completion Date">
                                                <ItemStyle />
                                                <ItemTemplate>
                                                    <label>
                                                        06/02/2014
                                                    </label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Hours Claimed">
                                                <ItemStyle HorizontalAlign="Center" />
                                                <ItemTemplate>
                                                    <label>
                                                        36
                                                        <label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Delivery Method" HeaderStyle-HorizontalAlign="Center">
                                                <ItemStyle HorizontalAlign="Center" />
                                                <ItemTemplate>
                                                    <label>
                                                        Hands On
                                                    </label>
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
                            <div style="margin-top: 12px; padding-bottom: 12px;">
                                <table class="brdr1" style="width: 97%; margin: auto;">
                                    <tr>
                                        <td align="center">
                                            <b>Carry in Hours</b>
                                        </td>
                                        <td align="center">
                                            <b>Required Hours</b>
                                        </td>
                                        <td align="center">
                                            <b>Current Reported Hours</b>
                                        </td>
                                        <td align="center">
                                            <b>Rollover Hours</b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">0
                                        </td>
                                        <td align="center">12
                                        </td>
                                        <td align="center">36
                                        </td>
                                        <td align="center">28
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="dashboard-block">
                        <div style="padding: 12px; font-size: 13px;">
                            Still have questions? Email us at <a style="color: Blue;" href="javascript:void(0)">info@camtc.org</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="dashboard-block-right">
                <div class="dashboard-block-right-top dashboard-border height_fix" id="ApplicationDetailsDas" style="min-height: 100px !important;">
                    <div class="dashboard-block-header">
                        Application Detail
                    </div>
                    <div>
                        <table class="index grid">
                            <tr>
                                <th scope="col" style="vertical-align: middle;">Application
                                </th>
                                <th scope="col" style="vertical-align: middle; width: 100px;">Submitted On
                                </th>
                                <th scope="col" style="vertical-align: middle;">Status</th>
                            </tr>
                        </table>
                        <div class="overflowscrollAppDetail" style="min-height: 100px !important;">
                            <div>
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="padding-left: 6px; width: 12px;">1.
                                        </td>
                                        <td align="left">
                                            <a id="hprlnkRecertification" style="color: Blue;" cssclass="buttonGreen small" href="~/LAPP_UI_School/UI/SchoolApplication.aspx"
                                                target="_blank" runat="server">School Application</a>
                                        </td>
                                        <td style="width: 100px;">02/11/2015
                                        </td>
                                        <td class="additionl-links"><a id="IDapplicationstatus" style="cursor:pointer;"  onclick="ApplicationStatus()" >View Status</a></td>
                                    </tr>
                                </table>
                                <div class="cilrcle_top" id="SchoolStatus" style="display:none;">
                                    <div class="header_circle">School Application Status</div>
                                    <div class="circle_cotner">
                                     <div class="Cercle color_S">Submitted</div>
                                            <div class="Cercle">Processing</div>
                                            <div class="Cercle">Site Visit</div>
                                            <div class="Cercle">Under ESD Review </div>
                                            <div class="Cercle">Approval</div>
                                            <div class="Cercle">Printing</div>
                                            <div class="Cercle">Mailed</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--<div class="dashboard-block-right-top dashboard-border" style="display:none;">
                    <div class="dashboard-block-header">
                        Re-Certification Detail
                    </div>
                    <div>
                        <table class="index grid">
                            <tr>
                                <th scope="col" style="vertical-align: middle;">Re-Certification Period
                                </th>
                                <th scope="col" style="vertical-align: middle; width: 80px;">Status
                                </th>
                            </tr>
                        </table>
                        <div class="overflowscrollAppDetail">
                            <table class="index brdr radius pdng2 grid" cellspacing="0" cellpadding="5" id="gvRenewalDetail" style="color: #333333; width: 100%; border-collapse: collapse;">
                                <tbody>
                                    <tr class="bordrbtm gridrow">
                                        <td>
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <td class="chkDistance" style="padding-left: 0px !important;">
                                                            <span class="aspNetDisabled">
                                                                <input id="chkperiod2011" type="checkbox" name="ctl00$ContentPlaceHolder1$ucMemberDashboard1$gvRenewalDetail$ctl02$chkperiod2011" disabled="disabled"></span>
                                                        </td>
                                                        <td>
                                                            <p>
                                                                Recertification period from
                                                            17 Mar 2015
                                                            to
                                                            17 Mar 2016
                                                            </p>
                                                        </td>
                                                        <td style="width: 75px;">
                                                            <b>Active</b>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div style="padding-bottom: 4px; float: right; margin-right: 10px; padding-top: 5px;">
                                <asp:HyperLink ID="HyperLink1" CssClass="buttonGreen small" NavigateUrl="~/LAPP_UI_School/UI/ReCertificationApplication.aspx"
                                    Target="_blank" runat="server">Recertification</asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>--%>
                <div class="dashboard-block-right-bottom dashboard-border">
                    <div class="dashboard-block-header">
                        Payment Detail
                    </div>
                    <table class="AppDetailsHeader">
                        <tr>
                            <td style="width: 130px; padding-left: 8px;">
                                <b>Application Type</b>
                            </td>
                            <td style="width: 62px;">
                                <b>Amount</b>
                            </td>
                            <td style="width: 50px;">
                                <b>Date</b>
                            </td>
                            <td style="width: 50px;">
                                <b>Status</b>
                            </td>
                            <td style="width: 40px;"></td>
                        </tr>
                    </table>
                    <div class="overflowscrollPaymentDetail">
                        <table style="width: 100%;">
                            <tr>
                                <td style="width: 130px; padding-left: 8px;">School Application
                                </td>
                                <td style="width: 55px;">$150.00
                                </td>
                                <td style="width: 50px;">01/01/2015
                                </td>
                                <td style="width: 50px;">Paid
                                </td>
                                <td style="width: 40px;">
                                    <a href="#" class="hyperlink">Print</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="dashboard-block-right-bottom dashboard-border">
                    <div class="dashboard-block-header">
                        Additional Online Services
                    </div>
                    <div>
                        <table class="additionl-links" style="margin: 5px; line-height: 20px;">
                            <tr>
                                <td>
                                    <a href="#">School ReCertification</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#">Owner Dashboard Changes</a>
                                </td>
                            </tr>
                            <%--<tr>
                                <td>
                                    <a href="#">Additional Certificate</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#">ID Card</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#">Name Change</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#">Hearing File Fee</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#">Upgrade</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#">Certification Seals: CCMP, CMP and CMT</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#">Out of State Verification</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#">Reprint Certificate</a>
                                </td>
                            </tr>--%>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
