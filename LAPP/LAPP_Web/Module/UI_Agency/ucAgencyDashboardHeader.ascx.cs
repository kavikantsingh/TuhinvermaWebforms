using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_UI_Agency_ucAgencyDashboardHeader : System.Web.UI.UserControl
{
    public string DashBoardType
    {
        get
        {
            if (Session["DashBoardType"] != null)
            {
                return Convert.ToString(Session["DashBoardType"]);
            }
            else
            {
                return "";
            }
        }
        set
        {
            ViewState["DashBoardType"] = value;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (this.DashBoardType != "")
            {
                lnkBacktoDashboard.PostBackUrl = this.DashBoardType;
            }

            ltrDashboard.Visible = false;
            lnkBacktoDashboard.Visible = false;
            if (Request.Url.AbsoluteUri.ToLower().Contains("dashboard"))
            {
                ltrDashboard.Visible = true;
            }
            else
            {
                lnkBacktoDashboard.Visible = true;
            }
        }
    }
}