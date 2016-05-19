using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using System.Text;
using LAPP.CORE;
public partial class Module_Accounts_ucForgetPassword : System.Web.UI.UserControl
{
    #region Class Members
    LAPP_user_membershipBAL objMembershipBAL = new LAPP_user_membershipBAL();

    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();

    #endregion

    #region Page Event Handler
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //divMessage.Visible = false;
            ltrMessage.Text = "";
        }
    }
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
    protected void btnResetpsw_Click(object sender, EventArgs e)
    {
        try
        {
            //LAPP_user_membership objUserMemberShip = objMembershipBAL.Validate_Email(txtEmail.Text);
            //if (objUserMemberShip != null)
            //{
            //    LAPP_user objUser = new LAPP_user();
            //    LAPP_userBAL objUserBAL = new LAPP_userBAL();
            //    objUser = objUserBAL.Get_User_Info_By_User_Id(objUserMemberShip.User_Id);
            //    if (objUser != null)
            //    {
            //        objUserMemberShip.Password = CreateRandomPassword(6);
            //        NotificationHelper.SendEmail_PasswordReset(txtEmail.Text.Trim(), objUser.Full_Name, objUserMemberShip);
            //        //divMessage.Visible = true;
            //        objUserMemberShip.Is_Default_Password = true;
            //        objMembershipBAL.Update_User_Membership(objUserMemberShip, objUserMemberShip.User_Id);
            //        btnResetpsw.Enabled = false;

            //        ltrMessage.Text = MessageBox.BuildValidationMessage("An email has been sent to your email address. Please check your inbox or spam folder and follow the instruction in the e-mail", 1);
            //    }

            //}
            //else if (objUserMemberShip != null && objUserMemberShip.Is_Default_Password == true)
            //{
            //    //divMessage.Visible = true;
            //    Response.Redirect(AppHelper.GetPrefixURLApplicationBackOffice() + "UI/ResetPassword.aspx?id=" + Encryption.Base64Encrypt("UserID=" + objUserMemberShip.User_Id + "&Email=" + objUserMemberShip.Email + "&linkType=email"));
            //    btnResetpsw.Enabled = false;
            //    //ltrMessage.Text = MessageBox.BuildValidationMessage("Your account is not verified yet, please verify your account using email which is sent to you.", 2);
            //    return;
            //}
            //else
            //{
            //    //divMessage.Visible = true;
            //    ltrMessage.Text = MessageBox.BuildValidationMessage("This email is not registered.", 2);
            //    return;
            //}
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucForgetPassword.ascx-btnResetpsw_Click";
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
}