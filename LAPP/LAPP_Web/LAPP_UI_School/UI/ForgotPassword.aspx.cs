using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LAPP_UI_Individual_UI_ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        ltrError.Text = "";
        
        string validateMsg = "";
        validateMsg += ValidationHelper.IsValidEmail(txtEmail.Text, "<li>Please enter valid Username (Email).</li>");
       
        if (!String.IsNullOrEmpty(validateMsg))
        {
            string vmsg = validateMsg;
            ltrError.Text = MessageBox.BuildValidationMessage(vmsg, 2);
            return;
        }

        if (txtEmail.Text != "")
        {
            txtEmail.Text = "";
            ltrError.Text = MessageBox.BuildValidationMessage("An Email has been sent your email address, please follow the instruction in the email.");
        }
        else
        {
            ltrError.Text = MessageBox.BuildValidationMessage("Please enter valid email address.");
        }
    }
}