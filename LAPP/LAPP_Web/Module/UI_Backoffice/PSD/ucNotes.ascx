<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucNotes.ascx.cs" Inherits="NVBMT_WebProject.Modules.IndiVidual.ucNotes" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<style>
    .notesrepeater {
        text-align: justify;
        padding-left: 0px;
    }

        .notesrepeater li {
            margin-top: 10px;
        }

    div.callout {
        background-color: #D4FDF4;
        background-image: -moz-linear-gradient(top, #ddd, #eee);
        position: relative;
        color: #000;
        padding: 10px;
        border-radius: 3px;
        margin: 15px;
        min-height: 50px;
        border: 1px solid #097CB0;
        text-shadow: 0 0 1px #fff; /*box-shadow: 0 1px 0 rgba(255, 255, 255, 0.2) inset;*/
    }

    .callout::before {
        content: "";
        width: 0px;
        height: 0px;
        border: 0.8em solid transparent;
        position: absolute;
    }

    .callout.top-right::before {
        right: 17px;
        bottom: -20px;
        border-top: 10px solid #2E90BD;
    }

    .commentscroll {
        max-height: 200px;
        overflow: auto;
        min-height: 20px;
    }
</style>
<div class="clear textBoxAlign" style="padding-bottom: 40px;">
    <div class="brdr radius">
        <div class="blockheader" style="margin-top: 0px;">
            <p style="padding-top: 7px;">
                <span>Comment : </span>
            </p>
        </div>
        <div>
            <asp:Literal ID="ltrNote" runat="server"></asp:Literal>
        </div>
        <div class="container primary-content " style="padding-top: 15px;">
            <div>
                <table style="width: 65%;">
                    <tr>
                        <td align="right" style="width: 133px;">
                            <label class="input-label required">
                                Comment :</label>
                        </td>
                        <td colspan="3" style="width: 131px;">
                            <asp:TextBox CssClass="" autocomplete="off" ID="txtNewNote" Style="width: 545px; height: 30px;"
                                TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="revNewNote" ValidationGroup="VGNote" ControlToValidate="txtNewNote"
                                Text="*" ForeColor="Red" Display="None" SetFocusOnError="True" runat="server"
                                ErrorMessage="Please enter new note."></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="vceLastName" runat="server" TargetControlID="revNewNote"
                                PopupPosition="BottomLeft" HighlightCssClass="error">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="vertical-align: top; padding-top: 16px;">
                            <%--<b>
                                <label class="input-label">
                                    New Log :</label></b>--%>
                        </td>
                        <td colspan="3">
                            <div class="commentscroll">
                                <ul class="notesrepeater">
                                    <asp:Repeater ID="rptLog" runat="server">
                                        <ItemTemplate>
                                            <div class="callout top-right">
                                                <%# Eval("Note")%>
                                            </div>
                                            <div class="clear" style="position: relative; top: 0px; font-size: 11px;">
                                                <i><span class="fltrt" style="margin-right: 6px;">
                                                    <%# Eval("Create_By_Name")%>,
                                                    <%# Eval("Created_On")%></span></i>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div class="clear">
    </div>
    <div class="brdr radius mrgnTp4 pdng2" id="divDetails" runat="server" visible="false">
        <table style="margin: 0 auto; width: 84%;">
            <tr>
                <td align="right">
                    <label class="input-label">
                        Created :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                        ID="txtCreated" runat="server"></asp:TextBox>
                </td>
                <td align="right">
                    <label class="input-label">
                        Created By :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtCreatedBy" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">
                        Modified :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                        ID="txtModified" runat="server"></asp:TextBox>
                </td>
                <td align="right">
                    <label class="input-label">
                        Modified By :</label>
                </td>
                <td>
                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtModifiedBy" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div class="toolBar" style="padding: 4px;">
        <span class="fltrt">
            <asp:Button ID="btnSavePersonal" ValidationGroup="VGNote" CausesValidation="true"
                CssClass="buttonGreen medium" runat="server" Text="Save" OnClick="btnSavePersonal_Click" />
            <asp:LinkButton CssClass="secondary medium bottom" ID="lnkCancelPersonal" runat="server"
                OnClick="lnkCancelPersonal_Click">Cancel</asp:LinkButton>
        </span>
    </div>
    
   
     
    <%--<div class="buttons iefix-5 inline" runat="server" id="DivbtnHistory">
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
            <span class="fltrt">
                <asp:Button ID="Button1" CssClass="buttonGreen medium" runat="server" Text="Combined Comment and Log" /></span>
        </div>
    </div>--%>
</div>
