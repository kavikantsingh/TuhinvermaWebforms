<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucHearingOutcomes.ascx.cs" Inherits="Module_UI_Backoffice_Legal_ucHearingOutcomes" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
                    <h4>Hearing Outcomes</h4>
                </span><span style="float: right; margin-bottom: -2px; position: relative; top: -8px;"></span>
            </div>
            <div class="clear">
            </div>

            <asp:TabContainer ID="TabContainer1" runat="server" CssClass="fancy fancy-green"
                ActiveTabIndex="0">
                <asp:TabPanel ID="TabPanel1" Enabled="true" runat="server">
                    <HeaderTemplate>
                        All Outcomes
                    </HeaderTemplate>
                    <ContentTemplate>
<div class="gvDivUpr">
                            <table style="margin-bottom:20px;margin-top:5px;">
                                <tr>
                                    <td>
                                        <b>All Outcomes</b>
                                    </td>
                                </tr>
                            </table>

                            <table class="index  grid" cellspacing="0" cellpadding="5" id="gvMTC"
                                style="color: #333333; width: 100%; border-collapse: collapse;">
                                <tbody>
                                    <tr>
                                        <th>
                                            <asp:CheckBox ID="chkOutComeSelectAll" AutoPostBack="true" OnCheckedChanged="chkOutComeSelectAll_CheckedChanged" runat="server" /></th>
                                        <th scope="col" style="text-decoration: underline; text-align:center;">
                                            <span style="color: white;">Type</span>
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
                                            <span style="color: white;">Hearing Date</span>
                                        </th>
                                        
                                         <th scope="col" style="text-decoration: underline;text-align:center;">
                                            <span style="color: white;">Status</span>
                                        </th>
                                       <th scope="col" style="text-decoration: underline;text-align:center;">Action</th>
                                    </tr>
                                    <tr id="tr6" runat="server">
                                        <td><asp:CheckBox ID="chkOutCome1" runat="server" /></td>
                                        <td>A</td>
                                       
                                        <td style="text-align:center;">CAMTC00123 </td>
                                        <td style="text-align:center;"></td>
                                        <td style="text-align:center;">John</td>
                                        <td style="text-align:center;">Doe</td>
                                        <td style="text-align:center;">11/10/2015</td>
                                        
                                        <td style="text-align:center;"> <asp:DropDownList ID="DropDownList22" Width="80px" runat="server">
                                            <asp:ListItem>Select</asp:ListItem>
                                            
                                                                        </asp:DropDownList></td>
                                         <td style="text-align:center; width:300px;">
                                            
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
                                            <asp:Button ID="Button40" runat="server" CssClass="buttonGreen medium aspNetDisabled" Text="Final Letter Mailed" />
                                        </td>
                                       
                                    </tr>
                                    

                                    <tr style="background-color: White;">
                                        <td> <asp:CheckBox ID="chkOutCome2" runat="server" /></td>
                                        <td><a href="#">CH</a>
                                        </td>
                                        
                                        <td style="text-align:center;">CAMTC00123 </td>
                                        <td style="text-align:center;"></td>
                                        <td style="text-align:center;">Jane</td>
                                        <td style="text-align:center;">Doe</td>
                                        <td style="text-align:center;">11/20/2015</td>
                                       
                                        <td style="text-align:center;"> <asp:DropDownList ID="DropDownList23" Width="80px" runat="server">
                                            <asp:ListItem>Select</asp:ListItem>
                                            
                                                                        </asp:DropDownList></td>
                                         <td style="text-align:center; width:300px;">
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
                                            <asp:Button ID="Button41" runat="server" CssClass="buttonGreen medium aspNetDisabled" Text="Final Letter Mailed" />
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
                <asp:TabPanel ID="TabPanel2" Enabled="true" runat="server">
                    <HeaderTemplate>
                        Education Denial
                    </HeaderTemplate>
                    <ContentTemplate>



                        <div class="gvDivUpr">

                            <table style="margin-bottom:20px;margin-top:5px;">
                                <tr>
                                    <td>
                                        <b>Education Denial</b>
                                    </td>
                                </tr>
                            </table>
                            <table class="index  grid" cellspacing="0" cellpadding="5" id="gvEduDenial"
                                style="color: #333333; width: 100%; border-collapse: collapse;">
                                <tbody>
                                    <tr>
                                        <th scope="col" style="text-decoration: underline;">
                                            <span style="color: white;">
                                                <asp:CheckBox ID="chkEduSelectAll" AutoPostBack="true" OnCheckedChanged="chkEduSelectAll_CheckedChanged" runat="server" /></span>
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
                                            <span style="color: white;">Hearing Date</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center;">
                                            <span style="color: white;">Status</span>
                                        </th>
                                       </th>
                                        <th class="aligncenter" scope="col">Action
                                        </th>
                                    </tr>
                                    <tr id="tr7" runat="server">
                                        <td>
                                            <asp:CheckBox ID="chkEdu1" runat="server" /></td>
                                        <td>CAMTC00123
                                        </td>
                                        <td></td>
                                        <td style="text-align:center;">John
                                        </td>
                                        <td style="text-align:center;">Doe
                                        </td>
                                        <td style="text-align:center;">11/10/2015
                                        </td>
                                        
                                        <td style="text-align: center;">
                                            
                                            <asp:DropDownList ID="DropDownList19" Width="80px" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                
                                            </asp:DropDownList>

                                        </td>
                                        <td style="text-align:center;width:200px;">
                                            <asp:ImageButton ID="ImageButton2" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc3(); return false;" runat="server" />
                                             <div id="AddDocm3" style="border: 1px solid rgb(212, 216, 219);
    margin: 11px auto auto;
    width: 49%;
    float: right;
    display: block;
    z-index: 9;
    position: absolute;
    right: 2px;
    background-color: white; display:none;">
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
            <tr><td colspan="2" style="height:5px;"></td></tr>
            
            <tr>
                <td align="right">
                    <label class="input-label">Document :</label></td>
                <td align="left">
                    <asp:FileUpload ID="FileUpload2" runat="server" />
                    <asp:Button ID="Button1" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                        Text="Upload"  />
                </td>
            </tr>
            <tr>
                <td></td>
                <td align="left">
                    <asp:Button ID="Button2" class="buttonGreen small" runat="server" Text="Save" /></td>
            </tr>
        </table>
    </div>
                                            <asp:Button ID="Button28" runat="server" CssClass="buttonGreen medium aspNetDisabled" Text="Final Letter Mailed" />
                                        </td>
                                    </tr>
                                    
                                    <tr style="background-color: White;">
                                        <td>
                                            <asp:CheckBox ID="chkEdu2" runat="server" /></td>
                                        
                                        <td>CAMTC00201
                                        </td>
                                        <td></td>
                                        <td style="text-align:center;">Jane
                                        </td>
                                        <td style="text-align:center;">Doe
                                        </td>
                                        
                                        <td style="text-align:center;">11/20/2015
                                        </td>
                                       
                                        <td style="text-align: center;" >
                                             <asp:DropDownList ID="DropDownList21" Width="80px" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                
                                            </asp:DropDownList>

                                        </td>
                                         <td style="text-align:center; width:200px;">
                                             <asp:ImageButton ID="ImageButton3" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc4(); return false;" runat="server" />
                                             <div id="AddDocm4" style="border: 1px solid rgb(212, 216, 219);
    margin: 11px auto auto;
    width: 49%;
    float: right;
    display: block;
    z-index: 9;
    position: absolute;
    right: 2px;
    background-color: white; display:none;">
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
            <tr><td colspan="2" style="height:5px;"></td></tr>
            
            <tr>
                <td align="right">
                    <label class="input-label">Document :</label></td>
                <td align="left">
                    <asp:FileUpload ID="FileUpload3" runat="server" />
                    <asp:Button ID="Button4" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                        Text="Upload"  />
                </td>
            </tr>
            <tr>
                <td></td>
                <td align="left">
                    <asp:Button ID="Button5" class="buttonGreen small" runat="server" Text="Save" /></td>
            </tr>
        </table>
    </div>
                                            <asp:Button ID="Button29" runat="server" CssClass="buttonGreen medium aspNetDisabled" Text="Final Letter Mailed" />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="applicationform" style="width:100%">

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
                                                            <input type="submit" value="Assign To" id="btnAssignTo2" class="buttonGreen medium">
                                                        </span>
                                                        <asp:DropDownList ID="DropDownList18" runat="server" CssClass="inputTextbox" Style="margin-left: 5px; width: 160px;"
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
                                <span class="fltrt" style="margin-top: 5px; float: left; margin-left: 10px;"><span class="AfterApproved">

                                                    </span>
                                    <asp:Label ID="Label8" runat="server" Font-Bold="true" Text="Hearing Date : ">
                                        <asp:TextBox ID="TextBox8" CssClass="inputTextbox calender " placeholder="MM/DD/YYYY" runat="server"></asp:TextBox>
                                    </asp:Label>

                                </span>
                            </div>
                        </div>




                    </ContentTemplate>
                </asp:TabPanel>
                <asp:TabPanel ID="tbpnlGeneralInfo" Enabled="true" runat="server">
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
                                                <asp:CheckBox ID="chkPerRevoSelectAll" AutoPostBack="true" OnCheckedChanged="chkPerRevoSelectAll_CheckedChanged" runat="server" /></span>
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
                                            <span style="color: white;">Hearing Date</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center;">
                                            <span style="color: white;">Status</span>
                                        </th>
                                        
                                        <th class="aligncenter" scope="col">Action
                                        </th>
                                    </tr>
                                    <tr id="tr8" runat="server">
                                        <td>
                                            <asp:CheckBox ID="chkPerRevo1" runat="server" /></td>
                                        <td>CAMTC00123
                                        </td>
                                        <td></td>
                                        <td style="text-align:center;">John
                                        </td>
                                        <td style="text-align:center;">Doe
                                        </td>
                                        <td style="text-align:center;">11/10/2015
                                        </td>

                                        <td style="text-align: center;">

                                            <asp:DropDownList ID="DropDownList1" Width="80px" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>

                                            </asp:DropDownList>

                                        </td>
                                        <td style="text-align: center; width: 200px;">
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
                                            <asp:Button ID="Button30" runat="server" CssClass="buttonGreen medium aspNetDisabled" Text="Final Letter Mailed" />
                                        </td>
                                    </tr>
                                    
                                    <tr style="background-color: White;">
                                        <td>
                                            <asp:CheckBox ID="chkPerRevo2" runat="server" /></td>
                                        
                                        <td>CAMTC00201
                                        </td>
                                        <td></td>
                                        <td style="text-align:center;">Jane
                                        </td>
                                        <td style="text-align:center;">Doe
                                        </td>
                                        
                                        <td style="text-align:center;">11/20/2015
                                        </td>
                                        
                                        <td style="text-align: center;" >
                                             <asp:DropDownList ID="DropDownList2" Width="80px" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                
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
                                            <asp:Button ID="Button31" runat="server" CssClass="buttonGreen medium aspNetDisabled" Text="Final Letter Mailed" />
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
                                                            <input type="submit" value="Assign To" id="btnAssignTo4" class="buttonGreen medium">
                                                        </span>
                                                        <asp:DropDownList ID="ddlStaff" runat="server" CssClass="inputTextbox" Style="margin-left: 5px; width: 160px;"
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
                </asp:TabPanel>
                <asp:TabPanel ID="tbpnlPersonalInfo" Enabled="true" runat="server">
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
                                style="color: #333333; width: 100%; border-collapse: collapse;">
                                <tbody>
                                    <tr>
                                        <th scope="col" style="text-decoration: underline;">
                                            <span style="color: white;">
                                                <asp:CheckBox ID="chkSusLawSelectAll" AutoPostBack="true" OnCheckedChanged="chkSusLawSelectAll_CheckedChanged" runat="server" /></span>
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
                                            <span style="color: white;">Hearing Date</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center;">
                                            <span style="color: white;">Status</span>
                                        </th>
                                       
                                        <th class="aligncenter" scope="col">Action
                                        </th>
                                    </tr>
                                    <tr id="tr1" runat="server">
                                        <td>
                                            <asp:CheckBox ID="chkSusLaw1" runat="server" /></td>
                                        <td>CAMTC00123
                                        </td>
                                        <td></td>
                                        <td style="text-align:center;">John
                                        </td>
                                        <td style="text-align:center;">Doe
                                        </td>
                                        <td style="text-align:center;">11/10/2015
                                        </td>
                                        
                                        <td style="text-align: center;">
                                            
                                            <asp:DropDownList ID="DropDownList3" Width="80px" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
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
                                            <asp:Button ID="Button32" runat="server" CssClass="buttonGreen medium aspNetDisabled" Text="Final Letter Mailed" />
                                        </td>
                                    </tr>
                                    
                                    <tr style="background-color: White;">
                                        <td>
                                            <asp:CheckBox ID="chkSusLaw2" runat="server" /></td>
                                        
                                        <td>CAMTC00201
                                        </td>
                                        <td></td>
                                        <td style="text-align:center;">Jane
                                        </td>
                                        <td style="text-align:center;">Doe
                                        </td>
                                        
                                        <td style="text-align:center;">11/20/2015
                                        </td>
                                       
                                        <td style="text-align: center;" >
                                             <asp:DropDownList ID="DropDownList4" Width="80px" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                
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
                                            <asp:Button ID="Button33" runat="server" CssClass="buttonGreen medium aspNetDisabled" Text="Final Letter Mailed" />
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
                                                            <input type="submit" value="Assign To" id="btnAssignTo5" class="buttonGreen medium">
                                                        </span>
                                                        <asp:DropDownList ID="DropDownList5" runat="server" CssClass="inputTextbox" Style="margin-left: 5px; width: 160px;"
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
                </asp:TabPanel>
                <asp:TabPanel ID="tbpnlAddress" Enabled="true" runat="server">
                    <HeaderTemplate>
                        Suspension based on Declaration
                    </HeaderTemplate>
                    <ContentTemplate>
                        <asp:UpdatePanel ID="upAddress" runat="server">
                            <ContentTemplate>
                                 <div class="gvDivUpr">
                                     <table style="margin-bottom:20px;margin-top:5px;">
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
                                                <asp:CheckBox ID="chkSusDecSelectAll" AutoPostBack="true" OnCheckedChanged="chkSusDecSelectAll_CheckedChanged" runat="server" /></span>
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
                                            <span style="color: white;">Hearing Date</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center;">
                                            <span style="color: white;">Status</span>
                                        </th>
                                        
                                        <th class="aligncenter" scope="col">Action
                                        </th>
                                    </tr>
                                    <tr id="tr2" runat="server">
                                        <td>
                                            <asp:CheckBox ID="chkSusDec1" runat="server" /></td>
                                        <td>CAMTC00123
                                        </td>
                                        <td></td>
                                        <td style="text-align:center;">John
                                        </td>
                                        <td style="text-align:center;">Doe
                                        </td>
                                        <td style="text-align:center;">11/10/2015
                                        </td>
                                       
                                        <td style="text-align: center;">
                                            
                                            <asp:DropDownList ID="DropDownList6" Width="80px" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                            </asp:DropDownList>

                                        </td>
                                        <td style="text-align:center;width:200px;">
                                            <asp:ImageButton ID="ImageButton8" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc9(); return false;" runat="server" />
                                             <div id="AddDocm9" style="border: 1px solid rgb(212, 216, 219);
    margin: 11px auto auto;
    width: 49%;
    float: right;
    display: block;
    z-index: 9;
    position: absolute;
    right: 2px;
    background-color: white; display:none;">
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
            <tr><td colspan="2" style="height:5px;"></td></tr>
            
            <tr>
                <td align="right">
                    <label class="input-label">Document :</label></td>
                <td align="left">
                    <asp:FileUpload ID="FileUpload8" runat="server" />
                    <asp:Button ID="Button14" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                        Text="Upload"  />
                </td>
            </tr>
            <tr>
                <td></td>
                <td align="left">
                    <asp:Button ID="Button15" class="buttonGreen small" runat="server" Text="Save" /></td>
            </tr>
        </table>
    </div>
                                            <asp:Button ID="Button34" runat="server" CssClass="buttonGreen medium aspNetDisabled" Text="Final Letter Mailed" />
                                        </td>
                                    </tr>
                                    
                                    <tr style="background-color: White;">
                                        <td>
                                            <asp:CheckBox ID="chkSusDec2" runat="server" /></td>
                                        
                                        <td>CAMTC00201
                                        </td>
                                        <td></td>
                                        <td style="text-align:center;">Jane
                                        </td>
                                        <td style="text-align:center;">Doe
                                        </td>
                                        
                                        <td style="text-align:center;">11/20/2015
                                        </td>
                                       
                                        <td style="text-align: center;" >
                                             <asp:DropDownList ID="DropDownList7" Width="80px" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                            </asp:DropDownList>

                                        </td>
                                         <td style="text-align:center; width:200px;">
                                             <asp:ImageButton ID="ImageButton9" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" OnClientClick="divAddDoc10(); return false;" runat="server" />
                                             <div id="AddDocm10" style="border: 1px solid rgb(212, 216, 219);
    margin: 11px auto auto;
    width: 49%;
    float: right;
    display: block;
    z-index: 9;
    position: absolute;
    right: 2px;
    background-color: white; display:none;">
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
            <tr><td colspan="2" style="height:5px;"></td></tr>
            
            <tr>
                <td align="right">
                    <label class="input-label">Document :</label></td>
                <td align="left">
                    <asp:FileUpload ID="FileUpload9" runat="server" />
                    <asp:Button ID="Button16" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                        Text="Upload"  />
                </td>
            </tr>
            <tr>
                <td></td>
                <td align="left">
                    <asp:Button ID="Button17" class="buttonGreen small" runat="server" Text="Save" /></td>
            </tr>
        </table>
    </div>
                                            <asp:Button ID="Button35" runat="server" CssClass="buttonGreen medium aspNetDisabled" Text="Final Letter Mailed" />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="applicationform" style="width:100%">

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
                                                            <input type="submit" value="Assign To" id="btnAssignTo6" class="buttonGreen medium">
                                                        </span>
                                                        <asp:DropDownList ID="DropDownList8" runat="server" CssClass="inputTextbox" Style="margin-left: 5px; width: 160px;"
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
                </asp:TabPanel>
                <asp:TabPanel ID="tbpnlEducation" Enabled="true" runat="server">
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
                                            <span style="color: white;">Hearing Date</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center;">
                                            <span style="color: white;">Status</span>
                                        </th>
                                        
                                        <th class="aligncenter" scope="col">Action
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
                                        <td style="text-align:center;"><asp:DropDownList ID="DropDownList9"  Width="80px" runat="server">
                                            <asp:ListItem>Select</asp:ListItem>
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
                                            <asp:Button ID="Button36" runat="server" CssClass="buttonGreen medium aspNetDisabled" Text="Final Letter Mailed" />
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
                                       
                                        <td style="text-align: center;" >
                                             <asp:DropDownList ID="DropDownList10" Width="80px" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
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
                                            <asp:Button ID="Button37" runat="server" CssClass="buttonGreen medium aspNetDisabled" Text="Final Letter Mailed" />
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
                                                            <input type="submit" value="Assign To" id="btnAssignTo7" class="buttonGreen medium">
                                                        </span>
                                                        <asp:DropDownList ID="DropDownList11" runat="server" CssClass="inputTextbox" Style="margin-left: 5px; width: 160px;"
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
                <asp:TabPanel ID="tbpnlAdvRoster" Enabled="true" runat="server">
                    <HeaderTemplate>
                        Denial Discipline
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
                                            <span style="color: white;">Hearing Date</span>
                                        </th>
                                        <th scope="col" style="text-decoration: underline; text-align: center;">
                                            <span style="color: white;">Status</span>
                                        </th>
                                       
                                        <th class="aligncenter" scope="col">Action
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
                                       
                                        <td style="text-align: center;">
                                            
                                            <asp:DropDownList ID="DropDownList12" Width="80px" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
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
                                            <asp:Button ID="Button38" runat="server" CssClass="buttonGreen medium aspNetDisabled" Text="Final Letter Mailed" />
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
                                       
                                        <td style="text-align: center;" >
                                             <asp:DropDownList ID="DropDownList13" Width="80px" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
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
                                            <asp:Button ID="Button39" runat="server" CssClass="buttonGreen medium aspNetDisabled" Text="Final Letter Mailed" />
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
                                                            <input type="submit" value="Assign To" id="btnAssignTo8" class="buttonGreen medium">
                                                        </span>
                                                        <asp:DropDownList ID="DropDownList14" runat="server" CssClass="inputTextbox" Style="margin-left: 5px; width: 160px;"
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
                

            </asp:TabContainer>






        </div>
  </ContentTemplate>
</asp:UpdatePanel>