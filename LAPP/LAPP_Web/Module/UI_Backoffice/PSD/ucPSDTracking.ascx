<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucPSDTracking.ascx.cs"
    Inherits="NVBMT_WebProject_Modules_PSD_ucPSDTracking" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<style>
    .inputTextBox {
        width: 198px !important;
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
        <div>
            <div id="ContentPlaceHolder1_MidContent_ucNewApplication1_divNewApplicationAddButton"
                class="divNewApplicationAddu">
                <span style="float: left; margin-right: 10px;">
                    <h4>PSD Tracking</h4>
                </span><span style="float: right; margin-bottom: -2px; position: relative; top: -8px;">
                    <asp:Button ID="btnAddNewApp" runat="server" Text="Add New" class="buttonGreen small"
                        OnClick="btnAddNewApp_Click" Style="width: 75px;" />
                </span>
            </div>
            <div class="clear">
            </div>
            <div id="divAddnewApp" runat="server" visible="false">
                <div>
                    <table class="form-table" style="width: 75%; margin: 0 auto;">
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                    ID # :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" CssClass="inputTextBox" runat="server"></asp:TextBox>
                            </td>
                            <td align="right" style="width: 145px;">
                                <label class="input-label">
                                    CERT # :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" CssClass="inputTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                    Date Sent to PSD From AMG :
                                </label>
                            </td>
                            <td colspan="3">
                                <asp:TextBox ID="TextBox3" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                    Last Name :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" CssClass="inputTextBox capitalize-text" runat="server"></asp:TextBox>
                            </td>
                            <td align="right">
                                <label class="input-label">
                                    First Name :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox6" CssClass="inputTextBox capitalize-text" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="xtrapdgnone" colspan="4">
                                <table class="form-table" style="width: 100%; margin: 0 auto;">
                                    <tr>
                                        <td style="vertical-align: middle; width: 183px;" class="txtalgnrgt">
                                            <label class="input-label required">
                                                Street :
                                            </label>
                                        </td>
                                        <td colspan="5">
                                            <asp:TextBox ID="txtStreet" runat="server" Width="571px" CssClass="calWidth" MaxLength="500"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td colspan="5">
                                            <asp:TextBox ID="txtStreet2" runat="server" Width="571px" CssClass="calWidth" MaxLength="500"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="txtalgnrgt">
                                            <label class="input-label required">
                                                City :
                                            </label>
                                        </td>
                                        <td style="width: 125px;">
                                            <asp:TextBox ID="txtCity" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                                                Width="155px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                        </td>
                                        <td class="txtalgnrgt" style="width: 62px;">
                                            <label class="input-label required">
                                                State :
                                            </label>
                                        </td>
                                        <td style="width: 153px;">
                                            <asp:DropDownList ID="ddlState" runat="server" Width="150px" CssClass="inputTextbox"
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
                                            </asp:DropDownList>
                                        </td>
                                        <td class="txtalgnrgt" style="width: 50px;">
                                            <label class="input-label required">
                                                Zip :
                                            </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtZip" runat="server" placeholder="xxxxx-xxxx or xxxxx" CssClass="tooltip zip_us calWidth"
                                                Width="143px" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                    File Complete at AMG :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox7" CssClass="inputTextBox" runat="server"></asp:TextBox>
                            </td>
                            <td align="right">
                                <label class="input-label">
                                    Date before PSD :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox8" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                    Date of SAR :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox9" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                            </td>
                            <td align="right">
                                <label class="input-label">
                                    Previously Denied Date :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox10" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                    Category :
                                </label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList3" CssClass="inputDropDown" runat="server">
                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                    <asp:ListItem Value="1">NA</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="right">
                                <label class="input-label">
                                    Charges :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox12" CssClass="inputTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                    Application Date :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox13" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                            </td>
                            <td align="right">
                                <label class="input-label">
                                    Certified Date :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox14" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                    Reapplication Date :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox15" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                            </td>
                            <td align="right">
                                <label class="input-label">
                                    Recertification Date :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox16" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="input-label">
                                    Send To :
                                </label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList42" CssClass="inputDropDown" runat="server">
                                    <asp:ListItem Selected="True" Value="-1">Select</asp:ListItem>
                                    <asp:ListItem Value="1">AMG</asp:ListItem>
                                    <asp:ListItem Value="2">Legal</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="right">
                                <label class="input-label">
                                    Status :
                                </label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList22" CssClass="inputDropDown" runat="server">
                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Waiting Room</asp:ListItem>
                                    <asp:ListItem Value="2">Before PSD</asp:ListItem>
                                    <asp:ListItem Value="3">Waiting for PDL/PRL</asp:ListItem>
                                    <asp:ListItem Value="4">Received Letter</asp:ListItem>
                                    <asp:ListItem Value="5">Final Decision Notice</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="vertical-align: middle;">
                                <label class="input-label">
                                    Reason To Proceed To PSD :
                                </label>
                            </td>
                            <td colspan="3">
                                <asp:TextBox ID="TextBox17" CssClass="inputTextBox" Style="width: 568px !important;"
                                    TextMode="MultiLine" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
                <div style="padding: 15px 0px 15px 0px;">
                    <div id="Div1" class="toolBar" style="padding: 10px;" runat="server">
                        <span class="fltrt">
                            <asp:Button ID="Button1" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                                runat="server" Text="Save" CausesValidation="true" OnClick="btnSave_Click" />
                            <asp:LinkButton ID="lnkCloseApp" CssClass="secondary medium bottom buttonalignment"
                                runat="server" OnClick="lnkCloseApp_Click">Cancel</asp:LinkButton></span>
                    </div>
                </div>
            </div>
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
                <table class="SearchTable boardinfo" align="center" style="height: 100px; height: 134px;">
                    <tbody>
                        <tr>
                            <td style="vertical-align: middle;">
                                <label>
                                    Search By Name :
                                </label>
                            </td>
                            <td colspan="3" style="vertical-align: middle;">
                                <asp:TextBox ID="txtSearchByName" ClientIDMode="Static" runat="server" Style="width: 470px  !important; margin-left: 3px;"
                                    CssClass="inputTextbox" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: middle;">
                                <label>
                                    Certificate # :
                                </label>
                            </td>
                            <td style="vertical-align: middle;">
                                <asp:TextBox ID="txtLicenseNumberSearch" ClientIDMode="Static" Style="width: 178px !important; margin-left: 3px;"
                                    runat="server" CssClass="inputTextbox" MaxLength="15"></asp:TextBox>
                            </td>
                            <td style="width: 102px; vertical-align: middle;">
                                <label>
                                    SS # :
                                </label>
                            </td>
                            <td style="vertical-align: middle;">
                                <asp:TextBox ID="txtSSNSaerch" runat="server" Style="width: 178px !important; margin-left: 3px;"
                                    CssClass="inputTextbox ssn" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: middle;">
                                <label>
                                    Last Name :
                                </label>
                            </td>
                            <td style="vertical-align: middle;">
                                <asp:TextBox ID="txtlastNameSaerch" ClientIDMode="Static" runat="server" Style="width: 178px !important; margin-left: 3px;"
                                    CssClass="inputTextbox capitalize-text" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="vertical-align: middle;">
                                <label>
                                    First Name :
                                </label>
                            </td>
                            <td style="vertical-align: middle;">
                                <asp:TextBox ID="txtFirstNameSearch" ClientIDMode="Static" Style="width: 178px !important; margin-left: 3px;"
                                    runat="server" CssClass="inputTextBox capitalize-text" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: middle;">
                                <label>
                                    Phone # :
                                </label>
                            </td>
                            <td style="vertical-align: middle;">
                                <asp:TextBox ID="txtPhoneSearch" runat="server" Style="width: 178px !important; margin-left: 3px;"
                                    CssClass="inputTextbox" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="vertical-align: middle;">
                                <label>
                                    Status :
                                </label>
                            </td>
                            <td style="vertical-align: middle;">
                                <asp:DropDownList ID="ddlStatusSearch" runat="server" Style="width: 186px ! important; margin-left: 3px;">
                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Waiting Room</asp:ListItem>
                                    <asp:ListItem Value="2">Before PSD</asp:ListItem>
                                    <asp:ListItem Value="3">Waiting for PDL/PRL</asp:ListItem>
                                    <asp:ListItem Value="4">Received Letter</asp:ListItem>
                                    <asp:ListItem Value="5">Final Decision Notice</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div style="width: 90%; margin: 0 auto;">
                    <span class="fltrt">
                        <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search"
                            ValidationGroup="vgSerch" CausesValidation="true" />
                        <asp:LinkButton ID="btnSearchCancel" CssClass="secondary small" runat="server" Text="Cancel"></asp:LinkButton>
                    </span>
                </div>
            </fieldset>
        </div>
        <div class="clear">
        </div>
        <div class="gridUpperDiv">
            <a class="down_arrow"></a><span class="fltlt">
                <asp:LinkButton ID="lnkShowAll" CssClass="" runat="server">Show All</asp:LinkButton>
            </span>
            <div class="fltrt rightIcon">
                <a title="find" href="javascript:void()" onclick="javascript:showDivSlide('.userHide');hideDivSlide('.searchBbutton');">
                    <img src="../../App_Themes/Theme1/images/search_icon.png" /></a>
            </div>
        </div>
        <div class="clear">
        </div>
        <asp:Literal ID="ltrMainMessage" runat="server"></asp:Literal>
        <div class="gvDivUpr">
            <table class="index  grid" cellspacing="0" cellpadding="5" id="gvNewApplication"
                style="color: #333333; width: 100%; border-collapse: collapse;">
                <tbody>
                    <tr>
                        <th scope="col" style="text-decoration: underline;">
                            <a href="javascript:void();" style="color: #fff;">Date Sent To PSD</a>
                        </th>
                        <th scope="col" style="text-decoration: underline;">
                            <a href="javascript:void();" style="color: #fff;">Certificate #</a>
                        </th>
                        <th scope="col" style="text-decoration: underline;">
                            <a href="javascript:void();" style="color: #fff;">ID #</a>
                        </th>
                        <th scope="col" style="text-decoration: underline;">
                            <a href="javascript:void();" style="color: #fff;">First Name</a>
                        </th>
                        <th scope="col" style="text-decoration: underline;">
                            <a href="javascript:void();" style="color: #fff;">Last Name</a>
                        </th>
                        <th scope="col" style="text-decoration: underline;">
                            <a href="javascript:void();" style="color: #fff;">Send To</a>
                        </th>
                        <th scope="col" style="text-decoration: underline;">
                            <a href="javascript:void();" style="color: #fff;">Status</a>
                        </th>
                        <th class="aligncenter" scope="col" style="width: 80px;">Action
                        </th>
                    </tr>
                    <tr id="trGridRowStatus1" runat="server">
                        <td>01/20/2015
                        </td>
                        <td>OL150317062498
                        </td>
                        <td>CAMTC00123
                        </td>
                        <td>Nancy
                        </td>
                        <td>Blachly
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList28" runat="server">
                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                <asp:ListItem Selected="True" Value="1">AMG</asp:ListItem>
                                <asp:ListItem Value="2">Legal</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList16" runat="server">
                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                <asp:ListItem Selected="True" Value="1">Waiting Room</asp:ListItem>
                                <asp:ListItem Value="2">Before PSD</asp:ListItem>
                                <asp:ListItem Value="3">Waiting for PDL/PRL</asp:ListItem>
                                <asp:ListItem Value="4">Received Letter</asp:ListItem>
                                <asp:ListItem Value="5">Final Decision Notice</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="center" valign="middle">
                            <asp:ImageButton ID="imgbtnStatus1Edit" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                OnClick="imgbtnStatus1Edit_Click" />
                            <asp:ImageButton ID="ImageButton2" runat="server" ToolTip="Delete" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                OnClientClick="javascript :return confirm('Are you sure you want to delete?')" />
                        </td>
                    </tr>
                    <tr id="trStatus1" runat="server" visible="false">
                        <td colspan="8" style="padding: 0px;">
                            <div class="clear">
                            </div>
                            <div class="toolBar">
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 125px; font-weight: bold;">01/20/2015
                                        </td>
                                        <td style="width: 132px; font-weight: bold;">OL150317062498
                                        </td>
                                        <td style="width: 118px; font-weight: bold;">CAMTC00123
                                        </td>
                                        <td style="width: 82px; font-weight: bold;">Nancy
                                        </td>
                                        <td style="width: 70px; font-weight: bold;">Blachly
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList29" runat="server">
                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                <asp:ListItem Selected="True" Value="1">AMG</asp:ListItem>
                                                <asp:ListItem Value="2">Legal</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList17" runat="server">
                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                <asp:ListItem Selected="True" Value="1">Waiting Room</asp:ListItem>
                                                <asp:ListItem Value="2">Before PSD</asp:ListItem>
                                                <asp:ListItem Value="3">Waiting for PDL/PRL</asp:ListItem>
                                                <asp:ListItem Value="4">Received Letter</asp:ListItem>
                                                <asp:ListItem Value="5">Final Decision Notice</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td align="center" valign="middle" style="width: 66px;"></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="clear">
                            </div>
                            <div id="divStatus1" runat="server">
                                <div class="divmain">
                                    <div>
                                        <table class="form-table" style="width: 100%; margin: 0 auto;">
                                            <tr>
                                                <td align="right" style="width: 275px;">
                                                    <label class="input-label">
                                                        ID # :
                                                    </label>
                                                </td>
                                                <td style="width: 210px;">
                                                    <asp:TextBox ID="TextBox4" Text="CAMTC00123" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right" style="width: 194px;">
                                                    <label class="input-label">
                                                        CERT # :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox18" Text="OL150317062498" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Date Sent to PSD From AMG :
                                                    </label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="TextBox19" CssClass="inputTextBox calender" Text="01/20/2015" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Last Name :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox20" Text="Blachly" CssClass="inputTextBox capitalize-text"
                                                        runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        First Name :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox21" Text="Nancy" CssClass="inputTextBox capitalize-text"
                                                        runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="xtrapdgnone" colspan="4">
                                                    <table class="form-table" style="width: 100%; margin: 0 auto;">
                                                        <tr>
                                                            <td style="vertical-align: middle; width: 275px;" class="txtalgnrgt">
                                                                <label class="input-label required">
                                                                    Street :
                                                                </label>
                                                            </td>
                                                            <td colspan="5">
                                                                <asp:TextBox ID="TextBox22" Text="P.O. BOX 14166" runat="server" Width="603px" CssClass="calWidth"
                                                                    MaxLength="500"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td colspan="5">
                                                                <asp:TextBox ID="TextBox23" runat="server" Width="603px" CssClass="calWidth" MaxLength="500"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label required">
                                                                    City :
                                                                </label>
                                                            </td>
                                                            <td style="width: 160px;">
                                                                <asp:TextBox ID="TextBox24" Text="SOUTH LAKE TAHOE" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                                                                    Width="155px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                            </td>
                                                            <td class="txtalgnrgt" style="width: 62px;">
                                                                <label class="input-label required">
                                                                    State :
                                                                </label>
                                                            </td>
                                                            <td style="width: 153px;">
                                                                <asp:DropDownList ID="DropDownList1" runat="server" Width="150px" CssClass="inputTextbox"
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
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td class="txtalgnrgt" style="width: 50px;">
                                                                <label class="input-label required">
                                                                    Zip :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox25" runat="server" Text="96151" placeholder="xxxxx-xxxx or xxxxx"
                                                                    CssClass="tooltip zip_us calWidth" Width="175px" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        File Complete at AMG :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox26" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Date before PSD :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox27" Text="03/17/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Date of SAR :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox28" Text="03/11/2014" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Previously Denied Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox29" Text="11/26/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Category :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList2" CssClass="inputDropDown" runat="server">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Charges :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox31" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Application Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox32" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Certified Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox33" Text="05/22/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Reapplication Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox34" Text="11/02/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Recertification Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox35" Text="03/03/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Send To :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList43" CssClass="inputDropDown" runat="server">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Selected="True" Value="1">AMG</asp:ListItem>
                                                        <asp:ListItem Value="2">Legal</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Status :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList27" CssClass="inputDropDown" runat="server">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Selected="True" Value="1">Waiting Room</asp:ListItem>
                                                        <asp:ListItem Value="2">Before PSD</asp:ListItem>
                                                        <asp:ListItem Value="3">Waiting for PDL/PRL</asp:ListItem>
                                                        <asp:ListItem Value="4">Received Letter</asp:ListItem>
                                                        <asp:ListItem Value="5">Final Decision Notice</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="vertical-align: middle;">
                                                    <label class="input-label">
                                                        Reason To Proceed To PSD :
                                                    </label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="TextBox36" Style="width: 598px !important;" CssClass="inputTextBox"
                                                        TextMode="MultiLine" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <div class="toolBar" style="padding: 4px;" runat="server" id="PnalApprovebtn">
                                    <span class="fltrt"><span class="AfterApproved">
                                        <asp:Button ID="btnPsdStatus1Update" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnPsdStatus1Update_Click" /></span>
                                        <asp:LinkButton ID="lnkCancelUpdate" CssClass="secondary medium bottom buttonalignment"
                                            runat="server" OnClick="lnkCancelStatus1Update_Click">Cancel</asp:LinkButton></span>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr id="trGridRowStatus2" runat="server" style="background-color: White;">
                        <td>05/25/2015
                        </td>
                        <td>OL150965214012
                        </td>
                        <td>CAMTC00150
                        </td>
                        <td>David
                        </td>
                        <td>Hook
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList30" runat="server">
                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                <asp:ListItem Value="1">AMG</asp:ListItem>
                                <asp:ListItem Selected="True" Value="2">Legal</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList15" runat="server">
                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                <asp:ListItem Value="1">Waiting Room</asp:ListItem>
                                <asp:ListItem Selected="True" Value="2">Before PSD</asp:ListItem>
                                <asp:ListItem Value="3">Waiting for PDL/PRL</asp:ListItem>
                                <asp:ListItem Value="4">Received Letter</asp:ListItem>
                                <asp:ListItem Value="5">Final Decision Notice</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="center" valign="middle">
                            <asp:ImageButton ID="imgbtnStatus2Edit" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                OnClick="imgbtnStatus2Edit_Click" />
                            <asp:ImageButton ID="imgBtnOTherNameDelete" runat="server" ToolTip="Delete" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                OnClientClick="javascript :return confirm('Are you sure you want to delete?')" />
                        </td>
                    </tr>
                    <tr id="trStatus2" runat="server" visible="false">
                        <td colspan="8" style="padding: 0px;">
                            <div class="clear">
                            </div>
                            <div class="toolBar">
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 125px; font-weight: bold;">05/25/2015
                                        </td>
                                        <td style="width: 132px; font-weight: bold;">OL150965214012
                                        </td>
                                        <td style="width: 118px; font-weight: bold;">CAMTC00150
                                        </td>
                                        <td style="width: 82px; font-weight: bold;">David
                                        </td>
                                        <td style="width: 70px; font-weight: bold;">Hook
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList31" runat="server">
                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                <asp:ListItem Value="1">AMG</asp:ListItem>
                                                <asp:ListItem Selected="True" Value="2">Legal</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList18" runat="server">
                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                <asp:ListItem Value="1">Waiting Room</asp:ListItem>
                                                <asp:ListItem Selected="True" Value="2">Before PSD</asp:ListItem>
                                                <asp:ListItem Value="3">Waiting for PDL/PRL</asp:ListItem>
                                                <asp:ListItem Value="4">Received Letter</asp:ListItem>
                                                <asp:ListItem Value="5">Final Decision Notice</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td align="center" valign="middle" style="width: 66px;"></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="clear">
                            </div>
                            <div id="div2" runat="server">
                                <div class="divmain">
                                    <div>
                                        <table class="form-table" style="width: 100%; margin: 0 auto;">
                                            <tr>
                                                <td align="right" style="width: 275px;">
                                                    <label class="input-label">
                                                        ID # :
                                                    </label>
                                                </td>
                                                <td style="width: 210px;">
                                                    <asp:TextBox ID="TextBox11" Text="CAMTC00150" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right" style="width: 194px;">
                                                    <label class="input-label">
                                                        CERT # :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox30" Text="OL150965214012" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Date Sent to PSD From AMG :
                                                    </label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="TextBox37" CssClass="inputTextBox calender" Text="05/25/2015" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Last Name :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox38" Text="Hook" CssClass="inputTextBox capitalize-text" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        First Name :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox39" Text="David" CssClass="inputTextBox capitalize-text"
                                                        runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="xtrapdgnone" colspan="4">
                                                    <table class="form-table" style="width: 100%; margin: 0 auto;">
                                                        <tr>
                                                            <td style="vertical-align: middle; width: 275px;" class="txtalgnrgt">
                                                                <label class="input-label required">
                                                                    Street :
                                                                </label>
                                                            </td>
                                                            <td colspan="5">
                                                                <asp:TextBox ID="TextBox40" Text="P.O. BOX 14166" runat="server" Width="603px" CssClass="calWidth"
                                                                    MaxLength="500"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td colspan="5">
                                                                <asp:TextBox ID="TextBox41" runat="server" Width="603px" CssClass="calWidth" MaxLength="500"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label required">
                                                                    City :
                                                                </label>
                                                            </td>
                                                            <td style="width: 160px;">
                                                                <asp:TextBox ID="TextBox42" Text="SOUTH LAKE TAHOE" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                                                                    Width="155px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                            </td>
                                                            <td class="txtalgnrgt" style="width: 62px;">
                                                                <label class="input-label required">
                                                                    State :
                                                                </label>
                                                            </td>
                                                            <td style="width: 153px;">
                                                                <asp:DropDownList ID="DropDownList4" runat="server" Width="150px" CssClass="inputTextbox"
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
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td class="txtalgnrgt" style="width: 50px;">
                                                                <label class="input-label required">
                                                                    Zip :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox43" runat="server" Text="96151" placeholder="xxxxx-xxxx or xxxxx"
                                                                    CssClass="tooltip zip_us calWidth" Width="175px" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        File Complete at AMG :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox44" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Date before PSD :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox45" Text="03/17/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Date of SAR :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox46" Text="03/11/2014" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Previously Denied Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox47" Text="11/26/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Category :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList5" CssClass="inputDropDown" runat="server">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Charges :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox48" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Application Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox49" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Certified Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox50" Text="05/22/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Reapplication Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox51" Text="11/02/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Recertification Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox52" Text="03/03/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Send To :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList32" CssClass="inputDropDown" runat="server">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">AMG</asp:ListItem>
                                                        <asp:ListItem Selected="True" Value="2">Legal</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Status :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList23" CssClass="inputDropDown" runat="server">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">Waiting Room</asp:ListItem>
                                                        <asp:ListItem Selected="True" Value="2">Before PSD</asp:ListItem>
                                                        <asp:ListItem Value="3">Waiting for PDL/PRL</asp:ListItem>
                                                        <asp:ListItem Value="4">Received Letter</asp:ListItem>
                                                        <asp:ListItem Value="5">Final Decision Notice</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="vertical-align: middle;">
                                                    <label class="input-label">
                                                        Reason To Proceed To PSD :
                                                    </label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="TextBox53" Style="width: 598px !important;" CssClass="inputTextBox"
                                                        TextMode="MultiLine" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div style="background-color: #DFFFE0;" class="mrgntp4 pdgbtm4">
                                        <div class="status-heading">
                                            <p>
                                                <b>Before PSD :</b>
                                            </p>
                                        </div>
                                        <table class="form-table mrgntp4" style="width: 100%;">
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Proposed Decision From PSD Meeting :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox111" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="width: 275px;">
                                                    <label class="input-label">
                                                        Initial PSD Meeting Date :</label>
                                                </td>
                                                <td style="width: 210px;">
                                                    <asp:TextBox ID="TextBox112" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right" style="width: 194px;">
                                                    <label class="input-label">
                                                        Final Decision Date :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox113" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="vertical-align: middle;">
                                                    <label class="input-label">
                                                        Comment :
                                                    </label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="TextBox150" CssClass="inputTextBox" Style="width: 598px !important;"
                                                        TextMode="MultiLine" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <div class="toolBar" style="padding: 4px;" runat="server" id="Div3">
                                    <span class="fltrt"><span class="AfterApproved">
                                        <asp:Button ID="Button2" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnPsdStatus2Update_Click" /></span>
                                        <asp:LinkButton ID="LinkButton1" CssClass="secondary medium bottom buttonalignment"
                                            runat="server" OnClick="lnkCancelStatus2Update_Click">Cancel</asp:LinkButton></span>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr id="trGridRowStatus3" runat="server">
                        <td>08/11/2015
                        </td>
                        <td>OL150021302486
                        </td>
                        <td>CAMTC00521
                        </td>
                        <td>Michael
                        </td>
                        <td>Clarcke
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList33" runat="server">
                                <asp:ListItem Selected="True" Value="-1">Select</asp:ListItem>
                                <asp:ListItem Value="1">AMG</asp:ListItem>
                                <asp:ListItem Value="2">Legal</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList14" runat="server">
                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                <asp:ListItem Value="1">Waiting Room</asp:ListItem>
                                <asp:ListItem Value="2">Before PSD</asp:ListItem>
                                <asp:ListItem Selected="True" Value="3">Waiting for PDL/PRL</asp:ListItem>
                                <asp:ListItem Value="4">Received Letter</asp:ListItem>
                                <asp:ListItem Value="5">Final Decision Notice</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="center" valign="middle">
                            <asp:ImageButton ID="imgbtnStatus3Edit" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                OnClick="imgbtnStatus3Edit_Click" />
                            <asp:ImageButton ID="ImageButton4" runat="server" ToolTip="Delete" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                OnClientClick="javascript :return confirm('Are you sure you want to delete?')" />
                        </td>
                    </tr>
                    <tr id="trStatus3" runat="server" visible="false">
                        <td colspan="8" style="padding: 0px;">
                            <div class="clear">
                            </div>
                            <div class="toolBar">
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 125px; font-weight: bold;">11/02/2015
                                        </td>
                                        <td style="width: 132px; font-weight: bold;">OL150021302486
                                        </td>
                                        <td style="width: 118px; font-weight: bold;">CAMTC00521
                                        </td>
                                        <td style="width: 82px; font-weight: bold;">Michael
                                        </td>
                                        <td style="width: 70px; font-weight: bold;">Clarcke
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList41" runat="server">
                                                <asp:ListItem Selected="True" Value="-1">Select</asp:ListItem>
                                                <asp:ListItem Value="1">AMG</asp:ListItem>
                                                <asp:ListItem Value="2">Legal</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList19" runat="server">
                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                <asp:ListItem Value="1">Waiting Room</asp:ListItem>
                                                <asp:ListItem Value="2">Before PSD</asp:ListItem>
                                                <asp:ListItem Selected="True" Value="3">Waiting for PDL/PRL</asp:ListItem>
                                                <asp:ListItem Value="4">Received Letter</asp:ListItem>
                                                <asp:ListItem Value="5">Final Decision Notice</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td align="center" valign="middle" style="width: 66px;"></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="clear">
                            </div>
                            <div id="div4" runat="server">
                                <div class="divmain">
                                    <div>
                                        <table class="form-table" style="width: 100%; margin: 0 auto;">
                                            <tr>
                                                <td align="right" style="width: 275px;">
                                                    <label class="input-label">
                                                        ID # :
                                                    </label>
                                                </td>
                                                <td style="width: 210px;">
                                                    <asp:TextBox ID="TextBox54" Text="CAMTC00521" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right" style="width: 194px;">
                                                    <label class="input-label">
                                                        CERT # :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox55" Text="OL150021302486" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Date Sent to PSD From AMG :
                                                    </label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="TextBox56" Text="08/11/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Last Name :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox57" Text="Clarcke" CssClass="inputTextBox capitalize-text"
                                                        runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        First Name :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox58" Text="Michael" CssClass="inputTextBox capitalize-text"
                                                        runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="xtrapdgnone" colspan="4">
                                                    <table class="form-table" style="width: 100%; margin: 0 auto;">
                                                        <tr>
                                                            <td style="vertical-align: middle; width: 275px;" class="txtalgnrgt">
                                                                <label class="input-label required">
                                                                    Street :
                                                                </label>
                                                            </td>
                                                            <td colspan="5">
                                                                <asp:TextBox ID="TextBox59" Text="P.O. BOX 14166" runat="server" Width="603px" CssClass="calWidth"
                                                                    MaxLength="500"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td colspan="5">
                                                                <asp:TextBox ID="TextBox60" runat="server" Width="603px" CssClass="calWidth" MaxLength="500"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label required">
                                                                    City :
                                                                </label>
                                                            </td>
                                                            <td style="width: 160px;">
                                                                <asp:TextBox ID="TextBox61" Text="SOUTH LAKE TAHOE" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                                                                    Width="155px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                            </td>
                                                            <td class="txtalgnrgt" style="width: 62px;">
                                                                <label class="input-label required">
                                                                    State :
                                                                </label>
                                                            </td>
                                                            <td style="width: 153px;">
                                                                <asp:DropDownList ID="DropDownList6" runat="server" Width="150px" CssClass="inputTextbox"
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
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td class="txtalgnrgt" style="width: 50px;">
                                                                <label class="input-label required">
                                                                    Zip :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox62" runat="server" Text="96151" placeholder="xxxxx-xxxx or xxxxx"
                                                                    CssClass="tooltip zip_us calWidth" Width="175px" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        File Complete at AMG :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox63" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Date before PSD :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox64" Text="03/17/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Date of SAR :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox65" Text="03/11/2014" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Previously Denied Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox66" Text="11/26/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Category :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList7" CssClass="inputDropDown" runat="server">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Charges :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox67" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Application Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox68" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Certified Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox69" Text="05/22/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Reapplication Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox70" Text="11/02/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Recertification Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox71" Text="03/03/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Send To :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList34" CssClass="inputDropDown" runat="server">
                                                        <asp:ListItem Selected="True" Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">AMG</asp:ListItem>
                                                        <asp:ListItem Value="2">Legal</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Status :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList24" CssClass="inputDropDown" runat="server">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">Waiting Room</asp:ListItem>
                                                        <asp:ListItem Value="2">Before PSD</asp:ListItem>
                                                        <asp:ListItem Selected="True" Value="3">Waiting for PDL/PRL</asp:ListItem>
                                                        <asp:ListItem Value="4">Received Letter</asp:ListItem>
                                                        <asp:ListItem Value="5">Final Decision Notice</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="vertical-align: middle;">
                                                    <label class="input-label">
                                                        Reason To Proceed To PSD :
                                                    </label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="TextBox72" Style="width: 598px !important;" CssClass="inputTextBox"
                                                        TextMode="MultiLine" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div style="background-color: #DFFFE0;" class="mrgntp4">
                                        <div class="status-heading">
                                            <p>
                                                <b>Before PSD :</b>
                                            </p>
                                        </div>
                                        <table class="form-table mrgntp4" style="width: 100%;">
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Proposed Decision From PSD Meeting :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox114" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="width: 275px;">
                                                    <label class="input-label">
                                                        Initial PSD Meeting Date :</label>
                                                </td>
                                                <td style="width: 210px;">
                                                    <asp:TextBox ID="TextBox115" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right" style="width: 194px;">
                                                    <label class="input-label">
                                                        Final Decision Date :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox116" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="vertical-align: middle;">
                                                    <label class="input-label">
                                                        Comment :
                                                    </label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="TextBox151" CssClass="inputTextBox" Style="width: 598px !important;"
                                                        TextMode="MultiLine" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div style="background-color: #DFFFE0;" class="pdgtp4 pdgbtm4">
                                        <div class="status-heading">
                                            <p>
                                                <b>Waiting for PDL/PRL :</b>
                                            </p>
                                        </div>
                                        <table class="form-table mrgntp4" style="width: 100%;">
                                            <tr>
                                                <td align="right" style="width: 275px;">
                                                    <label class="input-label">
                                                        Type of Memo :</label>
                                                </td>
                                                <td style="width: 210px;">
                                                    <asp:TextBox ID="TextBox122" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right" style="width: 194px;">
                                                    <label class="input-label">
                                                        Date Before PSD :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox123" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Date Sent To Legal :</label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="TextBox153" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <div class="toolBar" style="padding: 4px;" runat="server" id="Div5">
                                    <span class="fltrt"><span class="AfterApproved">
                                        <asp:Button ID="Button3" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnPsdStatus3Update_Click" /></span>
                                        <asp:LinkButton ID="LinkButton2" CssClass="secondary medium bottom buttonalignment"
                                            runat="server" OnClick="lnkCancelStatus3Update_Click">Cancel</asp:LinkButton></span>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr id="trGridRowStatus4" runat="server" style="background-color: White;">
                        <td>12/01/2015
                        </td>
                        <td>OL150965214012
                        </td>
                        <td>CAMTC00150
                        </td>
                        <td>William
                        </td>
                        <td>Poker
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList35" runat="server">
                                <asp:ListItem Selected="True" Value="-1">Select</asp:ListItem>
                                <asp:ListItem Value="1">AMG</asp:ListItem>
                                <asp:ListItem Value="2">Legal</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList13" runat="server">
                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                <asp:ListItem Value="1">Waiting Room</asp:ListItem>
                                <asp:ListItem Value="2">Before PSD</asp:ListItem>
                                <asp:ListItem Value="3">Waiting for PDL/PRL</asp:ListItem>
                                <asp:ListItem Selected="True" Value="4">Received Letter</asp:ListItem>
                                <asp:ListItem Value="5">Final Decision Notice</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="center" valign="middle">
                            <asp:ImageButton ID="imgbtnStatus4Edit" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                OnClick="imgbtnStatus4Edit_Click" />
                            <asp:ImageButton ID="ImageButton6" runat="server" ToolTip="Delete" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                OnClientClick="javascript :return confirm('Are you sure you want to delete?')" />
                        </td>
                    </tr>
                    <tr id="trStatus4" runat="server" visible="false">
                        <td colspan="8" style="padding: 0px;">
                            <div class="clear">
                            </div>
                            <div class="toolBar">
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 125px; font-weight: bold;">12/01/2015
                                        </td>
                                        <td style="width: 132px; font-weight: bold;">OL150965214012
                                        </td>
                                        <td style="width: 118px; font-weight: bold;">CAMTC00150
                                        </td>
                                        <td style="width: 82px; font-weight: bold;">William
                                        </td>
                                        <td style="width: 70px; font-weight: bold;">Poker
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList40" runat="server">
                                                <asp:ListItem Selected="True" Value="-1">Select</asp:ListItem>
                                                <asp:ListItem Value="1">AMG</asp:ListItem>
                                                <asp:ListItem Value="2">Legal</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList20" runat="server">
                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                <asp:ListItem Value="1">Waiting Room</asp:ListItem>
                                                <asp:ListItem Value="2">Before PSD</asp:ListItem>
                                                <asp:ListItem Value="3">Waiting for PDL/PRL</asp:ListItem>
                                                <asp:ListItem Selected="True" Value="4">Received Letter</asp:ListItem>
                                                <asp:ListItem Value="5">Final Decision Notice</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td align="center" valign="middle" style="width: 66px;"></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="clear">
                            </div>
                            <div id="div6" runat="server">
                                <div class="divmain">
                                    <div>
                                        <table class="form-table" style="width: 100%; margin: 0 auto;">
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label" style="width: 275px;">
                                                        ID # :
                                                    </label>
                                                </td>
                                                <td style="width: 210px;">
                                                    <asp:TextBox ID="TextBox73" Text="CAMTC00150" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right" style="width: 194px;">
                                                    <label class="input-label">
                                                        CERT # :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox74" Text="OL150965214012" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Date Sent to PSD From AMG :
                                                    </label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="TextBox75" Text="12/01/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Last Name :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox76" Text="Poker" CssClass="inputTextBox capitalize-text"
                                                        runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        First Name :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox77" Text="William" CssClass="inputTextBox capitalize-text"
                                                        runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="xtrapdgnone" colspan="4">
                                                    <table class="form-table" style="width: 100%; margin: 0 auto;">
                                                        <tr>
                                                            <td style="vertical-align: middle; width: 275px;" class="txtalgnrgt">
                                                                <label class="input-label required">
                                                                    Street :
                                                                </label>
                                                            </td>
                                                            <td colspan="5">
                                                                <asp:TextBox ID="TextBox78" Text="P.O. BOX 14166" runat="server" Width="603px" CssClass="calWidth"
                                                                    MaxLength="500"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td colspan="5">
                                                                <asp:TextBox ID="TextBox79" runat="server" Width="603px" CssClass="calWidth" MaxLength="500"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label required">
                                                                    City :
                                                                </label>
                                                            </td>
                                                            <td style="width: 160px;">
                                                                <asp:TextBox ID="TextBox80" Text="SOUTH LAKE TAHOE" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                                                                    Width="155px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                            </td>
                                                            <td class="txtalgnrgt" style="width: 62px;">
                                                                <label class="input-label required">
                                                                    State :
                                                                </label>
                                                            </td>
                                                            <td style="width: 153px;">
                                                                <asp:DropDownList ID="DropDownList8" runat="server" Width="150px" CssClass="inputTextbox"
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
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td class="txtalgnrgt" style="width: 50px;">
                                                                <label class="input-label required">
                                                                    Zip :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox81" runat="server" Text="96151" placeholder="xxxxx-xxxx or xxxxx"
                                                                    CssClass="tooltip zip_us calWidth" Width="175px" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        File Complete at AMG :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox82" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Date before PSD :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox83" Text="03/17/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Date of SAR :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox84" Text="03/11/2014" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Previously Denied Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox85" Text="11/26/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Category :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList9" CssClass="inputDropDown" runat="server">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Charges :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox86" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Application Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox87" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Certified Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox88" Text="05/22/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Reapplication Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox89" Text="11/02/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Recertification Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox90" Text="03/03/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Send To :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList36" CssClass="inputDropDown" runat="server">
                                                        <asp:ListItem Selected="True" Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">AMG</asp:ListItem>
                                                        <asp:ListItem Value="2">Legal</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Status :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList25" CssClass="inputDropDown" runat="server">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">Waiting Room</asp:ListItem>
                                                        <asp:ListItem Value="2">Before PSD</asp:ListItem>
                                                        <asp:ListItem Value="3">Waiting for PDL/PRL</asp:ListItem>
                                                        <asp:ListItem Selected="True" Value="4">Received Letter</asp:ListItem>
                                                        <asp:ListItem Value="5">Final Decision Notice</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="vertical-align: middle;">
                                                    <label class="input-label">
                                                        Reason To Proceed To PSD :
                                                    </label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="TextBox91" Style="width: 598px !important;" CssClass="inputTextBox"
                                                        TextMode="MultiLine" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div style="background-color: #DFFFE0;" class="mrgntp4">
                                        <div class="status-heading">
                                            <p>
                                                <b>Before PSD :</b>
                                            </p>
                                        </div>
                                        <table class="form-table mrgntp4" style="width: 100%;">
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Proposed Decision From PSD Meeting :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox117" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="width: 275px;">
                                                    <label class="input-label">
                                                        Initial PSD Meeting Date :</label>
                                                </td>
                                                <td style="width: 210px;">
                                                    <asp:TextBox ID="TextBox118" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right" style="width: 194px;">
                                                    <label class="input-label">
                                                        Final Decision Date :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox119" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="vertical-align: middle;">
                                                    <label class="input-label">
                                                        Comment :
                                                    </label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="TextBox152" CssClass="inputTextBox" Style="width: 598px !important;"
                                                        TextMode="MultiLine" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div style="background-color: #DFFFE0;" class="pdgtp4">
                                        <div class="status-heading">
                                            <p>
                                                <b>Waiting for PDL/PRL :</b>
                                            </p>
                                        </div>
                                        <table class="form-table mrgntp4" style="width: 100%;">
                                            <tr>
                                                <td align="right" style="width: 275px;">
                                                    <label class="input-label">
                                                        Type of Memo :</label>
                                                </td>
                                                <td style="width: 210px;">
                                                    <asp:TextBox ID="TextBox120" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right" style="width: 194px;">
                                                    <label class="input-label">
                                                        Date Before PSD :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox121" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Date Sent To Legal :</label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="TextBox124" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div style="background-color: #DFFFE0;" class="pdgtp4 pdgbtm4">
                                        <div class="status-heading">
                                            <p>
                                                <b>Received Letter :</b>
                                            </p>
                                        </div>
                                        <table class="form-table mrgntp4" style="width: 100%;">
                                            <tr>
                                                <td align="right" style="width: 275px;">
                                                    <label class="input-label">
                                                        Education :</label>
                                                </td>
                                                <td style="width: 210px;">
                                                    <asp:TextBox ID="TextBox125" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right" style="width: 194px;"></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        General Denial :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox146" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Revocation :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox147" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Payment Deadline to Pay :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox130" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Hearing/Consideration Date :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox131" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Awaiting Applicant Response :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox126" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Total Pending Applicants :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox127" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <div class="toolBar" style="padding: 4px;" runat="server" id="Div7">
                                    <span class="fltrt"><span class="AfterApproved">
                                        <asp:Button ID="Button4" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnPsdStatus4Update_Click" /></span>
                                        <asp:LinkButton ID="LinkButton3" CssClass="secondary medium bottom buttonalignment"
                                            runat="server" OnClick="lnkCancelStatus4Update_Click">Cancel</asp:LinkButton></span>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr id="trGridRowStatus5" runat="server">
                        <td>07/09/2015
                        </td>
                        <td>OL150998201450
                        </td>
                        <td>CAMTC00620
                        </td>
                        <td>Anthony
                        </td>
                        <td>Ferro
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList37" runat="server">
                                <asp:ListItem Selected="True" Value="-1">Select</asp:ListItem>
                                <asp:ListItem Value="1">AMG</asp:ListItem>
                                <asp:ListItem Value="2">Legal</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList12" runat="server">
                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                <asp:ListItem Value="1">Waiting Room</asp:ListItem>
                                <asp:ListItem Value="2">Before PSD</asp:ListItem>
                                <asp:ListItem Value="3">Waiting for PDL/PRL</asp:ListItem>
                                <asp:ListItem Value="4">Received Letter</asp:ListItem>
                                <asp:ListItem Selected="True" Value="5">Final Decision Notice</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="center" valign="middle">
                            <asp:ImageButton ID="imgbtnStatus5Edit" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                OnClick="imgbtnStatus5Edit_Click" />
                            <asp:ImageButton ID="ImageButton8" runat="server" ToolTip="Delete" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                OnClientClick="javascript :return confirm('Are you sure you want to delete?')" />
                        </td>
                    </tr>
                    <tr id="trStatus5" runat="server" visible="false">
                        <td colspan="8" style="padding: 0px;">
                            <div class="clear">
                            </div>
                            <div class="toolBar">
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 125px; font-weight: bold;">07/09/2015
                                        </td>
                                        <td style="width: 132px; font-weight: bold;">OL150965214012
                                        </td>
                                        <td style="width: 118px; font-weight: bold;">CAMTC00620
                                        </td>
                                        <td style="width: 82px; font-weight: bold;">Anthony
                                        </td>
                                        <td style="width: 70px; font-weight: bold;">Ferro
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList38" runat="server">
                                                <asp:ListItem Selected="True" Value="-1">Select</asp:ListItem>
                                                <asp:ListItem Value="1">AMG</asp:ListItem>
                                                <asp:ListItem Value="2">Legal</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList21" runat="server">
                                                <asp:ListItem Value="-1">Select</asp:ListItem>
                                                <asp:ListItem Value="1">Waiting Room</asp:ListItem>
                                                <asp:ListItem Value="2">Before PSD</asp:ListItem>
                                                <asp:ListItem Value="3">Waiting for PDL/PRL</asp:ListItem>
                                                <asp:ListItem Value="4">Received Letter</asp:ListItem>
                                                <asp:ListItem Selected="True" Value="5">Final Decision Notice</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td align="center" valign="middle" style="width: 66px;"></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="clear">
                            </div>
                            <div id="div8" runat="server">
                                <div class="divmain">
                                    <div>
                                        <table class="form-table" style="width: 100%; margin: 0 auto;">
                                            <tr>
                                                <td align="right" style="width: 275px;">
                                                    <label class="input-label">
                                                        ID # :
                                                    </label>
                                                </td>
                                                <td style="width: 210px;">
                                                    <asp:TextBox ID="TextBox92" Text="CAMTC00620" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right" style="width: 194px;">
                                                    <label class="input-label">
                                                        CERT # :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox93" Text="OL150998201450" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Date Sent to PSD From AMG :
                                                    </label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="TextBox94" Text="07/09/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Last Name :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox95" Text="Ferro" CssClass="inputTextBox capitalize-text"
                                                        runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        First Name :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox96" Text="Anthony" CssClass="inputTextBox capitalize-text"
                                                        runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="xtrapdgnone" colspan="4">
                                                    <table class="form-table" style="width: 100%; margin: 0 auto;">
                                                        <tr>
                                                            <td style="vertical-align: middle; width: 275px;" class="txtalgnrgt">
                                                                <label class="input-label required">
                                                                    Street :
                                                                </label>
                                                            </td>
                                                            <td colspan="5">
                                                                <asp:TextBox ID="TextBox97" Text="P.O. BOX 14166" runat="server" Width="603px" CssClass="calWidth"
                                                                    MaxLength="500"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td colspan="5">
                                                                <asp:TextBox ID="TextBox98" runat="server" Width="603px" CssClass="calWidth" MaxLength="500"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="txtalgnrgt">
                                                                <label class="input-label required">
                                                                    City :
                                                                </label>
                                                            </td>
                                                            <td style="width: 160px;">
                                                                <asp:TextBox ID="TextBox99" Text="SOUTH LAKE TAHOE" runat="server" CssClass="tooltip OnlyAlphabet calWidth"
                                                                    Width="155px" MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                                                            </td>
                                                            <td class="txtalgnrgt" style="width: 62px;">
                                                                <label class="input-label required">
                                                                    State :
                                                                </label>
                                                            </td>
                                                            <td style="width: 153px;">
                                                                <asp:DropDownList ID="DropDownList10" runat="server" Width="150px" CssClass="inputTextbox"
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
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td class="txtalgnrgt" style="width: 50px;">
                                                                <label class="input-label required">
                                                                    Zip :
                                                                </label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox100" runat="server" Text="96151" placeholder="xxxxx-xxxx or xxxxx"
                                                                    CssClass="tooltip zip_us calWidth" Width="175px" MaxLength="500" title="Enter valid Zip eg : XXXXX-XXXX or XXXXX"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        File Complete at AMG :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox101" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Date before PSD :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox102" Text="03/17/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Date of SAR :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox103" Text="03/11/2014" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Previously Denied Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox104" Text="11/26/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Category :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList11" CssClass="inputDropDown" runat="server">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">NA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Charges :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox105" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Application Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox106" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Certified Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox107" Text="05/22/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Reapplication Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox108" Text="11/02/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Recertification Date :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox109" Text="03/03/2015" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Send To :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList39" CssClass="inputDropDown" runat="server">
                                                        <asp:ListItem Selected="True" Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">AMG</asp:ListItem>
                                                        <asp:ListItem Value="2">Legal</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Status :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList26" CssClass="inputDropDown" runat="server">
                                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">Waiting Room</asp:ListItem>
                                                        <asp:ListItem Value="2">Before PSD</asp:ListItem>
                                                        <asp:ListItem Value="3">Waiting for PDL/PRL</asp:ListItem>
                                                        <asp:ListItem Value="4">Received Letter</asp:ListItem>
                                                        <asp:ListItem Selected="True" Value="5">Final Decision Notice</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="vertical-align: middle;">
                                                    <label class="input-label">
                                                        Reason To Proceed To PSD :
                                                    </label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="TextBox110" Style="width: 598px !important;" CssClass="inputTextBox"
                                                        TextMode="MultiLine" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div style="background-color: #DFFFE0;" class="mrgntp4">
                                        <div class="status-heading">
                                            <p>
                                                <b>Before PSD :</b>
                                            </p>
                                        </div>
                                        <table class="form-table mrgntp4" style="width: 100%;">
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Proposed Decision From PSD Meeting :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox128" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="width: 275px;">
                                                    <label class="input-label">
                                                        Initial PSD Meeting Date :</label>
                                                </td>
                                                <td style="width: 210px;">
                                                    <asp:TextBox ID="TextBox129" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right" style="width: 194px;">
                                                    <label class="input-label">
                                                        Final Decision Date :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox132" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="vertical-align: middle;">
                                                    <label class="input-label">
                                                        Comment :
                                                    </label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="TextBox154" CssClass="inputTextBox" Style="width: 598px !important;"
                                                        TextMode="MultiLine" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div style="background-color: #DFFFE0;" class="pdgtp4">
                                        <div class="status-heading">
                                            <p>
                                                <b>Waiting for PDL/PRL :</b>
                                            </p>
                                        </div>
                                        <table class="form-table mrgntp4" style="width: 100%;">
                                            <tr>
                                                <td align="right" style="width: 275px;">
                                                    <label class="input-label">
                                                        Type of Memo :</label>
                                                </td>
                                                <td style="width: 210px;">
                                                    <asp:TextBox ID="TextBox133" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right" style="width: 194px;">
                                                    <label class="input-label">
                                                        Date Before PSD :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox134" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Date Sent To Legal :</label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="TextBox135" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div style="background-color: #DFFFE0;" class="pdgtp4">
                                        <div class="status-heading">
                                            <p>
                                                <b>Received Letter :</b>
                                            </p>
                                        </div>
                                        <table class="form-table mrgntp4" style="width: 100%;">
                                            <tr>
                                                <td align="right" style="width: 275px;">
                                                    <label class="input-label">
                                                        Education :</label>
                                                </td>
                                                <td style="width: 210px;">
                                                    <asp:TextBox ID="TextBox136" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right" style="width: 194px;"></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        General Denial :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox137" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Revocation :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox138" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Payment Deadline to Pay :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox139" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Hearing/Consideration Date :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox140" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Awaiting Applicant Response :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox141" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Total Pending Applicants :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox142" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div style="background-color: #DFFFE0;" class="pdgtp4 pdgbtm4">
                                        <div class="status-heading">
                                            <p>
                                                <b>Final Decision Notice :</b>
                                            </p>
                                        </div>
                                        <table class="form-table mrgntp4" style="width: 100%;">
                                            <tr>
                                                <td align="right" colspan="3">
                                                    <label class="input-label">
                                                        Decison Outcome A= approval D= denial C= continued :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox143" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="width: 275px;">
                                                    <label class="input-label">
                                                        Date of Hearing :</label>
                                                </td>
                                                <td style="width: 210px;">
                                                    <asp:TextBox ID="TextBox144" CssClass="inputTextBox calender" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right" style="width: 194px;">
                                                    <label class="input-label">
                                                        Applicant/ Certificate Holder :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox145" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <label class="input-label">
                                                        Type of hearing :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox148" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                                <td align="right">
                                                    <label class="input-label">
                                                        NOD letter sent Y or N :</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox149" CssClass="inputTextBox" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <div style="height: 3px;">
                                </div>
                                <div class="toolBar" style="padding: 4px;" runat="server" id="Div9">
                                    <span class="fltrt"><span class="AfterApproved">
                                        <asp:Button ID="Button5" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnPsdStatus5Update_Click" /></span>
                                        <asp:LinkButton ID="LinkButton4" CssClass="secondary medium bottom buttonalignment"
                                            runat="server" OnClick="lnkCancelStatus5Update_Click">Cancel</asp:LinkButton></span>
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
<!-- Autocomplete Script -->
<script src="../../Ajax_Handler/autocomplete.js" type="text/javascript"></script>
<script>

    // Sets up the multicolumn autocomplete widget.
    $("#txtSearchByName").mcautocomplete({
        // These next two options are what this plugin adds to the autocomplete widget.
        showHeader: true,
        columns: [{
            name: 'Certification#',
            width: '150px',
            valueField: 'Certification_Number'
        }, {
            name: 'First Name',
            width: '120px',
            valueField: 'First_Name'
        }, {
            name: 'Last Name',
            width: '120px',
            valueField: 'Last_Name'
        }],

        // Event handler for when a list item is selected.
        select: function (event, ui) {
            this.value = (ui.item ? ui.item.First_Name + ' ' + ui.item.Last_Name : '');
            $('#txtLicenseNumberSearch').val(ui.item ? ui.item.Certification_Number : '');
            $('#txtFirstNameSearch').val(ui.item ? ui.item.First_Name : '');
            $('#txtlastNameSaerch').val(ui.item ? ui.item.Last_Name : '');
            //alert('done');

            //$('#results').text(ui.item ? 'Selected : ' + ui.item.name + ', ' + ui.item.adminName1 + ', ' + ui.item.countryName  : 'Nothing selected, input was ' + this.value);
            return false;
        },

        // The rest of the options are for configuring the ajax webservice call.
        minLength: 1,
        source: function (request, response) {
            $.ajax({
                url: '../../Ajax_Handler/IndividualSearch.ashx',
                dataType: 'json',
                // The success event handler will display "No match found" if no items are returned.
                success: function (data) {
                    var result;
                    //alert(data);
                    result = data.SearchResult;
                    //alert(result);
                    //                        if (!data || data.length === 0 || !data.geonames || data.geonames.length === 0) {
                    //                            result = [{
                    //                                label : 'No match found.'
                    //                            }];
                    //                        } else {
                    //                            result = data.geonames;
                    //                        }
                    response(result);
                }
            });
        }
    });

</script>
