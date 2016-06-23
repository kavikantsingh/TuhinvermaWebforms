using System;
using System.Net;
using System.IO;
using Newtonsoft.Json;
using System.Web.Script.Serialization;
using LAPP.ENTITY.Enumerations;
using System.Web.Services;

public partial class LAPP_UI_School_UI_ProviderLogin : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnLogIn_Click(object sender, EventArgs e)
    {

        ltrError.Text = "";
        string validateMsg = "";
        validateMsg += ValidationHelper.IsValidEmail(txtEmail.Text, "<li>" + ErrorMessage.EmailFormat + "</li>");
        validateMsg += ValidationHelper.IsRequired(txtPassword.Text, "<li>" + ErrorMessage.Password + "</li>", true);

        if (!string.IsNullOrEmpty(validateMsg))
        {
            string vmsg = validateMsg;
            ltrError.Text = MessageBox.BuildValidationMessage(vmsg, 2);
            return;
        }

        ProviderLoginRQ rQ = new ProviderLoginRQ() { Email = txtEmail.Text.Trim(), Password = txtPassword.Text.Trim() };

        string WebAPIUrl = "http://96.31.91.68/lappws/api/Provider/ProviderLogin/key";

        Object obj;
        WebApiUtility.CallWebAPI<ProviderLoginRS>(WebAPIUrl, rQ, out obj, "POST");

        var res = (ProviderLoginRS)obj;

        if (res.Status)
        {
            sSchoolLoginInfo sInfo = new sSchoolLoginInfo();

            sInfo.ApplicationStatus = res.ApplicationStatus;
            sInfo.Key = res.Key;
            sInfo.ApplicationId = Convert.ToInt32(res.ApplicationId);
            sInfo.IndividualId = Convert.ToInt32(res.IndividualId);
            sInfo.IndividualNameId = Convert.ToInt32(res.IndividualNameId);
            sInfo.ProviderId = Convert.ToInt32(res.ProviderId);
            sInfo.UserId = Convert.ToInt32(res.UserId);
            sInfo.IsPasswordTemporary = res.IsPasswordTemporary;

            Session["sObjSchoolLoginInfo"] = sInfo;
            Session["sUserLoginInfo"] = "SchoolContact";
            Session["sUserLoginEmail"] = txtEmail.Text.Trim();

            if (res.IsPasswordTemporary)
                Response.Redirect("ResetPassword.aspx?isTemp=1&key=" + res.Key + "&id=" + res.UserId, false);

            else if (res.ApplicationStatus == "Submitted")
                Response.Redirect("SchoolDashboard.aspx", false);
            else
                Response.Redirect("SchoolApplication.aspx", false);

        }
        else
            ltrError.Text = MessageBox.BuildValidationMessage("Invalid username or password.", 2);

    }

}
