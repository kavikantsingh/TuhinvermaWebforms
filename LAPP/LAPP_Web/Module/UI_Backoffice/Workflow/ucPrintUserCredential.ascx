<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucPrintUserCredential.ascx.cs" Inherits="Module_UI_Backoffice_Workflow_ucPrintUserCredential" %>
<script>
    function SelectheaderCheckboxes(headerchk, gv) {
        // alert('hi');
        //debugger
        var gvcheck = document.getElementById(gv);
        // alert(gvcheck);
        var i;
        if (headerchk.checked) {
            for (i = 0; i < gvcheck.rows.length; i++) {
                var inputs = gvcheck.rows[i].getElementsByTagName('input');
                inputs[0].checked = true;
            }
        }
        else {
            for (i = 0; i < gvcheck.rows.length; i++) {
                var inputs = gvcheck.rows[i].getElementsByTagName('input');
                inputs[0].checked = false;
            }
        }
    }

</script>
<asp:UpdatePanel runat="server" ID="upPnlCertificateApp">
    <ContentTemplate>
        <div>
            <div id="ContentPlaceHolder1_MidContent_ucNewApplication1_divNewApplicationAddButton"
                class="divNewApplicationAddu">
                <span style="float: left; margin-right: 10px;">
                    <h4>Print User Credential</h4>
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
                    <table class="SearchTable boardinfo" align="center" style="height: 100px; height: 134px;">
                        <tbody>
                            <tr>
                                <td style="vertical-align: middle;">
                                    <label>
                                        Search By Name :</label>
                                </td>
                                <td colspan="3" style="vertical-align: middle;">
                                    <asp:TextBox ID="txtSearchByName" ClientIDMode="Static" runat="server" Style="width: 470px  !important; margin-left: 3px;"
                                        CssClass="inputTextbox" MaxLength="50"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle;">
                                    <label>
                                        Application # :</label>
                                </td>
                                <td style="vertical-align: middle;">
                                    <asp:TextBox ID="txtLicenseNumberSearch" ClientIDMode="Static" Style="width: 178px !important; margin-left: 3px;"
                                        runat="server" CssClass="inputTextbox" MaxLength="15"></asp:TextBox>
                                </td>
                                <td style="width: 102px; vertical-align: middle;">
                                    <label>
                                        SS # :</label>
                                </td>
                                <td style="vertical-align: middle;">
                                    <asp:TextBox ID="txtSSNSaerch" runat="server" Style="width: 178px !important; margin-left: 3px;"
                                        CssClass="inputTextbox ssn" MaxLength="50"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle;">
                                    <label>
                                        Last Name :</label>
                                </td>
                                <td style="vertical-align: middle;">
                                    <asp:TextBox ID="txtlastNameSaerch" ClientIDMode="Static" runat="server" Style="width: 178px !important; margin-left: 3px;"
                                        CssClass="inputTextbox capitalize-text" MaxLength="50"></asp:TextBox>
                                </td>
                                <td style="vertical-align: middle;">
                                    <label>
                                        First Name :</label>
                                </td>
                                <td style="vertical-align: middle;">
                                    <asp:TextBox ID="txtFirstNameSearch" ClientIDMode="Static" Style="width: 178px !important; margin-left: 3px;"
                                        runat="server" CssClass="inputTextBox capitalize-text" MaxLength="50"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: middle;">
                                    <label>
                                        Phone # :</label>
                                </td>
                                <td style="vertical-align: middle;">
                                    <asp:TextBox ID="txtPhoneSearch" runat="server" Style="width: 178px !important; margin-left: 3px;"
                                        CssClass="inputTextbox" MaxLength="50"></asp:TextBox>
                                </td>
                                <td style="vertical-align: middle;">
                                    <label>
                                        Status :</label>
                                </td>
                                <td style="vertical-align: middle;">
                                    <asp:DropDownList ID="ddlStatusSearch" runat="server" Style="width: 186px ! important; margin-left: 3px;">
                                        <asp:ListItem Value="-1">Select</asp:ListItem>
                                        <asp:ListItem Value="2">Active</asp:ListItem>
                                        <asp:ListItem Value="0">Archive</asp:ListItem>
                                        <asp:ListItem Value="1">Delete</asp:ListItem>
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
                    <span style="margin-top: 3px; display: block; float: left;">
                        <asp:Button ID="Button1" runat="server" CssClass="buttonGreen small" Text="Print User Name" /><asp:Button
                            ID="Button2" runat="server" Style="margin-left: 5px;" CssClass="buttonGreen small"
                            Text="Print Password" /></span> <a title="find" href="javascript:void()" onclick="javascript :showDivSlide('.userHide');hideDivSlide('.searchBbutton');">
                                <img src="../../App_Themes/Theme1/images/search_icon.png" /></a>
                </div>
            </div>
            <div class="clear">
            </div>
            <asp:Literal ID="ltrMainMessage" runat="server"></asp:Literal>
            <div class="gvDivUpr">
                <%--<div style="border : 1px solid rgb(221, 221, 221); padding : 10px;">
                    <table style="width : 70%; margin : 0px auto;">
                        <tr>
                            <td align="right">
                                <label class="input-label required">
                                    Last Name :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" Style="width : 170px;" runat="server"></asp:TextBox>
                            </td>
                            <td align="right">
                                <label class="input-label required">
                                    First Name :
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" Style="width : 170px;" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <span>
                                    <asp:Button ID="btnUserName" runat="server" CssClass="buttonGreen small" Text="User Name" /><asp:Button
                                        ID="btnPassword" runat="server" Style="margin-left : 5px;" CssClass="buttonGreen small"
                                        Text="Password" /></span>
                            </td>
                        </tr>
                    </table>
                </div>--%>
                <table class="index  grid" id="gvTask" style="color: #333333; width: 100%; border-collapse: collapse;"
                    cellpadding="5" cellspacing="0">
                    <tbody>
                        <tr>
                            <th class="column_checkbox" scope="col" style="padding-top: 4px;">
                                <input name="ctl00$ContentPlaceHolder1$ucTask1$gvTask$ctl01$chkMain" type="checkbox"
                                    id="chkMain" onchange="javascript :SelectheaderCheckboxes(this,&quot;gvTask&quot;);">
                            </th>
                            <th>Last Name
                            </th>
                            <th>First Name
                            </th>
                            <th>User Name 
                            </th>
                            <th>Username Print Date
                            </th>
                            <th>Password Print Date
                            </th>
                            <th>Date 
                            </th>
                            <th class="aligncenter">Action
                            </th>
                        </tr>
                        <tr>
                            <td class="column_checkbox" valign="middle" style="padding-bottom: 5px;">
                                <input id="chkSelect" type="checkbox" name="ctl00$ContentPlaceHolder1$ucTask1$gvTask$ctl02$chkSelect">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$ucTask1$gvTask$ctl02$hfID" id="hfID"
                                    value="1">
                            </td>
                            <td>Blachly
                            </td>
                            <td>Nancy
                            </td>

                            <td>nanblalhlycy
                            </td>
                            <td>10/16/2015
                            </td>
                            <td>10/11/2015
                            </td>
                            <td>10/06/2015
                            </td>
                            <td style="width: 270px;" align="center" valign="middle">
                                <span>
                                    <asp:Button ID="btnUserName" runat="server" CssClass="buttonGreen small" Text="Print User Name" /><asp:Button
                                        ID="btnPassword" runat="server" Style="margin-left: 5px;" CssClass="buttonGreen small"
                                        Text="Print Password" /></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="column_checkbox" valign="middle" style="padding-bottom: 5px;">
                                <input id="Checkbox1" type="checkbox" name="ctl00$ContentPlaceHolder1$ucTask1$gvTask$ctl02$chkSelect">
                                <input type="hidden" name="ctl00$ContentPlaceHolder1$ucTask1$gvTask$ctl02$hfID" id="Hidden1"
                                    value="1">
                            </td>
                            <td>Hook
                            </td>
                            <td>David
                            </td>

                            <td>hooiddav
                            </td>
                            <td>10/13/2015
                            </td>
                            <td>06/15/2015
                            </td>
                            <td>08/06/2015
                            </td>
                            <td align="center" valign="middle">
                                <span>
                                    <asp:Button ID="Button3" runat="server" CssClass="buttonGreen small" Text="Print User Name" /><asp:Button
                                        ID="Button4" runat="server" Style="margin-left: 5px;" CssClass="buttonGreen small"
                                        Text="Print Password" /></span>
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
