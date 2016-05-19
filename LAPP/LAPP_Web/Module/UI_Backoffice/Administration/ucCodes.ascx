<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucCodes.ascx.cs" Inherits="Module_Administration_ucCodes" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="ucCodePopup.ascx" TagName="ucCodePopup" TagPrefix="uc2" %>
<%@ Register Src="ucCodeType.ascx" TagName="ucCodeType" TagPrefix="uc3" %>
<%@ Register Src="../PagerControl.ascx" TagName="PagerControl" TagPrefix="uc4" %>
<link href="../../App_Themes/Theme1/css/NewButton.css" rel="stylesheet" type="text/css" />
<%--<%@ Register Namespace="ASPnetControls" Assembly="PagerWebControl" TagPrefix="cc" %>--%>
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
<%--<script>
    $(function () {
        gridEvent();
    });
    function gridEvent() {
        $('#gvCodeType tr').each(function () {
            var lnk = $(this).find('#lnkSelect');
            if (typeof lnk !== undefined) {
                //$(this).attr('onclick', $(lnk).attr('href') + ';ShowLoader();');
                $(this).css('cursor', 'pointer');
                $(this).find("td:not(.col-action)").attr('onclick', $(lnk).attr('href') + ';ShowLoader();');
            }
        });
    }
</script>--%>
<style>
    .selected {
        background-color: #A4D2EE !important;
    }
</style>
<div class="clearb">
</div>
<asp:UpdatePanel ID="upPanel" runat="server">
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="btnSearchCancel" />
        <asp:PostBackTrigger ControlID="lnkbtnCancel" />
    </Triggers>
    <ContentTemplate>
        <div class="main boardinfo">
            <br />
            <div class="clearb">
            </div>
            <div class="clear">
            </div>
            <div class="clearb">
            </div>
            <!------------Search panel------------->
            <br />
            <div class="userHide1 searchBoxhidden">
                <div class="clear">
                    <div class="close" onclick="javascript:hideDivSlide('.userHide1'); showDivSlide('.searchBbutton');">
                    </div>
                </div>
                <fieldset class="PermitSearch" style="position: relative">
                    <table class="SearchTable" align="center">
                        <tbody>
                            <tr>
                                <td>
                                    <label>
                                        Code / Description :</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtKeyword" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <label>Code Type :</label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlCodetype" runat="server" Style="width: 170px !important;">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div style="width: 90%; margin: 0 auto;">
                        <span class="fltrt">
                            <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search"
                                OnClick="btnSearch_Click" />
                            <asp:LinkButton ID="btnSearchCancel" CssClass="secondary small" runat="server" Text="Cancel"
                                OnClick="btnSearchCancel_Click"></asp:LinkButton></span>
                    </div>
                </fieldset>
            </div>
            <div class="clearb">
            </div>
            <!----------Search panel end--------------->
            <!--- pop up codes ---->
            <div class="outty sample_data_popup popCodes" style="display: none">
                <div class="outty_shadow">
                </div>
                <%--   <uc2:ucCodePopup ID="ucCodePopup1" runat="server" />--%>
            </div>
            <div class="outty sample_data_popup popCodesTy" style="display: none">
                <div class="outty_shadow">
                </div>
                <%--<uc3:ucCodeType ID="ucCodeType1" runat="server" />--%>
            </div>
            <!--- pop up codes end---->
            <div class="clearb">
            </div>
            <div class="span-180 span-13 home-sidebar">
                <div class="rounded-container peel-shadows">
                    <div class="content clearfix">
                        <div class="clear">
                            <h4 style="margin: 0px 0px; float: left">Code Type
                            </h4>
                            <asp:Button Style="float: right" ID="btnAddCodeType" runat="server" CssClass="buttonGreen small"
                                Text="Add Code Type" OnClick="btnAddCodeType_Click" />
                        </div>
                        <dl id="recent-activity" class="activity-list clear">
                            <div id="Div1" class="activity-list">
                                <div id="list" class="sample_data_container">
                                    <div>
                                        <asp:GridView ID="gvCodeType" runat="server" ClientIDMode="Static" AutoGenerateColumns="False"
                                            CssClass="index" Width="100%" CellPadding="4" PagerStyle-CssClass="pager_style"
                                            OnPageIndexChanging="gvCodeType_PageIndexChanging" PageSize="10" AllowPaging="true"
                                            PagerSettings-Mode="NumericFirstLast" ForeColor="#333333" GridLines="None" OnRowCommand="gvCodeType_RowCommand"
                                            OnRowDataBound="gvCodeType_RowDataBound" OnSelectedIndexChanged="gvCodeType_SelectedIndexChanged"
                                            OnSelectedIndexChanging="gvCodeType_SelectedIndexChanging">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <HeaderTemplate>
                                                        Code Type
                                                        <%--<input type="checkbox" id="chkMain" onchange='javascript:SelectheaderCheckboxes(this,"gvCodeType");'
                                                                                runat="server" />--%>
                                                    </HeaderTemplate>
                                                    <HeaderStyle CssClass="column_checkbox" />
                                                    <ItemStyle CssClass="column_checkbox" />
                                                    <EditItemTemplate>
                                                        <fieldset>
                                                            <table style="width: 100%" class="tblTextAlignRight">
                                                                <tr>
                                                                    <td class="alignLeft">
                                                                        <label class="required" style="float: left; padding-left: 0px">
                                                                            Code Types :
                                                                        </label>
                                                                        <asp:TextBox ID="txtCodeTy" runat="server" CssClass="inputTextBox"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvCodeTy" runat="server" ErrorMessage="Please enter code type"
                                                                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtCodeTy"
                                                                            ValidationGroup="VGCodeType"></asp:RequiredFieldValidator>
                                                                        <asp:ValidatorCalloutExtender ID="vceCode" runat="server" TargetControlID="rfvCodeTy"
                                                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                                                        </asp:ValidatorCalloutExtender>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="alignLeft">
                                                                        <label style="float: left; padding-left: 0px">
                                                                            Descriptions  :</label>
                                                                        <div style="text-align: left">
                                                                            <asp:TextBox ID="txtDescriptions" TextMode="MultiLine" Rows="4" runat="server" Style="width: 80%"></asp:TextBox>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <div class="toolBar clear" style="">
                                                                <span class="fltrt">
                                                                    <asp:Button ID="btnSave" CssClass="buttonGreen medium" runat="server" Text="Update"
                                                                        ValidationGroup="VGCodeType" OnClick="btnSave_Click" />
                                                                    <asp:Button ID="btnCancel" runat="server" CssClass="secondary medium " Text="Cancel"
                                                                        OnClick="btnCancel_Click" />
                                                                </span>
                                                            </div>
                                                        </fieldset>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <%# Eval("Code_Type_CD")%>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField>
                                                    <HeaderStyle HorizontalAlign="Center" />
                                                    <HeaderTemplate>
                                                    </HeaderTemplate>
                                                    <ItemStyle CssClass="col-action" />
                                                    <ItemTemplate>
                                                        <asp:HiddenField ID="hfCodeTypeCd" Value='<%# Eval("Code_Type_CD") %>' runat="server" />
                                                        <asp:HiddenField ID="hfID" Value='<%# Eval("Code_Type_Id") %>' runat="server" />
                                                        <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" runat="server" ToolTip="Edit"
                                                            CommandArgument='<%# Eval("Code_Type_Id") %>' RowIndex='<%# Container.DisplayIndex %>'
                                                            ImageUrl="~/App_Themes/Theme1/images/edit.png" OnClick="imgBtnEdit_Click" />
                                                        <asp:ImageButton ID="imgBtnDelete" CommandArgument='<%# Eval("Code_Type_Id") %>'
                                                            CssClass="imgDelete" runat="server" ToolTip="Delete" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                                            OnClick="imgBtnDeleteCodeTy_Click" OnClientClick="javascript:return confirm('Are you sure you want to delete?');" />
                                                        <asp:Button ID="btnSelect" runat="server" Style="display: block; float: right;" CssClass="btn btn-xs btn-primary"
                                                            Text="Select" OnClick="btnSelect_Click" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <HeaderStyle BackColor="#0D83DD" ForeColor="White" BorderStyle="None" Font-Bold="True" />
                                            <PagerSettings Mode="NumericFirstLast" />
                                            <PagerStyle CssClass="pager_style" />
                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                        </asp:GridView>
                                        <%--<cc:PagerControl ID="pager2" runat="server" OnCommand="pager_Command" GenerateGoToSection="False"
                                                                GenerateHiddenHyperlinks="true" GenerateSmartShortCuts="False" GeneratePagerInfoSection="True"
                                                                GenerateToolTips="True" />--%>
                                        <uc4:PagerControl ID="PagerControl1" Visible="false" runat="server" />
                                    </div>
                                    <br />
                                </div>
                            </div>
                        </dl>
                    </div>
                </div>
            </div>
            <div class="primary-column span-24" style="width: 730px !important;">
                <div class="gridBg">
                    <div class="primary-column ">
                        <div id="dashboard-panels ">
                            <div class="relative-box ">
                                <div class="dynamic-panels ui-sortable" style="">
                                    <div id="Cashflow" class="dashboard-panel clearfix rounded">
                                        <div class="">
                                            <div class="clear">
                                                <div class="action-bar">
                                                    <div class="actions button-set">
                                                        <span class="arrow"></span>
                                                        <ul>
                                                            <li>
                                                                <asp:LinkButton ID="lnkArchive" CssClass="button small gray narrow pill-left" PostBackUrl="javascript:void(0)"
                                                                    runat="server">Archive</asp:LinkButton>
                                                                <asp:LinkButton ID="lnkDelete" CssClass="button small gray narrow pill-right" PostBackUrl="javascript:void(0)"
                                                                    runat="server">Delete</asp:LinkButton>
                                                            </li>
                                                        </ul>
                                                        <div class="fltrt rightIcon">
                                                            <a title="find" href="javascript:void()" onclick="javascript:showDivSlide('.userHide1');hideDivSlide('.searchBbutton');">
                                                                <img src="../../App_Themes/Theme1/images/search_icon.png" /></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="clear">
                                                    <div id="divCodeType" visible="false" runat="server" style="width: 70%; border: 2px solid #eee; margin: 20px auto 0px;">
                                                        <uc3:ucCodeType ID="ucCodeType1" runat="server" />
                                                        <div class="toolBar clear" style="">
                                                            <span class="fltrt">
                                                                <asp:Button ID="btnSaveCodeType" CssClass="buttonGreen medium" ValidationGroup="VGCodesTy"
                                                                    runat="server" Text="Save" OnClick="btnSaveCodeType_Click" />
                                                                <%--  <input type="button" class="secondary medium BtnPopup" value="Cancel" onclick="javascript:hideDiv('.popCodesTy');"
                                                                    name="cancel" />--%>
                                                                <asp:Button ID="btnCancelCodeType" CssClass="secondary medium" runat="server" Text="Cancel"
                                                                    OnClick="btnCancelCodeType_Click" />
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div style="height: 30px; width: 100%">
                                                    <span class="fltrt" style="margin-right: 8px; margin-top: 4px;">
                                                        <%--<button class="button medium save green inline" type="button" name="form_action"
                                                            onclick="showDiv('.popCodes');" value="Codes" id="Button1">
                                                            <span style="line-height: 27px !important;">Add New Code</span>
                                                        </button>--%>
                                                        <asp:Button ID="btnNewCode" CssClass="buttonGreen small" Text="Add New Code" runat="server"
                                                            OnClick="btnNewCode_Click" />
                                                    </span>
                                                </div>
                                                <div class="clear">
                                                    <div id="divCodes" visible="false" runat="server" style="width: 80%; border: 2px solid #eee; margin: 0 auto;">
                                                        <uc2:ucCodePopup ID="ucCodePopup1" runat="server" />
                                                        <div class="toolBar clear" style="">
                                                            <span class="fltrt">
                                                                <asp:Button ID="btnSaveCodes" CssClass="buttonGreen medium" ValidationGroup="VGCode"
                                                                    runat="server" Text="Save" OnClick="btnSaveCodes_Click" />
                                                                <asp:Button ID="btnCancelCodes" CssClass="secondary medium" runat="server" Text="Cancel"
                                                                    OnClick="btnCancelCodes_Click" />
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="clear width95p">
                                                    <div id="DivAlertMessage_Second" style="display: none">
                                                        <div style="display: none">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="brdr radius pdng5">
                                                    <asp:GridView ID="gvCode" runat="server" ClientIDMode="Static" AutoGenerateColumns="False"
                                                        CssClass="index" Width="100%" PagerStyle-CssClass="pager_style" OnPageIndexChanging="gvCode_PageIndexChanging"
                                                        CellPadding="4" PageSize="10" AllowPaging="true" ForeColor="#333333" GridLines="None">
                                                        <Columns>
                                                            <asp:TemplateField>
                                                                <HeaderTemplate>
                                                                    <input type="checkbox" id="chkMain" onchange='javascript:SelectheaderCheckboxes(this,"gvCode");'
                                                                        runat="server" />
                                                                </HeaderTemplate>
                                                                <HeaderStyle CssClass="column_checkbox" />
                                                                <ItemStyle CssClass="column_checkbox" />
                                                                <EditItemTemplate>
                                                                    <div style="overflow: hidden;">
                                                                        <fieldset style="width: 96%">
                                                                            <table style="margin: 0 auto">
                                                                                <tr>
                                                                                    <td>
                                                                                        <label class="input-label required">
                                                                                            Code Name :</label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="txtCodeName" runat="server" Style="width: 200px;"></asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="rfvCodeName" ValidationGroup="VGcode" ControlToValidate="txtCodeName"
                                                                                            Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                                                                            ErrorMessage="Please enter code name"></asp:RequiredFieldValidator>
                                                                                        <asp:ValidatorCalloutExtender ID="vceCodeName" runat="server" TargetControlID="rfvCodeTy"
                                                                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                                                                        </asp:ValidatorCalloutExtender>
                                                                                    </td>
                                                                                    <td>
                                                                                        <label class="input-label required">
                                                                                            Code Type :</label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:DropDownList ID="ddlCdeTy" runat="server" class="fltrt" Style="width: 208px;">
                                                                                        </asp:DropDownList>
                                                                                        <asp:RequiredFieldValidator ID="rfvCodeTy" InitialValue="-1" ValidationGroup="VGcode"
                                                                                            ControlToValidate="ddlCdeTy" Text="*" ForeColor="Red" Display="None" SetFocusOnError="True"
                                                                                            runat="server" ErrorMessage="Please select code type"></asp:RequiredFieldValidator>
                                                                                        <asp:ValidatorCalloutExtender ID="vceCodeTy" runat="server" TargetControlID="rfvCodeTy"
                                                                                            PopupPosition="BottomLeft" HighlightCssClass="error">
                                                                                        </asp:ValidatorCalloutExtender>
                                                                                    </td>
                                                                                    <td></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <label class="input-label">
                                                                                            Description :</label>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" class="fltrt"
                                                                                            Style="width: 200px; height: 65px;"></asp:TextBox>
                                                                                    </td>
                                                                                    <td>
                                                                                        <label class="input-label">
                                                                                            Display Order :</label>
                                                                                    </td>
                                                                                    <td valign="middle">
                                                                                        <asp:TextBox ID="txtDisplayOrder" runat="server" Style="width: 200px;" class="fltrt"
                                                                                            AutoCompleteType="None"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="text-align: right">
                                                                                        <label class="input-label">
                                                                                            Default Display :</label>
                                                                                    </td>
                                                                                    <td style="text-align: left">
                                                                                        <asp:CheckBox ID="chkDefaultDisplay" runat="server" />
                                                                                    </td>
                                                                                    <td colspan="2"></td>
                                                                                </tr>
                                                                            </table>
                                                                            <div class="toolBar clear" style="">
                                                                                <span class="fltrt">
                                                                                    <asp:Button ID="btnSave" CssClass="buttonGreen medium" runat="server" Text="Save"
                                                                                        ValidationGroup="VGcode" OnClick="btnSaveCode_Click" />
                                                                                    <asp:Button ID="btnCancelCode" runat="server" CssClass="secondary medium " Text="Cancel"
                                                                                        OnClick="btnCancelCode_Click" />
                                                                                </span>
                                                                            </div>
                                                                        </fieldset>
                                                                    </div>
                                                                </EditItemTemplate>
                                                                <ItemTemplate>
                                                                    <asp:CheckBox ID="chkSelect" runat="server" />
                                                                    <asp:HiddenField ID="hfID" Value='<%# Eval("Code_ID") %>' runat="server" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Code Name">
                                                                <ItemStyle />
                                                                <ItemTemplate>
                                                                    <%# Eval("Code_Name")%>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Code Type">
                                                                <ItemStyle />
                                                                <ItemTemplate>
                                                                    <%# Eval("CodeType")%>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Description">
                                                                <ItemStyle />
                                                                <ItemTemplate>
                                                                    <%# Eval("Code_Description")%>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField ItemStyle-Width="60px" HeaderStyle-CssClass="aligncenter">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                <HeaderTemplate>
                                                                    Action
                                                                </HeaderTemplate>
                                                                <ItemStyle CssClass="col-action" />
                                                                <ItemTemplate>
                                                                    <asp:ImageButton ID="imgbtnEdit1" CssClass="imgDelete" runat="server" ToolTip="Edit"
                                                                        CommandArgument='<%# Eval("Code_ID") %>' RowIndex='<%# Container.DisplayIndex %>'
                                                                        ImageUrl="~/App_Themes/Theme1/images/edit.png" OnClick="imgBtnEdit1_Click" />
                                                                    <asp:ImageButton ID="imgBtnDelete" CommandArgument='<%# Eval("Code_ID") %>' CssClass="imgDelete"
                                                                        runat="server" ToolTip="Delete" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                                                        OnClick="imgBtnDelete_Click" OnClientClick="javascript:return confirm('Are you sure you want to delete?');" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                        <HeaderStyle BackColor="#0D83DD" ForeColor="White" BorderStyle="None" Font-Bold="True" />
                                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                    </asp:GridView>
                                                    <uc4:PagerControl ID="PagerControl2" runat="server" />
                                                    <div class="bookcase  form-stacked shelf" style="display: none">
                                                        <div class="clear">
                                                        </div>
                                                        <table style="width: 100%" class="tblTextAlignRight">
                                                            <tr>
                                                                <td class="alignRight">
                                                                    <label class="input-label required">
                                                                        Code Types :
                                                                    </label>
                                                                </td>
                                                                <td class="alignLeft">
                                                                    <asp:DropDownList ID="ddlCodeTy" runat="server">
                                                                        <asp:ListItem Selected="True" Text="Select" Value="-1"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <asp:RequiredFieldValidator ID="rfvCodeTy" InitialValue="-1" runat="server" ErrorMessage="Please select code type"
                                                                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="ddlCodeTy"
                                                                        ValidationGroup="VGCodes"></asp:RequiredFieldValidator>
                                                                    <asp:ValidatorCalloutExtender ID="vceCode" runat="server" TargetControlID="rfvCodeTy"
                                                                        PopupPosition="BottomLeft" HighlightCssClass="error">
                                                                    </asp:ValidatorCalloutExtender>
                                                                </td>
                                                                <td class="alignRight">
                                                                    <label class="input-label required">
                                                                        Codes :
                                                                    </label>
                                                                </td>
                                                                <td class="alignLeft">
                                                                    <asp:DropDownList ID="ddlCode" runat="server">
                                                                        <asp:ListItem Selected="True" Text="Select" Value="-1"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <asp:RequiredFieldValidator ID="rfvCode" InitialValue="-1" runat="server" ErrorMessage="Please select code"
                                                                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="ddlCode"
                                                                        ValidationGroup="VGCodes"></asp:RequiredFieldValidator>
                                                                    <asp:ValidatorCalloutExtender ID="vceCode1" runat="server" TargetControlID="rfvCode"
                                                                        PopupPosition="BottomLeft" HighlightCssClass="error">
                                                                    </asp:ValidatorCalloutExtender>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="alignRight">
                                                                    <label class="input-label required">
                                                                        Display Order :
                                                                    </label>
                                                                </td>
                                                                <td class="alignLeft">
                                                                    <asp:TextBox ID="txtDisplayOrder" Style="width: 137px" runat="server"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvDisplayOrd" runat="server" ErrorMessage="Please enter display order"
                                                                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtDisplayOrder"
                                                                        ValidationGroup="VGCodes"></asp:RequiredFieldValidator>
                                                                    <asp:ValidatorCalloutExtender ID="vceDispOrd" runat="server" TargetControlID="rfvDisplayOrd"
                                                                        PopupPosition="BottomLeft" HighlightCssClass="error">
                                                                    </asp:ValidatorCalloutExtender>
                                                                </td>
                                                                <td class="alignRight">
                                                                    <label class="input-label required">
                                                                        Reference Key to link :
                                                                    </label>
                                                                </td>
                                                                <td class="alignLeft">
                                                                    <asp:DropDownList ID="ddlReferenceKeytoLink" runat="server">
                                                                        <asp:ListItem Selected="True" Text="Select" Value="-1"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <asp:RequiredFieldValidator ID="rfvRefKe" InitialValue="-1" runat="server" ErrorMessage="Please select reference key to link"
                                                                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="ddlReferenceKeytoLink"
                                                                        ValidationGroup="VGCodes"></asp:RequiredFieldValidator>
                                                                    <asp:ValidatorCalloutExtender ID="vceRef" runat="server" TargetControlID="rfvRefKe"
                                                                        PopupPosition="BottomLeft" HighlightCssClass="error">
                                                                    </asp:ValidatorCalloutExtender>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="alignRight">
                                                                    <label class="input-label required">
                                                                        Reference Id to link :
                                                                    </label>
                                                                </td>
                                                                <td class="alignLeft">
                                                                    <asp:DropDownList ID="ddlReferenceIDToLINK" runat="server">
                                                                        <asp:ListItem Selected="True" Text="Select" Value="-1"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <asp:RequiredFieldValidator ID="rfvRefID" InitialValue="-1" runat="server" ErrorMessage="Please select reference ID to link"
                                                                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="ddlReferenceIDToLINK"
                                                                        ValidationGroup="VGCodes"></asp:RequiredFieldValidator>
                                                                    <asp:ValidatorCalloutExtender ID="vceRefID" runat="server" TargetControlID="rfvRefID"
                                                                        PopupPosition="BottomLeft" HighlightCssClass="error">
                                                                    </asp:ValidatorCalloutExtender>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="alignRight">
                                                                    <label style="display: inline-block;">
                                                                        Display this as Default :
                                                                    </label>
                                                                </td>
                                                                <td class="alignLeft">
                                                                    <asp:CheckBox ID="chkDisplay" runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="alignRight">
                                                                    <label class="input-label">
                                                                        Descriptions :</label>
                                                                </td>
                                                                <td colspan="2" class="alignLeft">
                                                                    <div style="text-align: left">
                                                                        <asp:TextBox ID="txtDescriptions" TextMode="MultiLine" Rows="4" runat="server" Style="width: 80%"></asp:TextBox>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="toolBar" style="width: 98%; padding: 5px;">
                                    <div style="float: left;">
                                        <span id="item-msg" style="line-height: 28px;">You are saving Codes </span>
                                    </div>
                                    <div style="float: right;" class="buttons iefix-5 inline">
                                        <asp:Button ID="btnSave" ValidationGroup="VGCodes" CssClass="buttonGreen medium"
                                            runat="server" Text="Save" />
                                        <asp:LinkButton ID="lnkbtnCancel" CssClass="secondary medium bottom" runat="server"
                                            OnClick="lnkbtnCancel_Click" Style="top: 0px;">Cancel</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearb">
                </div>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
<div class="clear">
</div>
