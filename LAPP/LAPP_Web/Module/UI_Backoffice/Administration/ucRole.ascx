<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucRole.ascx.cs" Inherits="Module_Administration_ucRole" %>

<%@ Register Src="ucAddRole.ascx" TagName="ucAddRole" TagPrefix="uc1" %>

<style>
    .actions ul {
        margin: 6px 0 0 0;
        float: left;
    }

    tr {
        border: 1px solid #ddd !important;
    }


    .signup .posRelative {
        line-height: 40px;
    }

        .signup .posRelative label {
            width: 100px;
            display: inline-block;
            text-align: right;
            margin-right: 50px;
            padding-right: 20px;
        }

    .signup input[type="text"], input[type="password"], .signup textarea, .signup select {
        background-color: rgb(252, 253, 253);
        border-width: 1px;
        border-style: solid;
        -webkit-box-shadow: 0 1px #e5e5e5 inset;
        -moz-box-shadow: 0 1px #e5e5e5 inset;
        box-shadow: 0 1px #e5e5e5 inset;
        -o-border-radius: 3px;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
        width: 250px;
    }

    .flsSignupForm {
        width: 57%;
        margin: 0 auto;
    }

    .inputDropDown {
        width: 268px;
    }

    .button {
        padding-left: 10px;
        padding-right: 10px;
    }
</style>

<div class="main Roles">
    <br />
    <br />
    <div class="clearb">
    </div>
    <div class="container primary-content ">
        <div class="span-180 span-13 home-sidebar append-1">
            <div class="rounded-container peel-shadows">
                <div class="content clearfix">
                    <div class="clear">
                        <h4 style="margin: 0px 0px; float: left">Role
                        </h4>
                    </div>
                    <dl id="recent-activity" class="activity-list clear">
                        <div id="Div1" class="activity-list">
                            <div id="list" class="sample_data_container">
                                <div>
                                    <asp:GridView ID="gvRole" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                                        CssClass="index" ShowHeader="true" Width="100%" CellPadding="4" AllowPaging="true"
                                        ForeColor="#333333" GridLines="None" PageSize="10"
                                        OnPageIndexChanging="gvRole_PageIndexChanging">
                                        <%-- <AlternatingRowStyle BackColor="White" />--%>
                                        <Columns>
                                            <asp:TemplateField HeaderText="Role Name">
                                                <ItemStyle />
                                                <ItemTemplate>
                                                    <%# Eval("LAPP_role_name")%>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Role Description">
                                                <ItemStyle />
                                                <ItemTemplate>
                                                    <%# Eval("LAPP_role_description")%>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="# User">
                                                <ItemStyle />
                                                <ItemTemplate>
                                                    <%# Eval("User_Count")%>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Action">
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Left" />
                                                <ItemTemplate>
                                                    <%--<a href="AddRole.aspx?User_Id=<%#Eval("LAPP_role_id") %>">--%>
                                                    <asp:ImageButton ID="imgbtnEdit" CssClass="imgDelete" CommandArgument='<%#Eval("LAPP_role_id") %>'
                                                        runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png"
                                                        OnClick="imgbtnEdit_Click" />
                                                    <asp:ImageButton ID="imgBtnDelete" UserCount='<%# Eval("User_Count")%>' CssClass="imgDelete" runat="server" ToolTip="Delete"
                                                        CommandArgument='<%#Eval("LAPP_role_id") %>' ImageUrl="~/App_Themes/Theme1/images/delete.png"
                                                        OnClientClick="javascript:return confirm('Are you sure you want to delete?');"
                                                        OnClick="imgBtnDelete_Click" />
                                                    <%-- OnClick="imgBtnDelete_Click" --%>
                                                    <%--<asp:LinkButton ID="btnMemberInfoDelete" runat="server" Text="Delete" CommandArgument='<%#Eval("LAPP_role_id") %>' />--%>
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
                                <br />
                            </div>
                        </div>
                    </dl>
                </div>
            </div>
        </div>
        <div class="primary-column span-24" style="width: 600px;">
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
                                                        <%--   <asp:LinkButton ID="lnkArchive" CssClass="button small gray narrow pill-left" PostBackUrl="javascript:void(0)"
                                                            runat="server">Archive</asp:LinkButton>
                                                        <asp:LinkButton ID="lnkDelete" CssClass="button small gray narrow pill-right" PostBackUrl="javascript:void(0)"
                                                            runat="server">Delete</asp:LinkButton>--%>
                                                    </li>
                                                </ul>
                                                <div class="fltrt rightIcon">
                                                    <asp:Button ID="btnAddNew" CssClass="buttonGreen medium" runat="server" Text="Add New Role"
                                                        OnClick="btnAddNew_Click" />
                                                </div>
                                                <span class="fltrt">
                                                    <%-- <button class="button medium save green inline" type="button" name="form_action"
                                                        onclick="showDiv('.popCodes');" value="Codes" id="form-action-delete">
                                                        <span style="line-height: 27px !important;">Add New Code Type</span>
                                                    </button>--%>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="signup" id="divAddRole" runat="server" visible="false">
                                    <div style="margin: 20px auto; padding: 6px;">
                                        <h4>Role
                                        </h4>
                                        <uc1:ucAddRole ID="ucAddRole1" runat="server" />
                                        <div class="toolBar" style="padding: 4px;">
                                            <span class="fltrt">
                                                <asp:Button ID="btnSave" runat="server" ValidationGroup="VGRole" CssClass="buttonGreen medium"
                                                    Text="Save" OnClick="btnSave_Click" />
                                                <asp:Button ID="btnCancel" runat="server" CssClass="secondary medium " Text="Cancel"
                                                    OnClick="btnCancel_Click" />

                                            </span>
                                        </div>
                                    </div>
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
</div>
