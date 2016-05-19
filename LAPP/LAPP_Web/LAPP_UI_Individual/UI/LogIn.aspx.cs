using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAPP.ENTITY.Enumerations;

public partial class LAPP_UI_Individual_UI_login : System.Web.UI.Page
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

        if (txtEmail.Text.ToLower() == "individual@inlumon.com" && txtPassword.Text.ToLower() == "123456")
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
        else if (txtEmail.Text.ToLower() == "applicant@inlumon.com" && txtPassword.Text.ToLower() == "123456")
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

        
    }
    

    protected void lnkForgot_Click(object sender, EventArgs e)
    {
        //RowForgot.Visible = true;
        //RowLogin.Visible = false;
        //RowPassword.Visible = false;
    }

}