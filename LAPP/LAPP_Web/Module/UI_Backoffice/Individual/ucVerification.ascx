<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucVerification.ascx.cs" Inherits="Module_UI_Backoffice_Individual_ucVerification" %>
<div class="brdr radius mrgnTp4 pdng2">
    <div style="border: 1px solid #d4d8db; margin-top: 10px;">
        <div class="blockheader" style="margin: 0px 0px -3px auto;">
            <p style="padding-top: 7px;">
                <span>Add Form  </span>
            </p>
        </div>
        <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
            <tr>
                <td align="right">
                <label class="input-label">
                    Moving To :</label>
            </td>
            <td colspan="3">
                <asp:DropDownList ID="ddlMoveTo" CssClass="DropdownList" runat="server">
                    <asp:ListItem Value="-1">Select</asp:ListItem>
                    <asp:ListItem Value="1" Selected="True">SD</asp:ListItem>
                </asp:DropDownList>
            </td>

            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">
                        Form Name :</label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">Form :</label></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="btnUploadLicensee" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                        Text="Upload"  />
                </td>
            </tr>
        </table>
    </div>
    <div style="padding-bottom: 30px;" class="divLicenseInfon divaddnew" id="pnlAddNewButton"
        runat="server">
        <span style="float: right; margin-right: 3px;margin-top: 5px;margin-bottom: 5px;">
            <asp:Button ID="btnAddNew" CssClass="buttonGreen medium" runat="server" Text="Add Row"
                CausesValidation="true"  />
        </span>
    </div>
    <div>
        <table class="index brdr radius mrgnTp4 pdng2 grid" id="gvLicense" style="color: #333333; width: 100%; border-collapse: collapse;" cellpadding="5" cellspacing="0">
            <tbody>
                <tr>
                    <th class="aligncenter" scope="col">Moving To</th>
                    <th class="aligncenter" scope="col">Form Name</th>
                    <th class="aligncenter" scope="col">Date</th>
                    <th class="aligncenter" scope="col">Document Link</th>
                    
                </tr>
                <tr class="bordrbtm gridrow">
                    <td class="aligncenter" style="padding: 5px !important;">NV</td>
                    <td class="aligncenter">Out Of State Verification - NV
                    </td>
                    <td class="aligncenter">11/20/2015 </td>
                    <td class="aligncenter"><a href="#">Document Details</a></td>
                  
                    
                </tr>
                <tr class="bordrbtm gridrow">
                    <td class="aligncenter" style="padding: 5px !important;">AZ</td>
                    <td class="aligncenter">Out Of State Verification - AZ
                    </td>
                    <td class="aligncenter">11/20/2015 </td>
                    <td class="aligncenter"><a href="#">Document Details</a></td>
                  
                    
                </tr>
            </tbody>
        </table>
    </div>
    <div class="buttons iefix-5 inline" runat="server" id="DivbtnHistory">
        <div class="toolBar" style="padding: 4px;">
            <span class="fltlft" style="float:right;">
                <%--<asp:Button ID="btnShowHistory" CssClass="buttonGreen medium" runat="server" Text="Show History"
                    OnClick="btnShowHistory_Click" />
                <asp:LinkButton runat="server" Enabled="false" ToolTip="Previous" CssClass="link-next-prev btn-info btn-sm"
                    ID="lnkPrev"><<</asp:LinkButton>
                <asp:LinkButton runat="server" Enabled="false" ToolTip="Next" CssClass="link-next-prev btn-info btn-sm"
                    ID="lnkNext">>></asp:LinkButton>
                <asp:Button ID="btnShowCurrent" Enabled="false" CssClass="buttonGreen medium" runat="server"
                    Text="Show Current" OnClick="btnShowCurrent_Click" />
            </span><span class="fltrt">--%>
                <asp:Button ID="btnAddressUpdate" ValidationGroup="VGAddress" CssClass="buttonGreen medium"
                    runat="server" Text="Save" CausesValidation="true" />
                <asp:LinkButton ID="lnkAddressCancel" CssClass="secondary medium bottom" runat="server">Cancel</asp:LinkButton></span>
        </div>
    </div>

</div>
