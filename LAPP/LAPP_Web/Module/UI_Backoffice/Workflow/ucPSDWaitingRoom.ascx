<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucPSDWaitingRoom.ascx.cs" Inherits="Module_UI_Backoffice_PSD_ucPSDWaitingRoom" %>
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
            <div>
                <div class="divNewApplicationAddu">
                    <span style="float: left; margin-right: 10px;">
                        <h4>PSD Waiting Room</h4>
                    </span>
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
                                        CssClass="inputTextbox phone_us" MaxLength="50"></asp:TextBox>
                                </td>
                                <td style="vertical-align: middle;">
                                    <label>
                                        Status :
                                    </label>
                                </td>
                                <td style="vertical-align: middle;">
                                    <asp:DropDownList ID="ddlStatusSearch" runat="server" Style="width: 186px ! important; margin-left: 3px;">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                        <asp:ListItem Value="1">Cleared To AMG</asp:ListItem>
                                        <asp:ListItem Value="2">At PSD</asp:ListItem>
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
                            <th>
                                <asp:CheckBox ID="chkSelectAll" AutoPostBack="true" OnCheckedChanged="chkSelectAll_CheckedChanged" runat="server" /></th>
                            <th scope="col" style="text-decoration: underline;">
                                <a href="javascript:void();" style="color: #fff;">ID #</a>
                            </th>
                            <th scope="col" style="text-decoration: underline;">
                                <a href="javascript:void();" style="color: #fff;">Certificate #</a>
                            </th>

                            <th scope="col" style="text-decoration: underline;">
                                <a href="javascript:void();" style="color: #fff;">First Name</a>
                            </th>
                            <th scope="col" style="text-decoration: underline;">
                                <a href="javascript:void();" style="color: #fff;">Last Name</a>
                            </th>
                            <th scope="col" style="text-decoration: underline;">
                                <a href="javascript:void();" style="color: #fff;">Date Send To PSD</a>
                            </th>
                            <th scope="col" style="text-decoration: underline;">
                                <a href="javascript:void();" style="color: #fff;">Date App Completed</a>
                            </th>
                            <th scope="col" style="text-decoration: underline;">
                                <a href="javascript:void();" style="color: #fff;">Reason</a>
                            </th>
                            <%--<th scope="col" style="text-decoration: underline;">
                                <a href="javascript:void();" style="color: #fff;">Status</a>
                            </th>--%>
                            <th scope="col" style="text-decoration: underline;">
                                <a href="javascript:void();" style="color: #fff;">1st PSD Meeting Date</a>
                            </th>
                            <th scope="col" style="text-decoration: underline;">
                                <a href="javascript:void();" style="color: #fff;">High Priority</a>
                            </th>
                            <th class="aligncenter" scope="col" style="width: 155px;">Action
                            </th>
                        </tr>
                        <tr id="trGridRowStatus1" runat="server">
                            <td>
                                <asp:CheckBox ID="CHKCer1" runat="server" /></td>
                            <td>CAMTC00123
                            </td>
                            <td align="center">101
                            </td>
                            <td>Nancy
                            </td>
                            <td>Blachly
                            </td>
                            <td>01/20/2015
                            </td>
                            <td>01/24/2014
                            </td>
                            <td>Reason
                            </td>
                            <%--<td>
                                <asp:DropDownList ID="DropDownList28" runat="server" Style="width: 115px;">
                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Cleared To AMG</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="2">At PSD</asp:ListItem>
                                </asp:DropDownList>
                            </td>--%>
                            <td align="center">
                                01/24/2014
                            </td>
                            <td align="center">
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                            </td>
                            <td align="center" valign="middle">
                                <asp:LinkButton ID="LinkButton1" Style="padding: 4px 8px 3px;" PostBackUrl="~/LAPP_UI_Backoffice/Workflow/CertificationApplication.aspx" CssClass="buttonGreen small" runat="server">View App</asp:LinkButton>
                                <asp:Button ID="Button2" runat="server" CssClass="secondary small" Text="Notes" OnClick="imgbtnStatus1Edit_Click" />
                            </td>
                        </tr>
                        <tr id="trStatus1" runat="server" visible="false">
                            <td colspan="11" style="padding: 0px;">
                                <div class="clear">
                                </div>
                                <div class="toolBar">
                                    <table style="width: 100%; table-layout: fixed;">
                                        <tr>
                                            <td style="width: 113px; font-weight: bold; padding: 0px; text-align: center;">CAMTC00123
                                            </td>
                                            <td style="width: 117px; font-weight: bold; padding: 0px 3px;">101
                                            </td>
                                            <td style="width: 74px; font-weight: bold; padding: 0px;">Nancy
                                            </td>
                                            <td style="width: 64px; font-weight: bold; padding: 0px;">Blachly
                                            </td>
                                            <td style="width: 138px; font-weight: bold; padding: 0px;">01/20/2015
                                            </td>
                                            <td style="width: 101px; font-weight: bold; padding: 0px;">01/24/2014
                                            </td>
                                            <td style="width: 43px;">Reason
                                            </td>
                                            <%--<td>
                                                <asp:DropDownList ID="DropDownList1" runat="server" Style="width: 115px;">
                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                    <asp:ListItem Value="1">Cleared To AMG</asp:ListItem>
                                                    <asp:ListItem Selected="True" Value="2">At PSD</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>--%>
                                            <td>
                                                01/24/2014
                                            </td>
                                            <td align="center" valign="middle" style="width: 66px;"></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="clear">
                                </div>
                                <div id="divStatus1" runat="server">
                                    <div style="margin-top: 10px;">
                                        <div>
                                            <table class="form-table" style="width: 67%; margin: 0 auto;">
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="TextBox36" Style="width: 692px !important;" CssClass="inputTextBox"
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
                        <tr id="tr1" runat="server">
                            <td>
                                <asp:CheckBox ID="CHKCer2" runat="server" /></td>
                            <td>CAMTC00212
                            </td>
                            <td align="center">250
                            </td>
                            <td>David
                            </td>
                            <td>Hook
                            </td>
                            <td>11/10/2015
                            </td>
                            <td>05/30/2014
                            </td>
                            <td>Reason
                            </td>
                            <%--<td>
                                <asp:DropDownList ID="DropDownList2" runat="server" Style="width: 115px;">
                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="1">Cleared To AMG</asp:ListItem>
                                    <asp:ListItem Value="2">At PSD</asp:ListItem>
                                </asp:DropDownList>
                            </td>--%>                            
                            <td align="center">
                               05/30/2014
                            </td>
                            <td align="center">
                            <asp:CheckBox ID="CheckBox2" runat="server" />
                            </td>
                            <td align="center" valign="middle">
                                <asp:LinkButton ID="LinkButton2" Style="padding: 4px 8px 3px;" PostBackUrl="~/LAPP_UI_Backoffice/Workflow/CertificationApplication.aspx" CssClass="buttonGreen small" runat="server">View App</asp:LinkButton>
                                <asp:Button ID="Button1" runat="server" CssClass="secondary small" Text="Notes" OnClick="imgbtnStatus1Edit_Click" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <br />
            <div class="toolBar">
                <p style="text-align: center; float: left; margin-left: 30%;">
                    Move selected to 1st PSD Meeting Date on &nbsp;
                    <asp:TextBox ID="TextBox1" CssClass="calender" placeholder="MM/DD/YYYY" runat="server"></asp:TextBox>
                    <asp:Button ID="Button3" CssClass="buttonGreen medium" runat="server" Text="Submit" />
                </p>
                <div style="float: right; padding-top: 5px;">
                    <asp:ImageButton ID="ImageButton1" ToolTip="Hold" runat="server" Width="22px"
                                    ImageUrl="~/App_Themes/Theme1/images/Hold.png" />
                                        <asp:ImageButton ID="ImageButton3" ToolTip="Stop!" runat="server" Width="22px"
                                    ImageUrl="~/App_Themes/Theme1/images/Stop.png" />
                </div>
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
