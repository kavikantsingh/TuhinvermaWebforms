using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LAPP_UI_Backoffice_UI_DirectorDashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int PID = 0;
            if (Request.QueryString["pID"] != null && int.TryParse(Request.QueryString["pID"], out PID))
            {
                MessageBox.Show(this.Page, "Password Changed Successfully");
            }
        }
    }
}