using LAPP.BAL;
using LAPP.CORE;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_ucLogin : System.Web.UI.UserControl
{
    #region Class Members

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
            divMessage.Visible = false;
            LoadMenu();
            //DoLogin("tuhinverma@inlumon.com", "123456");
        }
    }

    private void LoadMenu()
    {

    }
    protected void btnLogin_click(object sender, EventArgs e)
    {
        if (txtEmail.Text.Trim() == "directoresd@inlumon.com" && password.Text.Trim() == "123456")
        {
            sUserLoginInfo sObjeUserLoginInfo = new sUserLoginInfo();

            sObjeUserLoginInfo.EmailID = txtEmail.Text.Trim();
            sObjeUserLoginInfo.Password = "";
            sObjeUserLoginInfo.UserID = 1;
            sObjeUserLoginInfo.UserName = "directoresd";

            sObjeUserLoginInfo.RoleId = 1;
            sObjeUserLoginInfo.SessionID = SessionManager.CreateSession(1);
            Session["sObjeUserLoginInfo"] = sObjeUserLoginInfo;
            
            SessionManager objSessionManager = new SessionManager();
            SessionManager.SetSession("sObjLoginInfo", sObjeUserLoginInfo);

            Response.Redirect("~/LAPP_UI_Backoffice/UI/DirectorDashboard.aspx", false);

            //sIndividualLoginInfo sObjeIndividualLoginInfo = new sIndividualLoginInfo();
            //sObjeIndividualLoginInfo.Password = "";
            //sObjeIndividualLoginInfo.Applicant_Id = 1;
            //sObjeIndividualLoginInfo.Last_Name = "School";
            //sObjeIndividualLoginInfo.First_Name = "Public";
            //sObjeIndividualLoginInfo.Application_Number = "";
            //sObjeIndividualLoginInfo.User_Name = "School Pub";
            //sObjeIndividualLoginInfo.Email = "schoolpubinst@inlumon.com";
            //sObjeIndividualLoginInfo.Individual_ID = 1;
            //Session["sObjSchoolLoginInfo"] = sObjeIndividualLoginInfo;
            //Session["sUserLoginInfo"] = "SchoolContact";
            //Session["sUserLoginEmail"] = "schoolpubinst@inlumon.com";
            //Response.Redirect("schoolpubinstDashboard.aspx", false);
        }

        if (txtEmail.Text.Trim() == "DirectorAMG@inlumon.com" && password.Text.Trim() == "123456")
        {
            sUserLoginInfo sObjeUserLoginInfo = new sUserLoginInfo();

            sObjeUserLoginInfo.EmailID = txtEmail.Text.Trim();
            sObjeUserLoginInfo.Password = "";
            sObjeUserLoginInfo.UserID = 1;
            sObjeUserLoginInfo.UserName = "DirectorAMG";

            sObjeUserLoginInfo.RoleId = 1;
            sObjeUserLoginInfo.SessionID = SessionManager.CreateSession(1);
            Session["sObjeUserLoginInfo"] = sObjeUserLoginInfo;

            SessionManager objSessionManager = new SessionManager();
            SessionManager.SetSession("sObjLoginInfo", sObjeUserLoginInfo);

            Response.Redirect("~/LAPP_UI_Backoffice/UI/DirectorAMGDashboard.aspx", false);

           
        }

        if (txtEmail.Text.Trim() == "AMGLeads@inlumon.com" && password.Text.Trim() == "123456")
        {
            sUserLoginInfo sObjeUserLoginInfo = new sUserLoginInfo();

            sObjeUserLoginInfo.EmailID = txtEmail.Text.Trim();
            sObjeUserLoginInfo.Password = "";
            sObjeUserLoginInfo.UserID = 1;
            sObjeUserLoginInfo.UserName = "AMGLeads";

            sObjeUserLoginInfo.RoleId = 1;
            sObjeUserLoginInfo.SessionID = SessionManager.CreateSession(1);
            Session["sObjeUserLoginInfo"] = sObjeUserLoginInfo;

            SessionManager objSessionManager = new SessionManager();
            SessionManager.SetSession("sObjLoginInfo", sObjeUserLoginInfo);

            Response.Redirect("~/LAPP_UI_Backoffice/UI/AMGLeadsDashboard.aspx", false);


        }

        if (txtEmail.Text.Trim() == "DirectorPSD@inlumon.com" && password.Text.Trim() == "123456")
        {
            sUserLoginInfo sObjeUserLoginInfo = new sUserLoginInfo();

            sObjeUserLoginInfo.EmailID = txtEmail.Text.Trim();
            sObjeUserLoginInfo.Password = "";
            sObjeUserLoginInfo.UserID = 1;
            sObjeUserLoginInfo.UserName = "AMGLeads";

            sObjeUserLoginInfo.RoleId = 1;
            sObjeUserLoginInfo.SessionID = SessionManager.CreateSession(1);
            Session["sObjeUserLoginInfo"] = sObjeUserLoginInfo;

            SessionManager objSessionManager = new SessionManager();
            SessionManager.SetSession("sObjLoginInfo", sObjeUserLoginInfo);

            Response.Redirect("~/LAPP_UI_Backoffice/UI/DirectorPSDDashboard.aspx", false);


        }

        if (txtEmail.Text.Trim() == "PSDStaff@inlumon.com" && password.Text.Trim() == "123456")
        {
            sUserLoginInfo sObjeUserLoginInfo = new sUserLoginInfo();

            sObjeUserLoginInfo.EmailID = txtEmail.Text.Trim();
            sObjeUserLoginInfo.Password = "";
            sObjeUserLoginInfo.UserID = 1;
            sObjeUserLoginInfo.UserName = "AMGLeads";

            sObjeUserLoginInfo.RoleId = 1;
            sObjeUserLoginInfo.SessionID = SessionManager.CreateSession(1);
            Session["sObjeUserLoginInfo"] = sObjeUserLoginInfo;

            SessionManager objSessionManager = new SessionManager();
            SessionManager.SetSession("sObjLoginInfo", sObjeUserLoginInfo);

            Response.Redirect("~/LAPP_UI_Backoffice/UI/PSDStaffDashboard.aspx", false);


        }

        if (txtEmail.Text.Trim() == "SpecialCounsel@inlumon.com" && password.Text.Trim() == "123456")
        {
            sUserLoginInfo sObjeUserLoginInfo = new sUserLoginInfo();

            sObjeUserLoginInfo.EmailID = txtEmail.Text.Trim();
            sObjeUserLoginInfo.Password = "";
            sObjeUserLoginInfo.UserID = 1;
            sObjeUserLoginInfo.UserName = "AMGLeads";

            sObjeUserLoginInfo.RoleId = 1;
            sObjeUserLoginInfo.SessionID = SessionManager.CreateSession(1);
            Session["sObjeUserLoginInfo"] = sObjeUserLoginInfo;

            SessionManager objSessionManager = new SessionManager();
            SessionManager.SetSession("sObjLoginInfo", sObjeUserLoginInfo);

            Response.Redirect("~/LAPP_UI_Backoffice/UI/SpecialCounselDashboard.aspx", false);


        }

        if (txtEmail.Text.Trim() == "StaffAttorneys@inlumon.com" && password.Text.Trim() == "123456")
        {
            sUserLoginInfo sObjeUserLoginInfo = new sUserLoginInfo();

            sObjeUserLoginInfo.EmailID = txtEmail.Text.Trim();
            sObjeUserLoginInfo.Password = "";
            sObjeUserLoginInfo.UserID = 1;
            sObjeUserLoginInfo.UserName = "AMGLeads";

            sObjeUserLoginInfo.RoleId = 1;
            sObjeUserLoginInfo.SessionID = SessionManager.CreateSession(1);
            Session["sObjeUserLoginInfo"] = sObjeUserLoginInfo;

            SessionManager objSessionManager = new SessionManager();
            SessionManager.SetSession("sObjLoginInfo", sObjeUserLoginInfo);

            Response.Redirect("~/LAPP_UI_Backoffice/UI/StaffAttorneysDashboard.aspx", false);


        }

        if (txtEmail.Text.Trim() == "CEO@inlumon.com" && password.Text.Trim() == "123456")
        {
            sUserLoginInfo sObjeUserLoginInfo = new sUserLoginInfo();

            sObjeUserLoginInfo.EmailID = txtEmail.Text.Trim();
            sObjeUserLoginInfo.Password = "";
            sObjeUserLoginInfo.UserID = 1;
            sObjeUserLoginInfo.UserName = "AMGLeads";

            sObjeUserLoginInfo.RoleId = 1;
            sObjeUserLoginInfo.SessionID = SessionManager.CreateSession(1);
            Session["sObjeUserLoginInfo"] = sObjeUserLoginInfo;

            SessionManager objSessionManager = new SessionManager();
            SessionManager.SetSession("sObjLoginInfo", sObjeUserLoginInfo);

            Response.Redirect("~/LAPP_UI_Backoffice/UI/CEODashboard.aspx", false);


        }

        if (txtEmail.Text.Trim() == "BookKeeper@inlumon.com" && password.Text.Trim() == "123456")
        {
            sUserLoginInfo sObjeUserLoginInfo = new sUserLoginInfo();

            sObjeUserLoginInfo.EmailID = txtEmail.Text.Trim();
            sObjeUserLoginInfo.Password = "";
            sObjeUserLoginInfo.UserID = 1;
            sObjeUserLoginInfo.UserName = "BookKeeper";

            sObjeUserLoginInfo.RoleId = 1;
            sObjeUserLoginInfo.SessionID = SessionManager.CreateSession(1);
            Session["sObjeUserLoginInfo"] = sObjeUserLoginInfo;

            SessionManager objSessionManager = new SessionManager();
            SessionManager.SetSession("sObjLoginInfo", sObjeUserLoginInfo);

            Response.Redirect("~/LAPP_UI_Backoffice/UI/BookKeeper.aspx", false);


        }

        if (txtEmail.Text.Trim() == "DirectorGA@inlumon.com" && password.Text.Trim() == "123456")
        {
            sUserLoginInfo sObjeUserLoginInfo = new sUserLoginInfo();

            sObjeUserLoginInfo.EmailID = txtEmail.Text.Trim();
            sObjeUserLoginInfo.Password = "";
            sObjeUserLoginInfo.UserID = 1;
            sObjeUserLoginInfo.UserName = "AMGLeads";

            sObjeUserLoginInfo.RoleId = 1;
            sObjeUserLoginInfo.SessionID = SessionManager.CreateSession(1);
            Session["sObjeUserLoginInfo"] = sObjeUserLoginInfo;

            SessionManager objSessionManager = new SessionManager();
            SessionManager.SetSession("sObjLoginInfo", sObjeUserLoginInfo);

            Response.Redirect("~/LAPP_UI_Backoffice/UI/DirectorGADashboard.aspx", false);


        }
            
        else
            DoLogin(txtEmail.Text.Trim(), password.Text.Trim());
    }

    public void DoLogin(string Email, string Password)
    {
        Password = Encryption.Base64Encrypt(Password);
        LAPP_user_membershipBAL objUMemberShipBAL = new LAPP_user_membershipBAL();
        LAPP_userBAL objUserBAL = new LAPP_userBAL();
        LAPP_user_membership objMember = new LAPP_user_membership();
        try
        {
            LAPP_user objUser = new LAPP_user();
            LAPP_user_membership objUserMemberShip = objUMemberShipBAL.GetUser_MembershipByEmaiIDAndPassword(Email, Password);
            if (objUserMemberShip != null)
            {
                if (!objUserMemberShip.Is_Default_Password)
                {
                    divMessage.Visible = false;

                    sUserLoginInfo sObjeUserLoginInfo = new sUserLoginInfo();

                    sObjeUserLoginInfo.EmailID = Email;
                    sObjeUserLoginInfo.Password = Password;
                    sObjeUserLoginInfo.UserID = objUserMemberShip.User_Id;
                    sObjeUserLoginInfo.UserName = objUserMemberShip.User_Name;

                    objUser = objUserBAL.Get_User_Info_By_User_Id(objUserMemberShip.User_Id);

                    if (objUser != null)
                    {
                        sObjeUserLoginInfo.RoleId = objUser.LAPP_Role_Id;
                        sObjeUserLoginInfo.SessionID = SessionManager.CreateSession(objUserMemberShip.User_Id);
                        Session["sObjeUserLoginInfo"] = sObjeUserLoginInfo;
                        SessionManager.SetSession("objUser", objUser);


                    }
                    SessionManager objSessionManager = new SessionManager();
                    SessionManager.SetSession("sObjLoginInfo", sObjeUserLoginInfo);
                    //if (Request.QueryString["backUrl"] != null)
                    //{
                    //    PermissionHandler.LoginRedirection(Request.QueryString["backUrl"].ToString());
                    //}
                    if (objUserMemberShip != null && objUserMemberShip.Is_Default_Password == false)
                    {
                        objUserMemberShip.Last_Login_Date = DateTime.Now;
                        objUMemberShipBAL.Update_User_Membership(objUserMemberShip, objUserMemberShip.User_Id);
                        PermissionHandler.LoginRedirection();
                        //Response.RedirectPermanent("~/UI/Dashboard.aspx",false);
                        //Response.Redirect("~/UI/Dashboard.aspx");//
                    }
                    else
                    {
                        string url = ResolveClientUrl("~/UI/Verify_Email.aspx");
                        //Response.Redirect(url, true);
                        Response.Redirect(url);//
                    }
                }
                else
                {
                    divMessage.Visible = true;
                    ltrMessage.Text = "Account is not verified yet, Please follow verification Email";
                }
            }
            else
            {
                divMessage.Visible = true;
                ltrMessage.Text = "Invalid Email or Password";

            }

        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucLogin.ascx-btnLogin_click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    protected void lnlForgotPassword_Click(object sender, EventArgs e)
    {
        string url = ResolveClientUrl("~/UI/ForgetPassword.aspx");
        Response.Redirect(url, false);
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