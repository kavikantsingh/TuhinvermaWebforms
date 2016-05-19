<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucBaordInfoRenewalFees.ascx.cs" Inherits="Module_Administration_ucBaordInfoRenewalFees" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%--<asp:UpdatePanel ID="upFee" runat="server">
    <ContentTemplate>--%>
<h4 style="padding: 0px 3px">Member Fees
    <asp:LinkButton CssClass="buttonGreen small fltrt" Style="font-size: 12px" Text="New Fee"
        ID="lnkAddFee" runat="server" OnClick="lnkAddFee_Click" CausesValidation="false"></asp:LinkButton></h4>
<asp:Panel ID="pnlSave" runat="server">
    <fieldset style="width: 95%; margin: 10px auto; border: 5px solid #EBECEC; padding: 0px;">
        <table class="tblTextAlignRight">
            <tr>
                <td align="right">
                    <label class="input-label required">
                        Fee Name :</label>
                </td>
                <td>
                    <asp:TextBox ID="txtFeeName" Style="width: 80px" runat="server" MaxLength="200"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVTxtFeeName" runat="server" CssClass="error" Display="None"
                        ControlToValidate="txtFeeName" ErrorMessage="Please enter fee name" ForeColor="Red"
                        SetFocusOnError="true" Text="*" ValidationGroup="VGFee"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="VCETxtFeeName" runat="server" HighlightCssClass="error"
                        PopupPosition="BottomLeft" TargetControlID="RFVTxtFeeName">
                    </asp:ValidatorCalloutExtender>
                </td>
                <td align="right">
                    <label class="input-label required">
                        Fees :</label>
                </td>
                <td>
                    <asp:TextBox ID="txtFees" Style="width: 80px" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVFees" runat="server" ErrorMessage="Please enter fees"
                        Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtFees"
                        ValidationGroup="VGFee"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="VCEFees" runat="server" TargetControlID="RFVFees"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                    <asp:RegularExpressionValidator ID="RFVFee" runat="server" ControlToValidate="txtFees"
                        ValidationExpression="\d+(\.\d{1,2})?" ErrorMessage="Please enter valid fees in integer"
                        ValidationGroup="VGFee" Text="*" ForeColor="Red" Display="None"></asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="VCEFee" runat="server" TargetControlID="RFVFee"
                        PopupPosition="BottomLeft" HighlightCssClass="error">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label required">
                        Effective Date :</label>
                </td>
                <td>
                    <asp:TextBox ID="txtEffectiveDate" Style="width: 80px" placeholder="MM/DD/YYYY" CssClass="calender" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVTxtEffectiveDate" runat="server" ControlToValidate="txtEffectiveDate"
                        Display="None" CssClass="error" ErrorMessage="Date should be in MM/DD/YYYY format"
                        ForeColor="Red" SetFocusOnError="true" Text="*" ValidationGroup="VGFee"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="VCETxtEffectivedate" HighlightCssClass="error"
                        runat="server" PopupPosition="BottomLeft" TargetControlID="RFVTxtEffectiveDate">
                    </asp:ValidatorCalloutExtender>
                    <asp:RegularExpressionValidator ID="RFVxEffectiveDate" runat="server" CssClass="error"
                        ControlToValidate="txtEffectiveDate" Display="None" Text="*" SetFocusOnError="true"
                        ForeColor="Red" ErrorMessage="Date should be in MM/DD/YYYY format" ValidationGroup="VGFee"
                        ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"></asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="VCEEffectiveDate" runat="server" HighlightCssClass="error"
                        PopupPosition="BottomLeft" TargetControlID="RFVxEffectiveDate">
                    </asp:ValidatorCalloutExtender>
                    <%--<asp:MaskedEditExtender ID="MaskedEditExtender1" TargetControlID="txtEffectiveDate"
                        Mask="MM/DD/YYYY" runat="server">
                    </asp:MaskedEditExtender>--%>
                </td>
                <td align="right">
                    <label class="input-label required">
                        End Date :</label>
                </td>
                <td>
                    <asp:TextBox ID="txtEndDate" Style="width: 80px" placeholder="MM/DD/YYYY" CssClass="calender" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfcTxtEffectiveDate" runat="server" ControlToValidate="txtEndDate"
                        Display="None" ErrorMessage="Date should be in MM/DD/YYYY format" CssClass="error"
                        ForeColor="Red" SetFocusOnError="true" Text="*" ValidationGroup="VGFee"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="VCETTxtEndDate" runat="server" HighlightCssClass="error"
                        PopupPosition="BottomLeft" TargetControlID="rfcTxtEffectiveDate">
                    </asp:ValidatorCalloutExtender>
                    <asp:RegularExpressionValidator ID="RFVTxtEndDate" runat="server" ControlToValidate="txtEndDate"
                        CssClass="error" Display="None" ErrorMessage="Date should be in MM/DD/YYYY format"
                        ForeColor="Red" ValidationGroup="VGFee" SetFocusOnError="true" Text="*" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"></asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="VCEtextEndDate" runat="server" HighlightCssClass="error"
                        PopupPosition="BottomLeft" TargetControlID="RFVTxtEndDate">
                    </asp:ValidatorCalloutExtender>
                    <%-- <asp:MaskedEditExtender ID="MaskedEditExtender" TargetControlID="txtEndDate" Mask="MM/DD/YYYY"
                        runat="server">
                    </asp:MaskedEditExtender>--%>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">
                        Description :</label>
                </td>
                <td colspan="3" align="left">
                    <asp:TextBox ID="txtDescription" Style="width: 97%" TextMode="MultiLine" Rows="2"
                        MaxLength="200" runat="server"></asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr>
                <td colspan="2" align="left">
                    <b></b>
                </td>
                <td align="right">
                    <asp:Button ID="btnSave" ValidationGroup="VGFee" Text="Save" Style="float: right;"
                        CssClass="buttonGreen small" runat="server" OnClick="btnSave_Click" />
                </td>
                <td align="right">
                    <asp:LinkButton ID="btnCancel" Text="Cancel" CssClass="secondary small" runat="server"
                        OnClick="btnCancel_Click" />
                </td>
            </tr>
        </table>
        <%--<table style="text-align: left">
                <tr>
                <th>
                   </th> 
                    <th>
                       
                    </th>
                    <th>
                       
                    </th>
                    <th>
                       
                    </th>
                </tr>
                <tr>
                    <td>
                       
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                       
                    </td>
                </tr>
              
            </table>--%>
    </fieldset>
</asp:Panel>
<br />
<asp:GridView ID="gvRenewalFees" runat="server" AutoGenerateColumns="False" CssClass="index grid"
    Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
    <Columns>
        <asp:TemplateField HeaderText="Fee Name">
            <EditItemTemplate>
                <asp:TextBox ID="txtFeeName" Style="width: 70px" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVTxtFeeNamGrid" runat="server" ErrorMessage="Please enter fee name"
                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtFeeName"
                    ValidationGroup="VGFeeGrid"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="VCETxtFeeNameGid" runat="server" TargetControlID="RFVTxtFeeNamGrid"
                    PopupPosition="TopLeft" HighlightCssClass="error" CssClass="hidden">
                </asp:ValidatorCalloutExtender>
            </EditItemTemplate>
            <ItemStyle Width="92px" HorizontalAlign="Right" />
            <HeaderStyle HorizontalAlign="Right" />
            <ItemTemplate>
                <%# Eval("Fee_Name")%>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Fees">
            <EditItemTemplate>
                <asp:TextBox ID="txtFees" Style="width: 50px" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVFees" runat="server" ErrorMessage="Please enter fees"
                    Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" ControlToValidate="txtFees"
                    ValidationGroup="VGFeeGrid"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="VCEFees" runat="server" TargetControlID="RFVFees"
                    PopupPosition="TopLeft" HighlightCssClass="error" CssClass="hidden">
                </asp:ValidatorCalloutExtender>
                <asp:RegularExpressionValidator ID="RFVFee" runat="server" ControlToValidate="txtFees"
                    ValidationExpression="\d+(\.\d{1,2})?" ErrorMessage="Please enter valid fees"
                    ValidationGroup="VGFeeGrid" Text="*" ForeColor="Red" Display="None"></asp:RegularExpressionValidator>
                <asp:ValidatorCalloutExtender CssClass="hidden" ID="VCEFee" runat="server" TargetControlID="RFVFee"
                    PopupPosition="TopLeft" HighlightCssClass="error">
                </asp:ValidatorCalloutExtender>
            </EditItemTemplate>
            <ItemStyle Width="69px" HorizontalAlign="Right" />
            <ItemTemplate>
                <%# String.Format("{0:C}", Eval("Fee_Amount"))%>
            </ItemTemplate>
        </asp:TemplateField>
        <%--<asp:TemplateField HeaderText="Effective Date">
            <EditItemTemplate>
                <asp:TextBox ID="txtEffectiveDate" Style="width: 60px" CssClass="calender" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVTxtEffectiveDateGrid" runat="server" ControlToValidate="txtEffectiveDate"
                    Display="None" CssClass="error" ErrorMessage="Date should be in MM/DD/YYYY format"
                    ForeColor="Red" SetFocusOnError="true" Text="*" ValidationGroup="VGFeeGrid"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="VCEtxtEffectiveDate" runat="server" HighlightCssClass="error"
                    PopupPosition="TopLeft" TargetControlID="RFVTxtEffectiveDateGrid" CssClass="hidden">
                </asp:ValidatorCalloutExtender>
                <asp:RegularExpressionValidator ID="RFVxEffectiveDateGrid" runat="server" CssClass="error"
                    ControlToValidate="txtEffectiveDate" Display="None" Text="*" SetFocusOnError="true"
                    ForeColor="Red" ErrorMessage="Date should be in MM/DD/YYYY format" ValidationGroup="VGFeeGrid"
                    ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"></asp:RegularExpressionValidator>
                <asp:ValidatorCalloutExtender ID="VCEEffectiveDateGrid" runat="server" HighlightCssClass="error"
                    PopupPosition="TopLeft" TargetControlID="RFVxEffectiveDateGrid" CssClass="hidden">
                </asp:ValidatorCalloutExtender>
              
            </EditItemTemplate>
            <ItemStyle Width="92px" />
            <ItemTemplate>
                <%# Convert.ToDateTime(Eval("Effective_Date")).ToShortDateString()%>
            </ItemTemplate>
        </asp:TemplateField>--%>
        <%--<asp:TemplateField HeaderText="End Date">
            <EditItemTemplate>
                <asp:TextBox ID="txtEndDate" Style="width: 60px" CssClass="calender" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfcTxtEffectiveDateGrid" runat="server" ControlToValidate="txtEndDate"
                    Display="None" ErrorMessage="Date should be in MM/DD/YYYY format" CssClass="error"
                    ForeColor="Red" SetFocusOnError="true" Text="*" ValidationGroup="VGFeeGrid"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="VCETTxtEndDateGid" runat="server" HighlightCssClass="error"
                    PopupPosition="TopLeft" TargetControlID="rfcTxtEffectiveDateGrid" CssClass="hidden">
                </asp:ValidatorCalloutExtender>
                <asp:RegularExpressionValidator ID="RFVTxtEndDateGrid" runat="server" ControlToValidate="txtEndDate"
                    CssClass="error" Display="None" ErrorMessage="Date should be in MM/DD/YYYY format"
                    ForeColor="Red" ValidationGroup="VGFeeGrid" SetFocusOnError="true" Text="*" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"></asp:RegularExpressionValidator>
                <asp:ValidatorCalloutExtender ID="VCEtextEndDateGrid" runat="server" HighlightCssClass="error"
                    PopupPosition="TopLeft" TargetControlID="RFVTxtEndDateGrid" CssClass="hidden">
                </asp:ValidatorCalloutExtender>
              
            </EditItemTemplate>
            <ItemTemplate>
                <itemstyle width="80px" />
                <%# Convert.ToDateTime(Eval("End_Date")).ToShortDateString()%>
            </ItemTemplate>
        </asp:TemplateField>--%>
        <asp:TemplateField HeaderText="">
            <ItemStyle VerticalAlign="Middle" Width="46px" HorizontalAlign="Center" />
            <EditItemTemplate>
                <asp:ImageButton ID="imgbtnSave" ValidationGroup="VGFeeGrid" CssClass="imgSave" runat="server"
                    ToolTip="Save" CommandArgument='<%# Eval("Fee_ID") %>' RowIndex='<%# Container.DisplayIndex %>'
                    ImageUrl="~/App_Themes/Theme1/images/save.png" OnClick="imgBtnSave_Click" />
                <asp:ImageButton ID="imgBtnCancel" runat="server" ToolTip="Cancel" ImageUrl="~/App_Themes/Theme1/images/cancel.png"
                    OnClick="imgBtnCancel_Click" />
            </EditItemTemplate>
            <ItemTemplate>
                <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" runat="server" ToolTip="Edit"
                    CommandArgument='<%# Eval("Fee_ID") %>' RowIndex='<%# Container.DisplayIndex %>'
                    ImageUrl="~/App_Themes/Theme1/images/edit.png" OnClick="imgBtnEdit_Click" />
                <%--<asp:ImageButton ID="imgBtnDelete" CommandArgument='<%# Eval("Fee_ID") %>' CssClass="imgDelete"
                            runat="server" ToolTip="Delete" ImageUrl="~/App_Themes/Theme1/images/delete.png"
                            OnClick="imgBtnDelete_Click" OnClientClick="javascript:return confirm('Are you sure you want to delete?');" />--%>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <HeaderStyle BackColor="#0D83DD" ForeColor="White" Height="25" BorderStyle="None"
        Font-Bold="True" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<%--  </ContentTemplate>
</asp:UpdatePanel>--%>
