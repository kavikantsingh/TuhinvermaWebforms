using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.CORE;

public partial class Module_Accounts_ucChangePassword : System.Web.UI.UserControl
{

    #region Class Members

    LAPP_user_membershipBAL objUserMmbershipBAL = new LAPP_user_membershipBAL();
    LAPP_user_membership objUserMmbership = new LAPP_user_membership();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();

    #endregion

    #region Class Property

    public int User_Id
    {
        get
        {
            if (ViewState["User_Id"] != null)
            {
                return UIHelper.UserIDBySession();
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["User_Id"] = value;
        }
    }

    #endregion

    #region Page Event Handler

    protected void Page_Load(object sender, EventArgs e)
    {
        this.User_Id = UIHelper.UserIDBySession();

        if (!IsPostBack)
        {

            objUserMmbership = objUserMmbershipBAL.Get_User_Membership_By_User_Id(this.User_Id);
            if (objUserMmbership != null && objUserMmbership.Is_Default_Password == true)
            {
                //pOldPass.Visible = false;
                txtOldPassword.Text = objUserMmbership.Password;
            }
            else
            {
                //pOldPass.Visible = true;
            }
        }
    }

    protected void btnChangePassword_Click(object sender, EventArgs e)
    {
        try
        {
            string oldpassword = txtOldPassword.Text.Trim();
            string Newpassword = txtConfirmPassword.Text.Trim();
            string Validation = "";
            Validation += ValidationHelper.StrongPAsswordValidation(txtConfirmPassword.Text);
            if (string.IsNullOrEmpty(Validation))
            {

                objUserMmbership = objUserMmbershipBAL.Get_User_Membership_By_User_Id(this.User_Id);
                if (objUserMmbership != null && objUserMmbership.Is_Default_Password == true)
                {
                    //pOldPass.Visible = false;
                    txtOldPassword.Text = objUserMmbership.Password;
                }

                else if (objUserMmbership != null && objUserMmbership.Password == oldpassword)
                {
                    objUserMmbership.Password = Newpassword;
                    objUserMmbership.Is_Default_Password = false;
                    objUserMmbershipBAL.Update_User_Membership(objUserMmbership, objUserMmbership.User_Id);
                    Response.Redirect("~/UI/Dashboard.aspx?pID=1", false);
                }
                else
                {

                    ltrMessage.Text = MessageBox.BuildValidationMessage("Your old password does not matched.", 2);
                }
            }
            else
            {
                ltrMessage.Text = MessageBox.BuildValidationMessage(Validation, 2);
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucChangePassword.ascx-btnChangePassword_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    #endregion

    #region Public Methods

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

    #endregion

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/LAPP_UI_Backoffice/UI/Dashboard.aspx", true);

    }
}