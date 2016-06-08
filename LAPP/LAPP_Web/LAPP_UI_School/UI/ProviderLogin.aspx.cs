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
        validateMsg += ValidationHelper.IsValidEmail(txtEmail.Text, "<li>Please enter valid Username (Email).</li>");
        validateMsg += ValidationHelper.IsRequired(txtPassword.Text, "<li>Please enter Password.</li>", true);

        if (!string.IsNullOrEmpty(validateMsg))
        {
            string vmsg = validateMsg;
            ltrError.Text = MessageBox.BuildValidationMessage(vmsg, 2);
            return;
        }

        ProviderLoginRQ rQ = new ProviderLoginRQ() { Email = txtEmail.Text.Trim(), Password = txtPassword.Text.Trim() };

        string WebAPIUrl = "http://96.31.91.68/lappws/api/Provider/ProviderLogin";

        Object obj;
        CallWebAPI<ProviderLoginRS>(WebAPIUrl, rQ, out obj);

        var res = (ProviderLoginRS)obj;

        if (res.Status)
        {
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

            Session["ApplicationId"] = res.ApplicationId;
            Session["ApplicationStatus"] = res.ApplicationStatus;
            Session["IndividualId"] = res.IndividualId;
            Session["IndividualNameId"] = res.IndividualNameId;
            Session["ProviderId"] = res.ProviderId;
            Session["UserId"] = res.UserId;
            Session["Key"] = res.Key;

            if (res.IsPasswordTemporary)
                Response.Redirect("ResetPassword.aspx", false);

            if (res.ApplicationStatus != "Pending")
                Response.Redirect("SchoolDashboard.aspx", false);
            else
                Response.Redirect("SchoolApplication.aspx", false);

        }
        else
            ltrError.Text = MessageBox.BuildValidationMessage("Invalid username or password.", 2);

    }

    public void CallWebAPI<T>(string ApiUrl, object input, out object outputObj)
    {

        var httpWebRequest = (HttpWebRequest)WebRequest.Create(ApiUrl);
        httpWebRequest.ContentType = "application/json";
        httpWebRequest.Method = "POST";

        using (var streamWriter = new StreamWriter(httpWebRequest.GetRequestStream()))
        {
            string json = new JavaScriptSerializer().Serialize(input);

            streamWriter.Write(json);
            streamWriter.Flush();
            streamWriter.Close();

            var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();
            using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
            {
                outputObj = JsonConvert.DeserializeObject<T>(streamReader.ReadToEnd());
            }
        }

    }

    public class ProviderLoginRQ
    {
        public string Email { get; set; }
        public string Password { get; set; }
    }

    public class ProviderLoginRS
    {
        public int UserId { get; set; }
        public int ProviderId { get; set; }
        public int ApplicationId { get; set; }
        public int IndividualId { get; set; }
        public int IndividualNameId { get; set; }

        public string Message { get; set; }

        public string ApplicationStatus { get; set; }
        public string ResponseReason { get; set; }
        public string StatusCode { get; set; }

        public string Key { get; set; }

        public bool Status { get; set; }
        public bool IsPasswordTemporary { get; set; }
    }

}
