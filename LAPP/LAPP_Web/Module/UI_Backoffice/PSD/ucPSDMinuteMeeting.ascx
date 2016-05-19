<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucPSDMinuteMeeting.ascx.cs"
    Inherits="NVBMT_WebProject_Modules_PSD_ucPSDMinuteMeeting" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<script type="text/javascript">
    function divchargeshow1() {
        var dive = document.getElementById("Pop1");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }

    function divchargehide1() {
        var dive = document.getElementById("Pop1");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }
</script>
<script type="text/javascript">
    function divchargeshow2() {
        var dive = document.getElementById("pop2");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }

    function divchargehide2() {
        var dive = document.getElementById("pop2");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }
</script>
<style>
    .pop_ctr { list-style: outside none none;background-color: #FFF;width: 135px;}
    .pop_ctr li { background-color: #FFF;border-bottom: 1px solid rgb(222, 222, 222);padding: 2px 8px;border-left: 1px solid #dedede;border-right: 1px solid #dedede;cursor: pointer;}
    .pop-up { position: absolute;z-index: 9;top: 64px;right: 8px;}
    
    .close_btn_pop:hover{background-color:white; color:red;}
    .close_btn_pop{color: #FFF;float: right;margin-top: -15px;background-color: black;border-radius: 50%;width: 21px;text-align: center;font-size: 13px;cursor: pointer;}
    .pop_ctr li:hover{ background-color:#0D83DD; color:white;}
    .pop-up-button{width: 100px;display: block;}
    .pop-up-button:hover{ color:white !important;}
      #Pop1 {  position: absolute;z-index: 9;top: 73px; display:none;}
      #pop2 {  position: absolute;z-index: 9;top: 73px; display:none;}
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
                    <h4>PSD Meeting Notes</h4>
                </span><span style="float: right; margin-bottom: -2px; position: relative; top: -8px;"></span>
            </div>
            <div class="clear">
            </div>
        </div>
        <div style="display:none;">
            <label>
                Minutes :</label><br />
            <textarea name="txtMinutes" cols="10" rows="5" style="width: 99%"></textarea>
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
                        <th>PSD Meeting Date
                        </th>
                        <th scope="col">PSD Meeting Notes
                        </th>
                        <th scope="col">Document Link
                        </th>
                        <th scope="col">Approved By
                        </th>
                        <th scope="col">Approved Date
                        </th>
                        <th scope="col" style="width: 230px; text-align: center;">Action
                        </th>
                    </tr>
                    <tr id="trStatic1" runat="server">
                        <td>10/20/2015
                        </td>
                        <td>Meeting Two</td>
                        <td>MeetingTwo.doc</td>
                        <td></td>
                        <td></td>
                        <td>
                            <table>
                                <tr>
                                    <td style="width:45px;"><asp:Button ID="Button6" CssClass="buttonGreen small" runat="server" Text="Upload" /></td>
                                    <td style="width:45px;"><asp:Button ID="Button5" CssClass="buttonGreen small" runat="server" Text="Approve" /></td>
                                    <td style="width:115px;"><a href="#" class="pop-up-button buttonGreen small" onclick="divchargeshow1();">Individuals Linked</a>
                                        <div id="Pop1">
  <span class="close_btn_pop" onclick="divchargeshow1();">x</span>
  <div class="pop-up-text">
    <ul class="pop_ctr">
        <li>Individuals Linked</li>
        <li>John Doe</li>
        <li>Jane Doe</li>
    </ul>
  </div>
</div>
<div class="pop-up-container">
</div>
                                    </td>
                                </tr>
                            </table>
                           <%-- <asp:ImageButton ID="imgbtnStatus1Edit" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                OnClick="imgbtnStatus1Edit_Click" />
                            <asp:ImageButton ID="ImageButton2" runat="server" ToolTip="Delete" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                OnClientClick="javascript:return confirm('Are you sure you want to delete?')" />--%>
                        </td>
                    </tr>
                    <tr id="trEdit" runat="server" visible="false">
                        <td colspan="4">
                            <div class="toolBar" style="margin: 5px 0px;">
                                <table style="margin: 0px auto; width: 100%;">
                                    <tbody>
                                        <tr id="ContentPlaceHolder1_MidContent_ucPSDMinuteMeeting1_tr1">
                                            <td style="width: 94px;">
                                                <asp:Literal ID="ltrId" runat="server"> </asp:Literal>
                                            </td>
                                            <td style="width: 400px;">
                                                <asp:Literal ID="ltrUserName" runat="server"> </asp:Literal>
                                            </td>
                                            <td style="width: 400px;">
                                                <asp:Literal ID="ltrTask" runat="server"> </asp:Literal>
                                            </td>
                                            <td style="text-align: center; width: 100px;">
                                                <asp:LinkButton ID="LinkButton3" CssClass="secondary small bottom buttonalignment"
                                                    runat="server" OnClick="lnkCancelStatus1Update_Click">Close</asp:LinkButton>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <table style="margin: 0 auto; width: 600px; border: 1px solid #ddd">
                                <tr>
                                    <td align="right" style="padding-top: 15px">
                                        <label>
                                            Individual Name :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtEdit" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label>
                                            Task :</label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlEdit" runat="server" Style="width: 143px;">
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
                                id="PnalApprovebtn">
                                <span class="fltrt"><span class="AfterApproved">
                                    <asp:Button ID="btnPsdStatus1Update" ValidationGroup="vgAffidavit" CssClass="buttonGreen small"
                                        runat="server" Text="Save" CausesValidation="true" OnClick="btnPsdStatus1Update_Click" /></span>
                                    <asp:LinkButton ID="lnkCancelUpdate" CssClass="secondary small bottom buttonalignment"
                                        runat="server" OnClick="lnkCancelStatus1Update_Click">Cancel</asp:LinkButton></span>
                            </div>
                        </td>
                    </tr>
                    <tr id="trStatic2" runat="server">
                        <td>10/15/2015
                        </td>
                        <td>Meeting One</td>
                        <td>MeetingOne.pdf</td>
                        <td>John Smith</td>
                        <td>10/18/2015</td>
                        <td>
                            <table>
                                <tr>
                                    <td style="width: 53px;"></td>
                                    <td>
                                        <asp:Button ID="Button4" runat="server" CssClass="buttonGreen small" Text="Approved" /></td>
                                    <td style="width: 90px;"><a href="#" class="pop-up-button buttonGreen small" onclick="divchargehide2();">Individuals Linked</a>
                                        <div class="pop-up" id="pop2" >
  <span class="close_btn_pop" onclick="divchargehide2();" >x</span>
  <div class="pop-up-text">
    <ul class="pop_ctr">
        <li>Individuals Linked</li>
        <li>John Doe</li>
        <li>Jane Doe</li>
    </ul>
  </div>
</div>

                                    </td>
                                </tr>
                                
                            </table>
                            
                           <%-- <asp:ImageButton ID="imgbtnStatus1Edit" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                OnClick="imgbtnStatus1Edit_Click" />
                            <asp:ImageButton ID="ImageButton2" runat="server" ToolTip="Delete" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                OnClientClick="javascript:return confirm('Are you sure you want to delete?')" />--%>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
