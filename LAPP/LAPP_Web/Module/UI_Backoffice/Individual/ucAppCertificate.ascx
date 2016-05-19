<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucAppCertificate.ascx.cs" Inherits="Module_UI_Backoffice_Individual_ucAppCertificate" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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

<div class="clear textBoxAlign">
    <div>
        <asp:Literal ID="ltrIndividual" runat="server"></asp:Literal>
    </div>
    
    <div class="clear">
    </div>
</div>
<div class="clear textBoxAlign" style="padding-bottom: 10px; padding-top: 10px; display: nones;">
    <div>
        <asp:GridView ID="gvApplicationDetail" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
            CssClass="index brdr radius pdng2 grid" RowStyle-CssClass="bordrbtm gridrow"
            AllowPaging="true" PagerSettings-PageButtonCount="6" GridLines="None" AllowSorting="true"
            PagerStyle-CssClass="pager_style" ShowHeader="true" PageSize="8" Width="100%"
            CellPadding="5" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Application Type">
                    <ItemStyle CssClass="" Width="30%" />
                    <HeaderStyle Width="30%" />
                    <ItemTemplate>
                        <%#Eval("Application_Type")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Application Number">
                    <HeaderStyle Width="20%" />
                    <ItemStyle Width="20%" />
                    <ItemTemplate>
                        <%# Eval("Application_Number") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Submitted On">
                    <HeaderStyle Width="20%" />
                    <ItemStyle CssClass="" Width="20%" />
                    <ItemTemplate>
                        <%# Convert.ToDateTime(Eval("Date")).ToString("MM/dd/yyyy")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Approved On">
                    <HeaderStyle Width="20%" />
                    <ItemStyle CssClass="" Width="20%" />
                    <ItemTemplate>
                        <%# Convert.ToDateTime(Eval("Approved_On")).ToString("MM/dd/yyyy")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action">
                    <HeaderStyle Width="10%" />
                    <ItemStyle CssClass="" Width="10%" />
                    <ItemTemplate>
                        <%--<%#Eval("Link")%>--%>
                        <a href="http://demopublic.inlumon.com/UI/CertificationApplication.aspx" data-type="iframe"
                            target="_blank" class="">View</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerSettings PageButtonCount="6"></PagerSettings>
            <PagerStyle CssClass="pager_style"></PagerStyle>
            <RowStyle CssClass="bordrbtm gridrow"></RowStyle>
        </asp:GridView>
    </div>
    <div class="clear">
    </div>
</div>
<div class="clear textBoxAlign" style="padding-bottom: 10px; padding-top: 10px;">
    <div>
        <div>
            
            <table class="index brdr radius pdng2 grid" cellspacing="0" cellpadding="5" id="ApplicationDetail" style="color: #333333; width: 100%; border-collapse: collapse;">
                <tbody>
                    <tr>
                        <th scope="col" style="width: 30%;">Application Type</th>
                        <th scope="col" style="width: 20%;">Application Number</th>
                        <th scope="col" style="width: 20%;">Submitted On</th>
                        <th scope="col" style="width: 20%;">Approved On</th>
                        <th scope="col" style="width: 10%;">Action</th>
                    </tr>
                    <tr class="bordrbtm gridrow">
                        <td style="width: 30%;">Certification
                        </td>
                        <td style="width: 20%;">MI150921105443
                        </td>
                        <td style="width: 20%;">09/21/2015
                        </td>
                        <td style="width: 20%;">09/21/2015
                        </td>
                        <td style="width: 10%;">

                            <a href="../../../LAPP_UI_Individual/UI/CertificationApplication.aspx" style="float: left; padding-top: 4px; padding-right: 4px;" target="_blank" class="">View</a>
                         <asp:ImageButton ID="imgbtnmail1" runat="server" Width="22px" ToolTip="Email"
                                    ImageUrl="~/App_Themes/Theme1/images/1443263723_mail-icon.png" />
                        </td>
                    </tr>
                    <tr class="bordrbtm gridrow" style="background-color: White;">
                        <td style="width: 30%;">Re-Certification
                        </td>
                        <td style="width: 20%;">MI150921110444
                        </td>
                        <td style="width: 20%;">09/21/2015
                        </td>
                        <td style="width: 20%;">09/21/2015
                        </td>
                        <td style="width: 10%;">

                            <a href="../../../LAPP_UI_Individual/UI/CertificationApplication.aspx" style="float: left; padding-top: 4px; padding-right: 4px;" target="_blank" class="">View</a>
                            <asp:ImageButton ID="imgbtnmail2" ToolTip="Email" runat="server" Width="22px"
                                    ImageUrl="~/App_Themes/Theme1/images/1443263723_mail-icon.png" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="clear">
    </div>
</div>
<div class="buttons iefix-5 inline" runat="server" id="Div1">
    <div class="toolBar" style="padding: 4px; display:none;">
        <span class="fltlft">
           <%-- <asp:Button ID="btnShowHistory" CssClass="buttonGreen medium" runat="server" Text="Show History"
                OnClick="btnShowHistory_Click" />
            <asp:LinkButton runat="server" Enabled="false" ToolTip="Previous" CssClass="link-next-prev btn-info btn-sm"
                ID="lnkPrev"><<</asp:LinkButton>
            <asp:LinkButton runat="server" Enabled="false" ToolTip="Next" CssClass="link-next-prev btn-info btn-sm"
                ID="lnkNext">>></asp:LinkButton>
            <asp:Button ID="btnShowCurrent" Enabled="false" CssClass="buttonGreen medium" runat="server"
                Text="Show Current" OnClick="btnShowCurrent_Click" />--%>
        </span>
    </div>
</div>



<div class="clear textBoxAlign" style="padding-bottom: 10px;">
    <div>
        <asp:GridView ID="gvLicense" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
            CssClass="index brdr radius mrgnTp4 pdng2 grid" AllowPaging="true" PagerSettings-PageButtonCount="6"
            GridLines="None" AllowSorting="true" PagerStyle-CssClass="pager_style" PageSize="5"
            RowStyle-CssClass="bordrbtm gridrow" Width="100%" CellPadding="5" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Year">
                    <ItemStyle CssClass="InEditModetd" />
                    <EditItemTemplate>
                        <div class="divGridEdit">
                            <table style="width: 100%;">
                                <tr>
                                    <td align="right" class="tdwdt2">
                                        <label class="input-label required">
                                            Certificate Number :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtLicenseNo" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="right">
                                        <label class="input-label">
                                            Portal :</label></td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label required">
                                            Status :</label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlStatus" CssClass="DropdownList" runat="server">
                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                            <asp:ListItem Value="1">Active</asp:ListItem>
                                            <asp:ListItem Value="2">Expired</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td align="right">
                                        <label class="input-label required">
                                            Certificate Type :</label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" CssClass="DropdownList" runat="server">
                                            <asp:ListItem Value="-1">Select</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label required">
                                            Beginning Date :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                                            ID="txtBeganDate" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="right">
                                        <label class="input-label required">
                                            Ending Date :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                                            ID="txtEndingDate" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label">
                                            Original License Date :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtOriginalLicenseDate" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="right">
                                        <label class="input-label">
                                            Post Mark date :</label>
                                    </td>
                                    <td>
                                        <asp:TextBox CssClass="inputTextbox calender" placeholder="MM/DD/YYYY" autocomplete="off"
                                            ID="txtPostMrkDate" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label class="input-label">
                                            Comments :</label>
                                    </td>
                                    <td colspan="3">
                                        <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtComments" Width="178px"
                                            TextMode="MultiLine" runat="server"></asp:TextBox>
                                    </td>

                                </tr>
                            </table>
                            <div class="toolBar" style="padding: 4px;">
                                <span class="fltrt">
                                    <asp:Button ID="btnSave" CssClass="buttonGreen medium" runat="server" Text="Save" />
                                    <asp:LinkButton CssClass="secondary medium bottom" ID="lnkCloseLicense"
                                        runat="server" OnClick="lnkCloseLicense_Click">Close</asp:LinkButton>
                                </span>
                            </div>
                        </div>
                    </EditItemTemplate>
                    <ItemTemplate>
                        2014
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status History" HeaderStyle-CssClass="aligncenter">
                    <ItemStyle CssClass="aligncenter" />
                    <ItemTemplate>
                        Active
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status Action" HeaderStyle-CssClass="aligncenter">
                    <ItemStyle CssClass="aligncenter" />
                    <ItemTemplate>
                        New License
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Current Status" HeaderStyle-CssClass="aligncenter">
                    <ItemStyle CssClass="aligncenter" />
                    <ItemTemplate>
                        Active
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Picture" HeaderStyle-CssClass="aligncenter">
                    <ItemStyle HorizontalAlign="Center" />
                    <ItemTemplate>
                        <a target="_blank" href="../../App_Themes/Theme1/images/Chrysanthemum.jpg" class="link">Link </a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ItemStyle-Width="100px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                    <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                    <ItemTemplate>
                        <asp:LinkButton ID="btnNote" CssClass="secondary small bottom" Style="padding: 3px 8px;"
                            runat="server" CommandArgument="1" RowIndex='<%# Container.DisplayIndex %>' Text="Note"
                            OnClick="btnNote_Click">View</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <div style="width: 100%; height: 200px; border: 0px; padding: 3px">
                    No record found.
                </div>
            </EmptyDataTemplate>
        </asp:GridView>
    </div>
</div>
<div class="buttons iefix-5 inline" runat="server" id="DivbtnHistory">
    <div class="toolBar" style="padding: 4px; display:none;">
        <span class="fltlft">
            <%--<asp:Button ID="btnShowHistory" CssClass="buttonGreen medium" runat="server" Text="Show History"
                OnClick="btnShowHistory_Click" />
            <asp:LinkButton runat="server" Enabled="false" ToolTip="Previous" CssClass="link-next-prev btn-info btn-sm"
                ID="lnkPrev"><<</asp:LinkButton>
            <asp:LinkButton runat="server" Enabled="false" ToolTip="Next" CssClass="link-next-prev btn-info btn-sm"
                ID="lnkNext">>></asp:LinkButton>
            <asp:Button ID="btnShowCurrent" Enabled="false" CssClass="buttonGreen medium" runat="server"
                Text="Show Current" OnClick="btnShowCurrent_Click" />--%>
        </span>
    </div>
</div>