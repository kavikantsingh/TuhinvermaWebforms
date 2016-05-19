using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAPP.ENTITY;
using LAPP.BAL;
using LAPP.ENTITY.Enumerations;
using LAPP.CORE;

 
    public partial class TemporaryAccess : System.Web.UI.Page
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
                    return Convert.ToInt32(ViewState["Applicant_ID"]);
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

            ltrMessage.Text = "";
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null
                    )
                {
                    List<sQueryString> lstQueryStr = GNF.DecryptUrl(Request.QueryString["id"].ToString());
                    if (lstQueryStr != null && lstQueryStr.Count > 0)
                    {
                        this.Applicant_ID = Convert.ToInt32(lstQueryStr.Find(x => x.QueryString == "Applicant_ID").QueryValue);
                        string Email = lstQueryStr.Find(x => x.QueryString == "Email").QueryValue;
                        objLoginInfo = objLoginInfoBal.Get_lapp_applicant_individual_login_info_Email(Email);
                        if (objLoginInfo != null && objLoginInfo.Is_Temp_Password)
                        {


                        }
                        else
                        {
                            ltrMessage2.Text = MessageBox.BuildValidationMessage("You have already changed your password.");
                            pnlPasswordreset.Visible = false;
                            pnlMessage.Visible = true;
                        }
                    }




                }
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
            Response.Redirect("~/UI/Login.aspx", true);

        }
    }
 