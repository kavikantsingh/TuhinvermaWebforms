<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HearingFileDocAssign.ascx.cs" Inherits="Module_UI_Backoffice_PSD_HearingFileDocAssign" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<style>
    .close_btn_pop{ color:red; float:right; cursor:pointer;}
    .pop_ctr
    {list-style: outside none none;

padding: 2px;
background-color: #FFF;
width: 109px;}
        .pop_ctr li { border:1px solid #dedede; background-color:white;
        }
    .pop-up{position: absolute;
z-index: 9;
top: 114px;
right: 8px;
}
    .inputTextBox {
        width: 198px !important;
    }

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
            <div id="ContentPlaceHolder1_MidContent_ucNewApplication1_divNewApplicationAddButton"
                class="divNewApplicationAddu">
                <span style="float: left; margin-right: 10px;">
                    <h4>Hearing File Document Assignment</h4>
                </span><span style="float: right; margin-bottom: -2px; position: relative; top: -8px;"></span>
            </div>
            <div class="clear">
            </div>
        </div>
        
        <div class="toolBar" style="padding: 4px; display:none;" runat="server" id="Div1">
            <span class="fltrt"><span class="AfterApproved">
                <asp:Button ID="Button1" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                    runat="server" Text="Save" CausesValidation="true" /></span>
                <asp:LinkButton ID="LinkButton1" CssClass="secondary medium bottom buttonalignment"
                    runat="server">Cancel</asp:LinkButton></span>
        </div>
        <div class="clear" style="display:none;">
            <br />
            <span class="fltrt">
                <asp:Button ID="Button3" CssClass="buttonGreen small" runat="server" Text="Add New"
                    CausesValidation="true" OnClick="btnAddNew_Click" /></span></span>
        </div>
        
        <div id="divAddNew" runat="server" visible="false">
            <table class="index" style="margin: 0 auto; width: 600px; border: 1px solid #ddd; line-height: 30px">
                <tr>
                    <td align="right" style="padding-top: 15px">
                        <label>
                            Individual Name :</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <label>
                            Task :</label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" Style="width: 143px;"
                            runat="server">
                            <asp:ListItem>Allison to obtain</asp:ListItem>
                            <asp:ListItem>Beverly to Review</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
            </table>
            <div class="toolBar" style="padding: 4px; margin: 0 auto; width: 590px;" runat="server"
                id="Div2">
                <span class="fltrt"><span class="AfterApproved">
                    <asp:Button ID="Button2" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                        runat="server" Text="Save" CausesValidation="true" OnClick="btnPsdStatus1Update_Click" /></span>
                    <asp:LinkButton ID="LinkButton2" CssClass="secondary medium bottom buttonalignment"
                        runat="server" OnClick="lnkCancelStatus1Update_Click">Cancel</asp:LinkButton></span>
            </div>
            <div class="clear">
                <br />
            </div>
        </div>
        <div class="gvDivUpr">
            <table class="index  grid" cellspacing="0" cellpadding="5" id="gvNewApplication"
                style="color: #333333; width: 100%; border-collapse: collapse;">
                <tbody>
                    <tr>
                        <th>
                            <asp:CheckBox ID="chkSelectAll" OnCheckedChanged="chkSelectAll_CheckedChanged" AutoPostBack="true" runat="server" /></th>
                        <th>ID#
                        </th>
                        <th scope="col" style="text-align:center;">First Name
                        </th>
                        <th scope="col" style="text-align:center;">Last Name
                        </th>
                        <th scope="col" style="text-align:center;">Hearing Type
                        </th>
                        <th scope="col" style="text-align:center;">Hearing Date
                        </th>
                        <th scope="col" style="text-align:center;">Action
                        </th>
                       
                        
                    </tr>
                    <tr id="trStatic1" runat="server">
                        <td><asp:CheckBox ID="cck1" runat="server" /></td>
                        <td>CAMTC00123
                        </td>
                        <td style="text-align:center;">John</td>
                        <td style="text-align:center;">Doe</td>
                        <td style="text-align:center;">
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem>Proposed Denial</asp:ListItem>
                                <asp:ListItem>Proposed Discipline</asp:ListItem>
                                <asp:ListItem>Proposed Revocation</asp:ListItem>
                                <asp:ListItem>Proposed Suspension</asp:ListItem>
                            </asp:DropDownList></td>
                        <td style="text-align:center;">10/15/2015</td>
                        
                        <td style="text-align:center;">
                            <asp:LinkButton ID="lnkHearignFile" OnClick="lnkHearignFile_Click" Style="text-decoration:underline;" runat="server">Hearing File</asp:LinkButton>
                        </td>
                    </tr>
                    <tr id="trhearingfile" runat="server" visible="false">
                        <td colspan="7">
                            <div class="toolBar">
                                    <table>
                                        <tbody><tr>
                                            <td style="width: 0px;"></td>
                                            
                                            <td style="width: 140px; text-align: center;">
                                                <b>CAMTC00123 </b>
                                            </td>
                                            <td style="width:188px; text-align: center;">
                                                <b>John</b>
                                            </td>
                                            <td style="width: 65px; text-align: center;">
                                                <b>Doe</b>
                                            </td>
                                            <td style="width: 286px; text-align: center;">
                                                <b>Proposed Denial</b>
                                            </td>
                                            <td style="text-align: center; width: 155px;">10/15/2015</td>
                                            <td></td>
                                        </tr>
                                    </tbody></table>
                                </div>
                            <table style="width: 35%; border: 1px solid rgb(222, 222, 222); margin-left: 30%; margin-top:5px;">
                                <tr>
                                    <th style="height: 4px ! important; padding-top: 14px; padding-bottom: 6px;"></th>
                                    <th style="text-align:center;">Hearing File Document</th>
                                    <th style="text-align:center;">Action</th>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="chkFile1" runat="server" /></td>
                                    <td style="text-align:center;">File 1.pdf</td>
                                    <td style="text-align:center;">
                                        <asp:Button ID="btnHerinF1" OnClick="btnHerinF1_Click" CssClass="buttonGreen small" runat="server" Text="Select Hearing File" /></td>
                                </tr>
                                 <tr>
                                    <td >
                                        <asp:CheckBox ID="chkFile2" runat="server" /></td>
                                    <td style="text-align:center;">File 2.pdf</td>
                                     <td style="text-align:center;">
                                        <asp:Button ID="btnHerinF2" OnClick="btnHerinF1_Click" CssClass="buttonGreen small" runat="server" Text="Select Hearing File" /></td>
                                </tr>
                            </table>
                            <div id="dvDocument" runat="server" visible="false">
                            <table style="width: 35%; border: 1px solid rgb(222, 222, 222); margin-left: 30%; margin-top:5px;">
                                <tr>
                                    <th style="height: 4px ! important; padding-top: 14px; padding-bottom: 6px;"></th>
                                    <th >Document</th>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBox1" runat="server" /></td>
                                    <td >Document 1.pdf</td>

                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBox2" runat="server" /></td>
                                    <td>Document 2.pdf</td>

                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBox3" runat="server" /></td>
                                    <td>Document 3.pdf</td>

                                </tr>
                            </table>
                                <table style="width: 35%; margin-left: 30%; margin-top: 5px;">
                                    <tr>
                                        <td style="text-align:right;">
                                            <asp:Button ID="btnAddHF" CssClass="buttonGreen medium" runat="server" Text="Add to Hearing File" /></td>
                                    </tr>
                                </table>
                                </div>
                            <div id="ContentPlaceHolder1_MidContent_ucCertificationApplication1_PnalApprovebtn" class="toolBar" style="padding: 4px;">

                                <span class="fltrt"><span class="AfterApproved">

                                    <asp:Button ID="btnClose" OnClick="btnClose_Click" runat="server" CssClass="secondary medium bottom buttonalignment" Text="Close" />
                                </span>

                                </span>
                            </div>
                        </td>
                    </tr>
                    <tr id="trStatic2" runat="server">
                        <td>
                            <asp:CheckBox ID="chk2" runat="server" /></td>
                        <td>CAMTC00201
                        </td>
                        <td style="text-align:center;">Jane</td>
                        <td style="text-align:center;">Doe</td>
                        <td style="text-align:center;"><asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem>Proposed Denial</asp:ListItem>
                                <asp:ListItem>Proposed Discipline</asp:ListItem>
                                <asp:ListItem>Proposed Revocation</asp:ListItem>
                                <asp:ListItem>Proposed Suspension</asp:ListItem>
                            </asp:DropDownList></td>
                        <td style="text-align:center;">10/20/2015</td>
                        <td style="text-align:center;">
<asp:LinkButton ID="LinkButton4" Style="text-decoration:underline;"  OnClick="lnkHearignFile_Click" runat="server">Hearing File</asp:LinkButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>