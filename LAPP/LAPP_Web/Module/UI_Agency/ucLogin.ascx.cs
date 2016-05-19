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
public partial class Module_UI_Agency_ucLogin : System.Web.UI.UserControl
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
            if (Session["Message"] != null)
            {
                ltrError.Text = MessageBox.BuildValidationMessage(Session["Message"].ToString(), 2);
            }
            Session.Clear();
            FillMessage();
        }

    }

    public void FillMessage()
    {
        lapp_content objlapp_content = new lapp_content();
        lapp_contentBAL objlapp_contentBAL = new lapp_contentBAL();
        // content.InnerHtml = objlapp_contentBAL.Get_lapp_content_by_Content_ID(1).Content_Text;
    }



   
    protected void btnSavePersonalInfo_Click(object sender, EventArgs e)
    {
        //  pnlSignUpStep2.Visible = true;
        pnlLogInPage.Visible = false;
        //pnlSignUpStep1.Visible = false;
    }

    protected void lnkCancelPersonalInfo_Click(object sender, EventArgs e)
    {
        // pnlSignUpStep2.Visible = false;
        pnlLogInPage.Visible = true;
        //pnlSignUpStep1.Visible = false;
    }

    protected void lnkbtnCreateNewAcc_Click(object sender, EventArgs e)
    {
        // pnlSignUpStep2.Visible = false;
        pnlLogInPage.Visible = false;
        //pnlSignUpStep1.Visible = true;
    }

    protected void btnSubmittoLogin_Click(object sender, EventArgs e)
    {
        //pnlSignUpStep2.Visible = false;
        pnlLogInPage.Visible = true;
        //pnlSignUpStep1.Visible = false;
    }

    protected void lnkBacktoStep1_Click(object sender, EventArgs e)
    {
        //pnlSignUpStep2.Visible = false;
        //pnlLogInPage.Visible = true;
        //pnlSignUpStep1.Visible = false;
        txtApplicationPassword.Text = "";
        txtEmailIdforEmail.Text = "";
        ltrError.Text = "";
    }

    protected void btnshowloginpnl_Click(object sender, EventArgs e)
    {
        ltrError.Text = "";
        //Divloginpnl.Visible = true;
        //Divaplynpnl.Visible = false;

    }
 
    //**********Dive hide & Show code End************************//
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        //Divaplynpnl.Visible = true;
        //Divloginpnl.Visible = false;
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

   

    protected void btnContinue_Click(object sender, EventArgs e)
    {
        ltrError.Text = "";
        Divgetemail.Visible = true;
        //Divaplynpnl.Visible = false;
    }

    protected void btnCancelSend_Click(object sender, EventArgs e)
    {
        ltrError.Text = "";
        /// Divgetemail.Visible = false;
        //Divaplynpnl.Visible = true;
        txtEmailIdforEmail.Text = string.Empty;
        txtApplicationPassword.Text = string.Empty;
    }

    protected void btnSendEmail_Click(object sender, EventArgs e)
    {
        if (ValidateControl())
        {
            ltrError.Text = "";
            if (txtEmailIdforEmail.Text.ToLower() == "agency@inlumon.com" && txtApplicationPassword.Text.ToLower() == "123456")
            {
                sIndividualLoginInfo sObjeIndividualLoginInfo = new sIndividualLoginInfo();
                sObjeIndividualLoginInfo.Password = "";
                sObjeIndividualLoginInfo.Applicant_Id = 1;
                sObjeIndividualLoginInfo.Last_Name = "Test";
                sObjeIndividualLoginInfo.First_Name = "Lisa";
                sObjeIndividualLoginInfo.Application_Number = "ABCD";
                sObjeIndividualLoginInfo.User_Name = "agencyportal";
                sObjeIndividualLoginInfo.Email = "agencyportal@inlumon.com";
                sObjeIndividualLoginInfo.Individual_ID = 1;
                Session["sObjeIndividualLoginInfo"] = sObjeIndividualLoginInfo;
                Response.Redirect("~/LAPP_UI_Agency/UI/Dashboard.aspx", false);
            }
            else
            {
                ltrError.Text = MessageBox.BuildValidationMessage("Invalid username or password.", 2);
            }
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

            validateMsg += ValidationHelper.IsValidEmail(txtEmailIdforEmail.Text, "<li>Please enter valid User Id.</li>");
            validateMsg += ValidationHelper.IsRequired(txtApplicationPassword.Text, "<li>Please enter your password.</li>");
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
        RowLoginHeader.Visible = false;
        RowForgetHeader.Visible = true;
        RowPasswordSecond.Visible = false;

    }

    protected void btnSendPassword2_Click(object sender, EventArgs e)
    {
        ltrError.Text = "";


        string validateMsg = "";
        validateMsg += ValidationHelper.IsValidEmail(txtEmailIdforEmail.Text, "<li>Please enter valid username (Email).</li>");//

        if (!String.IsNullOrEmpty(validateMsg))
        {
            string vmsg = validateMsg;
            ltrError.Text = MessageBox.BuildValidationMessage(vmsg, 2);
            return;
        }
        RowForgotSecond.Visible = false;
        RowLoginSecond.Visible = true;
        RowLoginHeader.Visible = true;
        RowForgetHeader.Visible = false;
        RowPasswordSecond.Visible = true;
        ltrError.Text = MessageBox.BuildValidationMessage("An email has been sent to your email address.", 1);

    }

    protected void btnCancelForget2_Click(object sender, EventArgs e)
    {
        RowForgotSecond.Visible = false;
        RowLoginSecond.Visible = true;
        RowLoginHeader.Visible = true;
        RowForgetHeader.Visible = false;
        RowPasswordSecond.Visible = true;
    }
}