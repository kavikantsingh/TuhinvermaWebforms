using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAPP.ENTITY.Enumerations;

public partial class LAPP_UI_Agency_UI_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string str = ResolveClientUrl("~/");
        //string ss = ResolveUrl("~/ajaxhandler/individualSearch.ashx");

        //string sss = Request.Url.ToString();

        //string s = "";
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

        if (txtEmail.Text.ToLower() == "agency@inlumon.com" && txtPassword.Text.ToLower() == "123456") // school Temp Password
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


    protected void lnkForgot_Click(object sender, EventArgs e)
    {
        //RowForgot.Visible = true;
        //RowLogin.Visible = false;
        //RowPassword.Visible = false;
    }
}