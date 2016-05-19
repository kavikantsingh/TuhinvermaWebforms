<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucApplication.ascx.cs" Inherits="Module_UI_Backoffice_Individual_ucApplication" %>
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

                            <a href="../../../LAPP_UI_Individual/UI/CertificationApplication.aspx" target="_blank" class="">View</a>
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

                            <a href="../../../LAPP_UI_Individual/UI/CertificationApplication.aspx" target="_blank" class="">View</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="clear">
    </div>
</div>
<div class="buttons iefix-5 inline" runat="server" id="DivbtnHistory">
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
