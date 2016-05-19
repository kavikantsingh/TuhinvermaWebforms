<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucAppeal.ascx.cs" Inherits="Module_Administration_ucAppeal" %>
<style>
    .colWidh1 {
    }

    .colWidh2 {
    }

    .heading {
        font-weight: bold;
    }
</style>
<div class="get-started-content" style="padding-bottom: 40px;">
    <div id="divAddNewbutton" runat="server" class="divLicenseInfon divaddnew">
        <span style="float: left; margin-right: 10px; margin-left: 10px;">
            <h4>Appeal : Eligible For Criminal History Appeal</h4>
        </span>
    </div>
    <div class="clear">
    </div>
    <div class="userHide searchBoxhidden">
        <div class="clear">
            <div class="close" onclick="javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');">
            </div>
        </div>
        <fieldset class="PermitSearch" style="position: relative">
            <legend></legend>
            <table class="SearchTable boardinfo" align="center" style="height: 70px;">
                <tbody>
                    <tr>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                Last Name :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtLastName" Style="width: 178px !important;"
                                runat="server" CssClass="inputTextbox" MaxLength="14"></asp:TextBox>
                        </td>
                        <td align="right" style="vertical-align: middle; width: 137px;">
                            <label>
                                Background Check # :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtBackgroundCheckNo" Style="width: 178px !important;"
                                runat="server" CssClass="inputTextBox" MaxLength="50"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                TCN :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:TextBox ID="txtTCN" Style="width: 178px !important;" runat="server"
                                CssClass="inputTextBox" MaxLength="50"></asp:TextBox>
                        </td>
                        <td align="right" style="vertical-align: middle;">
                            <label>
                                Is Rap Back :</label>
                        </td>
                        <td style="vertical-align: middle;">
                            <asp:DropDownList ID="ddlIsRapBack" Style="width: 189px;" CssClass="DropdownList"
                                runat="server">
                                <asp:ListItem>Yes</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div style="width: 90%; margin: 0 auto;">
                <span class="fltrt">
                    <asp:Button ID="btnSearch" CssClass="buttonGreen small" runat="server" Text="Search"
                        OnClick="btnSearch_Click" ValidationGroup="vgSerch" CausesValidation="true" />
                    <asp:LinkButton ID="btnSearchCancel" CssClass="secondary small" runat="server" Text="Cancel"
                        OnClick="btnSearchCancel_Click"></asp:LinkButton>
                </span>
            </div>
        </fieldset>
    </div>
    <div class="clear">
    </div>
    <div class="gridUpperDiv">
        <a class="down_arrow"></a><span class="fltlt">
            <asp:LinkButton ID="lnkShowAll" CssClass="" runat="server" OnClick="lnkArchive_Click">Show All</asp:LinkButton>
        </span>
        <div class="fltrt rightIcon">
            <a title="find" href="javascript:void()" onclick="javascript:showDivSlide('.userHide');hideDivSlide('.searchBbutton');">
                <img src="../../App_Themes/Theme1/images/search_icon.png" /></a>
        </div>
    </div>
    <div runat="server" id="divGridView" visible="true" class="">
        <div class="divLicenseInfo">
            <asp:GridView ID="gvAppeal" ClientIDMode="Static" runat="server" AutoGenerateColumns="False"
                CssClass="index brdr radius mrgnTp4 pdng2 grid" Width="100%" CellPadding="5"
                ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Background Check #">
                        <ItemStyle />
                        <EditItemTemplate>
                            <div class="divGridEdit" style="border: 1px solid rgb(232, 232, 232) !important; width: 75%; margin: 0px auto;">
                                <p style="font-size: 15px; font-weight: bold; width: 99%; margin: 0px auto; background-color: aliceblue; height: 25px; padding-top: 5px;">
                                    <span>Start Appeal</span>
                                </p>
                                <div style="border: 1px solid rgb(228, 228, 228); width: 50%; margin: 10px auto; height: 62px;">
                                    <p style="margin: 9px 5px 5px 5px; font-size: 16px; line-height: 23px;">
                                        <span>Background Check # 100657, Tuhin Verma, 233-45-4522,01/01/1980 </span>
                                    </p>
                                </div>
                                <table style="margin: 5px auto; border: 1px solid rgb(228, 228, 228) !important; width: 50%; padding: 5px;">
                                    <tr>
                                        <td align="right" class="colWidh1" style="padding: 5px;">
                                            <label class="heading input-label required">
                                                Appeal Type :</label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlAppealType" Width="200px" CssClass="DropdownList" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Challenge</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="colWidh1" style="padding: 5px;">
                                            <label class="heading input-label required">
                                                Appeal Received :</label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="inputTextbox calender" Width="194px" autocomplete="off" ID="txtAppealReceived"
                                                Text="03/15/2015" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                                <div class="toolBar" style="padding: 4px; margin: 7px;">
                                    <span class="fltrt">
                                        <asp:Button ID="btnAppealSave" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                                            runat="server" Text="Save" CausesValidation="true" OnClick="btnAppealSave_Click" />
                                        <asp:LinkButton ID="btnAppealSaveCancel" CssClass="secondary medium bottom" runat="server"
                                            OnClick="btnAppealSaveCancel_Click" Style="top: 0px;">Cancel</asp:LinkButton></span>
                                </div>
                            </div>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <%-- <%# Eval("College_Name")%>--%>
                            100657
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Determination">
                        <ItemStyle />
                        <ItemTemplate>
                            Not Eligible
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Is Rap Back">
                        <ItemStyle CssClass="aligncenter" />
                        <ItemTemplate>
                            <asp:CheckBox ID="chkIsRapBack" runat="server" Checked="true" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="First Name">
                        <ItemStyle />
                        <ItemTemplate>
                            Tuhin
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name">
                        <ItemStyle />
                        <ItemTemplate>
                            Verma
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SS #">
                        <ItemStyle />
                        <ItemTemplate>
                            233-45-4522
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Determination Date">
                        <ItemStyle />
                        <ItemTemplate>
                            03/15/2015
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Days Remaining">
                        <ItemStyle CssClass="aligncenter" />
                        <ItemTemplate>
                            34
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Disqualified Until">
                        <ItemStyle />
                        <ItemTemplate>
                            03/31/2015
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="TCN">
                        <ItemStyle />
                        <ItemTemplate>
                            T100657
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="100px" HeaderText="Action" HeaderStyle-CssClass="aligncenter">
                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                        <ItemTemplate>
                            <asp:Button ID="btnStartAppeal" CssClass="buttonGreen small" CommandArgument="1"
                                runat="server" Text="Start Appeal" CausesValidation="true" OnClick="btnStartAppeal_Click"
                                RowIndex='<%# Container.DisplayIndex %>' />
                            <%--  <asp:ImageButton ID="imgBtnDelete" CssClass="imgDelete" runat="server" ToolTip="Delete"
                                CommandArgument="1" ImageUrl="~/App_Themes/Theme1/images/delete.png" OnClientClick="javascript:return confirm('Are you sure you want to delete?');"
                                OnClick="imgBtnDelete_Click" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div style="width: 100%; height: 50px; border: 0px; padding: 3px">
                        No record found !!
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
    </div>
</div>
