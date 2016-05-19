using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAPP.ENTITY.Enumerations;

public partial class LAPP_UI_School_UI_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        ltrError.Text = "";


        string validateMsg = "";
        validateMsg += ValidationHelper.IsValidEmail(txtEmail.Text, "<li>Please enter valid Username (Email).</li>");
        validateMsg += ValidationHelper.IsRequired(txtPassword.Text, "<li>Please enter Password.</li>", true);

        if (!String.IsNullOrEmpty(validateMsg))
        {
            string vmsg = validateMsg;
            ltrError.Text = MessageBox.BuildValidationMessage(vmsg, 2);
            return;
        }

        Session["sUserLoginEmail"] = "";

        if (txtEmail.Text.ToLower() == "schoolpubinst@inlumon.com" && txtPassword.Text.ToLower() == "123456") // school Temp Password
        {
            sIndividualLoginInfo sObjeIndividualLoginInfo = new sIndividualLoginInfo();
            sObjeIndividualLoginInfo.Password = "";
            sObjeIndividualLoginInfo.Applicant_Id = 1;
            sObjeIndividualLoginInfo.Last_Name = "School";
            sObjeIndividualLoginInfo.First_Name = "Public";
            sObjeIndividualLoginInfo.Application_Number = "";
            sObjeIndividualLoginInfo.User_Name = "School Pub";
            sObjeIndividualLoginInfo.Email = "schoolpubinst@inlumon.com";
            sObjeIndividualLoginInfo.Individual_ID = 1;
            Session["sObjSchoolLoginInfo"] = sObjeIndividualLoginInfo;
            Session["sUserLoginInfo"] = "SchoolContact";
            Session["sUserLoginEmail"] = "schoolpubinst@inlumon.com";
            Response.Redirect("schoolpubinstDashboard.aspx", false);
        }
        else if (txtEmail.Text.ToLower() == "schoolappinprogress@inlumon.com" && txtPassword.Text.ToLower() == "123456") // school Temp Password
        {
            sIndividualLoginInfo sObjeIndividualLoginInfo = new sIndividualLoginInfo();
            sObjeIndividualLoginInfo.Password = "";
            sObjeIndividualLoginInfo.Applicant_Id = 1;
            sObjeIndividualLoginInfo.Last_Name = "Verma";
            sObjeIndividualLoginInfo.First_Name = "Tuhin";
            sObjeIndividualLoginInfo.Application_Number = "";
            sObjeIndividualLoginInfo.User_Name = "Tuhin Verma";
            sObjeIndividualLoginInfo.Email = "schoolappinprogress@inlumon.com";
            sObjeIndividualLoginInfo.Individual_ID = 1;
            Session["sObjSchoolLoginInfo"] = sObjeIndividualLoginInfo;
            Session["sUserLoginInfo"] = "SchoolContact";
            Response.Redirect("SchoolApplication.aspx", false);
        } 
        else if (txtEmail.Text.ToLower() == "school@inlumon.com" && txtPassword.Text.ToLower() == "123456") // school 
        {
            sIndividualLoginInfo sObjeIndividualLoginInfo = new sIndividualLoginInfo();
            sObjeIndividualLoginInfo.Password = "";
            sObjeIndividualLoginInfo.Applicant_Id = 1;
            sObjeIndividualLoginInfo.Last_Name = "Sullivan";
            sObjeIndividualLoginInfo.First_Name = "Mike";
            sObjeIndividualLoginInfo.Application_Number = "";
            sObjeIndividualLoginInfo.User_Name = "Mike Sullivan";
            sObjeIndividualLoginInfo.Email = "school@inlumon.com";
            sObjeIndividualLoginInfo.Individual_ID = 1;
            Session["sObjSchoolLoginInfo"] = sObjeIndividualLoginInfo;
            Session["sUserLoginInfo"] = "School";
            Response.Redirect("SchoolDashboard.aspx", false);
        }
        else if (txtEmail.Text.ToLower() == "schoolapplicant@inlumon.com" && txtPassword.Text.ToLower() == "123456") // school applicant
        {
            sIndividualLoginInfo sObjeIndividualLoginInfo = new sIndividualLoginInfo();
            sObjeIndividualLoginInfo.Password = "";
            sObjeIndividualLoginInfo.Applicant_Id = 1;
            sObjeIndividualLoginInfo.Last_Name = "Brunello";
            sObjeIndividualLoginInfo.First_Name = "Lisa";
            sObjeIndividualLoginInfo.Application_Number = "";
            sObjeIndividualLoginInfo.User_Name = "Lisa Brunello";
            sObjeIndividualLoginInfo.Email = "schoolapplicant@inlumon.com";
            sObjeIndividualLoginInfo.Individual_ID = 1;
            Session["sObjSchoolApplicantLoginInfo"] = sObjeIndividualLoginInfo;
            Session["sUserLoginInfo"] = "SchoolApplicant";
            Response.Redirect("SchoolApplicantDashboard.aspx", false);
        }
        else if (txtEmail.Text.ToLower() == "schoolowner@inlumon.com" && txtPassword.Text.ToLower() == "123456") // school owner
        {
            sIndividualLoginInfo sObjeIndividualLoginInfo = new sIndividualLoginInfo();
            sObjeIndividualLoginInfo.Password = "";
            sObjeIndividualLoginInfo.Applicant_Id = 1;
            sObjeIndividualLoginInfo.Last_Name = "Chuck";
            sObjeIndividualLoginInfo.First_Name = "Norris";
            sObjeIndividualLoginInfo.Application_Number = "";
            sObjeIndividualLoginInfo.User_Name = "Chuck Norris";
            sObjeIndividualLoginInfo.Email = "schoolowner@inlumon.com";
            sObjeIndividualLoginInfo.Individual_ID = 1;
            Session["sObjSchoolOwnerLoginInfo"] = sObjeIndividualLoginInfo;
            Session["sUserLoginInfo"] = "SchoolOwner";
            Response.Redirect("SchoolOwnerDashboard.aspx", false);
        }

        else if (txtEmail.Text.ToLower() == "schoolcontact@inlumon.com" && txtPassword.Text.ToLower() == "123456") // school contact
        {
            sIndividualLoginInfo sObjeIndividualLoginInfo = new sIndividualLoginInfo();
            sObjeIndividualLoginInfo.Password = "";
            sObjeIndividualLoginInfo.Applicant_Id = 1;
            sObjeIndividualLoginInfo.Last_Name = "Sullivan";
            sObjeIndividualLoginInfo.First_Name = "Mike";
            sObjeIndividualLoginInfo.Application_Number = "";
            sObjeIndividualLoginInfo.User_Name = "Mike Sullivan";
            sObjeIndividualLoginInfo.Email = "schoolcontact@inlumon.com";
            sObjeIndividualLoginInfo.Individual_ID = 1;
            Session["sObjSchoolLoginInfo"] = sObjeIndividualLoginInfo;
            Session["sUserLoginInfo"] = "SchoolContact";
            Response.Redirect("SchoolContactDashboard.aspx", false);
        }
        else if (txtEmail.Text.ToLower() == "schoolowneradmin@inlumon.com" && txtPassword.Text.ToLower() == "123456") // school owner - administrator
        {
            sIndividualLoginInfo sObjeIndividualLoginInfo = new sIndividualLoginInfo();
            sObjeIndividualLoginInfo.Password = "";
            sObjeIndividualLoginInfo.Applicant_Id = 1;
            sObjeIndividualLoginInfo.Last_Name = "Brunello";
            sObjeIndividualLoginInfo.First_Name = "Lisa";
            sObjeIndividualLoginInfo.Application_Number = "";
            sObjeIndividualLoginInfo.User_Name = "Lisa Brunello";
            sObjeIndividualLoginInfo.Email = "schoolowneradmin@inlumon.com";
            sObjeIndividualLoginInfo.Individual_ID = 1;
            Session["sObjSchoolApplicantLoginInfo"] = sObjeIndividualLoginInfo;
            Session["sUserLoginInfo"] = "SchoolOwnerAdmin";
            Response.Redirect("SchoolOwnAdmin.aspx", false);
        }
        else if (txtEmail.Text.ToLower() == "schoolownadmininst@inlumon.com" && txtPassword.Text.ToLower() == "123456") // school owner - administrator - instructor
        {
            sIndividualLoginInfo sObjeIndividualLoginInfo = new sIndividualLoginInfo();
            sObjeIndividualLoginInfo.Password = "";
            sObjeIndividualLoginInfo.Applicant_Id = 1;
            sObjeIndividualLoginInfo.Last_Name = "Chuck";
            sObjeIndividualLoginInfo.First_Name = "Norris";
            sObjeIndividualLoginInfo.Application_Number = "";
            sObjeIndividualLoginInfo.User_Name = "Chuck Norris";
            sObjeIndividualLoginInfo.Email = "schoolownadmininst@inlumon.com";
            sObjeIndividualLoginInfo.Individual_ID = 1;
            Session["sObjSchoolOwnerLoginInfo"] = sObjeIndividualLoginInfo;
            Session["sUserLoginInfo"] = "SchoolOwnAdminInst";
            Response.Redirect("SchoolOwnAdminInstructor.aspx", false);
        }
        else if (txtEmail.Text.ToLower() == "schoolownerinstructor@inlumon.com" && txtPassword.Text.ToLower() == "123456") // school owner - instructor
        {
            sIndividualLoginInfo sObjeIndividualLoginInfo = new sIndividualLoginInfo();
            sObjeIndividualLoginInfo.Password = "";
            sObjeIndividualLoginInfo.Applicant_Id = 1;
            sObjeIndividualLoginInfo.Last_Name = "Chuck";
            sObjeIndividualLoginInfo.First_Name = "Norris";
            sObjeIndividualLoginInfo.Application_Number = "";
            sObjeIndividualLoginInfo.User_Name = "Chuck Norris";
            sObjeIndividualLoginInfo.Email = "schoolownerinstructor@inlumon.com";
            sObjeIndividualLoginInfo.Individual_ID = 1;
            Session["sObjSchoolOwnerLoginInfo"] = sObjeIndividualLoginInfo;
            Session["sUserLoginInfo"] = "SchoolOwnInst";
            Response.Redirect("SchoolOwnerInstructorDashboard.aspx", false);
        }

        else if (txtEmail.Text.ToLower() == "schooladmin@inlumon.com" && txtPassword.Text.ToLower() == "123456") // school administrator 
        {
            sIndividualLoginInfo sObjeIndividualLoginInfo = new sIndividualLoginInfo();
            sObjeIndividualLoginInfo.Password = "";
            sObjeIndividualLoginInfo.Applicant_Id = 1;
            sObjeIndividualLoginInfo.Last_Name = "Chuck";
            sObjeIndividualLoginInfo.First_Name = "Norris";
            sObjeIndividualLoginInfo.Application_Number = "";
            sObjeIndividualLoginInfo.User_Name = "Chuck Norris";
            sObjeIndividualLoginInfo.Email = "schooladmin@inlumon.com";
            sObjeIndividualLoginInfo.Individual_ID = 1;
            Session["sObjSchoolOwnerLoginInfo"] = sObjeIndividualLoginInfo;
            Session["sUserLoginInfo"] = "SchoolAdmin";
            Response.Redirect("SchoolAdministratorDashboard.aspx", false);
        }

        else if (txtEmail.Text.ToLower() == "schoolinstructor@inlumon.com" && txtPassword.Text.ToLower() == "123456") // school instructor
        {
            sIndividualLoginInfo sObjeIndividualLoginInfo = new sIndividualLoginInfo();
            sObjeIndividualLoginInfo.Password = "";
            sObjeIndividualLoginInfo.Applicant_Id = 1;
            sObjeIndividualLoginInfo.Last_Name = "Chuck";
            sObjeIndividualLoginInfo.First_Name = "Norris";
            sObjeIndividualLoginInfo.Application_Number = "";
            sObjeIndividualLoginInfo.User_Name = "Chuck Norris";
            sObjeIndividualLoginInfo.Email = "schoolinstructor@inlumon.com";
            sObjeIndividualLoginInfo.Individual_ID = 1;
            Session["sObjSchoolOwnerLoginInfo"] = sObjeIndividualLoginInfo;
            Session["sUserLoginInfo"] = "SchoolInst";
            Response.Redirect("SchoolInstructorDashboard.aspx", false);
        }

        else if (txtEmail.Text.ToLower() == "schooladmininstructor@inlumon.com" && txtPassword.Text.ToLower() == "123456") // school administrator - instructor
        {
            sIndividualLoginInfo sObjeIndividualLoginInfo = new sIndividualLoginInfo();
            sObjeIndividualLoginInfo.Password = "";
            sObjeIndividualLoginInfo.Applicant_Id = 1;
            sObjeIndividualLoginInfo.Last_Name = "Chuck";
            sObjeIndividualLoginInfo.First_Name = "Norris";
            sObjeIndividualLoginInfo.Application_Number = "";
            sObjeIndividualLoginInfo.User_Name = "Chuck Norris";
            sObjeIndividualLoginInfo.Email = "schooladmininstructor@inlumon.com";
            sObjeIndividualLoginInfo.Individual_ID = 1;
            Session["sObjSchoolOwnerLoginInfo"] = sObjeIndividualLoginInfo;
            Session["sUserLoginInfo"] = "SchoolAdminInst";
            Response.Redirect("SchoolAdminiInstructorDashboard.aspx", false);
        }
        else
        {
            ltrError.Text = MessageBox.BuildValidationMessage("Invalid username or password.", 2);
        }

        
    }
    

    protected void lnkForgot_Click(object sender, EventArgs e)
    {
        //RowForgot.Visible = true;
        //RowLogin.Visible = false;
        //RowPassword.Visible = false;
    }

}