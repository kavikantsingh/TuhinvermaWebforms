<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucARSLegal.ascx.cs" Inherits="Module_UI_Backoffice_ARS_ucARSLegal" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>



 <style>
     .fancy .ajax__tab_active .ajax__tab_outer, .fancy .ajax__tab_header .ajax__tab_outer, .fancy .ajax__tab_hover .ajax__tab_outer{
        margin-top: 3px;
    }

    .fancy .ajax__tab_active .ajax__tab_tab, .fancy .ajax__tab_hover .ajax__tab_tab, .fancy .ajax__tab_header .ajax__tab_tab{
        margin:2px 5px 0px 0px;
    }

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

    function divAddDoc2() {
        var dive = document.getElementById("AddDocm2");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }


    function divAddDocment2() {
        var dive = document.getElementById("AddDocm2");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }

    function divAddDoc3() {
        var dive = document.getElementById("AddDocm3");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }

    function divAddDocment3() {
        var dive = document.getElementById("AddDocm3");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }

    function divAddDoc4() {
        var dive = document.getElementById("AddDocm4");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }

    function divAddDocment4() {
        var dive = document.getElementById("AddDocm4");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }

    function divAddDoc5() {
        var dive = document.getElementById("AddDocm5");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }

    function divAddDocment5() {
        var dive = document.getElementById("AddDocm5");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }

    function divAddDoc6() {
        var dive = document.getElementById("AddDocm6");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }

    function divAddDocment6() {
        var dive = document.getElementById("AddDocm6");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }

    function divAddDoc7() {
        var dive = document.getElementById("AddDocm7");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }

    function divAddDocment7() {
        var dive = document.getElementById("AddDocm7");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }

    function divAddDoc8() {
        var dive = document.getElementById("AddDocm8");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }

    function divAddDocment8() {
        var dive = document.getElementById("AddDocm8");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }

    function divAddDoc9() {
        var dive = document.getElementById("AddDocm9");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }

    function divAddDocment9() {
        var dive = document.getElementById("AddDocm9");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }

    function divAddDoc10() {
        var dive = document.getElementById("AddDocm10");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }

    function divAddDocment10() {
        var dive = document.getElementById("AddDocm10");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }

    function divAddDoc11() {
        var dive = document.getElementById("AddDocm11");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }

    function divAddDocment11() {
        var dive = document.getElementById("AddDocm11");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }

    function divAddDoc12() {
        var dive = document.getElementById("AddDocm12");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }

    function divAddDocment12() {
        var dive = document.getElementById("AddDocm12");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }

    function divAddDoc13() {
        var dive = document.getElementById("AddDocm13");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }

    function divAddDocment13() {
        var dive = document.getElementById("AddDocm13");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }

    function divAddDoc14() {
        var dive = document.getElementById("AddDocm14");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }

    function divAddDocment14() {
        var dive = document.getElementById("AddDocm14");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }

    function dvholdAddnotes1() {
        var dive = document.getElementById("gridHoldAddNote1");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }

    function dvholdAddnotes2() {
        var dive = document.getElementById("gridHoldAddNote2");
        dive.style.display = (dive.style.display == "none") ? "block" : "none";
    }
</script>

<script>

    function divAddNotesL3() {
        var dive = document.getElementById("AddNotesL3");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }

    function divAddNotesL4() {
        var dive = document.getElementById("AddNotesL4");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }

    function divAddNotesL5() {
        var dive = document.getElementById("AddNotesL5");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }
    function divAddNotesL6() {
        var dive = document.getElementById("AddNotesL6");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }
    function divAddNotesL7() {
        var dive = document.getElementById("AddNotesL7");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }
    function divAddNotesL8() {
        var dive = document.getElementById("AddNotesL8");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }
    function divAddNotesL9() {
        var dive = document.getElementById("AddNotesL9");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }
    function divAddNotesL10() {
        var dive = document.getElementById("AddNotesL10");
        dive.style.display = (dive.style.display == "block") ? "none" : "block";
    }
    function divAddNotesL11() {
        var dive = document.getElementById("AddNotesL11");
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
            <div id="ContentPlaceHolder1_MidContent_ucNewApplication1_divNewApplicationAddButton"
                class="divNewApplicationAddu">
                <span style="float: left; margin-right: 10px;">
                    <h4>Special Counsel</h4>
                </span><span style="float: right; margin-bottom: -2px; position: relative; top: -8px;"></span>
            </div>
            <div class="clear">
            </div>

            <asp:TabContainer ID="TabContainer1" runat="server" CssClass="fancy fancy-green"
                ActiveTabIndex="0">
                <asp:TabPanel ID="TabPanel1" Enabled="true" runat="server">
                    <HeaderTemplate>
                        Frontend Tasks
                    </HeaderTemplate>
                    <ContentTemplate>



                        <div class="gvDivUpr">
                            <table style="margin-bottom:20px;margin-top:5px;">
                                <tr>
                                    <td>
                                        <b>Frontend Tasks</b>
                                    </td>
                                </tr>
                            </table>

                            <table class="index  grid" cellspacing="0" cellpadding="5" id="gvMTC"
                                style="color: #333333; width: 100%; font-size:11px; border-collapse: collapse;">
                                <tbody>
                                    <tr>
                                        <th>
                                            <asp:CheckBox ID="chkSelectAll" AutoPostBack="true" OnCheckedChanged="chkSelectAll_CheckedChanged" runat="server" /></th>
                                        <th scope="col" style="text-decoration: underline; text-align:center;">
                                            <span style="color: white;">Type</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">MTC Type</span>
                                        </th>
                                         <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Hearing Type</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Internal Status</span>
                                        </th>
                                         <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">ID #</span>
                                        </th>
                                         <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Certificate #</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">First Name</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Last Name</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Date MTC Completed</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Education Issue </span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center;width: 165px;">
                                                    <span style="color: white;">Hearing Waiting Room Date</span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">High Priority</span>
                                                </th>
                                         <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Send To   </span>
                                        </th>
                                       <th scope="col" style="text-decoration: underline;text-align:center;"></th>
                                    </tr>
                                    <tr id="tr6" runat="server">
                                        <td><asp:CheckBox ID="chkCart1" runat="server" /></td>
                                        <td>A</td>
                                        <td><a href="../../../LAPP_UI_Backoffice/PSD/MemoToCouncil.aspx" style="color:blue; text-align:center;text-decoration:underline;">Proposed Denial</a>
                                            <%--<asp:DropDownList ID="ddlmtcType1" Width="120px" runat="server">
                                                <asp:ListItem>Proposed Denial</asp:ListItem>
                                                <asp:ListItem>Proposed Discipline</asp:ListItem>
                                                <asp:ListItem>Proposed Revocation</asp:ListItem>
                                                <asp:ListItem>Proposed Suspension</asp:ListItem>
                                            </asp:DropDownList>--%>
                                        </td>
                                        <td style="text-align:center;">
                                            <asp:DropDownList ID="ddlmtcType1" Width="120px" runat="server">
                                                <asp:ListItem>Proposed Denial</asp:ListItem>
                                                <asp:ListItem>Proposed Discipline</asp:ListItem>
                                                <asp:ListItem>Proposed Revocation</asp:ListItem>
                                                <asp:ListItem>Proposed Suspension</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="text-align:center;">
                                             <asp:DropDownList ID="DropDownList22" Width="60px" runat="server">
                                                <asp:ListItem>Draft</asp:ListItem>
                                                <asp:ListItem>Final</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="text-align:center;">CAMTC00123 </td>
                                        <td style="text-align:center;"></td>
                                        <td style="text-align:center;">John</td>
                                        <td style="text-align:center;">Doe</td>
                                        <td style="text-align:center;">11/10/2015</td>
                                        <td style="text-align:center;"><asp:CheckBox ID="CheckBox31" runat="server" /></td>
                                        <td style="text-align: center;">11/12/2015</td>
                                        <td style="text-align:center;"><asp:CheckBox ID="CheckBox32" runat="server" /></td>
                                        <td style="text-align:center;"> <asp:DropDownList ID="ddlSendT1" AutoPostBack="true" Width="90px" OnSelectedIndexChanged="ddlSendT1_SelectedIndexChanged" runat="server">
                                            <asp:ListItem Selected="True" Value="1">Legal Staff</asp:ListItem>
                                            <asp:ListItem Value="2">AMG</asp:ListItem>
                                            <asp:ListItem Value="3">PSD</asp:ListItem>
                                                                        </asp:DropDownList></td>
                                         <td style="text-align:center; width:210px;">
                                            
                                             <asp:ImageButton ID="ImageButton1" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc(); return false;" runat="server" />
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
                <td align="left">

                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtDocumentName" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr><td colspan="2" style="height:5px;"></td></tr>
            
            <tr>
                <td align="right">
                    <label class="input-label">Document :</label></td>
                <td align="left">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="btnUploadLicensee" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                        Text="Upload"  />
                </td>
            </tr>
            <tr>
                <td></td>
                <td align="left">
                    <asp:Button ID="Button3" class="buttonGreen small" runat="server" Text="Save" /></td>
            </tr>
        </table>
    </div>
                                             <a href="../../../LAPP_UI_Backoffice/PSD/IndividualInfo.aspx" target="_blank" style="text-decoration:underline; color:blue;">Individual Info</a>
                                           <%-- <asp:LinkButton ID="LinkButton25" Style="text-decoration:underline;" OnClick="LinkButton25_Click" target="_blank" PostBackUrl="~/LAPP_UI_Backoffice/UI/Individual.aspx" runat="server">Individual Info</asp:LinkButton>
                                           --%>
                                             <a href="../../../LAPP_UI_Backoffice/UI/Individual.aspx" target="_blank" style="text-decoration:underline;color:blue;">Representative</a>
                                             <%-- <asp:LinkButton ID="LinkButton26" Style="text-decoration:underline;" runat="server">Representative</asp:LinkButton>--%>
                                             <%--<asp:LinkButton ID="LinkButton27" Style="text-decoration:underline;" runat="server">MTC Document</asp:LinkButton>--%>
                                             <asp:Button ID="btnSend1" Visible="false" runat="server" CssClass="buttonGreen small" Text="Send" />
                                        </td>
                                       
                                    </tr>
                                     <tr style="background-color: White;">
                                        <td> <asp:CheckBox ID="chkCart2" runat="server" /></td>
                                        <td><a href="#">CH</a>
                                        </td>
                                        <td><a href="../../../LAPP_UI_Backoffice/PSD/MemoToCouncil.aspx" style="color:blue; text-align:center; text-decoration:underline;">Proposed Discipline</a>
                                           <%-- <asp:DropDownList ID="ddlMTCType" Width="120px" runat="server">
                                                <asp:ListItem>Proposed Denial</asp:ListItem>
                                                <asp:ListItem>Proposed Discipline</asp:ListItem>
                                                <asp:ListItem>Proposed Revocation</asp:ListItem>
                                                <asp:ListItem>Proposed Suspension</asp:ListItem>
                                            </asp:DropDownList>--%>
                                        </td>
                                        <td>  <asp:DropDownList ID="ddlMTCType" Width="120px" runat="server">
                                                <asp:ListItem>Proposed Denial</asp:ListItem>
                                                <asp:ListItem>Proposed Discipline</asp:ListItem>
                                                <asp:ListItem>Proposed Revocation</asp:ListItem>
                                                <asp:ListItem>Proposed Suspension</asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td style="text-align:center;">
                                            <asp:DropDownList ID="DropDownList23" Width="60px" runat="server">
                                                <asp:ListItem>Draft</asp:ListItem>
                                                <asp:ListItem>Final</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="text-align:center;">CAMTC00123 </td>
                                        <td style="text-align:center;"></td>
                                        <td style="text-align:center;">Jane</td>
                                        <td style="text-align:center;">Doe</td>
                                        <td style="text-align:center;">11/20/2015</td>
                                        <td style="text-align:center;"><asp:CheckBox ID="CheckBox33" runat="server" /></td>
                                        <td style="text-align: center;">11/12/2015</td>
                                        <td style="text-align:center;"><asp:CheckBox ID="CheckBox34" runat="server" /></td>
                                        <td style="text-align:center;"> <asp:DropDownList ID="ddlLEgalStaff2" AutoPostBack="true" OnSelectedIndexChanged="ddlLEgalStaff2_SelectedIndexChanged" Width="90px" runat="server">
                                            <asp:ListItem Selected="True" Value="1">Legal Staff</asp:ListItem>
                                            <asp:ListItem Value="2">AMG</asp:ListItem>
                                            <asp:ListItem Value="3">PSD</asp:ListItem>
                                                                        </asp:DropDownList></td>
                                         <td style="text-align:center; width:210px;">
                                              <asp:ImageButton ID="imgDOC2" runat="server" OnClientClick="divAddDoc2(); return false;" ToolTip="Document" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png"
                                                             />
                                             <div id="AddDocm2" style="border: 1px solid rgb(212, 216, 219);
    margin: 11px auto auto;
    width: 49%;
    float: right;
    display: block;
    z-index: 9;
    position: absolute;
    right: 2px;
    background-color: white; display:none;">
        <span class="close_btn_pop" onclick="divAddDoc2();;">x</span>
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
                <td align="left">

                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox16" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr><td colspan="2" style="height:5px;"></td></tr>
            
            <tr>
                <td align="right">
                    <label class="input-label">Document :</label></td>
                <td align="left">
                    <asp:FileUpload ID="FileUpload14" runat="server" />
                    <asp:Button ID="Button26" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                        Text="Upload"  />
                </td>
            </tr>
            <tr>
                <td></td>
                <td align="left">
                    <asp:Button ID="Button27" class="buttonGreen small" runat="server" Text="Save" /></td>
            </tr>
        </table>
    </div>
                                            <a href="../../../LAPP_UI_Backoffice/PSD/IndividualInfo.aspx" target="_blank" style="text-decoration:underline; color:blue;">Individual Info</a>
                                           <a href="../../../LAPP_UI_Backoffice/UI/Individual.aspx" target="_blank" style="text-decoration:underline;color:blue;">Representative</a>
<%--                                             <asp:LinkButton ID="LinkButton30" Style="text-decoration:underline;" runat="server">MTC Document</asp:LinkButton>--%>
                                             <asp:Button ID="btnAdd2" CssClass="buttonGreen small" Visible="false" runat="server" Text="Send" />
                                        </td>
                                        
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="applicationform" style="width:100%">

                            <div class="clear">
                                <asp:Literal ID="Literal6" runat="server"></asp:Literal>
                            </div>
                            <div class="toolBar" style="padding: 4px;" runat="server" id="Div6">
                                <div style="float: left;">
                                    <div id="pnlAssignTo">
                                        <table class="">
                                            <tbody>
                                                <tr>
                                                    <td class="">
                                                        <span class="">
                                                            <input type="submit" value="Assign To" id="btnAssignTo" class="buttonGreen medium">
                                                        </span>
                                                        <asp:DropDownList ID="DropDownList20" runat="server" CssClass="inputTextbox" Style="margin-left: 5px; width: 160px;"
                                                            autocomplete="off">
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                            <asp:ListItem Value="140">Jane Smith</asp:ListItem>
                                                            <asp:ListItem Value="139">Mickey Doe</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <span class="">
                                                            <input type="button" value="Note" id="btnNote" class="buttonGreen medium" style="margin-left:6px" onclick="divAddNotesL3(); return false;">
                                                        </span>
                                                        <div id="AddNotesL3"
                                    style="border: 1px solid rgb(212, 216, 219); margin: 8px 45% auto auto; width: 49%; float: right; z-index: 9; position: absolute; right: 2px; background-color: white; display: none;">
                                    <span class="close_btn_pop" onclick="divAddNotesL3();">x</span>
                                    <div class="blockheader" style="margin: 0px 0px -3px auto;">
                                        <p style="padding-top: 7px;">
                                            <span>Send Notes   </span>
                                        </p>
                                    </div>
                                    <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
                                        <tr>
                                            <td style="width: 60px; vertical-align:middle;" >
                                                <label class="input-label">
                                                    Notes :</label>
                                            </td>
                                            <td align="left">

                                                <asp:TextBox CssClass="inputTextbox" Width="95%" autocomplete="off" ID="TextBox25" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 5px;"></td>
                                        </tr>


                                        <tr>
                                            <td></td>
                                            <td align="left">
                                                <asp:Button ID="Button42" class="secondary small" runat="server" Text="Cancel" OnClientClick="divAddNotesL3(); return false;" />
                                                <asp:Button ID="Button43" class="buttonGreen small aspNetDisabled" runat="server" Text="Save" /></td>
                                        </tr>
                                    </table>
                                </div>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label1" style="padding-left: 10px;" runat="server"  Text="Hearing Waiting Room Date :"></asp:Label>
                                                        <asp:TextBox ID="TextBox30" Width="80px" CssClass="inputTextbox calender " placeholder="MM/DD/YYYY" runat="server"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label2" Style="padding-left:10px;" runat="server" Text="Internal Status"></asp:Label>
                                                        <asp:DropDownList ID="DropDownList27" runat="server">
                                                            <asp:ListItem>Draft</asp:ListItem>
                                                            <asp:ListItem>Final</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        <asp:Button ID="Button54" style="margin-left:6px" CssClass="buttonGreen medium aspNetDisabled" disabled  runat="server" Text="Send" /></td>
                                                   
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                
                            </div>
                        </div>



                    </ContentTemplate>
                </asp:TabPanel>


                <asp:TabPanel ID="TabPanel2" Enabled="true" runat="server">
                    <HeaderTemplate>
                        Backend Tasks
                    </HeaderTemplate>
                    <ContentTemplate>
                        <div class="gvDivUpr">

                            <table style="margin-bottom: 20px; margin-top: 5px;">
                                <tr>
                                    <td>
                                        <b>Backend Tasks</b>
                                    </td>
                                </tr>
                            </table>
                            <table class="index  grid" cellspacing="0" cellpadding="5" id="gvEduDenial"
                                style="color: #333333; width: 100%; font-size:11px; border-collapse: collapse;">
                                <tbody>
                                    <tr>
                                        <th scope="col" style="text-decoration: underline;">
                                            <span style="color: white;">
                                                <asp:CheckBox ID="chkEduSelectAll" AutoPostBack="true" OnCheckedChanged="chkEduSelectAll_CheckedChanged" runat="server" /></span>
                                        </th>
                                         <th scope="col" style="text-decoration: underline; text-align:center;">
                                            <span style="color: white;">Type</span>
                                        </th>
                                        
                                         <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Hearing Type</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Internal Status</span>
                                        </th>
                                         <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">ID #</span>
                                        </th>
                                         <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Certificate #</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">First Name</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Last Name</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Date MTC Completed</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Education Issue </span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">Hearing Date</span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">High Priority</span>
                                                </th>
                                         <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Decision </span>
                                        </th>
                                       <th scope="col" style="text-decoration: underline;text-align:center;"></th>
                                    </tr>
                                    <tr id="tr7" runat="server">
                                        <td>
                                            <asp:CheckBox ID="chkcartEdu1" runat="server" /></td>
                                        <td>A</td>
                                        
                                        <td style="text-align:center;">
                                           <a href="../../../LAPP_UI_Backoffice/PSD/MemoToCouncil.aspx" style="color:blue; text-align:center; text-decoration:underline;">Proposed Discipline</a>
                                           <%-- <asp:DropDownList ID="DropDownList28" Width="120px" runat="server">
                                                <asp:ListItem>Proposed Denial</asp:ListItem>
                                                <asp:ListItem>Proposed Discipline</asp:ListItem>
                                                <asp:ListItem>Proposed Revocation</asp:ListItem>
                                                <asp:ListItem>Proposed Suspension</asp:ListItem>
                                            </asp:DropDownList>--%>
                                        </td>
                                        <td style="text-align:center;">
                                             <asp:DropDownList ID="DropDownList29" Width="60px" runat="server">
                                                <asp:ListItem>Draft</asp:ListItem>
                                                <asp:ListItem>Final</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="text-align:center;">CAMTC00123 </td>
                                        <td style="text-align:center;"></td>
                                        <td style="text-align:center;">John</td>
                                        <td style="text-align:center;">Doe</td>
                                        <td style="text-align:center;">11/10/2015</td>
                                        <td style="text-align:center;"><asp:CheckBox ID="CheckBox25" runat="server" /></td>
                                        <td style="text-align: center;">11/12/2015</td>
                                        <td style="text-align:center;"><asp:CheckBox ID="CheckBox26" runat="server" /></td>
                                        <td style="text-align:center;"> <asp:DropDownList ID="DropDownList30" AutoPostBack="true" Width="90px" OnSelectedIndexChanged="ddlSendT1_SelectedIndexChanged" runat="server">
                                            <asp:ListItem Selected="True" Value="1">Legal Staff</asp:ListItem>
                                            <asp:ListItem Value="2">AMG</asp:ListItem>
                                            <asp:ListItem Value="3">PSD</asp:ListItem>
                                                                        </asp:DropDownList></td>
                                       
                                        <td style="text-align: center; width: 200px;">
                                            <asp:ImageButton ID="ImageButton2" ToolTip="Document Upload" Visible="false" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc3(); return false;" runat="server" />
                                            <div id="AddDocm3" style="border: 1px solid rgb(212, 216, 219); margin: 11px auto auto; width: 49%; float: right; display: block; z-index: 9; position: absolute; right: 2px; background-color: white; display: none;">
                                                <span class="close_btn_pop" onclick="divAddDoc3();;">x</span>
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
                                                        <td align="left">

                                                            <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox1" runat="server"></asp:TextBox>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" style="height: 5px;"></td>
                                                    </tr>

                                                    <tr>
                                                        <td align="right">
                                                            <label class="input-label">Document :</label></td>
                                                        <td align="left">
                                                            <asp:FileUpload ID="FileUpload2" runat="server" />
                                                            <asp:Button ID="Button1" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                                                                Text="Upload" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td align="left">
                                                            <asp:Button ID="Button2" class="buttonGreen small" runat="server" Text="Save" /></td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <a href="../../../LAPP_UI_Backoffice/PSD/IndividualInfo.aspx" target="_blank" style="text-decoration:underline; color:blue;">Individual Info</a>
                                            <a href="../../../LAPP_UI_Backoffice/UI/Individual.aspx" target="_blank" style="text-decoration:underline;color:blue;">Representative</a>
                                         
                                        </td>
                                    </tr>

                                    <tr style="background-color: White;">
                                        <td>
                                            <asp:CheckBox ID="chkcartEdu2" runat="server" /></td>

                                        <td><a href="#">CH</a>
                                        </td>
                                        
                                        <td style="text-align:center;">
                                            <a href="../../../LAPP_UI_Backoffice/PSD/MemoToCouncil.aspx" style="color:blue; text-align:center;text-decoration:underline;">Proposed Denial</a>
                                              <%--<asp:DropDownList ID="DropDownList19" Width="120px" runat="server">
                                                <asp:ListItem>Proposed Denial</asp:ListItem>
                                                <asp:ListItem>Proposed Discipline</asp:ListItem>
                                                <asp:ListItem>Proposed Revocation</asp:ListItem>
                                                <asp:ListItem>Proposed Suspension</asp:ListItem>
                                            </asp:DropDownList>--%></td>
                                        <td style="text-align:center;">
                                            <asp:DropDownList ID="DropDownList21" Width="60px" runat="server">
                                                <asp:ListItem>Draft</asp:ListItem>
                                                <asp:ListItem>Final</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="text-align:center;">CAMTC00123 </td>
                                        <td style="text-align:center;"></td>
                                        <td style="text-align:center;">Jane</td>
                                        <td style="text-align:center;">Doe</td>
                                        <td style="text-align:center;">11/20/2015</td>
                                        <td style="text-align:center;"><asp:CheckBox ID="CheckBox27" runat="server" /></td>
                                        <td style="text-align: center;">11/12/2015</td>
                                        <td style="text-align:center;"><asp:CheckBox ID="CheckBox28" runat="server" /></td>
                                        <td style="text-align:center;"> <asp:DropDownList ID="DropDownList31" AutoPostBack="true" OnSelectedIndexChanged="ddlLEgalStaff2_SelectedIndexChanged" Width="90px" runat="server">
                                            <asp:ListItem Selected="True" Value="1">Legal Staff</asp:ListItem>
                                            <asp:ListItem Value="2">AMG</asp:ListItem>
                                            <asp:ListItem Value="3">PSD</asp:ListItem>
                                                                        </asp:DropDownList></td>
                                        <td style="text-align: center; width: 200px;">
                                            <asp:ImageButton ID="ImageButton3" Visible="false" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc4(); return false;" runat="server" />
                                            <div id="AddDocm4" style="border: 1px solid rgb(212, 216, 219); margin: 11px auto auto; width: 49%; float: right; display: block; z-index: 9; position: absolute; right: 2px; background-color: white; display: none;">
                                                <span class="close_btn_pop" onclick="divAddDoc4();">x</span>
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
                                                        <td align="left">

                                                            <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox2" runat="server"></asp:TextBox>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" style="height: 5px;"></td>
                                                    </tr>

                                                    <tr>
                                                        <td align="right">
                                                            <label class="input-label">Document :</label></td>
                                                        <td align="left">
                                                            <asp:FileUpload ID="FileUpload3" runat="server" />
                                                            <asp:Button ID="Button4" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                                                                Text="Upload" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td align="left">
                                                            <asp:Button ID="Button5" class="buttonGreen small" runat="server" Text="Save" /></td>
                                                    </tr>
                                                </table>
                                            </div>
                                           <a href="../../../LAPP_UI_Backoffice/PSD/IndividualInfo.aspx" target="_blank" style="text-decoration:underline; color:blue;">Individual Info</a>
                                            <a href="../../../LAPP_UI_Backoffice/UI/Individual.aspx" target="_blank" style="text-decoration:underline;color:blue;">Representative</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="applicationform" style="width: 100%">

                            <div class="clear">
                                <asp:Literal ID="Literal7" runat="server"></asp:Literal>
                            </div>
                            <div class="toolBar" style="padding: 4px;" runat="server" id="Div7">
                                <div style="float: left;">
                                    <div id="pnlEduDenial">
                                        <table class="">
                                            <tbody>
                                                <tr>
                                                    <td class="">
                                                        <span class="">
                                                            <input type="submit" value="Assign To" id="btnAssignTo" class="buttonGreen medium">
                                                        </span>
                                                        <asp:DropDownList ID="DropDownList18" runat="server" CssClass="inputTextbox" Style="margin-left: 5px; width: 160px;"
                                                            autocomplete="off">
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                            <asp:ListItem Value="140">Jane Smith</asp:ListItem>
                                                            <asp:ListItem Value="139">Mickey Doe</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <span class="">
                                                            <input type="button" value="Note" id="btnNote" class="buttonGreen medium" style="margin-left: 6px" onclick="divAddNotesL4(); return false;">
                                                        </span>
                                                        <div id="AddNotesL4"
                                    style="border: 1px solid rgb(212, 216, 219); margin: 8px 45% auto auto; width: 49%; float: right; z-index: 9; position: absolute; right: 2px; background-color: white; display: none;">
                                    <span class="close_btn_pop" onclick="divAddNotesL4();">x</span>
                                    <div class="blockheader" style="margin: 0px 0px -3px auto;">
                                        <p style="padding-top: 7px;">
                                            <span>Send Notes   </span>
                                        </p>
                                    </div>
                                    <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
                                        <tr>
                                            <td style="width: 60px; vertical-align:middle;" >
                                                <label class="input-label">
                                                    Notes :</label>
                                            </td>
                                            <td align="left">

                                                <asp:TextBox CssClass="inputTextbox" Width="95%" autocomplete="off" ID="TextBox21" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 5px;"></td>
                                        </tr>


                                        <tr>
                                            <td></td>
                                            <td align="left">
                                                <asp:Button ID="Button36" class="secondary small" runat="server" Text="Cancel" OnClientClick="divAddNotesL4(); return false;" />
                                                <asp:Button ID="Button37" class="buttonGreen small aspNetDisabled" runat="server" Text="Save" /></td>
                                        </tr>
                                    </table>
                                </div>
                                                    </td>

                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <span class="fltrt" style="float: left; margin-left: 10px;"><span class="AfterApproved"></span>
                                   <%-- <asp:Label ID="Label8" runat="server" Font-Bold="true" Text="Hearing Date : ">
                                        <asp:TextBox ID="TextBox8" CssClass="inputTextbox calender " placeholder="MM/DD/YYYY" runat="server"></asp:TextBox>
                                    </asp:Label>--%>
                                    <asp:Button ID="Button55" CssClass="buttonGreen medium aspNetDisabled" runat="server" Text="Send" />
                                </span>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:TabPanel>


                <asp:TabPanel ID="tbpnlGeneralInfo" Visible="false" Enabled="true" runat="server">
                    <HeaderTemplate>
                        Permanent Revocation
                    </HeaderTemplate>
                    <ContentTemplate>
                        <div class="gvDivUpr">
                            <table style="margin-bottom:20px;margin-top:5px;">
                                <tr>
                                    <td>
                                        <b>Permanent Revocation</b>
                                    </td>
                                </tr>
                            </table>
                            <table class="index  grid" cellspacing="0" cellpadding="5" id="gvPermanent"
                                style="color: #333333; width: 100%; border-collapse: collapse;">
                                <tbody>
                                    <tr>
                                        <th scope="col" style="text-decoration: underline;">
                                            <span style="color: white;">
                                                <asp:CheckBox ID="chkPerSelectAll" AutoPostBack="true" OnCheckedChanged="chkPerSelectAll_CheckedChanged" runat="server" /></span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;">
                                            <span style="color: white;">ID #</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">Certificate #</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">First Name</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">Last Name</span>
                                        </th>

                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">Date MTC Completed</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center;">
                                            <span style="color: white;">Education Issue</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">Hearing Date</span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">High Priority</span>
                                                </th>
                                         <th scope="col" style="text-decoration: underline; text-align: center;">
                                            <span style="color: white;">Send To</span>
                                        </th>
                                        <th class="aligncenter" scope="col">
                                        </th>
                                    </tr>
                                    <tr id="tr8" runat="server">
                                        <td>
                                            <asp:CheckBox ID="chkPer1" runat="server" /></td>
                                        <td>CAMTC00123
                                        </td>
                                        <td></td>
                                        <td style="text-align:center;">John
                                        </td>
                                        <td style="text-align:center;">Doe
                                        </td>
                                        <td style="text-align:center;">11/10/2015
                                        </td>
                                        <td style="text-align:center;">
                                            <asp:CheckBox ID="CheckBox22" runat="server" /></td>
                                        <td style="text-align: center;">11/12/2015</td>
                                         <td style="text-align:center;">
                                            <asp:CheckBox ID="CheckBox23" runat="server" /></td>
                                        <td style="text-align: center;">
                                            
                                            <asp:DropDownList ID="DropDownList1" Width="60px" runat="server">
                                                <asp:ListItem>AMG</asp:ListItem>
                                                <asp:ListItem>PSD</asp:ListItem>
                                            </asp:DropDownList>

                                        </td>
                                        <td style="text-align:center;width:200px;">
                                            <asp:ImageButton ID="ImageButton4" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc5(); return false;" runat="server" />
                                             <div id="AddDocm5" style="border: 1px solid rgb(212, 216, 219);
    margin: 11px auto auto;
    width: 49%;
    float: right;
    display: block;
    z-index: 9;
    position: absolute;
    right: 2px;
    background-color: white; display:none;">
        <span class="close_btn_pop" onclick="divAddDoc5();">x</span>
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
                <td align="left">

                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox3" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr><td colspan="2" style="height:5px;"></td></tr>
            
            <tr>
                <td align="right">
                    <label class="input-label">Document :</label></td>
                <td align="left">
                    <asp:FileUpload ID="FileUpload4" runat="server" />
                    <asp:Button ID="Button6" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                        Text="Upload"  />
                </td>
            </tr>
            <tr>
                <td></td>
                <td align="left">
                    <asp:Button ID="Button7" class="buttonGreen small" runat="server" Text="Save" /></td>
            </tr>
        </table>
    </div>
                                            <asp:LinkButton ID="LinkButton17" Style="text-decoration:underline;" runat="server">Individual Info</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton18" Style="text-decoration:underline;" runat="server">Representative</asp:LinkButton>
                                        </td>
                                    </tr>
                                    
                                    <tr style="background-color: White;">
                                        <td>
                                            <asp:CheckBox ID="chkPer2" runat="server" /></td>
                                        
                                        <td>CAMTC00201
                                        </td>
                                        <td></td>
                                        <td style="text-align:center;">Jane
                                        </td>
                                        <td style="text-align:center;">Doe
                                        </td>
                                        
                                        <td style="text-align:center;">11/20/2015
                                        </td>
                                        <td style="text-align:center;">
                                            <asp:CheckBox ID="CheckBox37" runat="server" /></td>
                                        <td style="text-align: center;">11/12/2015</td>
                                         <td style="text-align:center;">
                                            <asp:CheckBox ID="CheckBox38" runat="server" /></td>
                                        <td style="text-align: center;" >
                                             <asp:DropDownList ID="DropDownList2" Width="60px" runat="server">
                                                <asp:ListItem>AMG</asp:ListItem>
                                                <asp:ListItem>PSD</asp:ListItem>
                                            </asp:DropDownList>

                                        </td>
                                         <td style="text-align:center; width:200px;">
                                             <asp:ImageButton ID="ImageButton5" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc6(); return false;" runat="server" />
                                             <div id="AddDocm6" style="border: 1px solid rgb(212, 216, 219);
    margin: 11px auto auto;
    width: 49%;
    float: right;
    display: block;
    z-index: 9;
    position: absolute;
    right: 2px;
    background-color: white; display:none;">
        <span class="close_btn_pop" onclick="divAddDoc6();">x</span>
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
                <td align="left">

                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox6" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr><td colspan="2" style="height:5px;"></td></tr>
            
            <tr>
                <td align="right">
                    <label class="input-label">Document :</label></td>
                <td align="left">
                    <asp:FileUpload ID="FileUpload5" runat="server" />
                    <asp:Button ID="Button8" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                        Text="Upload"  />
                </td>
            </tr>
            <tr>
                <td></td>
                <td align="left">
                    <asp:Button ID="Button9" class="buttonGreen small" runat="server" Text="Save" /></td>
            </tr>
        </table>
    </div>
                                            <asp:LinkButton ID="LinkButton19" Style="text-decoration:underline;" runat="server">Individual Info</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton20" Style="text-decoration:underline;" runat="server">Representative</asp:LinkButton>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="applicationform" style="width:100%">

                            <div class="clear">
                                <asp:Literal ID="ltrErrAssignTo" runat="server"></asp:Literal>
                            </div>
                            <div class="toolBar" style="padding: 4px;" runat="server" id="PnalApprovebtn">
                                <div style="float: left;">
                                    <div id="pnlAssignTo">
                                        <table class="">
                                            <tbody>
                                                <tr>
                                                    <td class="">
                                                        <span class="">
                                                            <input type="submit" value="Assign To" id="btnAssignTo" class="buttonGreen medium">
                                                        </span>
                                                        <asp:DropDownList ID="ddlStaff" runat="server" CssClass="inputTextbox" Style="margin-left: 5px; width: 160px;"
                                                            autocomplete="off">
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                            <asp:ListItem Value="140">Jane Smith</asp:ListItem>
                                                            <asp:ListItem Value="139">Mickey Doe</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <span class="">
                                                            <input type="button" value="Note" id="btnNote" class="buttonGreen medium" style="margin-left:6px" onclick="divAddNotesL5(); return false;">
                                                        </span>
                                                        <div id="AddNotesL5"
                                    style="border: 1px solid rgb(212, 216, 219); margin: 8px 45% auto auto; width: 49%; float: right; z-index: 9; position: absolute; right: 2px; background-color: white; display: none;">
                                    <span class="close_btn_pop" onclick="divAddNotesL5();">x</span>
                                    <div class="blockheader" style="margin: 0px 0px -3px auto;">
                                        <p style="padding-top: 7px;">
                                            <span>Send Notes   </span>
                                        </p>
                                    </div>
                                    <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
                                        <tr>
                                            <td style="width: 60px; vertical-align:middle;" >
                                                <label class="input-label">
                                                    Notes :</label>
                                            </td>
                                            <td align="left">

                                                <asp:TextBox CssClass="inputTextbox" Width="95%" autocomplete="off" ID="TextBox22" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 5px;"></td>
                                        </tr>


                                        <tr>
                                            <td></td>
                                            <td align="left">
                                                <asp:Button ID="Button38" class="secondary small" runat="server" Text="Cancel" OnClientClick="divAddNotesL5(); return false;" />
                                                <asp:Button ID="Button39" class="buttonGreen small aspNetDisabled" runat="server" Text="Save" /></td>
                                        </tr>
                                    </table>
                                </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                
                            </div>
                        </div>




                    </ContentTemplate>
                </asp:TabPanel>
                

                <asp:TabPanel ID="tbpnlPersonalInfo" Visible="false" Enabled="true" runat="server">
                    <HeaderTemplate>
                        Suspension based on law
                    </HeaderTemplate>
                    <ContentTemplate>
                        <asp:UpdatePanel ID="upPersonalInfo" runat="server">
                            <ContentTemplate>
                                   <div class="gvDivUpr">
                                       <table style="margin-bottom:20px;margin-top:5px;">
                                <tr>
                                    <td>
                                        <b>Suspension based on law</b>
                                    </td>
                                </tr>
                            </table>
                            <table class="index  grid" cellspacing="0" cellpadding="5" id="gvSuspension"
                                style="color: #333333; width: 100%; font-size:11px; border-collapse: collapse;">
                                <tbody>
                                    <tr>
                                        <th scope="col" style="text-decoration: underline;">
                                            <span style="color: white;">
                                                <asp:CheckBox ID="chkSusSelectAll" AutoPostBack="true" OnCheckedChanged="chkSusSelectAll_CheckedChanged" runat="server" /></span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;">
                                            <span style="color: white;">ID #</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">Certificate #</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">First Name</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">Last Name</span>
                                        </th>

                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">Date MTC Completed</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center;">
                                            <span style="color: white;">Education Issue</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">Hearing Date</span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">High Priority</span>
                                                </th>
                                         <th scope="col" style="text-decoration: underline; text-align: center;">
                                            <span style="color: white;">Send To</span>
                                        </th>
                                        <th class="aligncenter" scope="col">
                                        </th>
                                    </tr>
                                    <tr id="tr1" runat="server">
                                        <td>
                                            <asp:CheckBox ID="chkSus1" runat="server" /></td>
                                        <td>CAMTC00123
                                        </td>
                                        <td></td>
                                        <td style="text-align:center;">John
                                        </td>
                                        <td style="text-align:center;">Doe
                                        </td>
                                        <td style="text-align:center;">11/10/2015
                                        </td>
                                        <td style="text-align:center;">
                                            <asp:CheckBox ID="CheckBox18" runat="server" /></td>
                                        <td style="text-align: center;">11/12/2015</td>
                                         <td style="text-align:center;">
                                            <asp:CheckBox ID="CheckBox19" runat="server" /></td>
                                        <td style="text-align: center;">
                                            
                                            <asp:DropDownList ID="DropDownList3" Width="60px" runat="server">
                                                <asp:ListItem>AMG</asp:ListItem>
                                                <asp:ListItem>PSD</asp:ListItem>
                                            </asp:DropDownList>

                                        </td>
                                        <td style="text-align:center;width:200px;">
                                            <asp:ImageButton ID="ImageButton6" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc7(); return false;" runat="server" />
                                             <div id="AddDocm7" style="border: 1px solid rgb(212, 216, 219);
    margin: 11px auto auto;
    width: 49%;
    float: right;
    display: block;
    z-index: 9;
    position: absolute;
    right: 2px;
    background-color: white; display:none;">
        <span class="close_btn_pop" onclick="divAddDoc7();;">x</span>
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
                <td align="left">

                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox7" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr><td colspan="2" style="height:5px;"></td></tr>
            
            <tr>
                <td align="right">
                    <label class="input-label">Document :</label></td>
                <td align="left">
                    <asp:FileUpload ID="FileUpload6" runat="server" />
                    <asp:Button ID="Button10" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                        Text="Upload"  />
                </td>
            </tr>
            <tr>
                <td></td>
                <td align="left">
                    <asp:Button ID="Button11" class="buttonGreen small" runat="server" Text="Save" /></td>
            </tr>
        </table>
    </div>
                                            <asp:LinkButton ID="LinkButton13" Style="text-decoration:underline;" runat="server">Individual Info</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton14" Style="text-decoration:underline;" runat="server">Representative</asp:LinkButton>
                                        </td>
                                    </tr>
                                    
                                    <tr style="background-color: White;">
                                        <td>
                                            <asp:CheckBox ID="chkSus2" runat="server" /></td>
                                        
                                        <td>CAMTC00201
                                        </td>
                                        <td></td>
                                        <td style="text-align:center;">Jane
                                        </td>
                                        <td style="text-align:center;">Doe
                                        </td>
                                        
                                        <td style="text-align:center;">11/20/2015
                                        </td>
                                        <td style="text-align:center;">
                                            <asp:CheckBox ID="CheckBox39" runat="server" /></td>
                                        <td style="text-align: center;">11/12/2015</td>
                                         <td style="text-align:center;">
                                            <asp:CheckBox ID="CheckBox40" runat="server" /></td>
                                        <td style="text-align: center;" >
                                             <asp:DropDownList ID="DropDownList4" Width="60px" runat="server">
                                                <asp:ListItem>AMG</asp:ListItem>
                                                <asp:ListItem>PSD</asp:ListItem>
                                            </asp:DropDownList>

                                        </td>
                                         <td style="text-align:center; width:200px;">
                                             <asp:ImageButton ID="ImageButton7" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc8(); return false;" runat="server" />
                                             <div id="AddDocm8" style="border: 1px solid rgb(212, 216, 219);
    margin: 11px auto auto;
    width: 49%;
    float: right;
    display: block;
    z-index: 9;
    position: absolute;
    right: 2px;
    background-color: white; display:none;">
        <span class="close_btn_pop" onclick="divAddDoc8();">x</span>
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
                <td align="left">

                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox9" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr><td colspan="2" style="height:5px;"></td></tr>
            
            <tr>
                <td align="right">
                    <label class="input-label">Document :</label></td>
                <td align="left">
                    <asp:FileUpload ID="FileUpload7" runat="server" />
                    <asp:Button ID="Button12" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                        Text="Upload"  />
                </td>
            </tr>
            <tr>
                <td></td>
                <td align="left">
                    <asp:Button ID="Button13" class="buttonGreen small" runat="server" Text="Save" /></td>
            </tr>
        </table>
    </div>
                                            <asp:LinkButton ID="LinkButton15" Style="text-decoration:underline;" runat="server">Individual Info</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton16" Style="text-decoration:underline;" runat="server">Representative</asp:LinkButton>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="applicationform" style="width:100%">

                            <div class="clear">
                                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                            </div>
                            <div class="toolBar" style="padding: 4px;" runat="server" id="Div1">
                                <div style="float: left;">
                                    <div id="pnlAssignTo">
                                        <table class="">
                                            <tbody>
                                                <tr>
                                                    <td class="">
                                                        <span class="">
                                                            <input type="submit" value="Assign To" id="btnAssignTo" class="buttonGreen medium">
                                                        </span>
                                                        <asp:DropDownList ID="DropDownList5" runat="server" CssClass="inputTextbox" Style="margin-left: 5px; width: 160px;"
                                                            autocomplete="off">
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                            <asp:ListItem Value="140">Jane Smith</asp:ListItem>
                                                            <asp:ListItem Value="139">Mickey Doe</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <span class="">
                                                            <input type="button" value="Note" id="btnNote" class="buttonGreen medium" style="margin-left:6px" onclick="divAddNotesL6(); return false";>
                                                        </span>
                                                        <div id="AddNotesL6"
                                    style="border: 1px solid rgb(212, 216, 219); margin: 54px 45% auto auto; width: 49%; float: right; z-index: 9; position: absolute; right: 2px; background-color: white; display: none;">
                                    <span class="close_btn_pop" onclick="divAddNotesL6();">x</span>
                                    <div class="blockheader" style="margin: 0px 0px -3px auto;">
                                        <p style="padding-top: 7px;">
                                            <span>Send Notes   </span>
                                        </p>
                                    </div>
                                    <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
                                        <tr>
                                            <td style="width: 60px; vertical-align:middle;" >
                                                <label class="input-label">
                                                    Notes :</label>
                                            </td>
                                            <td align="left">

                                                <asp:TextBox CssClass="inputTextbox" Width="95%" autocomplete="off" ID="TextBox23" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 5px;"></td>
                                        </tr>


                                        <tr>
                                            <td></td>
                                            <td align="left">
                                                <asp:Button ID="Button40" class="secondary small" runat="server" Text="Cancel" OnClientClick="divAddNotesL6(); return false;" />
                                                <asp:Button ID="Button41" class="buttonGreen small aspNetDisabled" runat="server" Text="Save" /></td>
                                        </tr>
                                    </table>
                                </div>
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
                    </ContentTemplate>
                </asp:TabPanel>

                <asp:TabPanel ID="pnlReinstatements" Visible="false" Enabled="true" runat="server">
                    <HeaderTemplate>
                        Reinstatements
                    </HeaderTemplate>
                    <ContentTemplate>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div class="gvDivUpr">
                                    <table style="margin-bottom: 20px; margin-top: 5px;">
                                        <tr>
                                            <td>
                                                <b>Reinstatements</b>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="index  grid" cellspacing="0" cellpadding="5" id="gvSuspension"
                                        style="color: #333333; width: 100%; border-collapse: collapse;">
                                        <tbody>
                                            <tr>
                                                <th scope="col" style="text-decoration: underline;">
                                                    <span style="color: white;">
                                                        <asp:CheckBox ID="CheckBox1" AutoPostBack="true" OnCheckedChanged="chkSusSelectAll_CheckedChanged" runat="server" /></span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline;">
                                                    <span style="color: white;">ID #</span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">Certificate #</span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">First Name</span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">Last Name</span>
                                                </th>

                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">Date MTC Completed</span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">Education Issue</span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">Hearing Date</span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">High Priority</span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">Send To</span>
                                                </th>
                                                <th class="aligncenter" scope="col"></th>
                                            </tr>
                                            <tr id="tr5" runat="server">
                                                <td>
                                                    <asp:CheckBox ID="CheckBox2" runat="server" /></td>
                                                <td>CAMTC00123
                                                </td>
                                                <td></td>
                                                <td style="text-align: center;">John
                                                </td>
                                                <td style="text-align: center;">Doe
                                                </td>
                                                <td style="text-align: center;">11/10/2015
                                                </td>
                                                <td style="text-align: center;">
                                                    <asp:CheckBox ID="CheckBox3" runat="server" /></td>
                                                
                                                <td style="text-align: center;">11/12/2015
                                                </td>
                                                <td style="text-align: center;">
                                                    <asp:CheckBox ID="CheckBox4" runat="server" /></td>
                                                <td style="text-align: center;">

                                                    <asp:DropDownList ID="DropDownList15" Width="60px" runat="server">
                                                        <asp:ListItem>AMG</asp:ListItem>
                                                        <asp:ListItem>PSD</asp:ListItem>
                                                    </asp:DropDownList>

                                                </td>
                                                <td style="text-align: center; width: 200px;">
                                                    <asp:ImageButton ID="ImageButton14" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc7(); return false;" runat="server" />
                                                    <div id="AddDocm7" style="border: 1px solid rgb(212, 216, 219); margin: 11px auto auto; width: 49%; float: right; display: block; z-index: 9; position: absolute; right: 2px; background-color: white; display: none;">
                                                        <span class="close_btn_pop" onclick="divAddDoc7();;">x</span>
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
                                                                <td align="left">

                                                                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox17" runat="server"></asp:TextBox>
                                                                </td>

                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" style="height: 5px;"></td>
                                                            </tr>

                                                            <tr>
                                                                <td align="right">
                                                                    <label class="input-label">Document :</label></td>
                                                                <td align="left">
                                                                    <asp:FileUpload ID="FileUpload15" runat="server" />
                                                                    <asp:Button ID="Button28" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                                                                        Text="Upload" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td align="left">
                                                                    <asp:Button ID="Button29" class="buttonGreen small" runat="server" Text="Save" /></td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <asp:LinkButton ID="LinkButton25" Style="text-decoration: underline;" runat="server">Individual Info</asp:LinkButton>
                                                    <asp:LinkButton ID="LinkButton26" Style="text-decoration: underline;" runat="server">Representative</asp:LinkButton>
                                                </td>
                                            </tr>

                                            <tr style="background-color: White;">
                                                <td>
                                                    <asp:CheckBox ID="CheckBox5" runat="server" /></td>

                                                <td>CAMTC00201
                                                </td>
                                                <td></td>
                                                <td style="text-align: center;">Jane
                                                </td>
                                                <td style="text-align: center;">Doe
                                                </td>

                                                <td style="text-align: center;">11/20/2015
                                                </td>
                                                <td style="text-align: center;">
                                                    <asp:CheckBox ID="CheckBox8" runat="server" /></td>
                                                
                                                <td style="text-align: center;">11/12/2015
                                                </td>
                                                <td style="text-align: center;">
                                                    <asp:CheckBox ID="CheckBox9" runat="server" /></td>
                                                <td style="text-align: center;">
                                                    <asp:DropDownList ID="DropDownList16" Width="60px" runat="server">
                                                        <asp:ListItem>AMG</asp:ListItem>
                                                        <asp:ListItem>PSD</asp:ListItem>
                                                    </asp:DropDownList>

                                                </td>
                                                <td style="text-align: center; width: 200px;">
                                                    <asp:ImageButton ID="ImageButton15" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc8(); return false;" runat="server" />
                                                    <div id="AddDocm8" style="border: 1px solid rgb(212, 216, 219); margin: 11px auto auto; width: 49%; float: right; display: block; z-index: 9; position: absolute; right: 2px; background-color: white; display: none;">
                                                        <span class="close_btn_pop" onclick="divAddDoc8();">x</span>
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
                                                                <td align="left">

                                                                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox18" runat="server"></asp:TextBox>
                                                                </td>

                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" style="height: 5px;"></td>
                                                            </tr>

                                                            <tr>
                                                                <td align="right">
                                                                    <label class="input-label">Document :</label></td>
                                                                <td align="left">
                                                                    <asp:FileUpload ID="FileUpload16" runat="server" />
                                                                    <asp:Button ID="Button30" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                                                                        Text="Upload" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td align="left">
                                                                    <asp:Button ID="Button31" class="buttonGreen small" runat="server" Text="Save" /></td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <asp:LinkButton ID="LinkButton31" Style="text-decoration: underline;" runat="server">Individual Info</asp:LinkButton>
                                                    <asp:LinkButton ID="LinkButton32" Style="text-decoration: underline;" runat="server">Representative</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="applicationform" style="width: 100%">

                                    <div class="clear">
                                        <asp:Literal ID="Literal5" runat="server"></asp:Literal>
                                    </div>
                                    <div class="toolBar" style="padding: 4px;" runat="server" id="Div5">
                                        <div style="float: left;">
                                            <div id="pnlAssignTo">
                                                <table class="">
                                                    <tbody>
                                                        <tr>
                                                            <td class="">
                                                                <span class="">
                                                                    <input type="submit" value="Assign To" id="btnAssignTo" class="buttonGreen medium">
                                                                </span>
                                                                <asp:DropDownList ID="DropDownList17" runat="server" CssClass="inputTextbox" Style="margin-left: 5px; width: 160px;"
                                                                    autocomplete="off">
                                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                    <asp:ListItem Value="140">Jane Smith</asp:ListItem>
                                                                    <asp:ListItem Value="139">Mickey Doe</asp:ListItem>
                                                                </asp:DropDownList>
                                                                <span class="">
                                                                    <input type="button" value="Note" id="btnNote" class="buttonGreen medium" style="margin-left:6px" onclick="divAddNotesL7(); return false";>
                                                                </span>
                                                                <div id="AddNotesL7"
                                    style="border: 1px solid rgb(212, 216, 219); margin: 54px 45% auto auto; width: 49%; float: right; z-index: 9; position: absolute; right: 2px; background-color: white; display: none;">
                                    <span class="close_btn_pop" onclick="divAddNotesL7();">x</span>
                                    <div class="blockheader" style="margin: 0px 0px -3px auto;">
                                        <p style="padding-top: 7px;">
                                            <span>Send Notes   </span>
                                        </p>
                                    </div>
                                    <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
                                        <tr>
                                            <td style="width: 60px; vertical-align:middle;" >
                                                <label class="input-label">
                                                    Notes :</label>
                                            </td>
                                            <td align="left">

                                                <asp:TextBox CssClass="inputTextbox" Width="95%" autocomplete="off" ID="TextBox24" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 5px;"></td>
                                        </tr>


                                        <tr>
                                            <td></td>
                                            <td align="left">
                                                <asp:Button ID="Button44" class="secondary small" runat="server" Text="Cancel" OnClientClick="divAddNotesL7(); return false;" />
                                                <asp:Button ID="Button45" class="buttonGreen small aspNetDisabled" runat="server" Text="Save" /></td>
                                        </tr>
                                    </table>
                                </div>

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
                    </ContentTemplate>
                </asp:TabPanel>
                
                <asp:TabPanel ID="tbpnlAddress" Visible="false" Enabled="true" runat="server">
                    <HeaderTemplate>
                        Suspension based on Declaration
                    </HeaderTemplate>
                    <ContentTemplate>
                        <asp:UpdatePanel ID="upAddress" runat="server">
                            <ContentTemplate>
                                <div class="gvDivUpr">
                                    <table style="margin-bottom: 20px; margin-top: 5px;">
                                        <tr>
                                            <td>
                                                <b>Suspension based on Declaration</b>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="index  grid" cellspacing="0" cellpadding="5" id="gvSuspensionDec"
                                        style="color: #333333; width: 100%; border-collapse: collapse;">
                                        <tbody>
                                            <tr>
                                                <th scope="col" style="text-decoration: underline;">
                                                    <span style="color: white;">
                                                        <asp:CheckBox ID="SusDecSelectAll" AutoPostBack="true" OnCheckedChanged="SusDecSelectAll_CheckedChanged" runat="server" /></span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline;">
                                                    <span style="color: white;">ID #</span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">Certificate #</span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">First Name</span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">Last Name</span>
                                                </th>

                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">Date MTC Completed</span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">Education Issue</span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">Hearing Date</span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">High Priority</span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">Send To</span>
                                                </th>
                                                <th class="aligncenter" scope="col"></th>
                                            </tr>
                                            <tr id="tr2" runat="server">
                                                <td>
                                                    <asp:CheckBox ID="chkSusDec1" runat="server" /></td>
                                                <td>CAMTC00123
                                                </td>
                                                <td></td>
                                                <td style="text-align: center;">John
                                                </td>
                                                <td style="text-align: center;">Doe
                                                </td>
                                                <td style="text-align: center;">11/10/2015
                                                </td>
                                                <td style="text-align: center;">
                                                    <asp:CheckBox ID="CheckBox14" runat="server" /></td>
                                                <td style="text-align: center;">11/12/2015
                                                </td>
                                                <td style="text-align: center;">
                                                    <asp:CheckBox ID="CheckBox15" runat="server" /></td>
                                                <td style="text-align: center;">

                                                    <asp:DropDownList ID="DropDownList6" Width="60px" runat="server">
                                                        <asp:ListItem>AMG</asp:ListItem>
                                                        <asp:ListItem>PSD</asp:ListItem>
                                                    </asp:DropDownList>

                                                </td>
                                                <td style="text-align: center; width: 200px;">
                                                    <asp:ImageButton ID="ImageButton8" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc9(); return false;" runat="server" />
                                                    <div id="AddDocm9" style="border: 1px solid rgb(212, 216, 219); margin: 11px auto auto; width: 49%; float: right; display: block; z-index: 9; position: absolute; right: 2px; background-color: white; display: none;">
                                                        <span class="close_btn_pop" onclick="divAddDoc9();;">x</span>
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
                                                                <td align="left">

                                                                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox10" runat="server"></asp:TextBox>
                                                                </td>

                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" style="height: 5px;"></td>
                                                            </tr>

                                                            <tr>
                                                                <td align="right">
                                                                    <label class="input-label">Document :</label></td>
                                                                <td align="left">
                                                                    <asp:FileUpload ID="FileUpload8" runat="server" />
                                                                    <asp:Button ID="Button14" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                                                                        Text="Upload" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td align="left">
                                                                    <asp:Button ID="Button15" class="buttonGreen small" runat="server" Text="Save" /></td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <asp:LinkButton ID="LinkButton9" Style="text-decoration: underline;" runat="server">Individual Info</asp:LinkButton>
                                                    <asp:LinkButton ID="LinkButton10" Style="text-decoration: underline;" runat="server">Representative</asp:LinkButton>
                                                </td>
                                            </tr>

                                            <tr style="background-color: White;">
                                                <td>
                                                    <asp:CheckBox ID="chkSusDec2" runat="server" /></td>

                                                <td>CAMTC00201
                                                </td>
                                                <td></td>
                                                <td style="text-align: center;">Jane
                                                </td>
                                                <td style="text-align: center;">Doe
                                                </td>

                                                <td style="text-align: center;">11/20/2015
                                                </td>
                                                <td style="text-align: center;">
                                                    <asp:CheckBox ID="CheckBox41" runat="server" /></td>
                                                <td style="text-align: center;">11/12/2015
                                                </td>
                                                <td style="text-align: center;">
                                                    <asp:CheckBox ID="CheckBox42" runat="server" /></td>
                                                <td style="text-align: center;">
                                                    <asp:DropDownList ID="DropDownList7" Width="60px" runat="server">
                                                        <asp:ListItem>AMG</asp:ListItem>
                                                        <asp:ListItem>PSD</asp:ListItem>
                                                    </asp:DropDownList>

                                                </td>
                                                <td style="text-align: center; width: 200px;">
                                                    <asp:ImageButton ID="ImageButton9" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc10(); return false;" runat="server" />
                                                    <div id="AddDocm10" style="border: 1px solid rgb(212, 216, 219); margin: 11px auto auto; width: 49%; float: right; display: block; z-index: 9; position: absolute; right: 2px; background-color: white; display: none;">
                                                        <span class="close_btn_pop" onclick="divAddDoc10();">x</span>
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
                                                                <td align="left">

                                                                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox11" runat="server"></asp:TextBox>
                                                                </td>

                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" style="height: 5px;"></td>
                                                            </tr>

                                                            <tr>
                                                                <td align="right">
                                                                    <label class="input-label">Document :</label></td>
                                                                <td align="left">
                                                                    <asp:FileUpload ID="FileUpload9" runat="server" />
                                                                    <asp:Button ID="Button16" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                                                                        Text="Upload" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td align="left">
                                                                    <asp:Button ID="Button17" class="buttonGreen small" runat="server" Text="Save" /></td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <asp:LinkButton ID="LinkButton11" Style="text-decoration: underline;" runat="server">Individual Info</asp:LinkButton>
                                                    <asp:LinkButton ID="LinkButton12" Style="text-decoration: underline;" runat="server">Representative</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="applicationform" style="width: 100%">

                                    <div class="clear">
                                        <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                                    </div>
                                    <div class="toolBar" style="padding: 4px;" runat="server" id="Div2">
                                        <div style="float: left;">
                                            <div id="pnlAssignTo">
                                                <table class="">
                                                    <tbody>
                                                        <tr>
                                                            <td class="">
                                                                <span class="">
                                                                    <input type="submit" value="Assign To" id="btnAssignTo" class="buttonGreen medium">
                                                                </span>
                                                                <asp:DropDownList ID="DropDownList8" runat="server" CssClass="inputTextbox" Style="margin-left: 5px; width: 160px;"
                                                                    autocomplete="off">
                                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                    <asp:ListItem Value="140">Jane Smith</asp:ListItem>
                                                                    <asp:ListItem Value="139">Mickey Doe</asp:ListItem>
                                                                </asp:DropDownList>
                                                                <span class="">
                                                                    <input type="button" value="Note" id="btnNote" class="buttonGreen medium" style="margin-left:6px" onclick="divAddNotesL8(); return false"; >
                                                                </span>
                                                                <div id="AddNotesL8"
                                    style="border: 1px solid rgb(212, 216, 219); margin: 54px 45% auto auto; width: 49%; float: right; z-index: 9; position: absolute; right: 2px; background-color: white; display: none;">
                                    <span class="close_btn_pop" onclick="divAddNotesL8();">x</span>
                                    <div class="blockheader" style="margin: 0px 0px -3px auto;">
                                        <p style="padding-top: 7px;">
                                            <span>Send Notes   </span>
                                        </p>
                                    </div>
                                    <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
                                        <tr>
                                            <td style="width: 60px; vertical-align:middle;" >
                                                <label class="input-label">
                                                    Notes :</label>
                                            </td>
                                            <td align="left">

                                                <asp:TextBox CssClass="inputTextbox" Width="95%" autocomplete="off" ID="TextBox26" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 5px;"></td>
                                        </tr>


                                        <tr>
                                            <td></td>
                                            <td align="left">
                                                <asp:Button ID="Button46" class="secondary small" runat="server" Text="Cancel" OnClientClick="divAddNotesL8(); return false;" />
                                                <asp:Button ID="Button47" class="buttonGreen small aspNetDisabled" runat="server" Text="Save" /></td>
                                        </tr>
                                    </table>
                                </div>
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
                    </ContentTemplate>
                </asp:TabPanel>

                <asp:TabPanel ID="tbpnlEducation" Visible="false" Enabled="true" runat="server">
                    <HeaderTemplate>
                        Revocation/Discipline
                    </HeaderTemplate>
                    <ContentTemplate>
                        <asp:UpdatePanel ID="upEducation" runat="server">
                            <ContentTemplate>
                                   <div class="gvDivUpr">
                                       <table style="margin-bottom:20px;margin-top:5px;">
                                <tr>
                                    <td>
                                        <b>Revocation/Discipline</b>
                                    </td>
                                </tr>
                            </table>
                            <table class="index  grid" cellspacing="0" cellpadding="5" id="gvRevocation"
                                style="color: #333333; width: 100%; border-collapse: collapse;">
                                <tbody>
                                    <tr>
                                        <th scope="col" style="text-decoration: underline;">
                                            <span style="color: white;">
                                                <asp:CheckBox ID="chkRevoSelectAll" AutoPostBack="true" OnCheckedChanged="chkRevoSelectAll_CheckedChanged" runat="server" /></span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;">
                                            <span style="color: white;">ID #</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">Certificate #</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">First Name</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">Last Name</span>
                                        </th>

                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">Date MTC Completed</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center;">
                                            <span style="color: white;">Education Issue</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">Hearing Date</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">High Priority</span>
                                        </th>
                                         <th scope="col" style="text-decoration: underline; text-align: center;">
                                            <span style="color: white;">Send To</span>
                                        </th>
                                        <th class="aligncenter" scope="col">
                                        </th>
                                    </tr>
                                    <tr id="tr3" runat="server">
                                        <td>
                                            <asp:CheckBox ID="chkRevo1" runat="server" /></td>
                                        <td>CAMTC00123
                                        </td>
                                        <td></td>
                                        <td style="text-align:center;">John
                                        </td>
                                        <td style="text-align:center;">Doe
                                        </td>
                                        <td style="text-align:center;">11/10/2015
                                        </td>
                                        <td style="text-align:center;">
                                            <asp:CheckBox ID="CheckBox10" runat="server" /></td>
                                        <td style="text-align: center;">11/12/2015
                                        </td>
                                         <td style="text-align:center;">
                                            <asp:CheckBox ID="CheckBox11" runat="server" /></td>
                                        <td style="text-align: center;">
                                            
                                            <asp:DropDownList ID="DropDownList9" Width="60px" runat="server">
                                                <asp:ListItem>AMG</asp:ListItem>
                                                <asp:ListItem>PSD</asp:ListItem>
                                            </asp:DropDownList>

                                        </td>
                                        <td style="text-align:center;width:200px;">
                                            <asp:ImageButton ID="ImageButton10" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc11(); return false;" runat="server" />
                                             <div id="AddDocm11" style="border: 1px solid rgb(212, 216, 219);
    margin: 11px auto auto;
    width: 49%;
    float: right;
    display: block;
    z-index: 9;
    position: absolute;
    right: 2px;
    background-color: white; display:none;">
        <span class="close_btn_pop" onclick="divAddDoc11();">x</span>
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
                <td align="left">

                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox12" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr><td colspan="2" style="height:5px;"></td></tr>
            
            <tr>
                <td align="right">
                    <label class="input-label">Document :</label></td>
                <td align="left">
                    <asp:FileUpload ID="FileUpload10" runat="server" />
                    <asp:Button ID="Button18" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                        Text="Upload"  />
                </td>
            </tr>
            <tr>
                <td></td>
                <td align="left">
                    <asp:Button ID="Button19" class="buttonGreen small" runat="server" Text="Save" /></td>
            </tr>
        </table>
    </div>
                                            <asp:LinkButton ID="LinkButton5" Style="text-decoration:underline;" runat="server">Individual Info</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton6" Style="text-decoration:underline;" runat="server">Representative</asp:LinkButton>
                                        </td>
                                    </tr>
                                    
                                    <tr style="background-color: White;">
                                        <td>
                                            <asp:CheckBox ID="chkRevo2" runat="server" /></td>
                                        
                                        <td>CAMTC00201
                                        </td>
                                        <td></td>
                                        <td style="text-align:center;">Jane
                                        </td>
                                        <td style="text-align:center;">Doe
                                        </td>
                                        
                                        <td style="text-align:center;">11/20/2015
                                        </td>
                                        <td style="text-align:center;">
                                            <asp:CheckBox ID="CheckBox43" runat="server" /></td>
                                        <td style="text-align: center;">11/12/2015
                                        </td>
                                         <td style="text-align:center;">
                                            <asp:CheckBox ID="CheckBox44" runat="server" /></td>
                                        <td style="text-align: center;" >
                                             <asp:DropDownList ID="DropDownList10" Width="60px" runat="server">
                                                <asp:ListItem>AMG</asp:ListItem>
                                                <asp:ListItem>PSD</asp:ListItem>
                                            </asp:DropDownList>

                                        </td>
                                         <td style="text-align:center; width:200px;">
                                             <asp:ImageButton ID="ImageButton11" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc12(); return false;" runat="server" />
                                             <div id="AddDocm12" style="border: 1px solid rgb(212, 216, 219);
    margin: 11px auto auto;
    width: 49%;
    float: right;
    display: block;
    z-index: 9;
    position: absolute;
    right: 2px;
    background-color: white; display:none;">
        <span class="close_btn_pop" onclick="divAddDoc12();">x</span>
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
                <td align="left">

                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox13" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr><td colspan="2" style="height:5px;"></td></tr>
            
            <tr>
                <td align="right">
                    <label class="input-label">Document :</label></td>
                <td align="left">
                    <asp:FileUpload ID="FileUpload11" runat="server" />
                    <asp:Button ID="Button20" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                        Text="Upload"  />
                </td>
            </tr>
            <tr>
                <td></td>
                <td align="left">
                    <asp:Button ID="Button21" class="buttonGreen small" runat="server" Text="Save" /></td>
            </tr>
        </table>
    </div>
                                            <asp:LinkButton ID="LinkButton7" Style="text-decoration:underline;" runat="server">Individual Info</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton8" Style="text-decoration:underline;" runat="server">Representative</asp:LinkButton>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="applicationform" style="width:100%">

                            <div class="clear">
                                <asp:Literal ID="Literal3" runat="server"></asp:Literal>
                            </div>
                            <div class="toolBar" style="padding: 4px;" runat="server" id="Div3">
                                <div style="float: left;">
                                    <div id="pnlAssignTo">
                                        <table class="">
                                            <tbody>
                                                <tr>
                                                    <td class="">
                                                        <span class="">
                                                            <input type="submit" value="Assign To" id="btnAssignTo" class="buttonGreen medium">
                                                        </span>
                                                        <asp:DropDownList ID="DropDownList11" runat="server" CssClass="inputTextbox" Style="margin-left: 5px; width: 160px;"
                                                            autocomplete="off">
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                            <asp:ListItem Value="140">Jane Smith</asp:ListItem>
                                                            <asp:ListItem Value="139">Mickey Doe</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <span class="">
                                                                 <input type="button" value="Note" id="btnNote" class="buttonGreen medium" style="margin-left:6px" onclick="divAddNotesL9(); return false";>
                                                        </span>
                                                        <div id="AddNotesL9"
                                    style="border: 1px solid rgb(212, 216, 219); margin: 54px 45% auto auto; width: 49%; float: right; z-index: 9; position: absolute; right: 2px; background-color: white; display: none;">
                                    <span class="close_btn_pop" onclick="divAddNotesL9();">x</span>
                                    <div class="blockheader" style="margin: 0px 0px -3px auto;">
                                        <p style="padding-top: 7px;">
                                            <span>Send Notes   </span>
                                        </p>
                                    </div>
                                    <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
                                        <tr>
                                            <td style="width: 60px; vertical-align:middle;" >
                                                <label class="input-label">
                                                    Notes :</label>
                                            </td>
                                            <td align="left">

                                                <asp:TextBox CssClass="inputTextbox" Width="95%" autocomplete="off" ID="TextBox27" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 5px;"></td>
                                        </tr>


                                        <tr>
                                            <td></td>
                                            <td align="left">
                                                <asp:Button ID="Button48" class="secondary small" runat="server" Text="Cancel" OnClientClick="divAddNotesL9(); return false;" />
                                                <asp:Button ID="Button49" class="buttonGreen small aspNetDisabled" runat="server" Text="Save" /></td>
                                        </tr>
                                    </table>
                                </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <span class="fltrt" style="margin-top: 5px; float: left; margin-left: 10px;"><span class="AfterApproved">

                                                    </span>
                                    <asp:Label ID="Label4" runat="server" Font-Bold="true" Text="Hearing Date : ">
                                        <asp:TextBox ID="TextBox4" CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" runat="server"></asp:TextBox>
                                    </asp:Label>

                                </span>
                            </div>
                        </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </ContentTemplate>
                </asp:TabPanel>

                <asp:TabPanel ID="tbpnlAdvRoster" Visible="false" Enabled="true" runat="server">
                    <HeaderTemplate>
                        Denial/Discipline
                    </HeaderTemplate>
                    <ContentTemplate>
                        <asp:UpdatePanel ID="upAdvRoster" runat="server">
                            <ContentTemplate>
                                   <div class="gvDivUpr">
                                       <table style="margin-bottom:20px;margin-top:5px;">
                                <tr>
                                    <td>
                                        <b>Denial/Discipline</b>
                                    </td>
                                </tr>
                            </table>
                            <table class="index  grid" cellspacing="0" cellpadding="5" id="gvDenialDis"
                                style="color: #333333; width: 100%; border-collapse: collapse;">
                                <tbody>
                                    <tr>
                                        <th scope="col" style="text-decoration: underline;">
                                            <span style="color: white;">
                                                <asp:CheckBox ID="chkDenialSelectAll" AutoPostBack="true" OnCheckedChanged="chkDenialSelectAll_CheckedChanged" runat="server" /></span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;">
                                            <span style="color: white;">ID #</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">Certificate #</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">First Name</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">Last Name</span>
                                        </th>

                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">Date MTC Completed</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center;">
                                            <span style="color: white;">Education Issue</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">Hearing Date</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">High Priority</span>
                                        </th>
                                         <th scope="col" style="text-decoration: underline; text-align: center;">
                                            <span style="color: white;">Send To</span>
                                        </th>
                                        <th class="aligncenter" scope="col">
                                        </th>
                                    </tr>
                                    <tr id="tr4" runat="server">
                                        <td>
                                            <asp:CheckBox ID="chkDenial1" runat="server" /></td>
                                        <td>CAMTC00123
                                        </td>
                                        <td></td>
                                        <td style="text-align:center;">John
                                        </td>
                                        <td style="text-align:center;">Doe
                                        </td>
                                        <td style="text-align:center;">11/10/2015
                                        </td>
                                        <td style="text-align:center;">
                                            <asp:CheckBox ID="CheckBox6" runat="server" /></td>
                                        <td style="text-align: center;">11/12/2015
                                        </td>
                                         <td style="text-align:center;">
                                            <asp:CheckBox ID="CheckBox7" runat="server" /></td>
                                        <td style="text-align: center;">
                                            
                                            <asp:DropDownList ID="DropDownList12" Width="60px" runat="server">
                                                <asp:ListItem>AMG</asp:ListItem>
                                                <asp:ListItem>PSD</asp:ListItem>
                                            </asp:DropDownList>

                                        </td>
                                        <td style="text-align:center;width:200px;">
                                            <asp:ImageButton ID="ImageButton12" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc13(); return false;" runat="server" />
                                             <div id="AddDocm13" style="border: 1px solid rgb(212, 216, 219);
    margin: 11px auto auto;
    width: 49%;
    float: right;
    display: block;
    z-index: 9;
    position: absolute;
    right: 2px;
    background-color: white; display:none;">
        <span class="close_btn_pop" onclick="divAddDoc13();">x</span>
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
                <td align="left">

                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox14" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr><td colspan="2" style="height:5px;"></td></tr>
            
            <tr>
                <td align="right">
                    <label class="input-label">Document :</label></td>
                <td align="left">
                    <asp:FileUpload ID="FileUpload12" runat="server" />
                    <asp:Button ID="Button22" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                        Text="Upload"  />
                </td>
            </tr>
            <tr>
                <td></td>
                <td align="left">
                    <asp:Button ID="Button23" class="buttonGreen small" runat="server" Text="Save" /></td>
            </tr>
        </table>
    </div>
                                            <asp:LinkButton ID="LinkButton1" Style="text-decoration:underline;" runat="server">Individual Info</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton2" Style="text-decoration:underline;" runat="server">Representative</asp:LinkButton>
                                        </td>
                                    </tr>
                                    
                                    <tr style="background-color: White;">
                                        <td>
                                            <asp:CheckBox ID="chkDenial2" runat="server" /></td>
                                        
                                        <td>CAMTC00201
                                        </td>
                                        <td></td>
                                        <td style="text-align:center;">Jane
                                        </td>
                                        <td style="text-align:center;">Doe
                                        </td>
                                        
                                        <td style="text-align:center;">11/20/2015
                                        </td>
                                        <td style="text-align:center;">
                                            <asp:CheckBox ID="CheckBox45" runat="server" /></td>
                                        <td style="text-align: center;">11/12/2015
                                        </td>
                                         <td style="text-align:center;">
                                            <asp:CheckBox ID="CheckBox46" runat="server" /></td>
                                        <td style="text-align: center;" >
                                             <asp:DropDownList ID="DropDownList13" Width="60px" runat="server">
                                                <asp:ListItem>AMG</asp:ListItem>
                                                <asp:ListItem>PSD</asp:ListItem>
                                            </asp:DropDownList>

                                        </td>
                                         <td style="text-align:center; width:200px;">
                                             <asp:ImageButton ID="ImageButton13" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc14(); return false;" runat="server" />
                                             <div id="AddDocm14" style="border: 1px solid rgb(212, 216, 219);
    margin: 11px auto auto;
    width: 49%;
    float: right;
    display: block;
    z-index: 9;
    position: absolute;
    right: 2px;
    background-color: white; display:none;">
        <span class="close_btn_pop" onclick="divAddDoc14();">x</span>
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
                <td align="left">

                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox15" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr><td colspan="2" style="height:5px;"></td></tr>
            
            <tr>
                <td align="right">
                    <label class="input-label">Document :</label></td>
                <td align="left">
                    <asp:FileUpload ID="FileUpload13" runat="server" />
                    <asp:Button ID="Button24" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                        Text="Upload"  />
                </td>
            </tr>
            <tr>
                <td></td>
                <td align="left">
                    <asp:Button ID="Button25" class="buttonGreen small" runat="server" Text="Save" /></td>
            </tr>
        </table>
    </div>
                                            <asp:LinkButton ID="LinkButton3" Style="text-decoration:underline;" runat="server">Individual Info</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton4" Style="text-decoration:underline;" runat="server">Representative</asp:LinkButton>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="applicationform" style="width:100%">

                            <div class="clear">
                                <asp:Literal ID="Literal4" runat="server"></asp:Literal>
                            </div>
                            <div class="toolBar" style="padding: 4px;" runat="server" id="Div4">
                                <div style="float: left;">
                                    <div id="pnlAssignTo">
                                        <table class="">
                                            <tbody>
                                                <tr>
                                                    <td class="">
                                                        <span class="">
                                                            <input type="submit" value="Assign To" id="btnAssignTo" class="buttonGreen medium">
                                                        </span>
                                                        <asp:DropDownList ID="DropDownList14" runat="server" CssClass="inputTextbox" Style="margin-left: 5px; width: 160px;"
                                                            autocomplete="off">
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                            <asp:ListItem Value="140">Jane Smith</asp:ListItem>
                                                            <asp:ListItem Value="139">Mickey Doe</asp:ListItem>
                                                        </asp:DropDownList>

                                                        <span class="">
                                                                 <input type="button" value="Note" id="btnNote" class="buttonGreen medium" style="margin-left:6px" onclick="divAddNotesL10(); return false";>
                                                        </span>
                                                        <div id="AddNotesL10"
                                    style="border: 1px solid rgb(212, 216, 219); margin: 54px 45% auto auto; width: 49%; float: right; z-index: 9; position: absolute; right: 2px; background-color: white; display: none;">
                                    <span class="close_btn_pop" onclick="divAddNotesL10();">x</span>
                                    <div class="blockheader" style="margin: 0px 0px -3px auto;">
                                        <p style="padding-top: 7px;">
                                            <span>Send Notes   </span>
                                        </p>
                                    </div>
                                    <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
                                        <tr>
                                            <td style="width: 60px; vertical-align:middle;" >
                                                <label class="input-label">
                                                    Notes :</label>
                                            </td>
                                            <td align="left">

                                                <asp:TextBox CssClass="inputTextbox" Width="95%" autocomplete="off" ID="TextBox28" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 5px;"></td>
                                        </tr>


                                        <tr>
                                            <td></td>
                                            <td align="left">
                                                <asp:Button ID="Button50" class="secondary small" runat="server" Text="Cancel" OnClientClick="divAddNotesL10(); return false;" />
                                                <asp:Button ID="Button51" class="buttonGreen small aspNetDisabled" runat="server" Text="Save" /></td>
                                        </tr>
                                    </table>
                                </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <span class="fltrt" style="margin-top: 5px; float: left; margin-left: 10px;"><span class="AfterApproved">

                                                    </span>
                                    <asp:Label ID="Label5" runat="server" Font-Bold="true" Text="Hearing Date : ">
                                        <asp:TextBox ID="TextBox5" CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" runat="server"></asp:TextBox>
                                    </asp:Label>

                                </span>
                            </div>
                        </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </ContentTemplate>
                </asp:TabPanel>

                <asp:TabPanel ID="pnlHold" Enabled="true" runat="server">
                    <HeaderTemplate>
                        Hold
                    </HeaderTemplate>
                    <ContentTemplate>
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <div class="gvDivUpr">
                                    <table style="margin-bottom: 20px; margin-top: 5px;">
                                        <tr>
                                            <td>
                                                <b>Hold</b>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="index  grid" cellspacing="0" cellpadding="5" id="gvSuspension"
                                        style="color: #333333; font-size:11px; width: 100%; border-collapse: collapse;">
                                        <tbody>
                                            <tr>
                                                <th scope="col" style="text-decoration: underline;">
                                                    <span style="color: white;">
                                                        <asp:CheckBox ID="CheckBox12" AutoPostBack="true" OnCheckedChanged="chkSusSelectAll_CheckedChanged" runat="server" /></span>
                                                </th>
                                               <th scope="col" style="text-decoration: underline; text-align:center;">
                                            <span style="color: white;">Type</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">MTC Type</span>
                                        </th>
                                         <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Hearing Type</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Internal Status</span>
                                        </th>
                                         <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">ID #</span>
                                        </th>
                                         <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Certificate #</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">First Name</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Last Name</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Date MTC Completed</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Education Issue </span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center; width:115px;">
                                                    <span style="color: white;">Hearing Waiting Room Date</span>
                                                </th>
                                                <th scope="col" style="text-decoration: underline; text-align: center;">
                                                    <span style="color: white;">High Priority</span>
                                                </th>
                                         <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Send To   </span>
                                        </th>
                                       <th scope="col" style="text-decoration: underline;text-align:center;"></th>
                                            </tr>
                                            <tr id="tr9" runat="server">
                                                <td>
                                                    <asp:CheckBox ID="CheckBox13" runat="server" /></td>
                                                <td>A</td>
                                        <td><a href="../../../LAPP_UI_Backoffice/PSD/MemoToCouncil.aspx" style="color:blue; text-align:center;text-decoration:underline;">Proposed Denial</a>
                                            <%--<asp:DropDownList ID="ddlmtcType1" Width="120px" runat="server">
                                                <asp:ListItem>Proposed Denial</asp:ListItem>
                                                <asp:ListItem>Proposed Discipline</asp:ListItem>
                                                <asp:ListItem>Proposed Revocation</asp:ListItem>
                                                <asp:ListItem>Proposed Suspension</asp:ListItem>
                                            </asp:DropDownList>--%>
                                        </td>
                                        <td style="text-align:center;">
                                            <asp:DropDownList ID="DropDownList19" Width="120px" runat="server">
                                                <asp:ListItem>Proposed Denial</asp:ListItem>
                                                <asp:ListItem>Proposed Discipline</asp:ListItem>
                                                <asp:ListItem>Proposed Revocation</asp:ListItem>
                                                <asp:ListItem>Proposed Suspension</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="text-align:center;">
                                             <asp:DropDownList ID="DropDownList24" Width="60px" runat="server">
                                                <asp:ListItem>Draft</asp:ListItem>
                                                <asp:ListItem>Final</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="text-align:center;">CAMTC00123 </td>
                                        <td style="text-align:center;"></td>
                                        <td style="text-align:center;">John</td>
                                        <td style="text-align:center;">Doe</td>
                                        <td style="text-align:center;">11/10/2015</td>
                                        <td style="text-align:center;"><asp:CheckBox ID="CheckBox16" runat="server" /></td>
                                        <td style="text-align: center;">11/12/2015</td>
                                        <td style="text-align:center;"><asp:CheckBox ID="CheckBox17" runat="server" /></td>
                                        <td style="text-align:center;"> <asp:DropDownList ID="ddlHoldStaf1" AutoPostBack="true" Width="90px" OnSelectedIndexChanged="ddlHoldStaf1_SelectedIndexChanged" runat="server">
                                            <asp:ListItem Selected="True" Value="1">Legal Staff</asp:ListItem>
                                            <asp:ListItem Value="2">AMG</asp:ListItem>
                                            <asp:ListItem Value="3">PSD</asp:ListItem>
                                                                        </asp:DropDownList></td>
                                                <td style="text-align: center; width: 200px;">
                                                    <asp:ImageButton ID="ImageButton16" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc7(); return false;" runat="server" />
                                                    <div id="HoldAddDocm7" style="border: 1px solid rgb(212, 216, 219); margin: 11px auto auto; width: 49%; float: right; display: block; z-index: 9; position: absolute; right: 2px; background-color: white; display: none;">
                                                        <span class="close_btn_pop" onclick="divAddDoc7();;">x</span>
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
                                                                <td align="left">

                                                                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox19" runat="server"></asp:TextBox>
                                                                </td>

                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" style="height: 5px;"></td>
                                                            </tr>

                                                            <tr>
                                                                <td align="right">
                                                                    <label class="input-label">Document :</label></td>
                                                                <td align="left">
                                                                    <asp:FileUpload ID="FileUpload17" runat="server" />
                                                                    <asp:Button ID="Button32" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                                                                        Text="Upload" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td align="left">
                                                                    <asp:Button ID="Button33" class="buttonGreen small" runat="server" Text="Save" /></td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                     <asp:ImageButton ID="imgholdnotes1" ToolTip="Notes" ImageUrl="~/App_Themes/Theme1/images/note.png" OnClientClick="dvholdAddnotes1(); return false;"  runat="server" />
                                                   <div id="gridHoldAddNote1"
                                    style="border: 1px solid rgb(212, 216, 219); margin: 0px 1% auto auto; width: 49%; float: right; z-index: 9; position: absolute; right: 2px; background-color: white; display: none;">
                                    <span class="close_btn_pop" onclick="dvholdAddnotes1();">x</span>
                                    <div class="blockheader" style="margin: 0px 0px -3px auto;">
                                        <p style="padding-top: 7px;">
                                            <span>Send Notes   </span>
                                        </p>
                                    </div>
                                    <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
                                        <tr>
                                            <td style="width: 60px; vertical-align:middle;" >
                                                <label class="input-label">
                                                    Notes :</label>
                                            </td>
                                            <td align="left">

                                                <asp:TextBox CssClass="inputTextbox" Width="95%" autocomplete="off" ID="TextBox31" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 5px;"></td>
                                        </tr>


                                        <tr>
                                            <td></td>
                                            <td align="left">
                                                <asp:Button ID="Button57" class="secondary small" runat="server" Text="Cancel" OnClientClick="divAddNotesL11(); return false;" />
                                                <asp:Button ID="Button58" class="buttonGreen small aspNetDisabled" runat="server" Text="Save" /></td>
                                        </tr>
                                    </table>
                                </div>
                                                     <a href="../../../LAPP_UI_Backoffice/PSD/IndividualInfo.aspx" target="_blank" style="text-decoration:underline; color:blue;">Individual Info</a>
                                                    <a href="../../../LAPP_UI_Backoffice/UI/Individual.aspx" target="_blank" style="text-decoration:underline;color:blue;">Representative</a>
                                                    <asp:Button ID="btnHoldSend" Visible="false" runat="server" CssClass="buttonGreen small" Text="Send" />
                                                </td>
                                            </tr>

                                            <tr style="background-color: White;">
                                                <td>
                                                    <asp:CheckBox ID="CheckBox20" runat="server" /></td>

                                                 <td><a href="#">CH</a>
                                        </td>
                                        <td><a href="../../../LAPP_UI_Backoffice/PSD/MemoToCouncil.aspx" style="color:blue; text-align:center; text-decoration:underline;">Proposed Discipline</a>
                                           <%-- <asp:DropDownList ID="ddlMTCType" Width="120px" runat="server">
                                                <asp:ListItem>Proposed Denial</asp:ListItem>
                                                <asp:ListItem>Proposed Discipline</asp:ListItem>
                                                <asp:ListItem>Proposed Revocation</asp:ListItem>
                                                <asp:ListItem>Proposed Suspension</asp:ListItem>
                                            </asp:DropDownList>--%>
                                        </td>
                                        <td>  <asp:DropDownList ID="DropDownList25" Width="120px" runat="server">
                                                <asp:ListItem>Proposed Denial</asp:ListItem>
                                                <asp:ListItem>Proposed Discipline</asp:ListItem>
                                                <asp:ListItem>Proposed Revocation</asp:ListItem>
                                                <asp:ListItem>Proposed Suspension</asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td style="text-align:center;">
                                            <asp:DropDownList ID="DropDownList32" Width="60px" runat="server">
                                                <asp:ListItem>Draft</asp:ListItem>
                                                <asp:ListItem>Final</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="text-align:center;">CAMTC00123 </td>
                                        <td style="text-align:center;"></td>
                                        <td style="text-align:center;">Jane</td>
                                        <td style="text-align:center;">Doe</td>
                                        <td style="text-align:center;">11/20/2015</td>
                                        <td style="text-align:center;"><asp:CheckBox ID="CheckBox21" runat="server" /></td>
                                        <td style="text-align: center;">11/12/2015</td>
                                        <td style="text-align:center;"><asp:CheckBox ID="CheckBox24" runat="server" /></td>
                                        <td style="text-align:center;"> <asp:DropDownList ID="ddlHold2" AutoPostBack="true" OnSelectedIndexChanged="ddlHold2_SelectedIndexChanged" Width="90px" runat="server">
                                            <asp:ListItem Selected="True" Value="1">Legal Staff</asp:ListItem>
                                            <asp:ListItem Value="2">AMG</asp:ListItem>
                                            <asp:ListItem Value="3">PSD</asp:ListItem>
                                                                        </asp:DropDownList></td>
                                                <td style="text-align: center; width: 200px;">
                                                    <asp:ImageButton ID="ImageButton17" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc8(); return false;" runat="server" />
                                                    <div id="HoldAddDocm2" style="border: 1px solid rgb(212, 216, 219); margin: 11px auto auto; width: 49%; float: right; display: block; z-index: 9; position: absolute; right: 2px; background-color: white; display: none;">
                                                        <span class="close_btn_pop" onclick="divAddDoc8();">x</span>
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
                                                                <td align="left">

                                                                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox20" runat="server"></asp:TextBox>
                                                                </td>

                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" style="height: 5px;"></td>
                                                            </tr>

                                                            <tr>
                                                                <td align="right">
                                                                    <label class="input-label">Document :</label></td>
                                                                <td align="left">
                                                                    <asp:FileUpload ID="FileUpload18" runat="server" />
                                                                    <asp:Button ID="Button34" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                                                                        Text="Upload" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td align="left">
                                                                    <asp:Button ID="Button35" class="buttonGreen small" runat="server" Text="Save" /></td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                     <asp:ImageButton ID="imgbutnHold2" ToolTip="Notes" ImageUrl="~/App_Themes/Theme1/images/note.png" OnClientClick="dvholdAddnotes2(); return false;"  runat="server" />
                                                   <div id="gridHoldAddNote2"
                                    style="border: 1px solid rgb(212, 216, 219); margin: 0px 1% auto auto; width: 49%; float: right; z-index: 9; position: absolute; right: 2px; background-color: white; display: none;">
                                    <span class="close_btn_pop" onclick="dvholdAddnotes2();">x</span>
                                    <div class="blockheader" style="margin: 0px 0px -3px auto;">
                                        <p style="padding-top: 7px;">
                                            <span>Send Notes   </span>
                                        </p>
                                    </div>
                                    <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
                                        <tr>
                                            <td style="width: 60px; vertical-align:middle;" >
                                                <label class="input-label">
                                                    Notes :</label>
                                            </td>
                                            <td align="left">

                                                <asp:TextBox CssClass="inputTextbox" Width="95%" autocomplete="off" ID="TextBox32" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 5px;"></td>
                                        </tr>


                                        <tr>
                                            <td></td>
                                            <td align="left">
                                                <asp:Button ID="Button59" class="secondary small" runat="server" Text="Cancel" OnClientClick="divAddNotesL11(); return false;" />
                                                <asp:Button ID="Button60" class="buttonGreen small aspNetDisabled" runat="server" Text="Save" /></td>
                                        </tr>
                                    </table>
                                </div>
                                                   
                                                    <asp:LinkButton ID="LinkButton35" Style="text-decoration: underline;" runat="server">Individual Info</asp:LinkButton>
                                                    <asp:LinkButton ID="LinkButton36" Style="text-decoration: underline;" runat="server">Representative</asp:LinkButton>
                                                    <asp:Button ID="btnHold2" Visible="false" runat="server" CssClass="buttonGreen small" Text="Send" />
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="applicationform" style="width: 100%">

                                    <div class="clear">
                                        <asp:Literal ID="Literal8" runat="server"></asp:Literal>
                                    </div>
                                    <div class="toolBar" style="padding: 4px;" runat="server" id="Div8">
                                        <div style="float: left;">
                                            <div id="HoldpnlAssignTo">
                                                <table class="">
                                                    <tbody>
                                                        <tr>
                                                            <td class="">
                                                                <span class="">
                                                                    <input type="submit" value="Assign To" id="btnAssignTo" class="buttonGreen medium" >
                                                                </span>
                                                                <asp:DropDownList ID="DropDownList26" runat="server" CssClass="inputTextbox" Style="margin-left: 5px; width: 160px;"
                                                                    autocomplete="off">
                                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                                    <asp:ListItem Value="140">Jane Smith</asp:ListItem>
                                                                    <asp:ListItem Value="139">Mickey Doe</asp:ListItem>
                                                                </asp:DropDownList>

                                                                <span class="">
                                                                 <input type="button" value="Note" id="btnNote" class="buttonGreen medium" style="margin-left:6px" onclick="divAddNotesL11(); return false";>
                                                        </span>
                                                                <div id="AddNotesL11"
                                    style="border: 1px solid rgb(212, 216, 219); margin: 54px 45% auto auto; width: 49%; float: right; z-index: 9; position: absolute; right: 2px; background-color: white; display: none;">
                                    <span class="close_btn_pop" onclick="divAddNotesL11();">x</span>
                                    <div class="blockheader" style="margin: 0px 0px -3px auto;">
                                        <p style="padding-top: 7px;">
                                            <span>Send Notes   </span>
                                        </p>
                                    </div>
                                    <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
                                        <tr>
                                            <td style="width: 60px; vertical-align:middle;" >
                                                <label class="input-label">
                                                    Notes :</label>
                                            </td>
                                            <td align="left">

                                                <asp:TextBox CssClass="inputTextbox" Width="95%" autocomplete="off" ID="TextBox29" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 5px;"></td>
                                        </tr>


                                        <tr>
                                            <td></td>
                                            <td align="left">
                                                <asp:Button ID="Button52" class="secondary small" runat="server" Text="Cancel" OnClientClick="divAddNotesL11(); return false;" />
                                                <asp:Button ID="Button53" class="buttonGreen small aspNetDisabled" runat="server" Text="Save" /></td>
                                        </tr>
                                    </table>
                                </div>
                                                            </td>
                                                            <td>
                                                        <asp:Label ID="Label7" style="padding-left: 10px;" runat="server"  Text="Hearing Waiting Room Date :"></asp:Label>
                                                        <asp:TextBox ID="TextBox8" Width="80px" CssClass="inputTextbox calender " placeholder="MM/DD/YYYY" runat="server"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label8" Style="padding-left:10px;" runat="server" Text="Internal Status"></asp:Label>
                                                        <asp:DropDownList ID="DropDownList28" runat="server">
                                                            <asp:ListItem>Draft</asp:ListItem>
                                                            <asp:ListItem>Final</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        <asp:Button ID="Button56" style="margin-left:6px" CssClass="buttonGreen medium aspNetDisabled" disabled  runat="server" Text="Send" /></td>
                                                   
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </ContentTemplate>
                </asp:TabPanel>

                <%--<asp:TabPanel ID="tbpnlApplication" Enabled="true" runat="server">
                    <HeaderTemplate>
                        Return to Sender
                    </HeaderTemplate>
                    <ContentTemplate>
                        <asp:UpdatePanel ID="upApplication" runat="server">
                            <ContentTemplate>
                                  <div class="gvDivUpr">
                                      <table style="margin-bottom:20px;margin-top:5px;">
                                <tr>
                                    <td>
                                        <b>Return to Sender</b>
                                    </td>
                                </tr>
                            </table>
                            <table class="index  grid" cellspacing="0" cellpadding="5" id="gvNewApplication6"
                                style="color: #333333; width: 100%; border-collapse: collapse;">
                                <tbody>
                                    <tr>
                                        <th scope="col" style="text-decoration: underline;">
                                            <span style="color: white;"></span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;">
                                            <span style="color: white;">ID #</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">Certificate #</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">First Name</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">Last Name</span>
                                        </th>

                                        <th scope="col" style="text-decoration: underline;text-align: center;">
                                            <span style="color: white;">Date MTC Completed</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center;">
                                            <span style="color: white;">Education Issue</span>
                                        </th>
                                         <th scope="col" style="text-decoration: underline; text-align: center;">
                                            <span style="color: white;">Send To</span>
                                        </th>
                                        <th class="aligncenter" scope="col">
                                        </th>
                                    </tr>
                                    <tr id="tr5" runat="server">
                                        <td>
                                            <asp:CheckBox ID="CheckBox1" runat="server" /></td>
                                        <td>CAMTC00123
                                        </td>
                                        <td></td>
                                        <td style="text-align:center;">John
                                        </td>
                                        <td style="text-align:center;">Doe
                                        </td>
                                        <td style="text-align:center;">11/10/2015
                                        </td>
                                        <td style="text-align:center;">
                                            <asp:CheckBox ID="CheckBox3" runat="server" /></td>
                                        <td style="text-align: center;">
                                            <asp:DropDownList ID="DropDownList15" runat="server">
                                                <asp:ListItem>AMG</asp:ListItem>
                                                <asp:ListItem>PSD</asp:ListItem>
                                            </asp:DropDownList>

                                        </td>
                                        <td>
                                            <asp:LinkButton ID="lnkIndividualInfo" Style="text-decoration:underline;" runat="server">Individual Info</asp:LinkButton>
                                            <asp:LinkButton ID="lnkRepresentative1" Style="text-decoration:underline;" runat="server">Representative</asp:LinkButton>
                                        </td>
                                    </tr>
                                    
                                    <tr style="background-color: White;">
                                        <td>
                                            <asp:CheckBox ID="CheckBox2" runat="server" /></td>
                                        
                                        <td>CAMTC00201
                                        </td>
                                        <td></td>
                                        <td style="text-align:center;">Jane
                                        </td>
                                        <td style="text-align:center;">Doe
                                        </td>
                                        
                                        <td style="text-align:center;">11/20/2015
                                        </td>
                                        <td style="text-align:center;">
                                            <asp:CheckBox ID="CheckBox4" runat="server" /></td>
                                        <td style="text-align: center;" >
                                             <asp:DropDownList ID="DropDownList16" runat="server">
                                                <asp:ListItem>AMG</asp:ListItem>
                                                <asp:ListItem>PSD</asp:ListItem>
                                            </asp:DropDownList>

                                        </td>
                                         <td>
                                            <asp:LinkButton ID="lnkIndividualInfo2" Style="text-decoration:underline;" runat="server">Individual Info</asp:LinkButton>
                                            <asp:LinkButton ID="lnkRepresentative2" Style="text-decoration:underline;" runat="server">Representative</asp:LinkButton>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="applicationform" style="width:100%">

                            <div class="clear">
                                <asp:Literal ID="Literal5" runat="server"></asp:Literal>
                            </div>
                            <div class="toolBar" style="padding: 4px;" runat="server" id="Div5">
                                <div style="float: left;">
                                    <div id="pnlAssignRESender">
                                        <table class="">
                                            <tbody>
                                                <tr>
                                                    <td class="">
                                                        <span class="">
                                                            <input type="submit" value="Assign To" id="btnAssignToRESender" class="buttonGreen medium">
                                                        </span>
                                                        <asp:DropDownList ID="DropDownList17" runat="server" CssClass="inputTextbox" Style="margin-left: 5px; width: 160px;"
                                                            autocomplete="off">
                                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                                            <asp:ListItem Value="140">Jane Smith</asp:ListItem>
                                                            <asp:ListItem Value="139">Mickey Doe</asp:ListItem>
                                                        </asp:DropDownList>
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
                    </ContentTemplate>
                </asp:TabPanel>--%>

            </asp:TabContainer>

        </div>





    </ContentTemplate>
</asp:UpdatePanel>
