using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAPP.ENTITY;
using LAPP.BAL;
using System.Text;
using System.Collections;
using System.Data.SqlClient;
using System.Data.Sql;
using LAPP.ENTITY.Enumerations;
using System.Web.UI.HtmlControls;
using LAPP.CORE;

public partial class Module_Accounts_ucUserAccount_Page : System.Web.UI.UserControl
{
    String MenuName = "User Accounts";

    #region Class Members
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();

    LAPP_role objRole = new LAPP_role();
    LAPP_role_BAL objRoleBAL = new LAPP_role_BAL();
    LAPP_user objUser = new LAPP_user();
    LAPP_userBAL objuserBAL = new LAPP_userBAL();
    LAPP_user_membership objuserMembership = new LAPP_user_membership();
    LAPP_user_membershipBAL objUserMembershipBAL = new LAPP_user_membershipBAL();

   

    #endregion


    #region Class Property

    public int user_id
    {
        get
        {
            if (ViewState["user_id"] != null)
            {
                return Convert.ToInt32(ViewState["user_id"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["user_id"] = value;
        }
    }
    public bool Is_Search
    {
        get
        {
            if (ViewState["Member_Info_Id"] != null)
            {
                return Convert.ToBoolean(ViewState["Is_Search"]);
            }
            else
            {
                return false;
            }
        }
        set
        {
            ViewState["Is_Search"] = value;
        }
    }

    public bool IsChangePassword
    {
        get
        {
            if (ViewState["IsChangePassword"] != null)
            {
                return Convert.ToBoolean(ViewState["IsChangePassword"]);
            }
            else
            {
                return false;
            }
        }
        set
        {
            ViewState["IsChangePassword"] = value;
        }
    }

    public string PageName
    {
        get
        {
            if (ViewState["PageName"] != null)
            {
                return ViewState["PageName"].ToString();
            }
            else
            {
                return "";
            }
        }
        set
        {
            ViewState["PageName"] = value;
        }
    }
    public int Edit_Index
    {
        get
        {
            if (ViewState["Edit_Index"] != null)
            {
                return Convert.ToInt32(ViewState["Edit_Index"]);
            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["Edit_Index"] = value;
        }
    }
    public string Email
    {
        get
        {
            if (ViewState["Email"] != null)
            {
                return (ViewState["Email"]).ToString();
            }
            else
            {
                return "";
            }
        }
        set
        {
            ViewState["Email"] = value;
        }
    }
    //public string FirstName
    //{
    //    get
    //    {
    //        if (ViewState["FirstName"] != null)
    //        {
    //            return (ViewState["FirstName"]).ToString();
    //        }
    //        else
    //        {
    //            return "";
    //        }
    //    }
    //    set
    //    {
    //        ViewState["FirstName"] = value;
    //    }
    //}
    public int Status
    {
        get
        {
            if (ViewState["Status"] != null)
            {
                return Convert.ToInt32(ViewState["Status"]);
            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["Status"] = value;
        }
    }
    public string UserName
    {
        get
        {
            if (ViewState["UserName"] != null)
            {
                return (ViewState["UserName"]).ToString();
            }
            else
            {
                return "";
            }
        }
        set
        {
            ViewState["UserName"] = value;
        }
    }
    //public int Role
    //{
    //    get
    //    {
    //        if (ViewState["Role"] != null)
    //        {
    //            return Convert.ToInt32(ViewState["Role"]);
    //        }
    //        else
    //        {
    //            return -1;
    //        }
    //    }
    //    set
    //    {
    //        ViewState["Role"] = value;
    //    }
    //}
    //public string LastName
    //{
    //    get
    //    {
    //        if (ViewState["LastName"] != null)
    //        {
    //            return (ViewState["LastName"]).ToString();
    //        }
    //        else
    //        {
    //            return "";
    //        }
    //    }
    //    set
    //    {
    //        ViewState["LastName"] = value;
    //    }
    //}
    //public DateTime DOB
    //{
    //    get
    //    {
    //        if (ViewState["DOB"] != null)
    //        {
    //            return Convert.ToDateTime(ViewState["DOB"]);
    //        }
    //        else
    //        {
    //            return DateTime.Now;
    //        }
    //    }
    //    set
    //    {
    //        ViewState["DOB"] = value;
    //    }
    //}
    public string GridViewSortExpression
    {
        get
        {
            if (ViewState["sortExpression"] == null)
                ViewState["sortExpression"] = "CreatedOn";

            return ViewState["sortExpression"].ToString();
        }
        set
        {
            ViewState["sortExpression"] = value;
        }
    }
    public SortDirection GridViewShortDirection
    {
        get
        {
            if (ViewState["sortDirection"] == null)
                ViewState["sortDirection"] = SortDirection.Ascending;

            return (SortDirection)ViewState["sortDirection"];
        }
        set
        {
            ViewState["sortDirection"] = value;
        }
    }
    #endregion


    #region Page Event Handler

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!this.IsPostBack)
            {

                objRole = objRoleBAL.Get_LAPP_role_BY_ID(UIHelper.RoleIdBySession());
                if (objRole != null && objRole.LAPP_Role_Name != "Admin")
                {
                    ddlUSerRole.Enabled = false;
                    BindGrid_UserList();
                }
                else
                {
                    ddlUSerRole.Enabled = true;
                }

            }


        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucUserAccount_Page.ascx-PageLoad";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }


        if (!IsPostBack)
        {
            BindGrid_UserList();
            BindUserRole();
            BindrRole();
            BindGender();
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        Save();
    }
    protected void btnNewUser_Click(object sender, EventArgs e)
    {
        if (PermissionHandler.UserHasPermission("C", MenuName, this.Page))
        {
            ClearUserControl();
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        ClearUserControl();
    }

    #endregion


    #region Left Hand Grid Page Event Handler

    protected void gvUserInfo_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //HtmlAnchor BOE_Member_Info_Edit = e.Row.FindControl("BOE_Member_Info_Edit") as HtmlAnchor;
                //if (BOE_Member_Info_Edit != null)
                //{
                //    List<sQueryString> lstQuery = new List<sQueryString>();
                //    sQueryString objQuery = new sQueryString();
                //    objQuery.QueryString = "user_id";
                //    objQuery.QueryValue = DataBinder.Eval(e.Row.DataItem, "user_id").ToString();
                //    lstQuery.Add(objQuery);
                //    objQuery = new sQueryString();
                //    objQuery.QueryString = "Edit_Index";
                //    objQuery.QueryValue = e.Row.RowIndex.ToString();
                //    lstQuery.Add(objQuery);
                //    BOE_Member_Info_Edit.HRef = GNF.EncryptUrl(lstQuery, "~/UI/UserAccount.aspx");
                //}
            }

        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucUserAccount_Page.ascx-gvMemberList_RowDataBound";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    protected void gvUserInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            if (GridViewShortDirection == SortDirection.Ascending)
            {
                GridViewShortDirection = SortDirection.Descending;
            }
            else
            {
                GridViewShortDirection = SortDirection.Ascending;
            }
            this.Edit_Index = -1;
            gvUserInfo.PageIndex = e.NewPageIndex;
            this.user_id = 0;
            this.BindGrid_UserList();
            OnLoad_Method();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucUserAccount_Page.ascx-gvUserInfo_PageIndexChanging";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    protected void imgBtnEdit_Click(object sender, EventArgs e)
    {

        ImageButton btn = (ImageButton)sender;
        if (btn != null)
        {
            if (PermissionHandler.UserHasPermission("U", MenuName, this.Page))
            {
                this.user_id = Convert.ToInt32(btn.CommandArgument);
                this.Edit_Index = Convert.ToInt32(btn.Attributes["RowIndex"]);
                BindGrid_UserList();
                FillControl();
            }
        }
        // txtUserEmail.ReadOnly = true;
        // txtUserEmail.Enabled = false;


    }
    protected void btnFirst_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = (ImageButton)sender;
        if (btn != null)
        {
            int ID = 0;
            if (!String.IsNullOrEmpty(btn.CommandArgument) && int.TryParse(btn.CommandArgument, out ID) && Convert.ToInt32(btn.CommandArgument) > 0)
            {
                this.Edit_Index = Convert.ToInt32(btn.Attributes["RowIndex"]);
                this.user_id = Convert.ToInt32(btn.CommandArgument);
                OnLoad_Method();
            }
        }
    }
    protected void btnPrev_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = (ImageButton)sender;
        if (btn != null)
        {
            int ID = 0;
            if (!String.IsNullOrEmpty(btn.CommandArgument) && int.TryParse(btn.CommandArgument, out ID) && Convert.ToInt32(btn.CommandArgument) > 0)
            {
                this.Edit_Index = Convert.ToInt32(btn.Attributes["RowIndex"]);
                this.user_id = Convert.ToInt32(btn.CommandArgument);
                OnLoad_Method();
            }
        }
    }
    protected void btnNext_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = (ImageButton)sender;
        if (btn != null)
        {
            int ID = 0;
            if (!String.IsNullOrEmpty(btn.CommandArgument) && int.TryParse(btn.CommandArgument, out ID) && Convert.ToInt32(btn.CommandArgument) > 0)
            {
                this.Edit_Index = Convert.ToInt32(btn.Attributes["RowIndex"]);
                this.user_id = Convert.ToInt32(btn.CommandArgument);
                OnLoad_Method();
            }
        }
    }
    protected void btnLast_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = (ImageButton)sender;
        if (btn != null)
        {
            int ID = 0;
            if (!String.IsNullOrEmpty(btn.CommandArgument) && int.TryParse(btn.CommandArgument, out ID) && Convert.ToInt32(btn.CommandArgument) > 0)
            {
                this.Edit_Index = Convert.ToInt32(btn.Attributes["RowIndex"]);
                this.user_id = Convert.ToInt32(btn.CommandArgument);
                OnLoad_Method();
            }
        }
    }
    #endregion


    #region Public Methods
    public void Save()
    {
        try
        {
            if (this.user_id == 0)
            {
                objuserMembership = new LAPP_user_membership();

                objuserMembership = objUserMembershipBAL.Validate_Email(txtUserEmail.Text.Trim());
                if (objuserMembership != null)
                {
                    divMessage.Visible = true;
                    MessageBox.Show(this.Page, "This email is already registered with us.", (int)eAlertType.Error);

                    return;
                }
            }
            string Validation = "";
            Validation += ValidationHelper.StrongPAsswordValidation(txtPassword.Text);
            if ((IsChangePassword && !string.IsNullOrEmpty(Validation)) || (this.user_id == 0 && !string.IsNullOrEmpty(Validation)))
            {
                MessageBox.Show(this.Page, Validation, (int)eAlertType.Error);
                return;
            }
            objUser = FetchValueFromUser();
            if (objUser != null)
            {
                if (this.user_id > 0)
                {
                    objuserBAL.Update_User_Info(objUser, this.user_id);
                    //objUserHist = FetchUserHistory();
                    //if (objUserHist != null)
                    //{
                    //    objUserHist.Action = "U";
                    //    objUserHist.is_deleted = objUser.Is_Deleted;
                    //    objUserHist.user_id = objUser.User_Id;
                    //    objuserHistBAL.Save_LAPP_user_hist(objUserHist);
                    //}

                    objuserMembership = FetchValueFromUserMembership();
                    objuserMembership.User_Id = this.user_id;//result;
                    objUserMembershipBAL.Update_User_Membership(objuserMembership, this.user_id);

                    //objuserMembershipHist = FetchUserMembershipHistory();
                    //if (objuserMembershipHist != null)
                    //{
                    //    objuserMembershipHist.Action = "U";
                    //    objuserMembershipHist.is_deleted = objuserMembership.Is_Deleted;
                    //    objuserMembershipHist.user_id = objuserMembership.User_Id;
                    //    objUserMembershipHistBAL.Save_LAPP_user_membership_hist(objuserMembershipHist);
                    //}


                    MessageBox.Show(this.Page, Messages.UpdateSuccess(), (int)eAlertType.Success);
                    // ClearUserControl();
                    //Response.Redirect("~/UI/UserManagement.aspx?U_id=" + this.user_id + "", true);
                }
                else
                {
                    int result = objuserBAL.Save_LAPP_User(objUser);
                    if (result > 0)
                    {
                        //objUserHist = FetchUserHistory();
                        //if (objUserHist != null)
                        //{
                        //    objUserHist.Action = "I";
                        //    objUserHist.is_deleted = objUser.Is_Deleted;
                        //    objUserHist.user_id = result;
                        //    objuserHistBAL.Save_LAPP_user_hist(objUserHist);
                        //}

                        objuserMembership = FetchValueFromUserMembership();
                        objuserMembership.User_Id = result;//result;
                        objUserMembershipBAL.Save_LAPP_User_Membership(objuserMembership);
                        //objuserMembershipHist = FetchUserMembershipHistory();
                        //if (objuserMembershipHist != null)
                        //{
                        //    objuserMembershipHist.Action = "I";
                        //    objuserMembershipHist.is_deleted = objuserMembership.Is_Deleted;
                        //    objuserMembershipHist.user_id = result;
                        //    objUserMembershipHistBAL.Save_LAPP_user_membership_hist(objuserMembershipHist);
                        //}

                        if (this.user_id <= 0)
                        {
                            this.user_id = result;
                            MessageBox.Show(this.Page, Messages.SaveSuccess(), (int)eAlertType.Success);
                            //Response.Redirect("~/UI/UserManagement.aspx?S_id=" + this.user_id + "", true);

                            //  ClearUserControl();
                        }
                    }
                    else
                    {
                        divMessage.Visible = true;
                        MessageBox.Show(this.Page, "Error Occured", (int)eAlertType.Error);
                    }

                }


                //divMessage.Visible = true;
                //ltrMessage.Text = "Updated Successfully.";

                this.Edit_Index = -1;
                BindGrid_UserList();
            }




        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucUserAccount_Page.ascx-Save";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }


    }

    public void OnLoad_Method()
    {
        BindGrid_UserList();
        BindUserRole();
        BindrRole();
        ClearUserControl();
    }
    public void BindUserRole()
    {
        try
        {
            List<LAPP_role> lstRole = new List<LAPP_role>();

            lstRole = objRoleBAL.Get_All_LAPP_role();
            if (lstRole != null)
            {
                ddlUSerRole.DataSource = lstRole;
                ddlUSerRole.DataTextField = "LAPP_role_name";
                ddlUSerRole.DataValueField = "LAPP_role_id";
                ddlUSerRole.DataBind();
            }
            ddlUSerRole.Items.Insert(0, new ListItem("--Select Role--", "-1"));
            ddlUSerRole.SelectedValue = "-1";
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucUserAccount_Page.ascx-BindUserRole";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    public void BindrRole()
    {
        try
        {
            List<LAPP_role> lstRole = new List<LAPP_role>();

            lstRole = objRoleBAL.Get_All_LAPP_role();
            if (lstRole != null)
            {
                ddlRole.DataSource = lstRole;
                ddlRole.DataTextField = "LAPP_role_name";
                ddlRole.DataValueField = "LAPP_role_id";
                ddlRole.DataBind();
            }
            ddlRole.Items.Insert(0, new ListItem("Select", "-1"));
            ddlRole.SelectedValue = "-1";
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucUserAccount_Page.ascx-BindUserRole";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    public void BindGender()
    {
        ddlGender.Items.Insert(0, new ListItem("Select", "-1"));
        ddlGender.SelectedIndex = -1;
    }
    public void FillControl()
    {

        try
        {
            if (this.user_id > 0)
            {
                btnSave.Text = "Update Account";
                txtUserEmail.Enabled = true;


            }
            else
            {
                btnSave.Text = "Create Account";
                txtUserEmail.Enabled = true;

            }

            if (this.user_id > 0)
            {
                objUser = new LAPP_user();
                objUser = objuserBAL.Get_User_Info_By_User_Id(this.user_id);
                if (objUser != null)
                {
                    txtuserFirstName.Text = objUser.First_Name;
                    txtUserLastName.Text = objUser.Last_Name;
                    txtMiddleName.Text = objUser.Middle_Name;
                    txtDOB.Text = objUser.Date_Of_Birth.Date != UIHelper.DefaultDate() ? objUser.Date_Of_Birth.ToShortDateString() : "";
                    //txtAddress.Text = objUser.Address;
                    ddlUSerRole.SelectedValue = objUser.LAPP_Role_Id.ToString();
                    ddlGender.SelectedIndex = Convert.ToInt32(objUser.Gender);
                    //txtUserEmail.Text = objUser.Email.ToString();
                }
                objuserMembership = objUserMembershipBAL.Get_User_Membership_By_User_Id(this.user_id);
                if (objuserMembership != null)
                {
                    txtUserEmail.Text = objuserMembership.Email;
                }

            }
            //if (chkChangePasword.Checked)
            //{
            //    txtPassword.Visible = true;
            //    txtPassword_repeat.Visible = true;
            //}
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucUserAccount_Page.ascx-FillControl";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    public void ClearUserControl()
    {
        txtuserFirstName.Text = string.Empty;
        txtUserLastName.Text = string.Empty;
        txtMiddleName.Text = string.Empty;
        txtUserEmail.Text = string.Empty;
        ddlGender.SelectedValue = null;
        txtDOB.Text = string.Empty;
        txtPassword.Text = string.Empty;
        ddlUSerRole.SelectedValue = null;
        btnSave.Text = "Create Account";
        txtUserEmail.Enabled = true;
        this.user_id = 0;
    }
    public LAPP_exception_log Fetchlog()
    {
        objExLog.User_Id = UIHelper.UserIDBySession();
        objExLog.Url = string.Empty;
        objExLog.Reference_Type_Id = string.Empty;
        objExLog.Reference_Id = 1;
        objExLog.Thread = "error occured";
        objExLog.Date = DateTime.Now;
        objExLog.Level = "High";
        objExLog.Logger = "errorLogger";
        return objExLog;
    }
    public void SendVerifyEmail(string Key, string Email)
    {
        try
        {
            objuserMembership = objUserMembershipBAL.Validate_Email(Email);
            if (objuserMembership != null)// && objMembership.Is_Default_Password)
            {
                string toAddress = Email;
                string pass = objuserMembership.Password;
                string url = UIHelper.GetVerifyUrl() + "?" + Encryption.Base64Encrypt("Email=" + Email);
                string subject = "LAPP Account Activation - VERIFY YOUR EMAIL ACCOUNT";
                StringBuilder mailContent = new StringBuilder();

                mailContent.AppendFormat("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"color: rgb(34, 34, 34);");
                mailContent.Append("font-family: arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal;");
                mailContent.Append("font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2;");
                mailContent.Append("text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;");
                mailContent.Append("-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"");
                mailContent.Append("width=\"600\">");
                mailContent.Append("<tr>");
                mailContent.Append("<td style=\"font-family: arial, sans-serif; height:30px; margin: 0px; background-color: rgb(28, 94, 160);");
                mailContent.Append("line-height: 0;\">");
                mailContent.Append("</td>");
                mailContent.Append("</tr>");
                mailContent.Append("<tr>");
                mailContent.Append("<td style=\"font-family: arial, sans-serif; margin: 0px; padding: 25px; border-right-width: 1px;");
                mailContent.Append("border-left-width: 1px; border-style: none solid; border-right-color: rgb(178, 180, 181);");
                mailContent.Append("border-left-color: rgb(178, 180, 181); background-color: rgb(255, 255, 255);");
                mailContent.Append("background-image: none; background-position: initial initial; background-repeat: initial initial;\">");
                mailContent.Append("<p style=\"color: rgb(85, 85, 85); font-family: arial; font-size: 16px; line-height: 26px;");
                mailContent.Append("   margin: 0px;\">");
                mailContent.Append("</p>");
                mailContent.Append("<div style=\"color: rgb(85, 85, 85); font-family: arial; font-size: 14px; line-height: 18px;");
                mailContent.Append(" margin: 0px;\">");
                mailContent.Append(" <b>VERIFY YOUR EMAIL ACCOUNT</b><br />");
                mailContent.Append("<br />");
                mailContent.AppendFormat("<b>Email: {0}</b>", Email);
                mailContent.Append("<br />");
                mailContent.Append(" Welcome to<span class=\"Apple-converted-space\">&nbsp;</span><span class=\"il\" style=\"");
                mailContent.Append("background-position: initial initial; background-repeat: initial initial;\">LAPP</span>.");
                mailContent.Append(" To activate your<span class=\"Apple-converted-space\">&nbsp;</span><span class=\"il\"");
                mailContent.Append("style=\"background-position: initial initial;");
                mailContent.Append(" background-repeat: initial initial;\">LAPP</span><span class=\"Apple-converted-space\">&nbsp;</span>account");
                mailContent.Append(" you must first verify your email address by<span class=\"Apple-converted-space\">&nbsp;</span><a");
                mailContent.AppendFormat("href=\"{0}\"", url);
                mailContent.Append("style=\"color: rgb(17, 85, 204);\" target=\"_blank\">clicking the </a><span class=\"Apple-converted-space\">&nbsp;</span>following ");
                mailContent.Append("link and entering the following 6 character verification pin.<span class=\"Apple-converted-space\">&nbsp;</span><span");
                mailContent.AppendFormat("style=\"font-weight: bold; font-family: 'Courier New'; color: black; text-transform: uppercase;\"></span><br />");
                mailContent.Append("<br />");
                //mailContent.Append("<b>HAVING TROUBLE?</b><br />");
                //mailContent.Append("<br />");
                //mailContent.Append("If the link above did not work, you can copy and paste the full URL from your mail");
                //mailContent.Append("client into your web browser. The URL should be a single line, if your mail client");
                //mailContent.Append("splits it into multiple lines, copy and paste each line seperatly.<br />");
                //mailContent.Append("<br />");
                mailContent.AppendFormat("<a href=\"{0}\"", url);
                mailContent.AppendFormat("style=\"color: rgb(17, 85, 204);\" target=\"_blank\">{0}</a><br />", url);
                mailContent.Append("<br />");
                mailContent.Append("once you have opened the link above, you will be asked to enter verification");
                mailContent.Append(" PIN.<br />");
                mailContent.Append(" <br />");
                mailContent.Append("Verification PIN:<span class=\"Apple-converted-space\">&nbsp;</span><span style=\"font-weight: bold; font-size:16px");
                mailContent.AppendFormat("font-family: 'Courier New'; color: black; font-weight:bold\">{0}</span><br />", pass);
                mailContent.Append("<br />");
                mailContent.Append("<b>ADDITIONAL ASSISTANCE</b><br />");
                mailContent.Append("<br />");
                mailContent.Append("Thank you for choosing<span class=\"Apple-converted-space\">&nbsp;</span><span class=\"il\"");
                mailContent.Append("style=\" background-position: initial initial;");
                mailContent.Append("background-repeat: initial initial;\">LAPP</span><span class=\"Apple-converted-space\">&nbsp;</span>as");
                mailContent.Append(" your permit provider. If you need further assistance, please e-mail ");
                mailContent.Append(" <a href=\"mailto:info@LAPP.com.\">info@LAPP.com.</a>.<br />");
                mailContent.Append("<br />");
                mailContent.Append("<b>NOTE:</b><span class=\"Apple-converted-space\">&nbsp;</span><i>Please do not respond");
                mailContent.Append(" to this email, it does not accept incoming emails!<span class=\"Apple-converted-space\">&nbsp;</span></i><br />");
                mailContent.Append("</div><div style=\"clear:both\"></div>");
                //mailContent.Append("<p >We value your time,<div style=\"clear:both\"></div>The LAPP, Inc. Team<div style=\"clear:both\"></div><a href=\"http://www.LAPP.com\"><img style=\"border: none\" title=\"LAPPLogo\" src=\"https://nvbboe.com/App_Themes/Theme1/images/Logo_small.png\"></a>");
                //mailContent.Append("</p>");
                mailContent.Append(" </td>");
                mailContent.Append("</tr>");
                mailContent.Append(" </table>");

                string message = mailContent.ToString();

                EmailHelper.SendMail(toAddress, subject, message, true);

                divMessage.Visible = true;
                ltrMessage.Text = "A Email Send to your email address.Please check your inbox or spam folder and follow the instruction in the e-mail to";

            }
            else
            {
                divMessage.Visible = true;
                ltrMessage.Text = "error occured";
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucUserAccount_Page.ascx-SendVerificationEmail";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }

    }
    public void BindGrid_UserList()
    {
        try
        {
            List<LAPP_user> lstUser = new List<LAPP_user>();
            lstUser = objuserBAL.Get_All_User();
            if (lstUser != null)
            {
                lstUser = lstUser.Where(x => x.Is_Deleted == false && x.User_Id != 66).ToList();
                lstUser = lstUser.OrderByDescending(x => x.User_Id).ToList();
                if (!string.IsNullOrEmpty(Email))
                {
                    lstUser = lstUser.Where(x => x.First_Name.ToString().ToLower().Contains(Email.ToLower())).ToList();
                }
                gvUserInfo.DataSource = lstUser;
                gvUserInfo.DataBind();
                if (this.Edit_Index >= 0)
                {
                    gvUserInfo.Rows[this.Edit_Index].CssClass = "selected";
                }
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucUserAccount_Page.ascx-BindGrid_UserList";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }


    public void FillButton()
    {
        if (Edit_Index >= 0)
        {
            ImageButton BOE_User_Info_Edit_First = null;
            ImageButton BOE_User_Info_Edit_Prev = null;
            ImageButton BOE_User_Info_Edit_Next = null;
            ImageButton BOE_User_Info_Edit_Last = null;

            BOE_User_Info_Edit_First = gvUserInfo.Rows[0].FindControl("imgBtnEdit") as ImageButton;
            if (Edit_Index > 0)
            {
                BOE_User_Info_Edit_Prev = gvUserInfo.Rows[Edit_Index - 1].FindControl("imgBtnEdit") as ImageButton;
            }
            if (Edit_Index < gvUserInfo.Rows.Count)
            {
                BOE_User_Info_Edit_Next = gvUserInfo.Rows[Edit_Index - 1].FindControl("imgBtnEdit") as ImageButton;
            }
            BOE_User_Info_Edit_Last = gvUserInfo.Rows[gvUserInfo.Rows.Count - 1].FindControl("imgBtnEdit") as ImageButton;
            if (BOE_User_Info_Edit_First != null && BOE_User_Info_Edit_Last != null)
            {
                btnFirst.Attributes["RowIndex"] = BOE_User_Info_Edit_First.Attributes["RowIndex"];
                btnFirst.CommandArgument = BOE_User_Info_Edit_First.CommandArgument;
                btnLast.Attributes["RowIndex"] = BOE_User_Info_Edit_Last.Attributes["RowIndex"];
                btnLast.CommandArgument = BOE_User_Info_Edit_Last.CommandArgument;
            }
            else
            {
                btnFirst.CommandArgument = "";
                btnLast.CommandArgument = "";
            }
            if (BOE_User_Info_Edit_Next != null)
            {
                btnNext.Attributes["RowIndex"] = BOE_User_Info_Edit_Next.Attributes["RowIndex"];
                btnNext.CommandArgument = BOE_User_Info_Edit_Next.CommandArgument;
            }
            else
            {
                btnNext.CommandArgument = "";
            }
            if (BOE_User_Info_Edit_Prev != null)
            {
                btnPrev.Attributes["RowIndex"] = BOE_User_Info_Edit_Prev.Attributes["RowIndex"];
                btnPrev.CommandArgument = BOE_User_Info_Edit_Prev.CommandArgument;
            }
            else
            {
                btnPrev.CommandArgument = "";
            }
        }
    }

    #endregion


    #region Private Methods

    private static string CreateRandomPassword(int passwordLength)
    {
        string allowedChars = "abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ0123456789!@$?";
        char[] chars = new char[passwordLength];
        Random rd = new Random();

        for (int i = 0; i < passwordLength; i++)
        {
            chars[i] = allowedChars[rd.Next(0, allowedChars.Length)];
        }

        return new string(chars);
    }

    private LAPP_user FetchValueFromUser()
    {
        if (this.user_id > 0)
        {
            objUser = objuserBAL.Get_User_Info_By_User_Id(this.user_id);
            objUser.First_Name = txtuserFirstName.Text.Trim();
            objUser.Last_Name = txtUserLastName.Text.Trim();
            objUser.Middle_Name = txtMiddleName.Text.Trim();
            objUser.LAPP_Role_Id = Convert.ToInt32(ddlUSerRole.SelectedValue.Trim());
            objUser.DTS = DateTime.Now;
            objUser.Address = "";
            objUser.Gender = Convert.ToBoolean(ddlGender.SelectedValue);
            objUser.Date_Of_Birth = !String.IsNullOrEmpty(txtDOB.Text) ? Convert.ToDateTime(txtDOB.Text.Trim()) : UIHelper.DefaultDate();
            objUser.Is_Deleted = false;
            objUser.Is_Active = true;
            objUser.Created_On = DateTime.Now;
        }
        else
        {
            objUser = new LAPP_user();
            objUser.First_Name = txtuserFirstName.Text.Trim();
            objUser.LAPP_Role_Id = Convert.ToInt32(ddlUSerRole.SelectedValue.Trim());
            objUser.Last_Name = txtUserLastName.Text.Trim();
            objUser.Middle_Name = txtMiddleName.Text.Trim();
            objUser.DTS = DateTime.Now;
            objUser.Address = "";// txtAddress.Text.Trim();
            objUser.Gender = Convert.ToBoolean(ddlGender.SelectedValue);
            objUser.Date_Of_Birth = !String.IsNullOrEmpty(txtDOB.Text) ? Convert.ToDateTime(txtDOB.Text.Trim()) : UIHelper.DefaultDate();
            objUser.Is_Deleted = false;
            objUser.Created_By = UIHelper.UserIDBySession();
            objUser.Is_Active = true;
            objUser.Created_On = DateTime.Now;
        }
        return objUser;
    }
    private LAPP_user_membership FetchValueFromUserMembership()
    {
        string pass = CreateRandomPassword(6).ToString();
        if (this.user_id > 0)
        {
            objuserMembership = objUserMembershipBAL.Get_User_Membership_By_User_Id(this.user_id);
            objuserMembership.Email = txtUserEmail.Text.Trim();
            //objuserMembership.password = Encryption.Base64Encrypt(pass);
            objuserMembership.DTS = DateTime.Now;
            objuserMembership.User_Name = txtuserFirstName.Text + " " + txtUserLastName.Text;
            objuserMembership.Created_On = DateTime.Now;
            if (IsChangePassword)
            {
                objuserMembership.Password = txtPassword.Text.Trim();
                IsChangePassword = false;
            }
        }
        else
        {
            objuserMembership = new LAPP_user_membership();
            objuserMembership.Email = txtUserEmail.Text.Trim();
            objuserMembership.Password = pass;
            objuserMembership.Comment = "";
            objuserMembership.Created_On = DateTime.Now;
            objuserMembership.DTS = DateTime.Now;
            objuserMembership.Failed_Password_Answer_Attempt_Count = 0;
            objuserMembership.Failed_Password_Attempt_Count = 0;
            objuserMembership.Is_Active = true;
            objuserMembership.Is_Default_Password = false;
            objuserMembership.Is_Deleted = false;
            objuserMembership.Is_Locked_Out = false;
            objuserMembership.Last_Activity_Date = DateTime.Now;
            objuserMembership.Last_Lockout_Date = DateTime.Now;
            objuserMembership.Last_Login_Date = DateTime.Now;
            objuserMembership.Last_Password_Changed_Date = DateTime.Now;
            objuserMembership.LoweredEmail = "";
            objuserMembership.MobilePIN = "";
            objuserMembership.Password_Answer = "";
            objuserMembership.PasswordFormat = 0;
            objuserMembership.PasswordQuestion = "";
            objuserMembership.PasswordSalt = "";
            objuserMembership.User_Name = txtuserFirstName.Text.Trim() + " " + txtUserLastName.Text.Trim();
            objuserMembership.Created_By = UIHelper.UserIDBySession();
            objuserMembership.Password = txtPassword.Text.Trim();

        }
        return objuserMembership;
    }
 
    #endregion



    protected void lnkArchive_Click(object sender, EventArgs e)
    {
        try
        {
            if (this.user_id > 0)
            {
                if (PermissionHandler.UserHasPermission("U", MenuName, this.Page))
                {
                    objUser = new LAPP_user();
                    objUser = objuserBAL.Get_User_Info_By_User_Id(this.user_id);
                    if (objUser != null)
                    {
                        //objUser.Is_Archived = true;
                        objuserBAL.Update_User_Info(objUser, this.user_id);
                    }
                    BindGrid_UserList();
                    MessageBox.Show(this.Page, "Archived Sucessfully");
                }
            }
        }
        catch (Exception ex)
        {

            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucUserAccount_Page.ascx-lnkArchive_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }

    }
    protected void lnkDelete_Click(object sender, EventArgs e)
    {
        try
        {
            if (PermissionHandler.UserHasPermission("D", MenuName, this.Page))
            {
                if (this.user_id > 0)
                {
                    objUser = new LAPP_user();
                    objUser = objuserBAL.Get_User_Info_By_User_Id(this.user_id); ;

                    if (objUser != null)
                    {
                        objUser.Is_Deleted = true;
                        objUser.DTS = DateTime.Now;
                        objuserBAL.Update_User_Info(objUser, this.user_id);

                        objuserMembership = objUserMembershipBAL.Get_User_Membership_By_User_Id(this.user_id);

                        if (objuserMembership != null)
                        {
                            objuserMembership.Is_Deleted = true;
                            objuserMembership.DTS = DateTime.Now;
                            objUserMembershipBAL.Update_User_Membership(objuserMembership, this.user_id);
                        }
                    }
                    BindGrid_UserList();

                    MessageBox.Show(this.Page, "Deleted Sucessfully");
                }

                ClearUserControl();
            }
        }
        catch (Exception ex)
        {

            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucUserAccount_Page.ascx-lnkDelete_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
    }


    protected void btnCancel_Click1(object sender, EventArgs e)
    {
        this.user_id = 0;
        ClearUserControl();
        this.Edit_Index = -1;
        BindGrid_UserList();
    }
    protected void chkChangePasword_CheckedChanged(object sender, EventArgs e)
    {
        if (chkChangePasword.Checked)
        {
            this.IsChangePassword = true;
        }
        //else
        //{
        //    IsChangePassword = false;
        //}
    }
}