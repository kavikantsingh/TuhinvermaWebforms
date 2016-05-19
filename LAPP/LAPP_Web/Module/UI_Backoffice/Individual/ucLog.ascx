<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucLog.ascx.cs" Inherits="Module_UI_Backoffice_Individual_ucLog" %>
<div class="" style="padding-top: 20px;">
        <div class="blockheader" style="margin-top: 0px;">
            <p style="padding-top: 7px;">
                <span>Log : </span>
            </p>
        </div>
        <div>
            <asp:GridView ID="gvLog" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                AllowPaging="true" PagerSettings-PageButtonCount="6" GridLines="None" AllowSorting="true"
                PagerStyle-CssClass="pager_style" PageSize="5" RowStyle-CssClass="bordrbtm gridrow"
                CssClass="index brdr radius mrgnTp4 pdng2 grid" Width="100%" CellPadding="5"
                ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Date">
                        <ItemStyle CssClass="InEditModetd" />
                        <ItemTemplate>
                            03/10/2015
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description" HeaderStyle-HorizontalAlign="Left">
                        <ItemStyle />
                        <ItemTemplate>
                            Application request form submitted
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div style="width: 100%; height: 50px; border: 0px; padding: 3px">
                        No record found.
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
    </div>