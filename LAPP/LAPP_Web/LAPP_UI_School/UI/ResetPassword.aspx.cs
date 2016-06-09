using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LAPP_UI_School_UI_ResetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Convert.ToString(Request.QueryString["isTemp"]) == "1")
            {
                ltrError.Visible = true;
            }

            if (Request.QueryString["key"] != null)
            {
                hdnKey.Value = Convert.ToString(Request.QueryString["key"]);
            }
            if (Request.QueryString["id"] != null)
            {
                hdnUserId.Value = Convert.ToString(Request.QueryString["id"]);
            }

        }
    }
}