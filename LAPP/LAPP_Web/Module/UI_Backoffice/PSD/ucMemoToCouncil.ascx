<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucMemoToCouncil.ascx.cs" Inherits="Module_UI_Backoffice_PSD_ucMemoToCouncil" %>
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
<script type="text/javascript">
    function divAddDoc() {
        var dive = document.getElementById("AddDocm");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }

    function divAddDocment() {
        var dive = document.getElementById("AddDocm");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }
</script>
<style>
    .docmtbtn:hover{color:white!important;}
    .blockheader {
    height: 30px;
    background-color: #E5EDF2;
    width: 99.1%;
    border: 1px solid #DDE3EC;
    border-radius: 2px;
    color: #595959;
    font-size: 15px;
    font-weight: bold;
    padding-left: 5px;
    margin: 10px auto;
}
    .inputTextBox {
        width: 198px !important;
    }

    .pop_ctr { list-style: outside none none;background-color: #FFF;width: 135px;}
    .pop_ctr li { background-color: #FFF;border-bottom: 1px solid rgb(222, 222, 222);padding: 2px 8px;border-left: 1px solid #dedede;border-right: 1px solid #dedede;cursor: pointer;}
    #Pop {position: absolute;z-index: 9;top: 73px; display:none;   }
    #Pop1 {  position: absolute;z-index: 9;top: 73px; display:none;}
    #Pop2 {  position: absolute;z-index: 9;top: 73px; display:none;}
    .pop-up { position: absolute;z-index: 9;top: 73px;}
    .close_btn_pop{color: #FFF;float: right;margin-top: -15px;background-color: black;border-radius: 50%;width: 21px;text-align: center;font-size: 13px;cursor: pointer;}
    .close_btn_pop:hover{background-color:white; color:red;}
    .pop_ctr li:hover{ background-color:#0D83DD; color:white;}
    
    .pop_ctr1 { list-style: outside none none;background-color: #FFF;width: 135px;}
    .pop_ctr1 li { background-color: #FFF;border-bottom: 1px solid rgb(222, 222, 222);padding: 2px 8px;border-left: 1px solid #dedede;border-right: 1px solid #dedede;cursor: pointer;}
    .pop-up1 { position: absolute;z-index: 9;top: 73px;}
    .pop_ctr1 li:hover{ background-color:#0D83DD; color:white;}

    .pop_ctr3 { list-style: outside none none;background-color: #FFF;width: 135px;}
    .pop_ctr3 li { background-color: #FFF;border-bottom: 1px solid rgb(222, 222, 222);padding: 2px 8px;border-left: 1px solid #dedede;border-right: 1px solid #dedede;cursor: pointer;}
    .pop-up3 { position: absolute;z-index: 9;top: 73px;}
    .pop_ctr3 li:hover{ background-color:#0D83DD; color:white;}
    .form-table tr td {
        padding: 4px 0px 4px 0px;
    }

    .form-table tr .xtrapdgnone {
        padding: 0px 0px 0px 0px;
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
                        <h4>Memo to Counsel</h4>
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
                                <a href="javascript:void();" style="color: #fff;">Type</a>
                            </th>
                            <th scope="col" style="text-decoration: underline;">
                                <a href="javascript:void();" style="color: #fff;">Date of Last PSD Meeting</a>
                            </th>
                            <th scope="col" style="text-decoration: underline;">
                                <a href="javascript:void();" style="color: #fff;">Kind of MTC </a>
                            </th>
                            <th scope="col" style="text-decoration: underline;">
                                <a href="javascript:void();" style="color: #fff;">High Priority</a>
                            </th>
                            <th class="aligncenter" scope="col" style="width: 170px;">Action
                            </th>
                        </tr>
                        <tr id="trGridRowStatus1" runat="server">
                            <td>
                                <asp:CheckBox ID="chkcart1" runat="server" /></td>
                            <td>CAMTC00123
                            </td>
                            <td>101
                            </td>
                            <td>Nancy
                            </td>
                            <td>Blachly
                            </td>
                            <td>A</td>
                            <td>01/20/2015
                            </td>
                            <td>
                                Proposed Denial
                                <%--<asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>Proposed Denial</asp:ListItem>
                                    <asp:ListItem>Proposed Discipline</asp:ListItem>
                                    <asp:ListItem>Proposed Revocation</asp:ListItem>
                                    <asp:ListItem>Proposed Suspension</asp:ListItem>
                                </asp:DropDownList>--%>
                            </td>
                            <td align="center">
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                            </td>
                           
                            <td align="center" valign="middle"><a href="#" class="buttonGreen small docmtbtn" OnClick="divAddDoc();">MTC</a>
                                <div id="AddDocm" style="border: 1px solid rgb(212, 216, 219);
    margin: 11px auto auto;
    width: 49%;
    float: right;
    display: block;
    z-index: 9;
    position: absolute;
    right: 2px;
    background-color: white; display:none;">
        <span class="close_btn_pop" onclick="divAddDoc();;">x</span>
        <div class="blockheader" style="margin: 0px 0px -3px auto;">
            <p style="padding-top: 7px;">
                <span>Add Document   </span>
            </p>
        </div>
        <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
            <tr>
                <td style="width: 140px;" align="right">
                    <label class="input-label">
                        Document Name :</label>
                </td>
                <td>

                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtDocumentName" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr><td style="height:5px;"></td></tr>
            <%--<tr>
                <td align="right">
                    <label class="input-label">
                        Document Type :</label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlDocumentType" runat="server" CssClass="DropdownList" style="margin-left:0px; width:143px !important;">
                        <asp:ListItem Value="-1">Select</asp:ListItem>
                        <asp:ListItem Value="1">Certificate of Individual </asp:ListItem>
                        <asp:ListItem Value="2">Certification</asp:ListItem>
                        <asp:ListItem Value="3">Recertification</asp:ListItem>
                    </asp:DropDownList>
                </td>

            </tr>--%>
            <tr>
                <td align="right">
                    <label class="input-label">Document :</label></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="btnUploadLicensee" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                        Text="Upload"  />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="Button3" class="buttonGreen small" runat="server" Text="Sent to Legal" /></td>
            </tr>
        </table>
    </div>
                                <asp:Button ID="Button2" runat="server" CssClass="buttonGreen small" Text="Send to Legal" OnClick="imgbtnStatus1Edit_Click" />
                            </td>
                        </tr>
                        <tr id="trStatus1" runat="server" visible="false">
                            <td colspan="11" style="padding: 0px;">
                                <div class="clear">
                                </div>
                                <div class="toolBar">
                                    <table style="width: 100%; table-layout: fixed;">
                                        <tr>
                                            <td style="width: 145px; font-weight: bold; padding: 0px; text-align: center;">CAMTC00123
                                            </td>
                                            <td style="width: 80px; font-weight: bold; padding: 0px 3px;">101
                                            </td>
                                            <td style="width: 80px; font-weight: bold; padding: 0px;">Nancy
                                            </td>
                                            <td style="width: 83px; font-weight: bold; padding: 0px;">Blachly
                                            </td>
                                             <td style="width: 83px; font-weight: bold; padding: 0px;">A
                                            </td>
                                            <td style="width: 138px; font-weight: bold; padding: 0px;">01/20/2015
                                            </td>
                                            <td style="width: 101px; font-weight: bold; padding: 0px;">Proposed Denial
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
                                <asp:CheckBox ID="chkcart2" runat="server" /></td>
                            <td>CAMTC00212
                            </td>
                            <td>250
                            </td>
                            <td>David
                            </td>
                            <td>Hook
                            </td>
                            <td>CH</td>
                            <td>11/10/2015
                            </td>
                            <td>
                                Proposed Discipline
                                <%--<asp:DropDownList ID="ddlgKindOfMTC" runat="server">
                                    <asp:ListItem>Proposed Denial</asp:ListItem>
                                    <asp:ListItem>Proposed Discipline</asp:ListItem>
                                    <asp:ListItem>Proposed Revocation</asp:ListItem>
                                    <asp:ListItem>Proposed Suspension</asp:ListItem>
                                </asp:DropDownList>--%>
                            </td>
                            <td align="center">
                            <asp:CheckBox ID="CheckBox2" runat="server" />
                            </td>
                            <td align="center" valign="middle">
                                <asp:LinkButton ID="LinkButton2" Style="padding: 4px 8px 3px;"  CssClass="buttonGreen small" runat="server">MTC</asp:LinkButton>
                                <asp:Button ID="btnSendToLegal" runat="server" CssClass="buttonGreen small" Text="Send to Legal" OnClick="imgbtnStatus1Edit_Click" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="toolBar">
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