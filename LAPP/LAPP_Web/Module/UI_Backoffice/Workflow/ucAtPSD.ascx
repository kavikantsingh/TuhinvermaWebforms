<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucAtPSD.ascx.cs" Inherits="Module_UI_Backoffice_Workflow_ucAtPSD" %>
<script type="text/javascript">
    function divchargeshow() {
        var dive = document.getElementById("Pop");
        dive.style.display = (dive.style.display == "block") ? "block" : "block";
    }

    function divchargehide() {
        var dive = document.getElementById("Pop");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }
</script>
<script type="text/javascript">
    function divchargeshow1() {
        var dive = document.getElementById("Pop1");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";

    }

    function divchargehide1() {
        var dive = document.getElementById("Pop1");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }
</script>
<script type="text/javascript">
    function divchargeshow2() {
        var dive = document.getElementById("Pop2");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }

    function divchargehide2() {
        var dive = document.getElementById("Pop2");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }
</script>
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
    .docmtbtn:hover {
        color: white !important;
    }

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

    .pop_ctr {
        list-style: outside none none;
        background-color: #FFF;
        width: 135px;
    }

        .pop_ctr li {
            background-color: #FFF;
            border-bottom: 1px solid rgb(222, 222, 222);
            padding: 2px 8px;
            border-left: 1px solid #dedede;
            border-right: 1px solid #dedede;
            cursor: pointer;
        }

    #Pop {
        position: absolute;
        z-index: 9;
        top: 73px;
        display: none;
    }

    #Pop1 {
        position: absolute;
        z-index: 9;
        top: 73px;
        display: none;
    }

    #Pop2 {
        position: absolute;
        z-index: 9;
        top: 73px;
        display: none;
    }

    .pop-up {
        position: absolute;
        z-index: 9;
        top: 73px;
    }

    .close_btn_pop {
        color: #FFF;
        float: right;
        margin-top: -15px;
        background-color: black;
        border-radius: 50%;
        width: 21px;
        text-align: center;
        font-size: 13px;
        cursor: pointer;
    }

        .close_btn_pop:hover {
            background-color: white;
            color: red;
        }

    .pop_ctr li:hover {
        background-color: #0D83DD;
        color: white;
    }

    .pop_ctr1 {
        list-style: outside none none;
        background-color: #FFF;
        width: 135px;
    }

        .pop_ctr1 li {
            background-color: #FFF;
            border-bottom: 1px solid rgb(222, 222, 222);
            padding: 2px 8px;
            border-left: 1px solid #dedede;
            border-right: 1px solid #dedede;
            cursor: pointer;
        }

    .pop-up1 {
        position: absolute;
        z-index: 9;
        top: 73px;
    }

    .pop_ctr1 li:hover {
        background-color: #0D83DD;
        color: white;
    }

    .pop_ctr3 {
        list-style: outside none none;
        background-color: #FFF;
        width: 135px;
    }

        .pop_ctr3 li {
            background-color: #FFF;
            border-bottom: 1px solid rgb(222, 222, 222);
            padding: 2px 8px;
            border-left: 1px solid #dedede;
            border-right: 1px solid #dedede;
            cursor: pointer;
        }

    .pop-up3 {
        position: absolute;
        z-index: 9;
        top: 73px;
    }

    .pop_ctr3 li:hover {
        background-color: #0D83DD;
        color: white;
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
                    <h4>At PSD</h4>
                </span><span style="float: right; margin-bottom: -2px; position: relative; top: -8px;"></span>
            </div>
            <div class="clear">
            </div>
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
                            <asp:CheckBox ID="chkSelectAll" AutoPostBack="true" OnCheckedChanged="chkSelectAll_CheckedChanged" runat="server" /></th>
                        <th scope="col">ID #
                        </th>
                        <th scope="col">Certificate #
                        </th>
                        <th scope="col">First Name
                        </th>
                        <th scope="col">Last Name
                        </th>
                        <th scope="col">Type
                        </th>

                        <th scope="col">PSD Meeting Dates
                        </th>
                        <th scope="col">Proposed MTC
                        </th>
                        <th scope="col">High Priority
                        </th>
                        <th scope="col">Send To
                        </th>
                        <th scope="col">Action
                        </th>
                    </tr>
                    <tr id="trStatic1" runat="server">
                        <td>
                            <asp:CheckBox ID="chkcart1" runat="server" /></td>
                        <td>CAMTC00123
                        </td>
                        <td></td>
                        <td>John</td>
                        <td>Doe</td>
                        <td>A
                        </td>
                        <td><a href="#" class="pop-up-button3" onclick="divchargehide2();">10/15/2015, 2/15/2016</a>
                            <div class="pop-up3" id="Pop2">
                                <span class="close_btn_pop" onclick="divchargehide2();">x</span>
                                <div class="pop-up-text3">
                                    <ul class="pop_ctr3">
                                        <li>PSD Meeting Notes</li>
                                        <li>FirstMeeting.pdf</li>
                                        <li>SecondMeeting.pdf</li>
                                        <li>ThirdMeeting.pdf</li>
                                    </ul>
                                </div>
                            </div>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem>Suspension</asp:ListItem>
                                <asp:ListItem>Permanent Revocation</asp:ListItem>
                            </asp:DropDownList></td>
                        <td align="center">
                            <asp:CheckBox ID="CheckBox1" runat="server" /></td>
                        <td>
                            <asp:DropDownList ID="ddlSnedToColoumn1" runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>AMG</asp:ListItem>
                                <asp:ListItem>Legal</asp:ListItem>

                            </asp:DropDownList>

                        </td>
                        <td>
                            <asp:Button ID="btnMTC" runat="server" CssClass="buttonGreen small" Text="Send" /></td>

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
                        <td>
                            <asp:CheckBox ID="chkcart2" runat="server" /></td>
                        <td>CAMTC00212
                        </td>
                        <td>100
                        </td>
                        <td>Jane
                        </td>
                        <td>Doe</td>
                        <td>CH</td>
                        <td><a href="#" class="pop-up-button1" onclick="divchargeshow();">10/30/2015</a>
                            <div id="Pop">
                                <span class="close_btn_pop" onclick="divchargehide();">x</span>
                                <div class="pop-up-text1">
                                    <ul class="pop_ctr1">
                                        <li>PSD Meeting Notes</li>
                                        <li>FirstMeeting.pdf</li>
                                        <li>SecondMeeting.pdf</li>
                                        <li>ThirdMeeting.pdf</li>
                                    </ul>
                                </div>
                            </div>
                        </td>
                        <td></td>
                        <td align="center">
                            <asp:CheckBox ID="CheckBox2" runat="server" />
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlSendToColumn2" runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>AMG</asp:ListItem>
                                <asp:ListItem>Legal</asp:ListItem>
                            </asp:DropDownList>

                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" CssClass="buttonGreen small" Text="Send" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="applicationform" style="width: 100%">
            <div class="clear">
                <asp:Literal ID="Literal6" runat="server"></asp:Literal>
            </div>
            <div class="toolBar" style="padding: 4px;" runat="server" id="Div6">
                <div style="float: left; width:100%;">
                    <div id="pnlProposedMTC" style="width:100%">
                        <table class="" style="width:100%">
                            <tbody>
                                <tr>
                                    <td class="">
                                        <span class="">
                                            <input type="submit" value="Proposed MTC" id="btnProposedMTC" class="buttonGreen medium">
                                        </span>
                                        <asp:DropDownList ID="ddlProposedMTC" runat="server" Style="width: 115px;">
                                            <asp:ListItem>Suspension</asp:ListItem>
                                            <asp:ListItem>Permanent Revocation</asp:ListItem>
                                        </asp:DropDownList>
                                        <span class="" style="padding-left:20px;">
                                            <input type="submit" value="Send To" id="btnSendTo" class="buttonGreen medium">
                                        </span>
                                        <asp:DropDownList ID="ddlSenttoall" runat="server" Style="width: 115px;">
                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                            <asp:ListItem Selected="True" Value="1">Cleared To AMG</asp:ListItem>
                                            <asp:ListItem Value="2">PSD Waiting Room</asp:ListItem>
                                        </asp:DropDownList>
                                        <span class="" style="float:right;">
                                            <div style="padding-top: 5px; float: left; margin-right: 10px;">
                    <asp:ImageButton ID="ImageButton1" ToolTip="Hold" runat="server" Width="22px"
                                    ImageUrl="~/App_Themes/Theme1/images/Hold.png" />
                                        <asp:ImageButton ID="ImageButton3" ToolTip="Stop!" runat="server" Width="22px"
                                    ImageUrl="~/App_Themes/Theme1/images/Stop.png" />
                </div>
                                            <input type="submit" value="Send" id="btnSend" class="buttonGreen medium">
                                        </span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
