using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using LAPP.CORE;
using System.Drawing;
using System.Net.Mail;


public partial class ucLogIn : System.Web.UI.UserControl
{
    #region Class Members
    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    #endregion
    public string Applicant_Email
    {
        get
        {
            if (Session["Applicant_Email"] != null)
            {
                return Convert.ToString(Session["Applicant_Email"]);

            }
            else
            {
                return "";
            }
        }
        set
        {
            Session["Applicant_Email"] = value;
        }
    }


    public string Application_Number
    {
        get
        {
            if (Session["Application_Number"] != null)
            {
                return Convert.ToString(Session["Application_Number"]);

            }
            else
            {
                return "";
            }
        }
        set
        {
            Session["Application_Number"] = value;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        ltrError.Text = "";
        if (!IsPostBack)
        {
            //if (Session["Message"] != null)
            //{
            //    ltrError.Text = MessageBox.BuildValidationMessage(Session["Message"].ToString(), 2);
            //}
            //Session.Clear();
            //FillMessage();
        }

    }

    public void FillMessage()
    {
        lapp_content objlapp_content = new lapp_content();
        lapp_contentBAL objlapp_contentBAL = new lapp_contentBAL();
        content.InnerHtml = objlapp_contentBAL.Get_lapp_content_by_Content_ID(1).Content_Text;
    }

    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        ltrError.Text = "";


        string validateMsg = "";
        validateMsg += ValidationHelper.IsValidEmail(txtUserName.Text, "<li>Please enter valid Username (Email).</li>");
        validateMsg += ValidationHelper.IsRequired(txtPassword.Text, "<li>Please enter Password.</li>", true);

        if (!String.IsNullOrEmpty(validateMsg))
        {
            string vmsg = validateMsg;
            ltrError.Text = MessageBox.BuildValidationMessage(vmsg, 2);
            return;
        }

        if (txtUserName.Text.ToLower() == "individual@inlumon.com" && txtPassword.Text.ToLower() == "123456")
        {
            sIndividualLoginInfo sObjeIndividualLoginInfo = new sIndividualLoginInfo();
            sObjeIndividualLoginInfo.Password = "";
            sObjeIndividualLoginInfo.Applicant_Id = 1;
            sObjeIndividualLoginInfo.Last_Name = "Gakkexy";
            sObjeIndividualLoginInfo.First_Name = "Nancy";
            sObjeIndividualLoginInfo.Application_Number = "";
            sObjeIndividualLoginInfo.User_Name = "Nancy Verma";
            sObjeIndividualLoginInfo.Email = "individual@inlumon.com";
            sObjeIndividualLoginInfo.Individual_ID = 1;
            Session["sObjeIndividualLoginInfo"] = sObjeIndividualLoginInfo;
            Response.Redirect("Dashboard.aspx", false);
        }
        else if (txtUserName.Text.ToLower() == "applicant@inlumon.com" && txtPassword.Text.ToLower() == "123456")
        {
            sIndividualLoginInfo sObjeIndividualLoginInfo = new sIndividualLoginInfo();
            sObjeIndividualLoginInfo.Password = "";
            sObjeIndividualLoginInfo.Applicant_Id = 1;
            sObjeIndividualLoginInfo.Last_Name = "Blachly";
            sObjeIndividualLoginInfo.First_Name = "Nancy";
            sObjeIndividualLoginInfo.Application_Number = "";
            sObjeIndividualLoginInfo.User_Name = "Nancy Blachly";
            sObjeIndividualLoginInfo.Email = "applicant@inlumon.com";
            sObjeIndividualLoginInfo.Individual_ID = 1;
            Session["sObjeIndividualLoginInfo"] = sObjeIndividualLoginInfo;
            Response.Redirect("ApplicantDashboard.aspx", false);
        }
        else
        {
            ltrError.Text = MessageBox.BuildValidationMessage("Invalid username or password.", 2);
        }

        //DoLogin(txtUserName.Text.Trim(), txtPassword.Text.Trim());

        //ltrError.Text = MessageBox.BuildValidationMessage("Invalid Username (Email) or Password.", 2);
    }



    //**********Dive hide & Show code************************//
    protected void btnSavePersonalInfo_Click(object sender, EventArgs e)
    {
        if (chkEmailVerification.Checked)
        {
            Response.Redirect("CertificationApplication.aspx", false);
        }
        else
        {
            pnlSignUpStep2.Visible = true;
            ltrSignUpSuccess.Text = MessageBox.BuildValidationMessage("Please check your email for verification of the email address. You will be able to continue with your application after you have verified your email address.", 1);
            pnlSignUpStep1.Visible = false;
        }
        chkEmailVerification.Checked = false;
    }

    protected void btnCancelPersonalInfo_Click(object sender, EventArgs e)
    {
        ltrSignUpSuccess.Text = "";
        ltrError.Text = "";
        pnlLogInPage.Visible = true;
        pnlSignUpStep1.Visible = false;
        pnlSignUpStep2.Visible = false;
        chkEmailVerification.Checked = false;
    }

    protected void lnkbtnCreateNewAcc_Click(object sender, EventArgs e)
    {
        pnlLogInPage.Visible = false;
        pnlSignUpStep1.Visible = true;
    }

    //protected void btnSubmittoLogin_Click(object sender, EventArgs e)
    //{
    //    pnlLogInPage.Visible = true;
    //    pnlSignUpStep1.Visible = false;
    //}

    //protected void lnkBacktoStep1_Click(object sender, EventArgs e)
    //{
    //    pnlLogInPage.Visible = true;
    //    pnlSignUpStep1.Visible = false;
    //}

    protected void btnshowloginpnl_Click(object sender, EventArgs e)
    {
        ltrSignUpSuccess.Text = "";
        ltrError.Text = "";
        Divloginpnl.Visible = true;
        Divaplynpnl.Visible = false;
        pnlLogInPage.Visible = true;
        pnlSignUpStep1.Visible = false;
        pnlSignUpStep2.Visible = false;
        chkEmailVerification.Checked = false;

    }

    protected void btnGotoAppRequest_Click(object sender, EventArgs e)
    {
        ltrError.Text = "";
        ltrSignUpSuccess.Text = "";
        pnlSignUpStep2.Visible = false;
        pnlLogInPage.Visible = false;
        pnlSignUpStep1.Visible = true;
    }
    //**********Dive hide & Show code End************************//
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Divaplynpnl.Visible = true;
        Divloginpnl.Visible = false;
        ltrError.Text = "";
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

    protected void btnSendPassword_Click(object sender, EventArgs e)
    {
        ltrError.Text = "";


        string validateMsg = "";
        validateMsg += ValidationHelper.IsValidEmail(txtUserName.Text, "<li>Please enter valid username (Email).</li>");//

        if (!String.IsNullOrEmpty(validateMsg))
        {
            string vmsg = validateMsg;
            ltrError.Text = MessageBox.BuildValidationMessage(vmsg, 2);
            return;
        }
        RowForgot.Visible = false;
        RowLogin.Visible = true;
        RowPassword.Visible = true;
        SendForgotPassword(txtUserName.Text, true);


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

    private void SendForgotPassword(string Email, bool IsMember = false)
    {

    }

    protected void btnCancelForget_Click(object sender, EventArgs e)
    {
        RowForgot.Visible = false;
        RowLogin.Visible = true;
        RowPassword.Visible = true;
    }

    protected void lnkForgot_Click(object sender, EventArgs e)
    {
        RowForgot.Visible = true;
        RowLogin.Visible = false;
        RowPassword.Visible = false;
    }

    protected void btnContinue_Click(object sender, EventArgs e)
    {
        ltrSignUpSuccess.Text = "";
        ltrError.Text = "";
        Divgetemail.Visible = true;
        Divaplynpnl.Visible = false;
        pnlLogInPage.Visible = true;
        pnlSignUpStep1.Visible = false;
        pnlSignUpStep2.Visible = false;
        chkEmailVerification.Checked = false;
    }

    protected void lnkNoLogin_Click(object sender, EventArgs e)
    {
        ltrSignUpSuccess.Text = "";
        ltrError.Text = "";
        Divgetemail.Visible = true;
        Divaplynpnl.Visible = false;
        pnlLogInPage.Visible = true;
        pnlSignUpStep1.Visible = false;
        pnlSignUpStep2.Visible = false;
        chkEmailVerification.Checked = false;
        Divloginpnl.Visible = false;
    }

    protected void btnCancelSend_Click(object sender, EventArgs e)
    {
        ltrError.Text = "";
        Divgetemail.Visible = false;
        Divaplynpnl.Visible = true;
        //txtEmailIdforEmail.Text = string.Empty;
        //txtApplicationPassword.Text = string.Empty;
    }

    protected void btnSendEmail_Click(object sender, EventArgs e)
    {
        if (ValidateControl())
        {
            ltrError.Text = "";
            Response.Redirect("CertificationApplication.aspx", false);

            // DoLogin(txtEmailIdforEmail.Text, txtApplicationPassword.Text, true);
            //    string Error = NotificationHelper.SendEmail_ContinueApplication(txtEmailIdforEmail.Text, txtApplicationNo.Text);
            //    if (string.IsNullOrEmpty(Error))
            //    {
            //        Divgetemail.Visible = false;
            //        Divaplynpnl.Visible = true;
            //        txtEmailIdforEmail.Text = string.Empty;
            //        txtApplicationNo.Text = string.Empty;
            //        ltrError.Text = MessageBox.BuildValidationMessage("An email has been sent to your email address with application detail.");
            //    }
            //    else
            //    {
            //        ltrError.Text = Error;
            //    }
        }
        else
        {
            return;
        }
    }

    private void GetLinkbyEmail()
    {

    }

    public bool ValidateControl()
    {
        ltrError.Text = "";
        string validateMsg = "";
        string vmsg = "";
        bool validate = true;
        try
        {
            validateMsg += ValidationHelper.IsRequired(txtApplicationNo.Text, "<li>Please enter valid application number.</li>");
            validateMsg += ValidationHelper.IsValidDateMMDDYYYY(txtDOB.Text, "<li>Please enter valid date of birth.</li>");
            if (!String.IsNullOrEmpty(validateMsg))
            {
                vmsg = validateMsg;
                ltrError.Text = MessageBox.BuildValidationMessage(vmsg, 2);
                //txtLastName.Focus();
                validate = false;
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            ltrError.Text = MessageBox.BuildValidationMessage(ex.Message, 2);
        }
        return validate;
    }

    protected void lnkForgot2_Click(object sender, EventArgs e)
    {
        RowForgotSecond.Visible = true;
        RowLoginSecond.Visible = false;
        RowPasswordSecond.Visible = false;

    }

    protected void btnSendPassword2_Click(object sender, EventArgs e)
    {
        ltrError.Text = "";


        string validateMsg = "";
        //validateMsg += ValidationHelper.IsValidEmail(txtEmailIdforEmail.Text, "<li>Please enter valid username (Email).</li>");//

        if (!String.IsNullOrEmpty(validateMsg))
        {
            string vmsg = validateMsg;
            ltrError.Text = MessageBox.BuildValidationMessage(vmsg, 2);
            return;
        }
        RowForgotSecond.Visible = false;
        RowLoginSecond.Visible = true;
        RowPasswordSecond.Visible = true;
        // SendForgotPassword(txtEmailIdforEmail.Text, false);

    }

    protected void btnCancelForget2_Click(object sender, EventArgs e)
    {
        RowForgotSecond.Visible = false;
        RowLoginSecond.Visible = true;
        RowPasswordSecond.Visible = true;
    }
}
