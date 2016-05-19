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
<div class="clear textBoxAlign" >
    <div id="divbtnAddNew" runat="server" style="height: 30px;">
        <span style="float: right; margin-right: 8px; margin-top: 4px;">
            <asp:Button ID="btnAddNew" CssClass="buttonGreen small"
                runat="server" Text="Add New" CausesValidation="true" OnClick="btnAddNew_Click" />
        </span>
    </div>
    <div id="divpnlAuthorization" runat="server" visible="false">
        <table class="form-table">
            <tr>
                <td align="right" style="width: 170px;">
                    <label class="input-label required">First Name :</label></td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>
                <td align="right">
                    <label class="input-label required">Last Name :</label></td>
                <td>
                    <asp:TextBox ID="txtLastName"  runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <label class="input-label required">Mailing Address :</label></td>
                <td colspan="3">
                    <asp:TextBox ID="txtMAilingAddress" style="width:482px;"  runat="server"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="txtalgnrgt">
                    <label class="input-label required">
                        City :
                    </label>
                </td>
                <td style="width: 151px;">
                    <asp:TextBox ID="txtCityMailEdit" runat="server" Width="133px" CssClass="tooltip OnlyAlphabet calWidth"
                        MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                </td>
                <td class="txtalgnrgt">
                    <label class="input-label required">
                        State :
                    </label>
                </td>
                <td style="width: 106px;">
                    <asp:DropDownList ID="ddlStateMailEdit" runat="server" Width="98px" CssClass="inputTextbox"
                        title="Select your state">
                        <asp:ListItem Value="-1">Select</asp:ListItem>
                        <asp:ListItem Value="-1">------ STATES OF USA --------</asp:ListItem>
                        <asp:ListItem Value="AK">ALASKA</asp:ListItem>
                        <asp:ListItem Value="AL">ALABAMA</asp:ListItem>
                        <asp:ListItem Value="AR">ARKANSAS</asp:ListItem>
                        <asp:ListItem Value="AZ">ARIZONA</asp:ListItem>
                        <asp:ListItem Selected="True" Value="CA">CALIFORNIA</asp:ListItem>
                        <asp:ListItem Value="CO">COLORADO</asp:ListItem>
                        <asp:ListItem Value="CT">CONNECTICUT</asp:ListItem>
                        <asp:ListItem Value="DC">DISTRICT OF COLUMBIA</asp:ListItem>
                        <asp:ListItem Value="DE">DELAWARE</asp:ListItem>
                        <asp:ListItem Value="FL">FLORIDA</asp:ListItem>
                        <asp:ListItem Value="GA">GEORGIA</asp:ListItem>
                        <asp:ListItem Value="HI">HAWAII</asp:ListItem>
                        <asp:ListItem Value="IA">IOWA</asp:ListItem>
                        <asp:ListItem Value="ID">IDAHO</asp:ListItem>
                        <asp:ListItem Value="IL">ILLINOIS</asp:ListItem>
                        <asp:ListItem Value="IN">INDIANA</asp:ListItem>
                        <asp:ListItem Value="KS">KANSAS</asp:ListItem>
                        <asp:ListItem Value="KY">KENTUCKY</asp:ListItem>
                        <asp:ListItem Value="LA">LOUISIANA</asp:ListItem>
                        <asp:ListItem Value="MA">MASSACHUSETTS</asp:ListItem>
                        <asp:ListItem Value="MD">MARYLAND</asp:ListItem>
                        <asp:ListItem Value="ME">MAINE</asp:ListItem>
                        <asp:ListItem Value="MI">MICHIGAN</asp:ListItem>
                        <asp:ListItem Value="MN">MINNESOTA</asp:ListItem>
                        <asp:ListItem Value="MO">MISSOURI</asp:ListItem>
                        <asp:ListItem Value="MS">MISSISSIPPI</asp:ListItem>
                        <asp:ListItem Value="MT">MONTANA</asp:ListItem>
                        <asp:ListItem Value="NE">NEBRASKA</asp:ListItem>
                        <asp:ListItem Value="NC">NORTH CAROLINA</asp:ListItem>
                        <asp:ListItem Value="ND">NORTH DAKOTA</asp:ListItem>
                        <asp:ListItem Value="NH">NEW HAMPSHIRE</asp:ListItem>
                        <asp:ListItem Value="NJ">NEW JERSEY</asp:ListItem>
                        <asp:ListItem Value="NM">NEW MEXICO</asp:ListItem>
                        <asp:ListItem Value="NY">NEW YORK</asp:ListItem>
                        <asp:ListItem Value="NV">NEVADA</asp:ListItem>
                        <asp:ListItem Value="OH">OHIO</asp:ListItem>
                        <asp:ListItem Value="OK">OKLAHOMA</asp:ListItem>
                        <asp:ListItem Value="OR">OREGON</asp:ListItem>
                        <asp:ListItem Value="PA">PENNSYLVANIA</asp:ListItem>
                        <asp:ListItem Value="RI">RHODE ISLAND</asp:ListItem>
                        <asp:ListItem Value="SC">SOUTH CAROLINA</asp:ListItem>
                        <asp:ListItem Value="SD">SOUTH DAKOTA</asp:ListItem>
                        <asp:ListItem Value="TN">TENNESSEE</asp:ListItem>
                        <asp:ListItem Value="TX">TEXAS</asp:ListItem>
                        <asp:ListItem Value="UT">UTAH</asp:ListItem>
                        <asp:ListItem Value="VA">VIRGINIA</asp:ListItem>
                        <asp:ListItem Value="VT">VERMONT</asp:ListItem>
                        <asp:ListItem Value="WA">WASHINGTON</asp:ListItem>
                        <asp:ListItem Value="WI">WISCONSIN</asp:ListItem>
                        <asp:ListItem Value="WV">WEST VIRGINIA</asp:ListItem>
                        <asp:ListItem Value="WY">WYOMING</asp:ListItem>
                        <asp:ListItem Value="-1">------ STATES OF CANADA -------</asp:ListItem>
                        <asp:ListItem Value="AB">Alberta</asp:ListItem>
                        <asp:ListItem Value="BC">British Columbia </asp:ListItem>
                        <asp:ListItem Value="MB">Manitoba </asp:ListItem>
                        <asp:ListItem Value="NB">New Brunswick </asp:ListItem>
                        <asp:ListItem Value="NL">Newfoundland and Labrador </asp:ListItem>
                        <asp:ListItem Value="NT">Northwest Territories </asp:ListItem>
                        <asp:ListItem Value="NS">Nova Scotia </asp:ListItem>
                        <asp:ListItem Value="NU">Nunavut </asp:ListItem>
                        <asp:ListItem Value="ON">Ontario </asp:ListItem>
                        <asp:ListItem Value="PE">Prince Edward Island </asp:ListItem>
                        <asp:ListItem Value="QC">Quebec </asp:ListItem>
                        <asp:ListItem Value="SK">Saskatchewan </asp:ListItem>
                        <asp:ListItem Value="YT">Yukon </asp:ListItem>
                        <asp:ListItem Value="00">------- Other States -------</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="txtalgnrgt">
                    <label class="input-label required">
                        Zip :
                    </label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="txtZipMailEdit" runat="server" placeholder="xxxxx-xxxx or xxxxx"
                        Width="133px" CssClass="tooltip zip_us calWidth" MaxLength="500" title="Enter valid Zip eg: XXXXX-XXXX or XXXXX"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="txtalgnrgt">
                    <label class="input-label required">
                        Email :
                    </label>
                </td>
                <td  colspan="3">
                    <asp:TextBox ID="txtEmail" runat="server" Width="133px" CssClass="tooltip calWidth"
                        MaxLength="500" title="Only A-Z characters are allowed."></asp:TextBox>
                </td>
            </tr>
             <tr>
                                                                            <td align="right" style="width: 145px;">
                                                                                <label class="input-label required">Phone Number :</label></td>
                                                                            <td style="width: 165px;">
                                                                                <asp:TextBox ID="TextBox3" CssClass="phone_us" runat="server"></asp:TextBox></td>
                                                                            <td class="cursorpointer">
                                                                                <asp:CheckBox ID="CheckBox10" Text="Mobile" runat="server" /></td>
                 <td></td>
                                                                        </tr>
            <tr>
                <td class="txtalgnrgt">
                    <label class="input-label required">
                        Start Date :
                    </label>
                </td>
                <td>
                    <asp:TextBox ID="txtExpirationDate" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx calender"
                        placeholder="MM/DD/YYYY" MaxLength="150"></asp:TextBox>
                </td>

                <td class="txtalgnrgt">
                    <label class="input-label ">
                        End Date :
                    </label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="inputTextbox NewAppPersonalTxtbx calender"
                        placeholder="MM/DD/YYYY" MaxLength="150"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;"><asp:CheckBox ID="CheckBox2" style="padding-right: 10px;" Text="" runat="server" /></td>
                <td class="cursorpointer" colspan="3"> <label class="input-label">  Legislative Representative </label></td>
               
            </tr>
            <tr>
                <td style="text-align:right;"><asp:CheckBox ID="CheckBox1" style="padding-right: 10px;" Text="" runat="server" /></td>
                <td class="cursorpointer" colspan="3"> <label class="input-label">  Attorney </label></td>
               
            </tr>
            <tr>
                <td style="text-align:right;"><asp:CheckBox ID="CheckBox3" style="padding-right: 10px;" Text="" runat="server" /></td>
                <td class="cursorpointer" colspan="3"> <label class="input-label">  Other </label></td>
               
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
        <table class="index brdr radius mrgnTp4 pdng2 " id="gvLicense" style="color: #333333; width: 98%; border-collapse: collapse;" cellpadding="5" cellspacing="0">
            <tbody>
                <tr>
                    <th class="aligncenter" scope="col">First Name</th>
                    <th class="aligncenter" scope="col">Last Name</th>
                    <th class="aligncenter" scope="col">Start Date</th>
                    <th class="aligncenter" scope="col">End Date</th>
                    <th class="aligncenter" scope="col">Representative</th>
                    <th class="aligncenter" scope="col">Attorney</th>
                    <th></th>
                    <th class="aligncenter" scope="col">Action</th>
                </tr>
                <tr class="bordrbtm gridrow">
                    <td class="aligncenter" style="padding: 5px !important;">Joe</td>
                    <td class="aligncenter"><a href="#">Legislature</a></td>
                    <td class="aligncenter">01/21/15</td>
                    <td class="aligncenter"></td>
                     <td class="aligncenter"><span><asp:ImageButton ID="ImageButton1" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/StatusYes.png" /></span></td>
                     <td class="aligncenter"></td>
                    <td class="aligncenter"><asp:ImageButton ID="ImageButton7" runat="server" OnClick="btnAddform_Click" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" /></td>
                    <td class="aligncenter"><span>
                        <asp:ImageButton ID="imgbtnDocumentEdit" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" />
                        <input id="Image6" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"
                            type="image"></span></td>
                </tr>
                <tr class="bordrbtm gridrow">
                    <td class="aligncenter" style="padding: 5px !important;">Bob</td>
                    <td class="aligncenter"><a href="#">Syouruncle</a></td>
                    <td class="aligncenter">01/22/15</td>
                    <td class="aligncenter">01/23/15</td>
                     <td class="aligncenter"></td>
                    
                     <td class="aligncenter"><span><asp:ImageButton ID="ImageButton2" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/StatusYes.png" /></span></td>
                    <td class="aligncenter"><asp:ImageButton ID="ImageButton8" runat="server" OnClick="btnAddform_Click" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" /></td>
                    <td class="aligncenter"><span>
                        <asp:ImageButton ID="ImageButton3" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" />
                        <input id="img2" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"
                            type="image"></span></td>
                </tr>
                <tr class="bordrbtm gridrow">
                    <td class="aligncenter" style="padding: 5px !important;">Richard</td>
                    <td class="aligncenter"><a href="#">Slick</a></td>
                    <td class="aligncenter">01/24/15</td>
                    <td class="aligncenter"></td>
                   
                     <td class="aligncenter"><span><asp:ImageButton ID="ImageButton6" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/StatusYes.png" /></span></td>
                     <td class="aligncenter"><span><asp:ImageButton ID="ImageButton4" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/StatusYes.png" /></span></td>
                    <td class="aligncenter"><asp:ImageButton ID="ImageButton9" runat="server" OnClick="btnAddform_Click" ToolTip="Document Upload" ImageUrl="~/App_Themes/Theme1/images/Document_Upload.png" /></td>
                     <td class="aligncenter"><span>
                        <asp:ImageButton ID="ImageButton5" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/Theme1/images/edit.png" />
                        <input id="img3" title="Delete" class="imgDelete" src="../../App_Themes/Public/images/delete.png"
                            type="image"></span></td>
                </tr>
            </tbody>
        </table>
    </div>

    <div id="dvAddForm" runat="server" style="height: 30px;">
       
    </div>
    <div style="border: 1px solid #d4d8db; margin-top: 10px;" id="dvdocaddd" runat="server" visible="false">
        <div class="blockheader" style="margin: 0px 0px -3px auto;">
            <p style="padding-top: 3px; color: rgb(68, 68, 68);">
                <span>Add Form</span>
            </p>
        </div>
        <table class="tblUploadSection" style="width: 94% !important; margin: 10px auto; line-height: 30px;">
            <tr>
                <td style="width: 140px;" align="right">
                    <label class="input-label">
                        Document Name :</label>
                </td>
                <td>

                    <asp:TextBox CssClass="inputTextbox" autocomplete="off" ID="txtDocumentName" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">
                        Document Type :</label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlDocumentType"  Style="margin-top:5px;" runat="server" CssClass="DropdownList">
                        <asp:ListItem Value="-1">Select</asp:ListItem>
                    </asp:DropDownList>
                </td>

            </tr>
            <tr>
                <td align="right">
                    <label class="input-label">Document :</label></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" Style="margin-top:5px;" runat="server" />
                    <asp:Button ID="btnUploadLicensee" ClientIDMode="Static" runat="server" CssClass="buttonGreen small"
                        Text="Upload"  />
                </td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="Button1" ClientIDMode="Static" runat="server" CssClass="secondary medium bottom buttonalignment"
                        Text="Cancel"  OnClick="Button1_Click" /></td>
            </tr>
        </table>
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
