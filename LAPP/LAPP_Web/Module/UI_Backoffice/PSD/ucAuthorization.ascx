<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucAuthorization.ascx.cs" Inherits="Module_UI_Backoffice_Individual_ucAuthorization" %>
<style>
    .txtalgnrgt {
        text-align: right;
    }

    .addNewDiv {
        text-align: center;
        height: 28px;
        line-height: 25px;
        background-color: rgb(249, 249, 249);
        font-weight: bold;
    }
</style>
<div class="clear textBoxAlign" style="padding-bottom: 10px;">
    <div id="divbtnAddNew" runat="server" style="height: 30px;">
        <span style="float: right;">
            <asp:Button ID="btnAddNew" CssClass="buttonGreen small"
                runat="server" Text="Add New" CausesValidation="true" OnClick="btnAddNew_Click" />
        </span>
    </div>
    <div id="divpnlAuthorization" runat="server" visible="false">
        <table class="form-table">
            <tr>
                <td align="right">
                    <label class="input-label">Authorized Person Name :</label></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td align="right">
                    <label class="input-label">Date Authorization Requested :</label></td>
                <td>
                    <asp:TextBox ID="TextBox3" CssClass="calender" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">Relationship to Applicant :</label></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" CssClass="DropdownList" runat="server"></asp:DropDownList>
                </td>
                <td align="right">
                    <label class="input-label">Name of Legislator :</label></td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">Document :</label></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>

            </tr>
        </table>
        <div class="toolBar AfterApproved" style="padding: 4px; margin: 4px;">
            <span class="fltrt">
                <asp:Button ID="btnAuthorizationSave" ValidationGroup="VGSchool" CssClass="buttonGreen medium"
                    runat="server" Text="Save" CausesValidation="true" OnClick="btnAuthorizationSave_Click" />
                <asp:LinkButton ID="lnkAuthorizationCancel" CssClass="secondary medium bottom buttonalignment"
                    runat="server" OnClick="btnAuthorizationSave_Click">Cancel</asp:LinkButton></span>
        </div>
    </div>
    <div>
        <table class="index brdr radius mrgnTp4 pdng2 grid" id="gvLicense" style="color: #333333; width: 100%; border-collapse: collapse;" cellpadding="5" cellspacing="0">
            <tbody>
                <tr>
                    <th class="aligncenter" scope="col">Authorized Person Name</th>
                    <th class="aligncenter" scope="col">Date Authorization Requested</th>
                    <th class="aligncenter" scope="col">Relationship to Applicant</th>
                    <th class="aligncenter" scope="col">Name of Legislator</th>
                </tr>
                <tr class="bordrbtm gridrow">
                    <td class="aligncenter" style="padding: 5px !important;">Nancy Blachly</td>
                    <td class="aligncenter">01/02/2015
                    </td>
                    <td class="aligncenter"></td>
                    <td class="aligncenter"></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<div class="buttons iefix-5 inline" runat="server" id="DivbtnHistory">
    <div class="toolBar" style="padding: 4px;">
        <span class="fltlft">
            <asp:Button ID="btnShowHistory" CssClass="buttonGreen medium" runat="server" Text="Show History"
                OnClick="btnShowHistory_Click" />
            <asp:LinkButton runat="server" Enabled="false" ToolTip="Previous" CssClass="link-next-prev btn-info btn-sm"
                ID="lnkPrev"><<</asp:LinkButton>
            <asp:LinkButton runat="server" Enabled="false" ToolTip="Next" CssClass="link-next-prev btn-info btn-sm"
                ID="lnkNext">>></asp:LinkButton>
            <asp:Button ID="btnShowCurrent" Enabled="false" CssClass="buttonGreen medium" runat="server"
                Text="Show Current" OnClick="btnShowCurrent_Click" />
        </span>
    </div>
</div>
