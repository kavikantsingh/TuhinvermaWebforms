<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucHearingNotes.ascx.cs" Inherits="Module_UI_Backoffice_ARS_ucHearingNotes" %>
<asp:UpdatePanel runat="server" ID="upPnlCertificateApp">
    <ContentTemplate>
        <div>
            <div id="ContentPlaceHolder1_MidContent_ucNewApplication1_divNewApplicationAddButton"
                class="divNewApplicationAddu">
                <span style="float: left; margin-right: 10px;">
                    <h4>Hearing Notes</h4>
                </span><span style="float: right; margin-bottom: -2px; position: relative; top: -8px;"></span>
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
            <div class="gridUpperDiv" style=" display:none;">
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
                                <a href="javascript:void();" style="color: #fff;">Hearing Notes</a>
                            </th>
                            <th scope="col" style="text-decoration: underline;">
                                <a href="javascript:void();" style="color: #fff;">Status</a>
                            </th>

                            <th scope="col" style="text-decoration: underline;">
                                <a href="javascript:void();" style="color: #fff;">Upload Date</a>
                            </th>
                            <th scope="col" style="text-decoration: underline;">
                                <a href="javascript:void();" style="color: #fff;">Data Finalized</a>
                            </th>
                            <th scope="col" style="text-decoration: underline;">
                                <a href="javascript:void();" style="color: #fff;">Finalized by</a>
                            </th>
                           
                           
                        </tr>
                        <tr id="trGridRowStatus1" runat="server">
                            
                            <td>HearingNotes1.pdf
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>Draft</asp:ListItem>
                                    <asp:ListItem>Final</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>11/20/2015
                            </td>
                            <td>11/25/2015
                            </td>
                            <td>Jane Smith
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
                            <td>HearingNotes2.pdf
                            </td>
                            <td> <asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem>Draft</asp:ListItem>
                                    <asp:ListItem>Final</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>11/22/2015
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            
                        </tr>
                    </tbody>
                </table>
            </div>
            <br />
            <%--<div class="toolBar">
                <p style="text-align: center;">
                    Move selected to 1st PSD Meeting Date on &nbsp;
                    <asp:TextBox ID="TextBox1" CssClass="calender" placeholder="MM/DD/YYYY" runat="server"></asp:TextBox>
                </p>
            </div>--%>
        </div>
        
        

        
        
    </ContentTemplate>
</asp:UpdatePanel>