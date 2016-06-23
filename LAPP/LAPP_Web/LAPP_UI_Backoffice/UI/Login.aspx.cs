using LAPP.ENTITY.Enumerations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LAPP_UI_Backoffice_UI_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_click(object sender, EventArgs e)
    {
        ltrMessage.Text = "";
        string validateMsg = "";
        validateMsg += ValidationHelper.IsValidEmail(txtEmail.Text, "<li>" + ErrorMessage.EmailFormat + "</li>");
        validateMsg += ValidationHelper.IsRequired(txtPassword.Text, "<li>" + ErrorMessage.Password + "</li>", true);

        if (!string.IsNullOrEmpty(validateMsg))
        {
            string vmsg = validateMsg;
            ltrMessage.Text = MessageBox.BuildValidationMessage(vmsg, 2);
            return;
        }

        BackOfficeLoginRQ rQ = new BackOfficeLoginRQ()
        {
            Email = txtEmail.Text.Trim(),
            Password = txtPassword.Text.Trim(),
            AccessCode = "",
            AppDomain = "",
            LastName = "",
            LicenseNumber = "",
            LoginWithoutEmail = false
        };

        string WebAPIUrl = "http://96.31.91.68/lappws/api/User/Login";

        Object obj;
        WebApiUtility.CallWebAPI<BackOfficeLoginRS>(WebAPIUrl, rQ, out obj, "POST");

        var res = (BackOfficeLoginRS)obj;

        if (res.Status)
        {
            Session["sObjUserInfo"] = res;
            Response.Redirect("~/LAPP_UI_Backoffice/UI/DirectorGADashboard.aspx", false);
        }
        else
            ltrMessage.Text = MessageBox.BuildValidationMessage(res.Message, 2);
    }
}