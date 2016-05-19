using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.CORE;
 
    public partial class ucChangePassword : System.Web.UI.UserControl
    {
        #region Class Members

        lapp_applicant_individual_login_info objLoginInfo = new lapp_applicant_individual_login_info();
        lapp_applicant_individual_login_infoBAL objLoginInfoBal = new lapp_applicant_individual_login_infoBAL();
        LAPP_audit_info objAuditInfo = new LAPP_audit_info();
        LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
        LAPP_exception_log objExLog = new LAPP_exception_log();
        LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();

        #endregion

        #region Class Property

        public int Applicant_ID
        {
            get
            {
                if (ViewState["Applicant_ID"] != null)
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
                ViewState["Applicant_ID"] = value;
            }
        }

        #endregion

        #region Page Event Handler

        protected void Page_Load(object sender, EventArgs e)
        {
            this.Applicant_ID = UIHelper.UserIDBySession();

            if (!IsPostBack)
            {

                //objLoginInfo = objLoginInfoBal.Get_lapp_applicant_individual_login_info_By_Applicant_ID(this.Applicant_ID);
                //if (objLoginInfo != null )
                //{
                //    pOldPass.Visible = false;
                //    txtOldPassword.Text = Encryption.Base64Decrypt(objLoginInfo.Applicant_Password);
                //}
                //else
                //{
                //    pOldPass.Visible = true;
                //}
            }
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            try
            {
                string oldpassword = txtOldPassword.Text.Trim();
                string Newpassword = txtConfirmPassword.Text.Trim();

                objLoginInfo = objLoginInfoBal.Get_lapp_applicant_individual_login_info_By_Applicant_ID(this.Applicant_ID);
                if (objLoginInfo != null)
                {
                    if (objLoginInfo != null && objLoginInfo.Applicant_Password == oldpassword)
                    {
                        objLoginInfo.Applicant_Password = Newpassword;
                        objLoginInfo.Is_Temp_Password = false;
                        objLoginInfoBal.Update_lapp_applicant_individual_login_info(objLoginInfo);
                        ltrMessage.Text = MessageBox.BuildValidationMessage("Your Password has been changed successfully.", 1);
                    }
                    else
                    {
                        ltrMessage.Text = "Error occured (May be your old password does not matched.)";
                    }
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
            txtConfirmPassword.Text = "";
            txtNewPassword.Text = "";
            txtOldPassword.Text = "";
            this.Applicant_ID = 0;
            if (Request.QueryString["q"] != null)
            {
                string q = Request.QueryString["q"].ToString();
                if (q == "1")
                {
                    Response.Redirect("Dashboard.aspx", false);
                }
                else
                {
                    Response.Redirect("ApplicantDashboard.aspx", false);
                }
            }

        }
    }
 